//! Sensor Test App that reads a Sensor on Apache NuttX RTOS

/// Import the Zig Standard Library
const std = @import("std");

/// Import the Sensor Library from C
const c = @cImport({
    // NuttX Defines
    @cDefine("__NuttX__",  "");
    @cDefine("NDEBUG",     "");
    @cDefine("ARCH_RISCV", "");
    @cDefine("LV_LVGL_H_INCLUDE_SIMPLE", "");

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
//  Main Function

/// Main Function that will be called by NuttX. We read the Sensor Data from a Sensor.
pub export fn sensortest_main(
    argc: c_int, 
    argv: [*c]const [*c]u8
) c_int {
    debug("Zig Sensor Test", .{});
    if (argc <= 1) {
        usage();
        return -c.EINVAL;
    }

    // Register the Signal Handler for Ctrl-C
    const handler = c.signal(c.SIGINT, exit_handler);
    if (@ptrToInt(handler) == @ptrToInt(c.SIG_ERR)) {
        return -errno();
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
            'i' => {
                interval = c.strtoul(c.getoptargp().*, null, 0);
            },
            'b' => {
                latency = c.strtoul(c.getoptargp().*, null, 0);
            },
            'n' => {
                count = c.strtoul(c.getoptargp().*, null, 0);
            },
            else => {
                usage();
                return ret;
            },
        }
    }

    // Get Sensor Type
    var name: []const u8 = undefined;
    var len: usize = 0;
    var idx: usize = undefined;
    if (c.getoptindp().* < argc) {
        const i = @intCast(usize, c.getoptindp().*);
        const arg = argv[i];
        name = arg[0..c.strlen(arg)];
    } else {
        usage();
        ret = -c.EINVAL;
        return ret;
    }

    // Lookup Sensor Info
    idx = 0;
    for (g_sensor_info) |sensor, i| {
        const name_prefix = name[0..sensor.name.len];
        if (std.mem.eql(
            u8, 
            sensor.name, 
            name_prefix
        )) {
            idx = i;
            len = sensor.esize;
            assert(sensor_data.len >= len);
            break;
        }
    }
    if (len == 0) {
        _ = printf("The sensor node name:%s is invalid\n", &name[0]);
        usage();
        ret = -c.EINVAL;
        return ret;
    }

    // Open the Sensor Device. devname looks like "/dev/sensor/baro0" or "/dev/sensor/humi0"
    _ = std.fmt.bufPrint(
        &devname,
        "/dev/sensor/{s}\x00",
        .{ name }
    ) catch { std.log.err("Path overflow", .{}); return -c.EINVAL; };
    var fd = c.open(
        &devname[0], 
        c.O_RDONLY | c.O_NONBLOCK
    );
    if (fd < 0) {
        ret = -errno();
        _ = printf("Failed to open device:%s, ret:%s\n", &devname[0], c.strerror(errno()));
        return ret;
    }

    // Set Standby Interval
    // TODO: Remove this definition when SNIOC_SET_INTERVAL has been been fixed: https://github.com/apache/incubator-nuttx/issues/6642
    const SNIOC_SET_INTERVAL = c._SNIOC(0x0081);
    ret = c.ioctl(fd, SNIOC_SET_INTERVAL, &interval);
    if (ret < 0) {
        ret = -errno();
        if (ret != -c.ENOTSUP) {
            _ = printf("Failed to set interval for sensor:%s, ret:%s\n", &devname[0], c.strerror(errno()));
            return ret;
        }
    }

    // Set Batch Latency
    ret = c.ioctl(fd, c.SNIOC_BATCH, &latency);
    if (ret < 0) {
        ret = -errno();
        if (ret != -c.ENOTSUP) {
            _ = printf("Failed to batch for sensor:%s, ret:%s\n", &devname[0], c.strerror(errno()));
            return ret;
        }
    }

    // Enable Sensor and switch to Normal Power Mode
    ret = c.ioctl(fd, c.SNIOC_ACTIVATE, @as(c_int, 1));
    if (ret < 0) {
        ret = -errno();
        if (ret != -c.ENOTSUP) {
            _ = printf("Failed to enable sensor:%s, ret:%s\n", &devname[0], c.strerror(errno()));
            return ret;
        }
    }

    // Prepare to poll Sensor
    _ = printf("SensorTest: Test %s with interval(%uus), latency(%uus)\n", &devname[0], interval, latency);
    var fds: c.struct_pollfd = undefined;
    fds.fd = fd;
    fds.events = c.POLLIN;

    // Repeat until all samples have been read
    var received: c_uint = 0;
    while ((!(count != 0) or (received < count)) and !g_should_exit) {

        // If Sensor Data is available...
        if (c.poll(&fds, 1, -1) > 0) {

            // Read the Sensor Data
            if (c.read(
                fd, 
                &sensor_data, 
                len
            ) >= len) {

                // Print the Sensor Data
                received += 1;
                g_sensor_info[idx]
                    .print(
                        &sensor_data, 
                        name
                    );
            }
        }
    }
    _ = printf("SensorTest: Received message: %s, number:%d/%d\n", &name[0], received, count);

    // Disable Sensor and switch to Low Power Mode
    ret = c.ioctl(fd, c.SNIOC_ACTIVATE, @as(c_int, 0));
    if (ret < 0) {
        ret = -errno();
        _ = printf("Failed to disable sensor:%s, ret:%s\n", &devname[0], c.strerror(errno()));
        return ret;
    }

    // Close the Sensor Device
    _ = c.close(fd);
    c.getoptindp().* = 0;
    return ret;
}

///////////////////////////////////////////////////////////////////////////////
//  Print Sensor Data

/// Print X, Y, Z, Temperature
fn print_vec3(buffer: []const align(8) u8, name: []const u8) void {
    const event = @ptrCast(*const c.struct_sensor_event_accel, &buffer[0]);
    _ = printf("%s: timestamp:%llu", 
        &name[0], 
        event.*.timestamp, 
    );
    _ = printf(" x:");  print_float(event.*.x); 
    _ = printf(" y:");  print_float(event.*.y); 
    _ = printf(" z:");  print_float(event.*.z); 
    _ = printf(" temperature:");  print_float(event.*.temperature);
    _ = printf("\n");
    // Previously: printf("%s: timestamp:%llu x:%.2f y:%.2f z:%.2f, temperature:%.2f\n", 
    //     name, 
    //     event.*.timestamp, 
    //     @floatCast(f64, event.*.x), 
    //     @floatCast(f64, event.*.y), 
    //     @floatCast(f64, event.*.z), 
    //     @floatCast(f64, event.*.temperature)
    // );
}

/// Print 3 floats
fn print_valf3(buffer: []const align(8) u8, name: []const u8) void {
    const event = @ptrCast(*const c.struct_sensor_event_rgb, &buffer[0]);
    _ = printf("%s: timestamp:%llu", 
        &name[0], 
        event.*.timestamp, 
    );
    _ = printf(" value1:");  print_float(event.*.r);
    _ = printf(" value2:");  print_float(event.*.g); 
    _ = printf(" value3:");  print_float(event.*.b);
    _ = printf("\n");
    // Previously: printf("%s: timestamp:%llu value1:%.2f value2:%.2f, value3:%.2f\n", 
    //     name, 
    //     event.*.timestamp, 
    //     @floatCast(f64, event.*.r), 
    //     @floatCast(f64, event.*.g), 
    //     @floatCast(f64, event.*.b)
    // );
}

/// Print 2 floats
fn print_valf2(buffer: []const align(8) u8, name: []const u8) void {
    const event = @ptrCast(*const c.struct_sensor_event_baro, &buffer[0]);
    _ = printf("%s: timestamp:%llu", 
        &name[0], 
        event.*.timestamp, 
    );
    _ = printf(" value1:");  print_float(event.*.pressure);
    _ = printf(" value2:");  print_float(event.*.temperature);
    _ = printf("\n");
    // Previously: printf("%s: timestamp:%llu value1:%.2f value2:%.2f\n", 
    //     name, 
    //     event.*.timestamp, 
    //     @floatCast(f64, event.*.pressure), 
    //     @floatCast(f64, event.*.temperature)
    // );
}

/// Print a float
fn print_valf(buffer: []const align(8) u8, name: []const u8) void {
    const event = @ptrCast(*const c.struct_sensor_event_prox, &buffer[0]);
    _ = printf("%s: timestamp:%llu", 
        &name[0], 
        event.*.timestamp, 
    );
    _ = printf(" value:");  print_float(event.*.proximity);
    _ = printf("\n");
    // Previously: printf("%s: timestamp:%llu value:%.2f\n", 
    //     name, 
    //     event.*.timestamp, 
    //     @floatCast(f64, event.*.proximity)
    // );
}

/// Print a boolean
fn print_valb(buffer: []const align(8) u8, name: []const u8) void {
    const event = @ptrCast(*const c.struct_sensor_event_hall, &buffer[0]);
    _ = printf("%s: timestamp:%llu", 
        &name[0], 
        event.*.timestamp, 
    );
    _ = printf(" value:%d\n", @as(c_int, @boolToInt(event.*.hall)));
    // Previously: printf("%s: timestamp:%llu value:%d\n", 
    //     name, 
    //     event.*.timestamp, 
    //     @as(c_int, @boolToInt(event.*.hall))
    // );
}

/// Print 2 integers
fn print_vali2(buffer: []const align(8) u8, name: []const u8) void {
    const event = @ptrCast(*const c.struct_sensor_event_ots, &buffer[0]);
    _ = printf("%s: timestamp:%llu", 
        &name[0], 
        event.*.timestamp, 
    );
    _ = printf(" value1:%li", event.*.x);
    _ = printf(" value2:%li", event.*.y);
    _ = printf("\n");
    // Previously: printf("%s: timestamp:%llu value1:% li value2:% li\n", 
    //     name, 
    //     event.*.timestamp, 
    //     event.*.x, 
    //     event.*.y
    // );
}

/// Print PPGD
fn print_ppgd(buffer: []const align(8) u8, name: []const u8) void {
    const event = @ptrCast(*const c.struct_sensor_event_ppgd, &buffer[0]);
    _ = printf("%s: timestamp:%llu", 
        &name[0], 
        event.*.timestamp, 
    );
    _ = printf(" ppg1:%lu", event.*.ppg[@intCast(c_uint, @as(c_int, 0))]);
    _ = printf(" ppg2:%lu", event.*.ppg[@intCast(c_uint, @as(c_int, 1))]);
    _ = printf(" current:%lu", event.*.current);
    _ = printf(" gain1:%u", @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 0))])));
    _ = printf(" gain2:%u", @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 1))])));
    _ = printf("\n");
    // Previously: printf("%s: timestamp:%llu ppg1:%lu ppg2:%lu current:%lu gain1:%u gain2:%u\n", 
    //     name, 
    //     event.*.timestamp, 
    //     event.*.ppg[@intCast(c_uint, @as(c_int, 0))], 
    //     event.*.ppg[@intCast(c_uint, @as(c_int, 1))], 
    //     event.*.current, 
    //     @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 0))])),
    //     @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 1))]))
    // );
}

