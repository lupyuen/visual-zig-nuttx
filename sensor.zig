//! Sensor Definitions

/// Import the Zig Standard Library
const std = @import("std");

/// Import the Sensor Library from C
pub const c = @cImport({
    // NuttX Defines
    @cDefine("__NuttX__",  "");
    @cDefine("NDEBUG",     "");
    @cDefine("ARCH_RISCV", "");

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
pub fn floatToFixed(f: f32) FixedPoint {
    const scaled = @floatToInt(i32, f * 100.0);
    const rem = @rem(scaled, 100);
    const rem_abs = if (rem < 0) -rem else rem;
    return .{
        .int  = @divTrunc(scaled, 100),
        .frac = @intCast(u8, rem_abs),
    };
}

///////////////////////////////////////////////////////////////////////////////
//  Types

/// Fixed Point Number (2 decimal places)
pub const FixedPoint = struct {
    /// Integer Component
    int: i32,
    /// Fraction Component (scaled by 100)
    frac: u8,

    /// Format the output for Fixed Point Number (like 123.45)
    pub fn format(
        self: FixedPoint,
        comptime fmt: []const u8,
        options: std.fmt.FormatOptions,
        writer: anytype,
    ) !void {
        _ = fmt;
        _ = options;
        try writer.print("{}.{:0>2}", .{
            self.int, 
            self.frac 
        });
    }
};

/// Sensor Errors
pub const SensorError = error{
    NameError,      // Invalid name
    OptionError,    // Invalid option
    SignalError,    // Failed to register signal handler
    OpenError,      // Failed to open device
    IntervalError,  // Failed to set sensor interval
    BatchError,     // Failed to set sensor batch
};
