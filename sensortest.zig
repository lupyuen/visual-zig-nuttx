//! Sensor Test App that reads a Sensor on Apache NuttX RTOS

/// Import the Zig Standard Library
const std = @import("std");

/// Import the Multisensor Module
const multi = @import("./multisensor.zig");

/// Import the Visual Program
const visual = @import("./visual.zig");

/// Import the Sensor Definitions
const sen = @import("./sensor.zig");

/// Import the Sensor Library from C
const c = sen.c;

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

    // Run a command like "test" or "test2"
    if (argc == 2) {
        const cmd = std.mem.span(argv[1]);
        if (std.mem.eql(u8, cmd, "test")) {
            test_sensor()
                catch { return -1; };
            return 0;
        }
        else if (std.mem.eql(u8, cmd, "test2")) {
            test_sensor2()
                catch { return -1; };
            return 0;
        }
        else if (std.mem.eql(u8, cmd, "visual")) {
            visual.main()
                catch { return -1; };
            return 0;
        }
    }

    // Read the Sensor specified by the Command-Line Options
    multi.test_multisensor(argc, argv)
        catch |err| {
            if (err == error.OptionError or err == error.NameError) { usage(); }
            return -1;
        };

    return 0;
}

/// Read Pressure and Temperature from Barometer Sensor "/dev/uorb/sensor_baro0"
fn test_sensor() !void {
    debug("test_sensor", .{});

    // Open the Sensor Device
    const fd = c.open(
        "/dev/uorb/sensor_baro0",  // Path of Sensor Device
        c.O_RDONLY | c.O_NONBLOCK    // Open for read-only
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

    // Print the Sensor Data
    debug("pressure:{}", .{
        sensor_data.pressure
    });
    debug("temperature:{}", .{
        sensor_data.temperature
    });
}

/// Read Humidity from Humidity Sensor "/dev/uorb/sensor_humi0"
fn test_sensor2() !void {
    debug("test_sensor2", .{});

    // Open the Sensor Device
    const fd = c.open(
        "/dev/uorb/sensor_humi0",  // Path of Sensor Device
        c.O_RDONLY | c.O_NONBLOCK    // Open for read-only
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
        c.struct_sensor_humi
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

    // Print the Sensor Data
    debug("humidity:{}", .{
        sensor_data.humidity
    });
}

/// Print the Command-Line Options
fn usage() void {
    const err = std.log.err;
    err("sensortest test", .{});
    err(" Test barometer sensor (/dev/uorb/sensor_baro0)", .{});
    err("sensortest test2", .{});
    err(" Test humidity sensor (/dev/uorb/sensor_humi0)", .{});
    err("sensortest visual", .{});
    err(" Run visual program", .{});
    err("sensortest [arguments...] <command>", .{});
    err("\t[-h      ]  sensortest commands help", .{});
    err("\t[-i <val>]  The output data period of sensor in us", .{});
    err("\t            default: 1000000", .{});
    err("\t[-b <val>]  The maximum report latency of sensor in us", .{});
    err("\t            default: 0", .{});
    err("\t[-n <val>]  The number of output data", .{});
    err("\t            default: 0", .{});
    err(" Commands:", .{});
    err("\t<sensor_node_name> ex, accel0(/dev/uorb/sensor_accel0)", .{});
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

    // We can't print floats on NuttX BL602 due to Linker Errors, so we convert to Fixed-Point.
    // TODO: Handle multiple args
    const args2 =
        if (args.len == 1 and @TypeOf(args[0]) == f32)
            .{ floatToFixed(args[0]) }  // Convert float to Fixed-Point
        else
            args;  // Skip non-float

    // Disallow printing of floats on NuttX BL602 because it causes Linker Errors, use floatToFixed(f) instead
    comptime var i: usize = 0;
    inline while (i < args2.len) : (i += 1) {
        const arg = args2[i];
        comptime {
            assert(@TypeOf(arg) != f32);  // Use floatToFixed(f) to print floats
        }
    }

    // Format the message
    var slice = std.fmt.bufPrint(&log_buf, format, args2)
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

/// Aliases for Sensor Definitions
const errno = sen.errno;
const floatToFixed = sen.floatToFixed;

/// For safety, we import these functions ourselves to enforce Null-Terminated Strings.
/// We changed `[*c]const u8` to `[*:0]const u8`
extern fn printf(format: [*:0]const u8, ...) c_int;
extern fn puts(str: [*:0]const u8) c_int;

/// Aliases for Zig Standard Library
const assert = std.debug.assert;
const debug  = std.log.debug;
