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

    var interval: c_uint = @bitCast(c_uint, @as(c_int, 1000000));
    var received: c_uint = 0;
    var latency: c_uint = 0;
    var count: c_uint = 0;
    var devname: [256]u8 = undefined;
    var fds: c.struct_pollfd = undefined;
    var buffer: [*c]u8 = undefined;
    var name: [*c]u8 = undefined;
    var len: c_int = 0;
    var fd: c_int = undefined;
    var idx: c_int = undefined;
    var ret: c_int = undefined;
    if (argc <= @as(c_int, 1)) {
        usage();
        return -@as(c_int, 22);
    }
    // TODO: cannot cast negative value -1 to unsigned integer type 'usize'
    // if (c.signal(@as(c_int, 10), exit_handler) == @intToPtr(c._sa_handler_t, -@as(c_int, 1))) {
    //     return -c.__errno().*;
    // }
    g_should_exit = @as(c_int, 0) != 0;
    while ((blk: {
        const tmp = c.getopt(argc, argv, "i:b:n:h");
        ret = tmp;
        break :blk tmp;
    }) != -@as(c_int, 1)) {
        while (true) {
            switch (ret) {
                @as(c_int, 105) => {
                    interval = @bitCast(c_uint, @truncate(c_uint, c.strtoul(c.getoptargp().*, null, @as(c_int, 0))));
                    break;
                },
                @as(c_int, 98) => {
                    latency = @bitCast(c_uint, @truncate(c_uint, c.strtoul(c.getoptargp().*, null, @as(c_int, 0))));
                    break;
                },
                @as(c_int, 110) => {
                    count = @bitCast(c_uint, @truncate(c_uint, c.strtoul(c.getoptargp().*, null, @as(c_int, 0))));
                    break;
                },
                else => {
                    usage();
                    return ret;
                },
            }
            break;
        }
    }
    if (c.getoptindp().* < argc) {
        name = (blk: {
            const tmp = c.getoptindp().*;
            if (tmp >= 0) break :blk argv + @intCast(usize, tmp) else break :blk argv - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
        }).*;
        {
            idx = 0;
            while (@bitCast(c_uint, idx) < (@sizeOf([30]struct_sensor_info) / @sizeOf(struct_sensor_info))) : (idx += 1) {
                if (!(c.strncmp(name, g_sensor_info[@intCast(c_uint, idx)].name, c.strlen(g_sensor_info[@intCast(c_uint, idx)].name)) != 0)) {
                    len = @bitCast(c_int, @as(c_uint, g_sensor_info[@intCast(c_uint, idx)].esize));
                    buffer = @ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), c.calloc(@bitCast(usize, @as(c_int, 1)), @bitCast(usize, len))));
                    break;
                }
            }
        }
        if (!(len != 0)) {
            _ = printf("The sensor node name:%s is invalid\n", name);
            usage();
            ret = -@as(c_int, 22);
            return ret;
        }
        if (!(buffer != null)) {
            ret = -@as(c_int, 12);
            return ret;
        }
    } else {
        usage();
        ret = -@as(c_int, 22);
        return ret;
    }
    _ = c.snprintf(@ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), &devname)), @bitCast(usize, @as(c_int, 256)), "/dev/sensor/%s", name);
    fd = c.open(@ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), &devname)), (@as(c_int, 1) << @intCast(std.math.Log2Int(c_int), 0)) | (@as(c_int, 1) << @intCast(std.math.Log2Int(c_int), 6)));
    if (fd < @as(c_int, 0)) {
        ret = -c.__errno().*;
        _ = printf("Failed to open device:%s, ret:%s\n", @ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), &devname)), c.strerror(c.__errno().*));
        return ret;
    }
    ret = c.ioctl(fd, @as(c_int, 2560) | @as(c_int, 129), &interval);
    if (ret < @as(c_int, 0)) {
        ret = -c.__errno().*;
        if (ret != -@as(c_int, 134)) {
            _ = printf("Failed to set interval for sensor:%s, ret:%s\n", @ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), &devname)), c.strerror(c.__errno().*));
            return ret;
        }
    }
    ret = c.ioctl(fd, @as(c_int, 2560) | @as(c_int, 130), &latency);
    if (ret < @as(c_int, 0)) {
        ret = -c.__errno().*;
        if (ret != -@as(c_int, 134)) {
            _ = printf("Failed to batch for sensor:%s, ret:%s\n", @ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), &devname)), c.strerror(c.__errno().*));
            return ret;
        }
    }
    ret = c.ioctl(fd, @as(c_int, 2560) | @as(c_int, 128), @as(c_int, 1));
    if (ret < @as(c_int, 0)) {
        ret = -c.__errno().*;
        if (ret != -@as(c_int, 134)) {
            _ = printf("Failed to enable sensor:%s, ret:%s\n", @ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), &devname)), c.strerror(c.__errno().*));
            return ret;
        }
    }
    _ = printf("SensorTest: Test %s with interval(%uus), latency(%uus)\n", @ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), &devname)), interval, latency);
    fds.fd = fd;
    fds.events = @bitCast(c.pollevent_t, @as(c_int, 1));
    while ((!(count != 0) or (received < count)) and !g_should_exit) {
        if (c.poll(&fds, @bitCast(c.nfds_t, @as(c_int, 1)), -@as(c_int, 1)) > @as(c_int, 0)) {
            if (c.read(fd, @ptrCast(?*anyopaque, buffer), @bitCast(usize, len)) >= len) {
                received +%= 1;
                g_sensor_info[@intCast(c_uint, idx)].print.?(buffer, name);
            }
        }
    }
    _ = printf("SensorTest: Received message: %s, number:%d/%d\n", name, received, count);
    ret = c.ioctl(fd, @as(c_int, 2560) | @as(c_int, 128), @as(c_int, 0));
    if (ret < @as(c_int, 0)) {
        ret = -c.__errno().*;
        _ = printf("Failed to disable sensor:%s, ret:%s\n", @ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), &devname)), c.strerror(c.__errno().*));
        return ret;
    }
    debug("close", .{});
    _ = c.close(fd);
    debug("free", .{});
    c.free(@ptrCast(?*anyopaque, buffer));
    debug("getoptindp", .{});
    c.getoptindp().* = 0;
    debug("return", .{});
    return ret;
}