/// Print PPGQ
fn print_ppgq(buffer: []const align(8) u8, name: []const u8) void {
    const event = @ptrCast(*const c.struct_sensor_event_ppgq, &buffer[0]);
    _ = printf("%s: timestamp:%llu", 
        &name[0], 
        event.*.timestamp, 
    );
    _ = printf(" ppg1:%lu", event.*.ppg[@intCast(c_uint, @as(c_int, 0))]);
    _ = printf(" ppg2:%lu", event.*.ppg[@intCast(c_uint, @as(c_int, 1))]);
    _ = printf(" ppg3:%lu", event.*.ppg[@intCast(c_uint, @as(c_int, 2))]);
    _ = printf(" ppg4:%lu", event.*.ppg[@intCast(c_uint, @as(c_int, 3))]);
    _ = printf(" current:%lu", event.*.current);
    _ = printf(" gain1:%u", @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 0))])));
    _ = printf(" gain2:%u", @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 1))])));
    _ = printf(" gain3:%u", @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 2))])));
    _ = printf(" gain4:%u", @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 3))])));
    _ = printf("\n");
    // Previously: printf("%s: timestamp:%llu ppg1:%lu ppg2:%lu ppg3:%lu ppg4:%lu current:%lu gain1:%u gain2:%u gain3:%u gain4:%u\n", 
    //     name, 
    //     event.*.timestamp, 
    //     event.*.ppg[@intCast(c_uint, @as(c_int, 0))], 
    //     event.*.ppg[@intCast(c_uint, @as(c_int, 1))], 
    //     event.*.ppg[@intCast(c_uint, @as(c_int, 2))], 
    //     event.*.ppg[@intCast(c_uint, @as(c_int, 3))], 
    //     event.*.current, 
    //     @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 0))])), 
    //     @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 1))])), 
    //     @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 2))])), 
    //     @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 3))]))
    // );
}

