//! Sensor Test App that reads a Sensor on Apache NuttX RTOS

/// Import the Zig Standard Library
const std = @import("std");

/// Import the Multisensor Module
const multi = @import("./multisensor.zig");

///////////////////////////////////////////////////////////////////////////////
//  Main Function

/// Main Function that will be called by NuttX. We read the Sensor Data from a Sensor.
pub export fn sensortest_main(
    argc: c_int, 
    argv: [*c]const [*c]u8
) c_int {
    debug("Zig Sensor Test", .{});

    // Quit if no args specified
    if (argc <= 1) { usage(); return -1; }

    // Read the Sensor specified by the Command-Line Options
    multi.test_multisensor(argc, argv)
        catch { return -1; };

    return 0;
}

/// Print the Command-Line Options
fn usage() void {
    const err = std.log.err;
    err("sensortest [arguments...] <command>", .{});
    err("\t[-h      ]  sensortest commands help", .{});
    err("\t[-i <val>]  The output data period of sensor in us", .{});
    err("\t            default: 1000000", .{});
    err("\t[-b <val>]  The maximum report latency of sensor in us", .{});
    err("\t            default: 0", .{});
    err("\t[-n <val>]  The number of output data", .{});
    err("\t            default: 0", .{});
    err(" Commands:", .{});
    err("\t<sensor_node_name> ex, accel0(/dev/sensor/accel0)", .{});
}

///////////////////////////////////////////////////////////////////////////////
//  Panic Handler

/// Called by Zig when it hits a Panic. We print the Panic Message, Stack Trace and halt. See 
/// https://andrewkelley.me/post/zig-stack-traces-kernel-panic-bare-bones-os.html
/// https://github.com/ziglang/zig/blob/master/lib/std/builtin.zig#L763-L847
pub fn panic(
    message: []const u8, 
    _stack_trace: ?*std.builtin.StackTrace
) noreturn {
    // Print the Panic Message
    _ = _stack_trace;
    _ = puts("\n!ZIG PANIC!");
    _ = puts(@ptrCast([*c]const u8, message));

    // Print the Stack Trace
    _ = puts("Stack Trace:");
    var it = std.debug.StackIterator.init(@returnAddress(), null);
    while (it.next()) |return_address| {
        _ = printf("%p\n", return_address);
    }

    // Halt
    while(true) {}
}

///////////////////////////////////////////////////////////////////////////////
//  Logging

/// Called by Zig for `std.log.debug`, `std.log.info`, `std.log.err`, ...
/// TODO: Support multiple threads
/// https://gist.github.com/leecannon/d6f5d7e5af5881c466161270347ce84d
pub fn log(
    comptime _message_level: std.log.Level,
    comptime _scope: @Type(.EnumLiteral),
    comptime format: []const u8,
    args: anytype,
) void {
    _ = _message_level;
    _ = _scope;

    // Format the message
    var slice = std.fmt.bufPrint(&log_buf, format, args)
        catch { _ = puts("*** Error: log_buf too small"); return; };

    // Replace all nulls by spaces and terminate with a null
    _ = std.mem.replace(
        u8,
        slice[0..slice.len],
        "\x00",
        " ",
        log_buf2[0..slice.len]
    );
    log_buf2[slice.len] = 0;

    // Print the formatted message
    _ = puts(&log_buf2);
}

/// Common Static Buffer for Logging
var log_buf: [256]u8 = undefined;  // Limit to 256 chars
var log_buf2: [log_buf.len + 1 : 0]u8 = undefined;

///////////////////////////////////////////////////////////////////////////////
//  Imported Functions and Variables

/// For safety, we import these functions ourselves to enforce Null-Terminated Strings.
/// We changed `[*c]const u8` to `[*:0]const u8`
extern fn printf(format: [*:0]const u8, ...) c_int;
extern fn puts(str: [*:0]const u8) c_int;

/// Aliases for Zig Standard Library
const assert = std.debug.assert;
const debug  = std.log.debug;