fn print_vec3(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_event_accel, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu x:%.2f y:%.2f z:%.2f, temperature:%.2f\n", 
        name, 
        event.*.timestamp, 
        @floatCast(f64, event.*.x), 
        @floatCast(f64, event.*.y), 
        @floatCast(f64, event.*.z), 
        @floatCast(f64, event.*.temperature)
    );
}

fn print_valf3(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_event_rgb, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu value1:%.2f value2:%.2f, value3:%.2f\n", 
        name, 
        event.*.timestamp, 
        @floatCast(f64, event.*.r), 
        @floatCast(f64, event.*.g), 
        @floatCast(f64, event.*.b)
    );
}

fn print_valf2(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_event_baro, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu ", 
        name, 
        event.*.timestamp, 
    );
    _ = printf("value1:");  print_float(event.*.pressure);
    _ = printf(" value2:"); print_float(event.*.temperature);
    _ = printf("\n");
    // Previously: printf("%s: timestamp:%llu value1:%.2f value2:%.2f\n", 
    //     name, 
    //     event.*.timestamp, 
    //     @floatCast(f64, event.*.pressure), 
    //     @floatCast(f64, event.*.temperature)
    // );
}

fn print_valf(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_event_prox, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu ", 
        name, 
        event.*.timestamp, 
    );
    _ = printf("value:");  print_float(event.*.proximity);
    _ = printf("\n");
    // Previously: printf("%s: timestamp:%llu value:%.2f\n", 
    //     name, 
    //     event.*.timestamp, 
    //     @floatCast(f64, event.*.proximity)
    // );
}

fn print_valb(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_event_hall, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu value:%d\n", 
        name, 
        event.*.timestamp, 
        @as(c_int, @boolToInt(event.*.hall))
    );
}

fn print_vali2(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_event_ots, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu value1:% li value2:% li\n", 
        name, 
        event.*.timestamp, 
        event.*.x, 
        event.*.y
    );
}

fn print_ppgd(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_event_ppgd, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu ppg1:%lu ppg2:%lu current:%lu gain1:%u gain2:%u\n", 
        name, 
        event.*.timestamp, 
        event.*.ppg[@intCast(c_uint, @as(c_int, 0))], 
        event.*.ppg[@intCast(c_uint, @as(c_int, 1))], 
        event.*.current, 
        @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 0))])),
        @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 1))]))
    );
}