/// Print GPS
fn print_gps(buffer: []const align(8) u8, name: []const u8) void {
    const event = @ptrCast(*const c.struct_sensor_event_gps, &buffer[0]);
    _ = printf("%s: timestamp:%llu", 
        &name[0], 
        event.*.timestamp, 
    );
    _ = printf(" time_utc: %llu", event.*.time_utc);
    _ = printf(" latitude:");   print_float(event.*.latitude);
    _ = printf(" longitude:");  print_float(event.*.longitude);
    _ = printf(" altitude:");   print_float(event.*.altitude);
    _ = printf(" altitude_ellipsoid:");  print_float(event.*.altitude_ellipsoid);
    _ = printf(" eph:");   print_float(event.*.eph);
    _ = printf(" epv:");   print_float(event.*.epv);
    _ = printf(" hdop:");  print_float(event.*.hdop);
    _ = printf(" vdop:");  print_float(event.*.vdop); 
    _ = printf(" ground_speed:");  print_float(event.*.ground_speed);
    _ = printf(" course:");  print_float(event.*.course);
    _ = printf(" satellites_used: %lu", event.*.satellites_used);
    _ = printf("\n");
    // Previously: printf("%s: timestamp:%llu time_utc: %llu latitude: %f longitude: %f altitude: %f altitude_ellipsoid: %f eph: %f epv: %f hdop: %f vdop: %f ground_speed: %f course: %f satellites_used: %lu\n", 
    //     name, 
    //     event.*.timestamp, 
    //     event.*.time_utc, 
    //     @floatCast(f64, event.*.latitude), 
    //     @floatCast(f64, event.*.longitude), 
    //     @floatCast(f64, event.*.altitude), 
    //     @floatCast(f64, event.*.altitude_ellipsoid), 
    //     @floatCast(f64, event.*.eph), 
    //     @floatCast(f64, event.*.epv), 
    //     @floatCast(f64, event.*.hdop), 
    //     @floatCast(f64, event.*.vdop), 
    //     @floatCast(f64, event.*.ground_speed), 
    //     @floatCast(f64, event.*.course), 
    //     event.*.satellites_used
    // );
}

