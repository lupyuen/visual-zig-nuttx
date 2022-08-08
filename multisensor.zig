//! Read the Sensor Data from a Sensor specified by the Command-Line Args

/// Import the Zig Standard Library
const std = @import("std");

/// Import the Sensor Definitions
const sen = @import("./sensor.zig");

/// Import the Sensor Library from C
const c = sen.c;

///////////////////////////////////////////////////////////////////////////////
//  Main Function

/// Read the Sensor Data from a Sensor specified by the Command-Line Options
pub fn test_multisensor(
    argc: c_int, 
    argv: [*c]const [*c]u8
) !void {
    debug("test_multisensor", .{});

    // Register the Signal Handler for Ctrl-C
    const handler = c.signal(c.SIGINT, exit_handler);
    if (@ptrToInt(handler) == @ptrToInt(c.SIG_ERR)) {
        std.log.err("Failed to register signal handler", .{});
        return error.SignalError;
    }

    // Parse the Command-Line Options
    g_should_exit = false;
    var interval: c_uint = 1_000_000;
    var latency: c_uint = 0;
    var count: c_uint = 0;
    var ret: c_int = undefined;
    while (true) {
        ret = c.getopt(argc, argv, "i:b:n:h");
        if (ret == c.EOF) { break; }
        switch (ret) {
            'i' => { interval = c.strtoul(c.getoptargp().*, null, 0); },
            'b' => { latency  = c.strtoul(c.getoptargp().*, null, 0); },
            'n' => { count    = c.strtoul(c.getoptargp().*, null, 0); },
            else => { return error.OptionError; },
        }
    }

    // Get Sensor Type
    var name: []const u8 = undefined;
    var len: usize = 0;
    if (c.getoptindp().* < argc) {
        const i = @intCast(usize, c.getoptindp().*);
        name = std.mem.span(argv[i]);
    } else {
        return error.OptionError;
    }

    // Lookup Sensor Info
    var idx: usize = 0;
    for (g_sensor_info) |sensor, i| {
        if (std.mem.startsWith(
            u8,
            name,
            sensor.name
        )) {
            idx = i;
            len = sensor.esize;
            assert(sensor_data.len >= len);
            break;
        }
    }
    if (len == 0) {
        std.log.err("The sensor node name:{s} is invalid", .{ name });
        return error.NameError;
    }

    // Compose the Device Name. devname looks like "/dev/sensor/baro0" or "/dev/sensor/humi0"
    const devname = std.fmt.bufPrint(
        &devname_buffer,
        "/dev/sensor/{s}\x00",
        .{ name }
    ) catch { std.log.err("Path overflow", .{}); return error.OpenError; };

    // Open the Sensor Device
    const fd = c.open(
        &devname[0], 
        c.O_RDONLY | c.O_NONBLOCK
    );
    if (fd < 0) {
        std.log.err("Failed to open device:{s}, ret:{s}", .{ devname, c.strerror(errno()) });
        return error.OpenError;
    }

    // Close the Sensor Device when this function returns
    defer {
        _ = c.close(fd);
        c.getoptindp().* = 0;
    }

    // Set Standby Interval
    // TODO: Remove this definition when SNIOC_SET_INTERVAL has been been fixed: https://github.com/apache/incubator-nuttx/issues/6642
    const SNIOC_SET_INTERVAL = c._SNIOC(0x0081);
    ret = c.ioctl(fd, SNIOC_SET_INTERVAL, interval);
    if (ret < 0 and errno() != c.ENOTSUP) {
        std.log.err("Failed to set interval for sensor:{s}, ret:{s}", .{ devname, c.strerror(errno()) });
        return error.IntervalError;
    }

    // Set Batch Latency
    ret = c.ioctl(fd, c.SNIOC_BATCH, latency);
    if (ret < 0 and errno() != c.ENOTSUP) {
        std.log.err("Failed to batch for sensor:{s}, ret:{s}", .{ devname, c.strerror(errno()) });
        return error.BatchError;
    }

    // Prepare to poll Sensor
    debug("SensorTest: Test {s} with interval({}), latency({})", .{ devname, interval, latency });
    var fds = std.mem.zeroes(c.struct_pollfd);
    fds.fd = fd;
    fds.events = c.POLLIN;

    // Repeat until all samples have been read
    var received: c_uint = 0;
    while ((!(count != 0) or (received < count)) and !g_should_exit) {

        // If Sensor Data is available...
        if (c.poll(&fds, 1, -1) > 0) {

            // Read the Sensor Data
            if (c.read(fd, &sensor_data, len) >= len) {

                // Print the Sensor Data
                received += 1;
                const sensor = g_sensor_info[idx];
                sensor.print(&sensor_data, name);
            }
        }
    }
    debug("SensorTest: Received message: {s}, number:{}/{}", .{ name, received, count });
}

