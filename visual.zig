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

    // Paste Visual Program here...

    // Every 30 seconds...
    while (true) {
        const temperature = try sen.readSensor(  // Read BME280 Sensor
            c.struct_sensor_baro,       // Sensor Data Struct
            "temperature",              // Sensor Data Field
            "/dev/uorb/sensor_baro0"  // Path of Sensor Device
        );
        debug("temperature={}", .{ temperature });
        const pressure = try sen.readSensor(  // Read BME280 Sensor
            c.struct_sensor_baro,       // Sensor Data Struct
            "pressure",                 // Sensor Data Field
            "/dev/uorb/sensor_baro0"  // Path of Sensor Device
        );
        debug("pressure={}", .{ pressure });
        const humidity = try sen.readSensor(  // Read BME280 Sensor
            c.struct_sensor_humi,       // Sensor Data Struct
            "humidity",                 // Sensor Data Field
            "/dev/uorb/sensor_humi0"  // Path of Sensor Device
        );
        debug("humidity={}", .{ humidity });
        const msg = try composeCbor(.{  // Compose CBOR Message
            "t", temperature,
            "p", pressure,
            "h", humidity,
        });

        // Transmit message to LoRaWAN
        try transmitLorawan(msg);

        // Wait 30 seconds
        _ = c.sleep(30);
    }    
}

///////////////////////////////////////////////////////////////////////////////
//  CBOR Encoding

/// TODO: Compose CBOR Message with Key-Value Pairs
/// https://lupyuen.github.io/articles/cbor2
fn composeCbor(args: anytype) !CborMessage {
    debug("composeCbor", .{});
    comptime {
        assert(args.len % 2 == 0);  // Missing Key or Value
    }

    // Process each field...
    comptime var i: usize = 0;
    var msg = CborMessage{};
    inline while (i < args.len) : (i += 2) {

        // Get the key and value
        const key   = args[i];
        const value = args[i + 1];

        // Print the key and value
        debug("  {s}: {}", .{
            @as([]const u8, key),
            floatToFixed(value)
        });

        // Format the message for testing
        var slice = std.fmt.bufPrint(
            msg.buf[msg.len..], 
            "{s}:{},",
            .{
                @as([]const u8, key),
                floatToFixed(value)
            }
        ) catch { _ = std.log.err("Error: buf too small", .{}); return error.Overflow; };
        msg.len += slice.len;
    }
    debug("  msg={s}", .{ msg.buf[0..msg.len] });
    return msg;
}

/// TODO: CBOR Message
/// https://lupyuen.github.io/articles/cbor2
const CborMessage = struct {
    buf: [256]u8 = undefined,  // Limit to 256 chars
    len: usize = 0,
};

///////////////////////////////////////////////////////////////////////////////
//  Transmit To LoRaWAN

/// TODO: Transmit message to LoRaWAN
fn transmitLorawan(msg: CborMessage) !void { 
    debug("transmitLorawan", .{});
    debug("  msg={s}", .{ msg.buf[0..msg.len] });
}

///////////////////////////////////////////////////////////////////////////////
//  Imported Functions

/// Aliases for Sensor Definitions
const floatToFixed = sen.floatToFixed;

/// Aliases for Zig Standard Library
const assert = std.debug.assert;
const debug  = std.log.debug;