/// Print GPS with Satellites
fn print_gps_satellite(buffer: []const align(8) u8, name: []const u8) void {
    const event = @ptrCast(*const c.struct_sensor_event_gps_satellite, &buffer[0]);
    _ = printf("%s: timestamp:%llu", 
        &name[0], 
        event.*.timestamp, 
    );
    _ = printf(" count: %lu", event.*.count);
    _ = printf(" satellites: %lu", event.*.satellites);
    _ = printf("\n");
    // Previously: printf("%s: timestamp: %llu count: %lu satellites: %lu\n", 
    //     name, 
    //     event.*.timestamp, 
    //     event.*.count, 
    //     event.*.satellites
    // );
}

/// Print the float with 2 decimal places.
/// We print as integers because `printf` has a problem with floats.
fn print_float(f: f32) void {
    const scaled = @floatToInt(i32, f * 100);
    const f1 = @divTrunc(scaled, 100);
    const f2 = @mod(scaled, 100);
    _ = printf("%d.%02d", f1, f2);
}

/// Print the Command-Line Options
fn usage() void {
    _ = printf("sensortest [arguments...] <command>\n");
    _ = printf("\t[-h      ]  sensortest commands help\n");
    _ = printf("\t[-i <val>]  The output data period of sensor in us\n");
    _ = printf("\t            default: 1000000\n");
    _ = printf("\t[-b <val>]  The maximum report latency of sensor in us\n");
    _ = printf("\t            default: 0\n");
    _ = printf("\t[-n <val>]  The number of output data\n");
    _ = printf("\t            default: 0\n");
    _ = printf(" Commands:\n");
    _ = printf("\t<sensor_node_name> ex, accel0(/dev/sensor/accel0)\n");
}

/// Signal Handler for Ctrl-C
export fn exit_handler(signo: c_int) void {
    _ = signo;
    g_should_exit = true;
}

