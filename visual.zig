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
    const temperature = blk: {
        // Open the Sensor Device
        const fd = c.open(
            "/dev/sensor/baro0",       // Path of Sensor Device
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
        // TODO: Remove this definition when SNIOC_SET_INTERVAL has been been fixed: https://github.com/apache/incubator-nuttx/issues/6642
        const SNIOC_SET_INTERVAL = c._SNIOC(0x0081);
        var interval: c_uint = 1_000_000;  // 1,000,000 microseconds (1 second)
        var ret = c.ioctl(fd, SNIOC_SET_INTERVAL, &interval);

        // Check for error
        if (ret < 0 and errno() != c.ENOTSUP) {
            std.log.err("Failed to set interval:{s}", .{ c.strerror(errno()) });
            return error.IntervalError;
        }

        // Set Batch Latency
        var latency: c_uint = 0;  // No latency
        ret = c.ioctl(fd, c.SNIOC_BATCH, &latency);

        // Check for error
        if (ret < 0 and errno() != c.ENOTSUP) {
            std.log.err("Failed to batch:{s}", .{ c.strerror(errno()) });
            return error.BatchError;
        }

        // Enable Sensor and switch to Normal Power Mode
        ret = c.ioctl(fd, c.SNIOC_ACTIVATE, @as(c_int, 1));

        // Check for error
        if (ret < 0 and errno() != c.ENOTSUP) {
            std.log.err("Failed to enable sensor:{s}", .{ c.strerror(errno()) });
            return error.EnableError;
        }

        // Prepare to poll Sensor
        var fds = std.mem.zeroes(c.struct_pollfd);
        fds.fd = fd;
        fds.events = c.POLLIN;
        var sensor_value: f32 = undefined;

        // If Sensor Data is available...
        if (c.poll(&fds, 1, -1) > 0) {

            // Define the Sensor Data Type
            var sensor_data = std.mem.zeroes(c.struct_sensor_event_baro);
            const len = @sizeOf(@TypeOf(sensor_data));

            // Read the Sensor Data
            if (c.read(fd, &sensor_data, len) >= len) {

                // Remember the Sensor Value
                sensor_value = sensor_data.temperature;
                
            } else { std.log.err("Sensor data incorrect size", .{}); }
        } else { std.log.err("Sensor data not available", .{}); }

        // Disable Sensor and switch to Low Power Mode
        ret = c.ioctl(fd, c.SNIOC_ACTIVATE, @as(c_int, 0));

        // Check for error
        if (ret < 0) {
            std.log.err("Failed to disable sensor:{s}", .{ c.strerror(errno()) });
            return error.DisableError;
        }
        
        // Return the Sensor Value
        break :blk sensor_value;
    };

    // Print the Temperature
    debug("temperature:{}", .{
        floatToFixed(temperature)
    });
}

///////////////////////////////////////////////////////////////////////////////
//  Types

/// Sensor Info
const sensor_info = struct {
    /// Print function for Sensor Data
    print: data_print,
    /// Size of Sensor Data
    esize: u8,
    /// Name of Sensor Type
    name: []const u8,
};

/// Sensor Data Print Function
const data_print = fn ([]const align(8) u8, []const u8) void;

///////////////////////////////////////////////////////////////////////////////
//  Imported Functions

/// Aliases for Sensor Definitions
const FixedPoint = sen.FixedPoint;
const errno = sen.errno;
const floatToFixed = sen.floatToFixed;

/// Aliases for Zig Standard Library
const assert = std.debug.assert;
const debug  = std.log.debug;