///////////////////////////////////////////////////////////////////////////////
//  Print Sensor Data

/// Print X, Y, Z, Temperature
fn print_vec3(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_accel, &buffer[0]);
    const x = floatToFixed(event.*.x);
    const y = floatToFixed(event.*.y);
    const z = floatToFixed(event.*.z);
    const temperature = floatToFixed(event.*.temperature);
    debug("x:{}", .{ x });
    debug("y:{}", .{ y });
    debug("z:{}", .{ z });
    debug("temperature:{}", .{ temperature });
}

/// Print 3 floats
fn print_valf3(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_rgb, &buffer[0]);
    const r = floatToFixed(event.*.r);
    const g = floatToFixed(event.*.g);
    const b = floatToFixed(event.*.b);
    debug("value1:{}", .{ r });
    debug("value2:{}", .{ g }); 
    debug("value3:{}", .{ b });
}

/// Print 2 floats
fn print_valf2(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_baro, &buffer[0]);
    const pressure = floatToFixed(event.*.pressure);
    const temperature = floatToFixed(event.*.temperature);
    debug("value1:{}", .{ pressure });
    debug("value2:{}", .{ temperature });
}

/// Print a float
fn print_valf(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_prox, &buffer[0]);
    const proximity = floatToFixed(event.*.proximity);
    debug("value:{}", .{ proximity });
}

/// Print a boolean
fn print_valb(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_hall, &buffer[0]);
    debug("value:{}", .{ @as(c_int, @boolToInt(event.*.hall)) });
}

/// Print 2 integers
fn print_vali2(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_ots, &buffer[0]);
    debug("value1:{}", .{ event.*.x });
    debug("value2:{}", .{ event.*.y });
}

/// Print PPGD
fn print_ppgd(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_ppgd, &buffer[0]);
    debug("ppg1:{}", .{ event.*.ppg[@intCast(c_uint, @as(c_int, 0))] });
    debug("ppg2:{}", .{ event.*.ppg[@intCast(c_uint, @as(c_int, 1))] });
    debug("current:{}", .{ event.*.current });
    debug("gain1:{}", .{ @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 0))])) });
    debug("gain2:{}", .{ @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 1))])) });
}

/// Print PPGQ
fn print_ppgq(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_ppgq, &buffer[0]);
    debug("ppg1:{}", .{ event.*.ppg[@intCast(c_uint, @as(c_int, 0))] });
    debug("ppg2:{}", .{ event.*.ppg[@intCast(c_uint, @as(c_int, 1))] });
    debug("ppg3:{}", .{ event.*.ppg[@intCast(c_uint, @as(c_int, 2))] });
    debug("ppg4:{}", .{ event.*.ppg[@intCast(c_uint, @as(c_int, 3))] });
    debug("current:{}", .{ event.*.current });
    debug("gain1:{}", .{ @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 0))])) });
    debug("gain2:{}", .{ @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 1))])) });
    debug("gain3:{}", .{ @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 2))])) });
    debug("gain4:{}", .{ @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 3))])) });
}

