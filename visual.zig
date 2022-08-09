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
    const temperature: f32 = try sen.read_sensor(
        c.struct_sensor_baro,       // Sensor Data Struct to be read
        "temperature",              // Sensor Data Field to be returned
        "/dev/sensor/sensor_baro0"  // Path of Sensor Device
    );

    // Print the Temperature
    debug("temperature={}", .{
        floatToFixed(temperature)
    });

    // Read the Pressure
    const pressure: f32 = try sen.read_sensor(
        c.struct_sensor_baro,       // Sensor Data Struct to be read
        "pressure",                 // Sensor Data Field to be returned
        "/dev/sensor/sensor_baro0"  // Path of Sensor Device
    );

    // Print the Pressure
    debug("pressure={}", .{
        floatToFixed(pressure)
    });

    // Read the Humidity
    const humidity: f32 = try sen.read_sensor(
        c.struct_sensor_humi,       // Sensor Data Struct to be read
        "humidity",                 // Sensor Data Field to be returned
        "/dev/sensor/sensor_humi0"  // Path of Sensor Device
    );

    // Print the Humidity
    debug("humidity={}", .{
        floatToFixed(humidity)
    });
}

///////////////////////////////////////////////////////////////////////////////
//  Imported Functions

/// Aliases for Sensor Definitions
const floatToFixed = sen.floatToFixed;

/// Aliases for Zig Standard Library
const assert = std.debug.assert;
const debug  = std.log.debug;
