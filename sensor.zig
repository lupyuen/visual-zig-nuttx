//! Sensor Definitions

/// Import the Zig Standard Library
const std = @import("std");

/// Import the Sensor Library from C
pub const c = @cImport({
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
//  Exported Functions

/// Return the NuttX Error Number
pub fn errno() c_int {
    return c.__errno().*;
}

/// Convert the float to a fixed-point number (`int`.`frac`) with 2 decimal places.
/// We do this because `debug` has a problem with floats.
pub fn float_to_fixed(f: f32) struct { int: i32, frac: u8 } {
    const scaled = @floatToInt(i32, f * 100);
    return .{
        .int  = @divTrunc(scaled, 100),
        .frac = @intCast(u8, @mod(scaled, 100)),
    };
}

///////////////////////////////////////////////////////////////////////////////
//  Types

/// Sensor Errors
pub const SensorError = error{
    NameError,      // Invalid name
    OptionError,    // Invalid option
    SignalError,    // Failed to register signal handler
    OpenError,      // Failed to open device
    IntervalError,  // Failed to set sensor interval
    BatchError,     // Failed to set sensor batch
    EnableError,    // Failed to activate sensor
    DisableError,   // Failed to disable sensor
};