/// Print GPS
fn print_gps(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_gps, &buffer[0]);
    const latitude = floatToFixed(event.*.latitude);
    const longitude = floatToFixed(event.*.longitude);
    const altitude = floatToFixed(event.*.altitude);
    const altitude_ellipsoid = floatToFixed(event.*.altitude_ellipsoid);
    const eph = floatToFixed(event.*.eph);
    const epv = floatToFixed(event.*.epv);
    const hdop = floatToFixed(event.*.hdop);
    const vdop = floatToFixed(event.*.vdop);
    const ground_speed = floatToFixed(event.*.ground_speed);
    const course = floatToFixed(event.*.course);
    debug("time_utc:{}", .{ event.*.time_utc });
    debug("latitude:{}", .{ latitude });
    debug("longitude:{}", .{ longitude });
    debug("altitude:{}", .{ altitude });
    debug("altitude_ellipsoid:{}", .{ altitude_ellipsoid });
    debug("eph:{}", .{ eph });
    debug("epv:{}", .{ epv });
    debug("hdop:{}", .{ hdop });
    debug("vdop:{}", .{ vdop }); 
    debug("ground_speed:{}", .{ ground_speed });
    debug("course:{}", .{ course });
    debug("satellites_used:{}", .{ event.*.satellites_used });
}

/// Print GPS Count
fn print_gps_satellite(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_gps_satellite, &buffer[0]);
    debug("count:{}", .{ event.*.count });
    debug("satellites:{}", .{ event.*.satellites });
}

/// Signal Handler for Ctrl-C
export fn exit_handler(signo: c_int) void {
    _ = signo;
    g_should_exit = true;
}

///////////////////////////////////////////////////////////////////////////////
//  Variables

/// All Sensor Types
const g_sensor_info = [30]sensor_info{
    sensor_info{
        .print = print_vec3,
        .esize = @sizeOf(c.struct_sensor_accel),
        .name = "accel",
    },
    sensor_info{
        .print = print_vec3,
        .esize = @sizeOf(c.struct_sensor_mag),
        .name = "mag",
    },
    sensor_info{
        .print = print_vec3,
        .esize = @sizeOf(c.struct_sensor_gyro),
        .name = "gyro",
    },
    sensor_info{
        .print = print_valf2,
        .esize = @sizeOf(c.struct_sensor_baro),
        .name = "baro",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_light),
        .name = "light",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_prox),
        .name = "prox",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_humi),
        .name = "humi",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_temp),
        .name = "temp",
    },
    sensor_info{
        .print = print_valf3,
        .esize = @sizeOf(c.struct_sensor_rgb),
        .name = "rgb",
    },
    sensor_info{
        .print = print_valb,
        .esize = @sizeOf(c.struct_sensor_hall),
        .name = "hall",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_ir),
        .name = "ir",
    },
    sensor_info{
        .print = print_gps,
        .esize = @sizeOf(c.struct_sensor_gps),
        .name = "gps",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_uv),
        .name = "uv",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_noise),
        .name = "noise",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_pm25),
        .name = "pm25",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_pm1p0),
        .name = "pm1p0",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_pm10),
        .name = "pm10",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_co2),
        .name = "co2",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_hcho),
        .name = "hcho",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_tvoc),
        .name = "tvoc",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_ph),
        .name = "ph",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_dust),
        .name = "dust",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_hrate),
        .name = "hrate",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_hbeat),
        .name = "hbeat",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_ecg),
        .name = "ecg",
    },
    sensor_info{
        .print = print_ppgd,
        .esize = @sizeOf(c.struct_sensor_ppgd),
        .name = "ppgd",
    },
    sensor_info{
        .print = print_ppgq,
        .esize = @sizeOf(c.struct_sensor_ppgq),
        .name = "ppgq",
    },
    sensor_info{
        .print = print_valf2,
        .esize = @sizeOf(c.struct_sensor_impd),
        .name = "impd",
    },
    sensor_info{
        .print = print_vali2,
        .esize = @sizeOf(c.struct_sensor_ots),
        .name = "ots",
    },
    sensor_info{
        .print = print_gps_satellite,
        .esize = @sizeOf(c.struct_sensor_gps_satellite),
        .name = "gps_satellite",
    },
};

/// Sensor Data Buffer
/// (Aligned to 8 bytes because it's passed to C)
var sensor_data align(8) = std.mem.zeroes([256]u8);

/// Device Name, like "/dev/sensor/baro0" or "/dev/sensor/humi0"
/// (Aligned to 8 bytes because it's passed to C)
var devname_buffer align(8) = std.mem.zeroes([c.PATH_MAX]u8);

/// True if we should exit due to Ctrl-C
var g_should_exit = false;

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
const errno = sen.errno;
const floatToFixed = sen.floatToFixed;

/// Aliases for Zig Standard Library
const assert = std.debug.assert;
const debug  = std.log.debug;