/// Return the NuttX Error Number
fn errno() c_int {
    return -c.__errno().*;
}

///////////////////////////////////////////////////////////////////////////////
//  Variables

/// All Sensor Types
const g_sensor_info = [30]sensor_info{
    sensor_info{
        .print = print_vec3,
        .esize = @sizeOf(c.struct_sensor_event_accel),
        .name = "accel",
    },
    sensor_info{
        .print = print_vec3,
        .esize = @sizeOf(c.struct_sensor_event_mag),
        .name = "mag",
    },
    sensor_info{
        .print = print_vec3,
        .esize = @sizeOf(c.struct_sensor_event_gyro),
        .name = "gyro",
    },
    sensor_info{
        .print = print_valf2,
        .esize = @sizeOf(c.struct_sensor_event_baro),
        .name = "baro",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_light),
        .name = "light",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_prox),
        .name = "prox",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_humi),
        .name = "humi",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_temp),
        .name = "temp",
    },
    sensor_info{
        .print = print_valf3,
        .esize = @sizeOf(c.struct_sensor_event_rgb),
        .name = "rgb",
    },
    sensor_info{
        .print = print_valb,
        .esize = @sizeOf(c.struct_sensor_event_hall),
        .name = "hall",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_ir),
        .name = "ir",
    },
    sensor_info{
        .print = print_gps,
        .esize = @sizeOf(c.struct_sensor_event_gps),
        .name = "gps",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_uv),
        .name = "uv",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_noise),
        .name = "noise",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_pm25),
        .name = "pm25",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_pm1p0),
        .name = "pm1p0",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_pm10),
        .name = "pm10",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_co2),
        .name = "co2",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_hcho),
        .name = "hcho",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_tvoc),
        .name = "tvoc",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_ph),
        .name = "ph",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_dust),
        .name = "dust",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_hrate),
        .name = "hrate",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_hbeat),
        .name = "hbeat",
    },
    sensor_info{
        .print = print_valf,
        .esize = @sizeOf(c.struct_sensor_event_ecg),
        .name = "ecg",
    },
    sensor_info{
        .print = print_ppgd,
        .esize = @sizeOf(c.struct_sensor_event_ppgd),
        .name = "ppgd",
    },
    sensor_info{
        .print = print_ppgq,
        .esize = @sizeOf(c.struct_sensor_event_ppgq),
        .name = "ppgq",
    },
    sensor_info{
        .print = print_valf2,
        .esize = @sizeOf(c.struct_sensor_event_impd),
        .name = "impd",
    },
    sensor_info{
        .print = print_vali2,
        .esize = @sizeOf(c.struct_sensor_event_ots),
        .name = "ots",
    },
    sensor_info{
        .print = print_gps_satellite,
        .esize = @sizeOf(c.struct_sensor_event_gps_satellite),
        .name = "gps_satellite",
    },
};

/// Sensor Data Buffer
/// (Aligned to 8 bytes because it's passed to C)
var sensor_data align(8) = std.mem.zeroes([256]u8);

/// Device Name, like "/dev/sensor/baro0" or "/dev/sensor/humi0"
/// (Aligned to 8 bytes because it's passed to C)
var devname align(8) = std.mem.zeroes([c.PATH_MAX]u8);

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
    var buf: [100]u8 = undefined;  // Limit to 100 chars
    var slice = std.fmt.bufPrint(&buf, format, args)
        catch { _ = puts("*** log error: buf too small"); return; };
    
    // Terminate the formatted message with a null
    var buf2: [buf.len + 1 : 0]u8 = undefined;
    std.mem.copy(
        u8, 
        buf2[0..slice.len], 
        slice[0..slice.len]
    );
    buf2[slice.len] = 0;

    // Print the formatted message
    _ = puts(&buf2);
}

///////////////////////////////////////////////////////////////////////////////
//  Imported Functions and Variables

/// For safety, we import these functions ourselves to enforce Null-Terminated Strings.
/// We changed `[*c]const u8` to `[*:0]const u8`
extern fn printf(format: [*:0]const u8, ...) c_int;
extern fn puts(str: [*:0]const u8) c_int;

/// Aliases for Zig Standard Library
const assert = std.debug.assert;
const debug  = std.log.debug;
