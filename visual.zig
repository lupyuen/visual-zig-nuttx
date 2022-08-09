//! Run a Visual Program that reads Sensor Data

/// Import the Zig Standard Library
const std = @import("std");

/// Import the Sensor Definitions
const sen = @import("./sensor.zig");

/// Import the Sensor Library from C
const c = sen.c;

///////////////////////////////////////////////////////////////////////////////
//  Main Function

/// Run the Visual Program that reads Sensor Data
pub fn main() !void {
    debug("Start main", .{});
    defer { debug("End main", .{}); }

    // Test Visual Program
    var count: usize = 0;
    while (count < 10) : (count += 1) {
        const a: f32 = 123.45;
        debug("a={}", .{ floatToFixed(a) });
    }

    // Read the Temperature
    const temperature: f32 = blk: {

        // Open the Sensor Device
        const fd = c.open(
            "/dev/sensor/sensor_baro0",       // Path of Sensor Device
            c.O_RDONLY | c.O_NONBLOCK  // Open for read-only
        );

        // Check for error
        if (fd < 0) {
            std.log.err("Failed to open device:{s}", .{ c.strerror(errno()) });
            return error.OpenError;
        }

        // Close the Sensor Device when this block returns
        defer {
            _ = c.close(fd);
        }

        // Set Standby Interval
        var interval: c_uint = 1_000_000;  // 1,000,000 microseconds (1 second)
        var ret = c.ioctl(fd, c.SNIOC_SET_INTERVAL, interval);

        // Check for error
        if (ret < 0 and errno() != c.ENOTSUP) {
            std.log.err("Failed to set interval:{s}", .{ c.strerror(errno()) });
            return error.IntervalError;
        }

        // Set Batch Latency
        var latency: c_uint = 0;  // No latency
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
            c.struct_sensor_baro
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

        // Return the Sensor Value
        break :blk sensor_data.temperature;
    };

    // Print the Temperature
    debug("temperature={}", .{
        floatToFixed(temperature)
    });
}

///////////////////////////////////////////////////////////////////////////////
//  Imported Functions

/// Aliases for Sensor Definitions
const FixedPoint = sen.FixedPoint;
const errno = sen.errno;
const floatToFixed = sen.floatToFixed;

/// Aliases for Zig Standard Library
const assert = std.debug.assert;
const debug  = std.log.debug;
