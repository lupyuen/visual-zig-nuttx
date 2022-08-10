//! Sensor Definitions

/// Import the Zig Standard Library
const std = @import("std");

/// Import the Sensor Library from C
pub const c = @cImport({
    // NuttX Defines
    @cDefine("__NuttX__",  "");
    @cDefine("NDEBUG",     "");
    @cDefine("ARCH_RISCV", "");

    // Workaround for "Unable to translate macro: undefined identifier `LL`"
    @cDefine("LL", "");
    @cDefine("__int_c_join(a, b)", "a");  //  Bypass zig/lib/include/stdint.h

    // NuttX Header Files
    @cInclude("arch/types.h");
    @cInclude("../../nuttx/include/limits.h");
    @cInclude("nuttx/sensors/sensor.h");
    @cInclude("nuttx/config.h");
    @cInclude("sys/ioctl.h");
    @cInclude("inttypes.h");
    @cInclude("unistd.h");
    @cInclude("stdlib.h");
    @cInclude("stdio.h");
    @cInclude("fcntl.h");
    @cInclude("poll.h");
});

///////////////////////////////////////////////////////////////////////////////
//  Exported Functions

/// Read a Sensor and return the Sensor Data
pub fn readSensor(
    comptime SensorType: type,        // Sensor Data Struct to be read, like c.struct_sensor_baro
    comptime field_name: []const u8,  // Sensor Data Field to be returned, like "temperature"
    device_path: []const u8           // Path of Sensor Device, like "/dev/sensor/sensor_baro0"
) !f32 {
    // Open the Sensor Device
    const fd = c.open(
        &device_path[0],           // Path of Sensor Device
        c.O_RDONLY | c.O_NONBLOCK  // Open for read-only
    );

    // Check for error
    if (fd < 0) {
        std.log.err("Failed to open device:{s}", .{ c.strerror(errno()) });
        return error.OpenError;
    }

    // Close the Sensor Device when this function returns
    defer {
        _ = c.close(fd);
    }

    // Set Standby Interval
    const interval: c_uint = 1_000_000;  // 1,000,000 microseconds (1 second)
    var ret = c.ioctl(fd, c.SNIOC_SET_INTERVAL, interval);

    // Check for error
    if (ret < 0 and errno() != c.ENOTSUP) {
        std.log.err("Failed to set interval:{s}", .{ c.strerror(errno()) });
        return error.IntervalError;
    }

    // Set Batch Latency
    const latency: c_uint = 0;  // No latency
    ret = c.ioctl(fd, c.SNIOC_BATCH, latency);

    // Check for error
    if (ret < 0 and errno() != c.ENOTSUP) {
        std.log.err("Failed to batch:{s}", .{ c.strerror(errno()) });
        return error.BatchError;
    }

    // Poll for Sensor Data
    var fds = std.mem.zeroes(c.struct_pollfd);
    fds.fd = fd;
    fds.events = c.POLLIN;
    ret = c.poll(&fds, 1, -1);

    // Check if Sensor Data is available
    if (ret <= 0) {
        std.log.err("Sensor data not available", .{});
        return error.DataError;
    }

    // Define the Sensor Data Type
    var sensor_data = std.mem.zeroes(
        SensorType
    );
    const len = @sizeOf(
        @TypeOf(sensor_data)
    );

    // Read the Sensor Data
    const read_len = c.read(fd, &sensor_data, len);

    // Check size of Sensor Data
    if (read_len < len) {
        std.log.err("Sensor data incorrect size", .{});
        return error.SizeError;
    }

    // Return the Sensor Data Field
    return @field(sensor_data, field_name);
}

/// Convert the float to a fixed-point number (`int`.`frac`) with 2 decimal places.
/// We do this because `debug` has a problem with floats.
pub fn floatToFixed(f: f32) FixedPoint {
    const scaled = @floatToInt(i32, f * 100.0);
    const rem = @rem(scaled, 100);
    const rem_abs = if (rem < 0) -rem else rem;
    return .{
        .int  = @divTrunc(scaled, 100),
        .frac = @intCast(u8, rem_abs),
    };
}

/// Return the NuttX Error Number
pub fn errno() c_int {
    return c.__errno().*;
}

///////////////////////////////////////////////////////////////////////////////
//  Types

/// Fixed Point Number (2 decimal places)
pub const FixedPoint = struct {
    /// Integer Component
    int: i32,
    /// Fraction Component (scaled by 100)
    frac: u8,

    /// Format the output for Fixed Point Number (like 123.45)
    pub fn format(
        self: FixedPoint,
        comptime fmt: []const u8,
        options: std.fmt.FormatOptions,
        writer: anytype,
    ) !void {
        _ = fmt;
        _ = options;
        try writer.print("{}.{:0>2}", .{
            self.int, 
            self.frac 
        });
    }
};

/// Sensor Errors
pub const SensorError = error{
    NameError,      // Invalid name
    OptionError,    // Invalid option
    SignalError,    // Failed to register signal handler
    OpenError,      // Failed to open device
    IntervalError,  // Failed to set sensor interval
    BatchError,     // Failed to set sensor batch
    DataError,      // Data unavailable
    SizeError,      // Invalid size for data
};