fn print_ppgq(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_event_ppgq, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu ppg1:%lu ppg2:%lu ppg3:%lu ppg4:%lu current:%lu gain1:%u gain2:%u gain3:%u gain4:%u\n", 
        name, 
        event.*.timestamp, 
        event.*.ppg[@intCast(c_uint, @as(c_int, 0))], 
        event.*.ppg[@intCast(c_uint, @as(c_int, 1))], 
        event.*.ppg[@intCast(c_uint, @as(c_int, 2))], 
        event.*.ppg[@intCast(c_uint, @as(c_int, 3))], 
        event.*.current, 
        @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 0))])), 
        @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 1))])), 
        @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 2))])), 
        @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 3))]))
    );
}

fn print_gps(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_event_gps, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu time_utc: %llu latitude: %f longitude: %f altitude: %f altitude_ellipsoid: %f eph: %f epv: %f hdop: %f vdop: %f ground_speed: %f course: %f satellites_used: %lu\n", 
        name, 
        event.*.timestamp, 
        event.*.time_utc, 
        @floatCast(f64, event.*.latitude), 
        @floatCast(f64, event.*.longitude), 
        @floatCast(f64, event.*.altitude), 
        @floatCast(f64, event.*.altitude_ellipsoid), 
        @floatCast(f64, event.*.eph), 
        @floatCast(f64, event.*.epv), 
        @floatCast(f64, event.*.hdop), 
        @floatCast(f64, event.*.vdop), 
        @floatCast(f64, event.*.ground_speed), 
        @floatCast(f64, event.*.course), 
        event.*.satellites_used
    );
}

fn print_gps_satellite(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_event_gps_satellite, @ptrToInt(buffer));
    _ = printf("%s: timestamp: %llu count: %lu satellites: %lu\n", 
        name, 
        event.*.timestamp, 
        event.*.count, 
        event.*.satellites
    );
}

/// Print the float with 2 decimal places.
/// We print as integers because `printf` has a problem with floats.
fn print_float(f: f32) void {
    const scaled = @floatToInt(i32, f * 100);
    const f1 = @divTrunc(scaled, 100);
    const f2 = @mod(scaled, 100);
    _ = printf("%d.%02d", f1, f2);
}

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

// pub fn exit_handler(arg_signo: c_int) callconv(.C) void {
//     var signo = arg_signo;
//     _ = signo;
//     g_should_exit = @as(c_int, 1) != 0;
// }

const g_sensor_info: [30]struct_sensor_info = [30]struct_sensor_info{
    struct_sensor_info{
        .print = print_vec3,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_accel))),
        .name = "accel",
    },
    struct_sensor_info{
        .print = print_vec3,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_mag))),
        .name = "mag",
    },
    struct_sensor_info{
        .print = print_vec3,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_gyro))),
        .name = "gyro",
    },
    struct_sensor_info{
        .print = print_valf2,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_baro))),
        .name = "baro",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_light))),
        .name = "light",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_prox))),
        .name = "prox",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_humi))),
        .name = "humi",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_temp))),
        .name = "temp",
    },
    struct_sensor_info{
        .print = print_valf3,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_rgb))),
        .name = "rgb",
    },
    struct_sensor_info{
        .print = print_valb,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_hall))),
        .name = "hall",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_ir))),
        .name = "ir",
    },
    struct_sensor_info{
        .print = print_gps,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_gps))),
        .name = "gps",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_uv))),
        .name = "uv",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_noise))),
        .name = "noise",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_pm25))),
        .name = "pm25",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_pm1p0))),
        .name = "pm1p0",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_pm10))),
        .name = "pm10",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_co2))),
        .name = "co2",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_hcho))),
        .name = "hcho",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_tvoc))),
        .name = "tvoc",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_ph))),
        .name = "ph",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_dust))),
        .name = "dust",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_hrate))),
        .name = "hrate",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_hbeat))),
        .name = "hbeat",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_ecg))),
        .name = "ecg",
    },
    struct_sensor_info{
        .print = print_ppgd,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_ppgd))),
        .name = "ppgd",
    },
    struct_sensor_info{
        .print = print_ppgq,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_ppgq))),
        .name = "ppgq",
    },
    struct_sensor_info{
        .print = print_valf2,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_impd))),
        .name = "impd",
    },
    struct_sensor_info{
        .print = print_vali2,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_ots))),
        .name = "ots",
    },
    struct_sensor_info{
        .print = print_gps_satellite,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(c.struct_sensor_event_gps_satellite))),
        .name = "gps_satellite",
    },
};

const struct_sensor_info = struct {
    print: data_print,
    esize: u8,
    name: [*c]const u8,
};

var g_should_exit: bool = @as(c_int, 0) != 0;

const data_print = ?fn ([*c]const u8, [*c]const u8) void;

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
