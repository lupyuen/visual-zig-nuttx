![Pine64 PineCone BL602 RISC-V Board connected to Bosch BME280 Sensor](https://lupyuen.github.io/images/sensor-title.jpg)

# Visual Programming for Zig with NuttX Sensors

Read the articles...

-   ["Zig Visual Programming with Blockly"](https://lupyuen.github.io/articles/blockly)

-   ["Read NuttX Sensor Data with Zig"](https://lupyuen.github.io/articles/sensor)

Can we use Scratch / [Blockly](https://github.com/lupyuen3/blockly-zig-nuttx) to code Zig programs, the drag-n-drop way?

Let's create a Visual Programming Tool for Zig that will generate IoT Sensor Apps with Apache NuttX RTOS.

_Why limit to IoT Sensor Apps?_

-   Types are simpler: Only floating-point numbers will be supported, no strings needed

-   Blockly is Typeless. With Zig we can use Type Inference to deduce the missing Struct Types

-   Make it easier to experiment with various IoT Sensors: Temperature, Humidity, Air Pressure, ...

[Blockly Source Code: lupyuen3/blockly-zig-nuttx](https://github.com/lupyuen3/blockly-zig-nuttx)

![Visual Programming for Zig with NuttX Sensors](https://lupyuen.github.io/images/sensor-visual.jpg)

# Sensor Test App in C

We start with the Sensor Test App (in C) from Apache NuttX RTOS: [sensortest.c](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c)

Here are the steps for reading a NuttX Sensor...

```c
// From https://lupyuen.github.io/articles/bme280#sensor-test-app
// Open the Sensor Device.
// devname looks like "/dev/sensor/sensor_baro0" or "/dev/sensor/sensor_humi0"
fd = open(devname, O_RDONLY | O_NONBLOCK);

// Set Standby Interval
ioctl(fd, SNIOC_SET_INTERVAL, interval);

// Set Batch Latency
ioctl(fd, SNIOC_BATCH, latency);

//  If Sensor Data is available...
if (poll(&fds, 1, -1) > 0) {

  //  Read the Sensor Data
  if (read(fd, buffer, len) >= len) {

    // Cast buffer as Barometer Sensor Data
    struct sensor_event_baro *event = 
      (struct sensor_event_baro *) buffer;

    // Handle Pressure and Temperature
    printf(
      "%s: timestamp:%d value1:%.2f value2:%.2f\n",
      name, 
      event.timestamp, 
      event.pressure, 
      event.temperature
    );
  }
}

// Close the Sensor Device and free the buffer
close(fd);
free(buffer);
```

[(Source)](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c)

NuttX compiles the Sensor Test App [sensortest.c](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c) with this GCC command...

```bash
##  App Source Directory
cd $HOME/nuttx/apps/testing/sensortest

##  Compile sensortest.c with GCC
riscv64-unknown-elf-gcc \
  -c \
  -fno-common \
  -Wall \
  -Wstrict-prototypes \
  -Wshadow \
  -Wundef \
  -Os \
  -fno-strict-aliasing \
  -fomit-frame-pointer \
  -fstack-protector-all \
  -ffunction-sections \
  -fdata-sections \
  -g \
  -march=rv32imafc \
  -mabi=ilp32f \
  -mno-relax \
  -isystem "$HOME/nuttx/nuttx/include" \
  -D__NuttX__ \
  -DNDEBUG \
  -DARCH_RISCV  \
  -pipe \
  -I "$HOME/nuttx/apps/include" \
  -Dmain=sensortest_main \
  sensortest.c \
  -o  sensortest.c.home.user.nuttx.apps.testing.sensortest.o
```

(Observed from `make --trace`)

Let's convert the Sensor Test App from C to Zig...

# Auto-Translate Sensor App to Zig

The Zig Compiler can auto-translate C code to Zig. [(See this)](https://ziglang.org/documentation/master/#C-Translation-CLI)

Here's how we auto-translate our Sensor App [sensortest.c](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c) from C to Zig...

-   Take the GCC command from above

-   Change `riscv64-unknown-elf-gcc` to `zig translate-c`

-   Add the target `-target riscv32-freestanding-none -mcpu=baseline_rv32-d`

-   Remove `-march=rv32imafc`

-   Surround the C Flags by `-cflags` ... `--`

Like this...

```bash
##  App Source Directory
cd $HOME/nuttx/apps/testing/sensortest

##  Auto-translate sensortest.c from C to Zig
zig translate-c \
  -target riscv32-freestanding-none \
  -mcpu=baseline_rv32-d \
  -cflags \
    -fno-common \
    -Wall \
    -Wstrict-prototypes \
    -Wshadow \
    -Wundef \
    -Os \
    -fno-strict-aliasing \
    -fomit-frame-pointer \
    -fstack-protector-all \
    -ffunction-sections \
    -fdata-sections \
    -g \
    -mabi=ilp32f \
    -mno-relax \
  -- \
  -isystem "$HOME/nuttx/nuttx/include" \
  -D__NuttX__ \
  -DNDEBUG \
  -DARCH_RISCV  \
  -I "$HOME/nuttx/apps/include" \
  -Dmain=sensortest_main  \
  sensortest.c \
  >sensortest.zig
```

To fix the translation (Zig Translate doesn't support `goto`) we need to insert this...

```c
#ifdef __clang__  //  Workaround for zig cc
#include <arch/types.h>
#include "../../nuttx/include/limits.h"
#define goto return ret;
#define name_err
#define open_err
#define ctl_err
#endif  //  __clang__
```

[(Source)](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c#L25-L32)

And change this...

```c
#ifndef __clang__  //  Workaround for NuttX with zig cc
ctl_err:
#endif  //  !__clang__
  close(fd);
#ifndef __clang__  //  Workaround for NuttX with zig cc
open_err:
#endif  //  !__clang__
  free(buffer);
#ifndef __clang__  //  Workaround for NuttX with zig cc
name_err:
#endif  //  !__clang__
```

[(Source)](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c#L403-L413)

[(See the changes)](https://github.com/lupyuen/incubator-nuttx-apps/commit/907e1cc3755e9699acdefd99fc76939ddd387e34)

Here's the original C code: [sensortest.c](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c)

And the auto-translation from C to Zig: [translated/sensortest.zig](translated/sensortest.zig)

# Sensor App in Zig

We copy the relevant snippets from the Auto-Translation to create our Zig Sensor App: [sensortest.zig](https://github.com/lupyuen/visual-zig-nuttx/blob/0d3617dbcae5ae9836b5a70ba2026c75e12a00ce/sensortest.zig#L32-L417)

https://github.com/lupyuen/visual-zig-nuttx/blob/0d3617dbcae5ae9836b5a70ba2026c75e12a00ce/sensortest.zig#L32-L417

Then we compile our Zig Sensor App...

```bash
##  Download our Zig Sensor App for NuttX
git clone --recursive https://github.com/lupyuen/visual-zig-nuttx
cd visual-zig-nuttx

##  Compile the Zig App for BL602 (RV32IMACF with Hardware Floating-Point)
zig build-obj \
  --verbose-cimport \
  -target riscv32-freestanding-none \
  -mcpu=baseline_rv32-d \
  -isystem "$HOME/nuttx/nuttx/include" \
  -I "$HOME/nuttx/apps/include" \
  sensortest.zig

##  Patch the ELF Header of `sensortest.o` from Soft-Float ABI to Hard-Float ABI
xxd -c 1 sensortest.o \
  | sed 's/00000024: 01/00000024: 03/' \
  | xxd -r -c 1 - sensortest2.o
cp sensortest2.o sensortest.o

##  Copy the compiled app to NuttX and overwrite `sensortest.o`
##  TODO: Change "$HOME/nuttx" to your NuttX Project Directory
cp sensortest.o $HOME/nuttx/apps/testing/sensortest/sensortest*.o

##  Build NuttX to link the Zig Object from `sensortest.o`
##  TODO: Change "$HOME/nuttx" to your NuttX Project Directory
cd $HOME/nuttx/nuttx
make
```

# Connect BME280 Sensor

For testing the Zig Sensor App, we connect the BME280 Sensor (Temperature / Humidity / Air Pressure) to Pine64's [__PineCone BL602 Board__](https://lupyuen.github.io/articles/pinecone)...

| BL602 Pin | BME280 Pin | Wire Colour
|:---:|:---:|:---|
| __`GPIO 1`__ | `SDA` | Green 
| __`GPIO 2`__ | `SCL` | Blue
| __`3V3`__ | `3.3V` | Red
| __`GND`__ | `GND` | Black

![Pine64 PineCone BL602 RISC-V Board connected to Bosch BME280 Sensor](https://lupyuen.github.io/images/sensor-connect.jpg)

# Run Zig Sensor App

To read the BME280 Sensor, let's run the Zig Sensor App: [sensortest.zig](https://github.com/lupyuen/visual-zig-nuttx/blob/0d3617dbcae5ae9836b5a70ba2026c75e12a00ce/sensortest.zig#L32-L417)

First we read the Humidity with our Zig Sensor App...

```bash
NuttShell (NSH) NuttX-10.3.0
nsh> sensortest -n 1 humi0
Zig Sensor Test
bme280_fetch: temperature=30.520000 °C, pressure=1027.211548 mbar, humidity=72.229492 %
humi0: timestamp:109080000 value:72.23
```

[(See the complete log)](https://gist.github.com/lupyuen/97358b560197d26304fc196ceb45565a)

Our Zig App returns the correct Humidity (`value`): 72 %.

Next we read the Temperature and Air Pressure with our Zig Sensor App...

```bash
nsh> sensortest -n 1 baro0
Zig Sensor Test
bme280_fetch: temperature=30.520000 °C, pressure=1029.177490 mbar, humidity=72.184570 %
baro0: timestamp:78490000 value1:72.18 value2:72.18
```

[(See the complete log)](https://gist.github.com/lupyuen/97358b560197d26304fc196ceb45565a)

This shows that the BME280 Driver has fetched the correct Temperature (30 °C), Pressure (1,029 mbar) and Humidity (72 %).

But our Zig App returns both Pressure (`value1`) and Temperature (`value2`) as 72. Which is incorrect.

Compare the above output with the original C Version of the Sensor App: [sensortest.c](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c)

```bash
nsh> sensortest -n 1 humi0
bme280_fetch: temperature=30.690001 °C, pressure=1027.283447 mbar, humidity=72.280273 %
humi0: timestamp:26000000 value:72.28

nsh> sensortest -n 1 baro0
bme280_fetch: temperature=30.690001 °C, pressure=1029.177368 mbar, humidity=72.257813 %
baro0: timestamp:14280000 value1:1029.18 value2:30.69
```

[(See the complete log)](https://gist.github.com/lupyuen/f20fbfbf5d4f1103946a278b87b8bc3c)

We see that Humidity (`value`), Pressure (`value1`) and Temperature (`value2`) are returned correctly by the C Version of the Sensor App.

Something got messed up in the Auto-Translation from C [(sensortest.c)](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c) to Zig [(sensortest.zig)](https://github.com/lupyuen/visual-zig-nuttx/blob/0d3617dbcae5ae9836b5a70ba2026c75e12a00ce/sensortest.zig#L32-L417). Let's find out why...

# Fix Floating-Point Values

_(Note: We observed this issue with Zig Compiler version 0.10.0, it might have been fixed in later versions of the compiler)_

Earlier we saw that our Zig Sensor App printed the incorrect Sensor Values for Pressure (`value1`) and Temperature (`value2`)...

```bash
nsh> sensortest -n 1 baro0
Zig Sensor Test
bme280_fetch: temperature=30.520000 °C, pressure=1029.177490 mbar, humidity=72.184570 %
baro0: timestamp:78490000 value1:72.18 value2:72.18
```

Zig seems to have a problem passing the Pressure and Temperature values (both `f32`) to `printf`, based on this Auto-Translated Zig Code...

```c
fn print_valf2(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_baro, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu value1:%.2f value2:%.2f\n", 
       name, 
       event.*.timestamp, 
       @floatCast(f64, event.*.pressure), 
       @floatCast(f64, event.*.temperature)
    );
}
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/0d3617dbcae5ae9836b5a70ba2026c75e12a00ce/sensortest.zig#L187-L198)

The workaround is to convert the Float values to Integer AND split into two calls to `printf`...

```c
fn print_valf2(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_baro, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu ", 
        name, 
        event.*.timestamp, 
    );
    _ = printf("value1:%d value2:%d\n", 
        @floatToInt(i32, event.*.pressure), 
        @floatToInt(i32, event.*.temperature)
    );
}
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/74ac3c36f44911685503f4ba7161771907af2793/sensortest.zig#L191-L222)

Now our Zig Sensor App prints the correct values, but truncated as Integers...

```text
nsh> sensortest -n 1 baro0
Zig Sensor Test
SensorTest: Test /dev/sensor/sensor_baro0 with interval(1000000us), latency(0us)
baro0: timestamp:42610000 value1:1003 value2:31
SensorTest: Received message: baro0, number:1/1

nsh> sensortest -n 1 humi0
Zig Sensor Test
SensorTest: Test /dev/sensor/sensor_humi0 with interval(1000000us), latency(0us)
humi0: timestamp:32420000 value:68
SensorTest: Received message: humi0, number:1/1
```

Since `printf` works OK with Integers, let's print the Floats as Integers with 2 decimal places...

```zig
/// Print the float with 2 decimal places.
/// We print as integers because `printf` has a problem with floats.
fn print_float(f: f32) void {
    const scaled = @floatToInt(i32, f * 100);
    const f1 = @divTrunc(scaled, 100);
    const f2 = @mod(scaled, 100);
    _ = printf("%d.%02d", f1, f2);
}
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/54d6b0c0a55126435b5244cef8f78d6060182215/sensortest.zig#L313-L320)

Then we pass the Floats to `print_float` for printing...

```zig
fn print_valf2(buffer: [*c]const u8, name: [*c]const u8) void {
    const event = @intToPtr([*c]c.struct_sensor_baro, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu ", 
        name, 
        event.*.timestamp, 
    );
    _ = printf("value1:");  print_float(event.*.pressure);
    _ = printf(" value2:"); print_float(event.*.temperature);
    _ = printf("\n");
}
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/54d6b0c0a55126435b5244cef8f78d6060182215/sensortest.zig#L202-L217)

Finally we see the Pressure (`value1`), Temperature (`value2`) and Humidity (`value`) printed correctly with 2 decimal places!

```text
nsh> sensortest -n 1 baro0
Zig Sensor Test
SensorTest: Test /dev/sensor/sensor_baro0 with interval(1000000us), latency(0us)
baro0: timestamp:17780000 value1:1006.12 value2:29.65
SensorTest: Received message: baro0, number:1/1

nsh> sensortest -n 1 humi0
Zig Sensor Test
SensorTest: Test /dev/sensor/sensor_humi0 with interval(1000000us), latency(0us)
humi0: timestamp:28580000 value:77.44
SensorTest: Received message: humi0, number:1/1
```

_Have we tried other options for `@floatCast`?_

Yes we tested these options for `@floatCast`...

```zig
_ = printf("value1 no floatCast: %f\n",  event.*.pressure);
_ = printf("value1 floatCast f32: %f\n", @floatCast(f32, event.*.pressure));
_ = printf("value1 floatCast f64: %f\n", @floatCast(f64, event.*.pressure));
```

But the result is incorrect...

```text
nsh> sensortest -n 1 baro0
Zig Sensor Test
baro0: timestamp:60280000 value1:1006.90 value2:30.79
value1 no floatCast: 0.000000
value1 floatCast f32: 0.000000
value1 floatCast f64: 30.790001
```

Because `value1` (Pressure) is supposed to be 1006, not 30.

Robert Lipe suggests that we might have a problem with the RISC-V Calling Conventions for Floats and Doubles...

> The calling conventions for RISC-V on small computers for floats/doubles is weird and the software/emulators/ libs are confusing. Verify that floats get promoted to doubles in the call and that they go to F0, F2, F4, etc. in the frame, properly aligned. Double check complr flags

[(Source)](https://twitter.com/robertlipe/status/1549640832818487297?t=3lcvm6oYFgEH_YMX7GfaUw&s=19)

> See, e.g., https://github.com/riscv-non-isa/riscv-elf-psabi-doc/blob/master/riscv-cc.adoc and related. This is _totally_ the kind of thing that small parts (enable FP on BL602; disable s/w libs) and x-language can get wrong.

[(Source)](https://twitter.com/robertlipe/status/1549641888931651591?t=z5VGGX0MyiIGsHHp4FyAzw&s=19)

_Instead of `printf`, why not call the Zig Debug Logger `debug`?_

```zig
debug("pressure: {}", .{ event.*.pressure });
debug("temperature: {}", .{ event.*.temperature });
```

This causes a Linker Error, as explained below...

# Floating-Point Link Error

_(Note: We observed this issue with Zig Compiler version 0.10.0, it might have been fixed in later versions of the compiler)_

When we call the Zig Debug Logger `debug` to print Floating-Point Numbers (32-bit)...

```zig
var event = @intToPtr([*c]c.struct_sensor_baro, @ptrToInt(buffer));
debug("pressure: {}",    .{ event.*.pressure });
debug("temperature: {}", .{ event.*.temperature });
```

It fails to link...

```text
riscv64-unknown-elf-ld: nuttx/nuttx/staging/libapps.a(sensortest.c.home.user.nuttx.apps.testing.sensortest.o): in function `std.fmt.errol.errolInt':
zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:305: 
undefined reference to `__fixunsdfti'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:305: 
undefined reference to `__floatuntidf'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:315: 
undefined reference to `__umodti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:316: undefined reference to `__udivti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:316: 
undefined reference to `__umodti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:318: 
undefined reference to `__umodti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:319: 
undefined reference to `__udivti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:319: 
undefined reference to `__umodti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:324: 
undefined reference to `__udivti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:335: 
undefined reference to `__udivti3'
riscv64-unknown-elf-ld: nuttx/nuttx/staging/libapps.a(sensortest.c.home.user.nuttx.apps.testing.sensortest.o): in function `std.fmt.errol.fpeint':
zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:677: 
undefined reference to `__ashlti3'
```

But printing as Integers with `debug` works OK...

```zig
debug("pressure: {}", 
  .{ @floatToInt(i32, event.*.pressure) });
debug("temperature: {}", 
  .{ @floatToInt(i32, event.*.temperature) });
```

So we print Floats as Integers with the Debug Logger...

# Fixed-Point Printing

Earlier we saw that Zig Debug Logger `debug` won't print Floating-Point Numbers. (Due to a Linker Error)

Let's convert Floating-Point Numbers to Fixed-Point Numbers (2 decimal places) and print as Integers instead...

```zig
/// Convert the float to a fixed-point number (`int`.`frac`) with 2 decimal places.
/// We do this because `debug` has a problem with floats.
pub fn floatToFixed(f: f32) struct { int: i32, frac: u8 } {
    const scaled = @floatToInt(i32, f * 100.0);
    const rem = @rem(scaled, 100);
    const rem_abs = if (rem < 0) -rem else rem;
    return .{
        .int  = @divTrunc(scaled, 100),
        .frac = @intCast(u8, rem_abs),
    };
}
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/b4a0ce4ae0e518e705d0de1437a32e201a7b0c50/sensor.zig#L40-L50)

This is how we print Floating-Point Numbers as Fixed-Point Numbers...

```zig
/// Print 2 floats
fn print_valf2(buffer: []const align(8) u8, name: []const u8) void {
    _ = name;
    const event = @ptrCast(*const c.struct_sensor_baro, &buffer[0]);
    const pressure = floatToFixed(event.*.pressure);
    const temperature = floatToFixed(event.*.temperature);
    debug("value1:{}.{:0>2}", .{ pressure.int, pressure.frac });
    debug("value2:{}.{:0>2}", .{ temperature.int, temperature.frac });
}
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/3cc8c12d38932ab4f3c5e2cd0dd8f5b33ad47750/sensortest.zig#L224-L232)

# Change to Static Buffer

Originally we allocated the Sensor Data Buffer from the Heap via `calloc`...

```zig
// Allocate buffer from heap
len = @bitCast(c_int, @as(c_uint, g_sensor_info[@intCast(c_uint, idx)].esize));
buffer = @ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), 
    c.calloc(@bitCast(usize, @as(c_int, 1)), @bitCast(usize, len))));
...
// Read into heap buffer
if (c.read(fd, @ptrCast(?*anyopaque, buffer), @bitCast(usize, len)) >= len) {
    g_sensor_info[@intCast(c_uint, idx)].print.?(buffer, name);
}
...
// Deallocate heap buffer
c.free(@ptrCast(?*anyopaque, buffer));
```

To make this a little safer, we switched to a Static Buffer...

```zig
/// Sensor Data Buffer
/// (Aligned to 8 bytes because it's passed to C)
var sensor_data align(8) = std.mem.zeroes([256]u8);
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/4ccb0cd9b2a55464b76b8a0fcbcf9f106d608f2f/sensortest.zig#L493-L495)

So that we no longer worry about deallocating the buffer...

```zig
// Use static buffer
len = @bitCast(c_int, @as(c_uint, g_sensor_info[@intCast(c_uint, idx)].esize));
assert(sensor_data.len >= len);
...
// Read into static buffer
if (c.read(fd, @ptrCast(?*anyopaque, &sensor_data), @bitCast(usize, len)) >= len) {
    g_sensor_info[@intCast(c_uint, idx)].print.?(&sensor_data, name);
}
...
// No need to deallocate buffer
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/4ccb0cd9b2a55464b76b8a0fcbcf9f106d608f2f/sensortest.zig#L98-L153)

We also moved the Device Name from the Stack...

```zig
/// Main Function that will be called by NuttX. We read the Sensor Data from a Sensor.
pub export fn sensortest_main(...) {
    var devname: [c.PATH_MAX]u8 = undefined;
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/b680cfa718661db34e15cb0b9861c68c1598ead2/sensortest.zig#L46)

To a Static Buffer...

```zig
/// Device Name, like "/dev/sensor/sensor_baro0" or "/dev/sensor/sensor_humi0"
/// (Aligned to 8 bytes because it's passed to C)
var devname align(8) = std.mem.zeroes([c.PATH_MAX]u8);
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/f0887918e5efb990ee81911d1f851c5ff6334875/sensortest.zig#L534-L536)

And we removed the Alignment from Device Name...

```zig
fd = c.open(
    @ptrCast([*c]u8, @alignCast(std.meta.alignment(u8), &devname)), 
    c.O_RDONLY | c.O_NONBLOCK
);
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/b680cfa718661db34e15cb0b9861c68c1598ead2/sensortest.zig#L127-L130)

So it looks like this...

```zig
fd = c.open(
    &devname[0], 
    c.O_RDONLY | c.O_NONBLOCK
);
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/a975ae54f601c9176ed7c8d2f89650a7f3644c5b/sensortest.zig#L117-L120)

# Incorrect Alignment

When we align the Sensor Data Buffer to 4 bytes...

```zig
/// Sensor Data Buffer
/// (Aligned to 4 bytes because it's passed to C)
var sensor_data align(4) = std.mem.zeroes([256]u8);
```

It triggers a Zig Panic due to Incorrect Aligment...

```text
nsh> sensortest -n 1 baro0
Zig Sensor Test
SensorTest: Test /dev/sensor/sensor_baro0 with interval(1000000us), latency(0us)

!ZIG PANIC!
incorrect alignment
Stack Trace:
0x23014f4c
0x230161e2
```

RISC-V Disassembly shows that it's checking `andi a0,a0,7`...

```text
nuttx/visual-zig-nuttx/sensortest.zig:196
    const event = @intToPtr([*c]c.struct_sensor_baro, @ptrToInt(buffer));
23014f2a: 85aa     mv      a1,a0
23014f2c: fcb42e23 sw      a1,-36(s0)
23014f30: 891d     andi    a0,a0,7
23014f32: 4581     li      a1,0
23014f34: 00b50c63 beq     a0,a1,23014f4c <print_valf2+0x32>
23014f38: a009     j       23014f3a <print_valf2+0x20>
23014f3a: 23068537 lui     a0,0x23068
23014f3e: 3c850513 addi    a0,a0,968 # 230683c8 <__unnamed_6>
23014f42: 4581     li      a1,0
23014f44: 00000097 auipc   ra,0x0
23014f48: dd4080e7 jalr    -556(ra) # 23014d18 <panic>
23014f4c: fdc42503 lw      a0,-36(s0)
23014f50: fea42a23 sw      a0,-12(s0)
```
(Last 3 bits of address must be 0)

Which means that the buffer address must be aligned to 8 bytes...

```zig
/// Sensor Data Buffer
/// (Aligned to 8 bytes because it's passed to C)
var sensor_data align(8) = std.mem.zeroes([256]u8);
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/4ccb0cd9b2a55464b76b8a0fcbcf9f106d608f2f/sensortest.zig#L493-L495)

Probably because `struct_sensor_baro` contains a `timestamp` field that's a 64-bit Integer.

# Clean Up

The Auto-Translation from C to Zig looks super verbose and strips away the Macro Constants...

```zig
// Parse the Command-Line Options
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
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/01d5cc053b2c980f16a406afc62a85911a18e18c/sensortest.zig#L62-L90)

We clean up the Zig code like this...

```zig
// Parse the Command-Line Options
g_should_exit = false;
while (true) {
    ret = c.getopt(argc, argv, "i:b:n:h");
    if (ret == c.EOF) { break; }
    switch (ret) {
        'i' => { interval = c.strtoul(c.getoptargp().*, null, 0); },
        'b' => { latency  = c.strtoul(c.getoptargp().*, null, 0); },
        'n' => { count    = c.strtoul(c.getoptargp().*, null, 0); },
        else => { usage(); return ret; },
    }
}
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/8c870893b91db0eae22b0beff808ba9b5f3b2e11/sensortest.zig#L52-L67)

So that it resembles the original C code...

```c
g_should_exit = false;
while ((ret = getopt(argc, argv, "i:b:n:h")) != EOF)
  {
    switch (ret)
      {
        case 'i':
          interval = strtoul(optarg, NULL, 0);
          break;

        case 'b':
          latency = strtoul(optarg, NULL, 0);
          break;

        case 'n':
          count = strtoul(optarg, NULL, 0);
          break;

        case 'h':
        default:
          usage();
          goto name_err;
      }
  }
```

[(Source)](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c#L268-L290)

Our Zig Sensor App was originally this...

https://github.com/lupyuen/visual-zig-nuttx/blob/4ccb0cd9b2a55464b76b8a0fcbcf9f106d608f2f/sensortest.zig#L35-L170

After cleanup becomes this...

https://github.com/lupyuen/visual-zig-nuttx/blob/692b5e5f6b67d04815f975dff77380a164c98247/multisensor.zig#L15-L150

We test again to be sure that the Zig Sensor App is still working OK...

```text
NuttShell (NSH) NuttX-10.3.0
nsh> uname -a
NuttX 10.3.0 32c8fdf272 Jul 18 2022 16:38:47 risc-v bl602evb

nsh> sensortest -n 1 baro0
Zig Sensor Test
test_multisensor
SensorTest: Test /dev/sensor/sensor_baro0  with interval(1000000), latency(0)
value1:1007.65
value2:27.68
SensorTest: Received message: baro0, number:1/1

nsh> sensortest -n 1 humi0
Zig Sensor Test
test_multisensor
SensorTest: Test /dev/sensor/sensor_humi0  with interval(1000000), latency(0)
value:78.91
SensorTest: Received message: humi0, number:1/1
```

We also check that errors are handled correctly...

```text
nsh> sensortest -n 1 baro
Zig Sensor Test
test_multisensor
Failed to open device:/dev/sensor/sensor_baro , ret:No such file or directory

nsh> sensortest -n 1 invalid
Zig Sensor Test
test_multisensor
The sensor node name:invalid is invalid
sensortest test
 Test barometer sensor (/dev/sensor/sensor_baro0)
sensortest test2
 Test humidity sensor (/dev/sensor/sensor_humi0)
sensortest [arguments...] <command>
        [-h      ]  sensortest commands help
        [-i <val>]  The output data period of sensor in us
                    default: 1000000
        [-b <val>]  The maximum report latency of sensor in us
                    default: 0
        [-n <val>]  The number of output data
                    default: 0
 Commands:
        <sensor_node_name> ex, accel0(/dev/sensor/sensor_accel0)

nsh> sensortest
Zig Sensor Test
sensortest test
 Test barometer sensor (/dev/sensor/sensor_baro0)
sensortest test2
 Test humidity sensor (/dev/sensor/sensor_humi0)
sensortest [arguments...] <command>
        [-h      ]  sensortest commands help
        [-i <val>]  The output data period of sensor in us
                    default: 1000000
        [-b <val>]  The maximum report latency of sensor in us
                    default: 0
        [-n <val>]  The number of output data
                    default: 0
 Commands:
        <sensor_node_name> ex, accel0(/dev/sensor/sensor_accel0)
```

# Read Barometer Sensor

Reading Sensor Data from a single sensor looks a lot simpler (because we don't need to cast the Sensor Data)...

```zig
// Omitted: Open the Sensor Device, enable the Sensor and poll for Sensor Data
...
// Define the Sensor Data Type
var sensor_data = std.mem.zeroes(c.struct_sensor_baro);
const len = @sizeOf(@TypeOf(sensor_data));

// Read the Sensor Data
if (c.read(fd, &sensor_data, len) >= len) {

    // Convert the Sensor Data to Fixed-Point Numbers
    const pressure    = floatToFixed(sensor_data.pressure);
    const temperature = floatToFixed(sensor_data.temperature);

    // Print the Sensor Data
    debug("pressure:{}.{:0>2}", .{
        pressure.int, 
        pressure.frac 
    });
    debug("temperature:{}.{:0>2}", .{
        temperature.int,
        temperature.frac 
    });
}
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/6707ec5c597fddc971d14cd078527e6926177edb/sensortest.zig#L103-L123)

Here's the Air Pressure and Temperature read from the BME280 Barometer Sensor...

```text
nsh> sensortest test
Zig Sensor Test
test_sensor
pressure:1007.66
temperature:27.70
```

# Read Humidity Sensor

To read a Humidity Sensor (like BME280), the code looks highly similar...

```zig
// Define the Sensor Data Type
var sensor_data = std.mem.zeroes(c.struct_sensor_humi);
const len = @sizeOf(@TypeOf(sensor_data));

// Read the Sensor Data
if (c.read(fd, &sensor_data, len) >= len) {

    // Convert the Sensor Data to Fixed-Point Numbers
    const humidity = floatToFixed(sensor_data.humidity);

    // Print the Sensor Data
    debug("humidity:{}.{:0>2}", .{
        humidity.int, 
        humidity.frac 
    });
}
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/8d9a98afc5864af8d087bc566841863a68ee4b1e/sensortest.zig#L108-L128)

Here's the Humidity read from the BME280 Humidity Sensor...

```text
nsh> sensortest test2
Zig Sensor Test
test_sensor2
humidity:78.81
```

# Zig Generics

With Zig Generics and `comptime`, we can greatly simplify the reading of Sensor Data...

```zig
// Read the Temperature
const temperature: f32 = try sen.read_sensor(
    c.struct_sensor_baro,       // Sensor Data Struct to be read
    "temperature",              // Sensor Data Field to be returned
    "/dev/sensor/sensor_baro0"  // Path of Sensor Device
);

// Print the Temperature
debug("temperature={}", .{ floatToFixed(temperature) });
```

[(Source)](visual.zig#L15-L62)

Here's the implementation of `read_sensor`...

https://github.com/lupyuen/visual-zig-nuttx/blob/a7404eae71dc37850e323848180414aa6ef7e0f7/sensor.zig#L34-L108

Note that the Sensor Data Struct Type and the Sensor Data Field are declared as `comptime`...

```zig
/// Read a Sensor and return the Sensor Data
pub fn read_sensor(
    comptime SensorType: type,        // Sensor Data Struct to be read, like c.struct_sensor_baro
    comptime field_name: []const u8,  // Sensor Data Field to be returned, like "temperature"
    device_path: []const u8           // Path of Sensor Device, like "/dev/sensor/sensor_baro0"
) !f32 { ...
```

Which means that the values will be substituted at Compile-Time. (Works like a C Macro)

We can then refer to the Sensor Data Struct `sensor_baro` like this...

```zig
    // Define the Sensor Data Type
    var sensor_data = std.mem.zeroes(
        SensorType
    );
```

And return a field `temperature` like this...

```zig
    // Return the Sensor Data Field
    return @field(sensor_data, field_name);
```

Thus this program...

https://github.com/lupyuen/visual-zig-nuttx/blob/a7404eae71dc37850e323848180414aa6ef7e0f7/visual.zig#L15-L62

Produces this output...

```text
NuttShell (NSH) NuttX-10.3.0
nsh> sensortest visual
Zig Sensor Test
Start main
a=123.45
a=123.45
a=123.45
a=123.45
a=123.45
a=123.45
a=123.45
a=123.45
a=123.45
a=123.45
temperature=30.18
pressure=1007.69
humidity=68.67
End main
```

# Debug Logger Crashes

_(Note: We observed this issue with Zig Compiler version 0.10.0, it might have been fixed in later versions of the compiler)_

TODO: Calling the `debug` logger inside `print_valf2` causes weird crashes...

```zig
debug("timestamp: {}", .{ event.*.timestamp });
```

Possibly due to Memory Corruption inside our Zig Debug Logger...

```zig
/// Called by Zig for `std.log.debug`, `std.log.info`, `std.log.err`, ...
/// TODO: Support multiple threads
/// https://gist.github.com/leecannon/d6f5d7e5af5881c466161270347ce84d
pub fn log(...) void {

    // Possible memory corruption here: Format the message
    var slice = std.fmt.bufPrint(&log_buf, format, args)
        catch { _ = puts("*** Error: log_buf too small"); return; };
    ...
```

Here's a crash log...

```text
bme280_fetch: temperature=31.570000 Â°C, pressure=1025.396118 mbar, humidity=64.624023 %
name: baro0
timestamp: 27270000
value1: 1025
value2: 31
size: 16
SensorTest: Received message: , number:1/1
decode_insn_compressed: Compressed: a783
riscv_exception: EXCEPTION: Load access fault. MCAUSE: 00000005
riscv_exception: PANIC!!! Exception = 00000005
up_assert: Assertion failed at file:common/riscv_exception.c line: 89 task: sensortest
backtrace| 3: 0x2300c698
riscv_registerdump: EPC: 2300c698
riscv_registerdump: A0: 4201b9a0 A1: 0000a80 A2: 4201bf48 A3: 00000000
riscv_registerdump: A4: 2307a5e8 A5: 00583000 A6: 2307a000 A7: 00000000
riscv_registerdump: T0: 000001ff T1: 23005830 T2: 0000002d T3: 00000068
riscv_registerdump: T4: 00000009 T5: 0000002a T6: 0000002e
riscv_registerdump: S0: 4201b9a0 S1: 2307a000 S2: 00000a80 S3: 4201bdef
riscv_registerdump: S4: 00000000 S5: 00000000 S6: 00000000 S7: 00000000
riscv_registerdump: S8: 00000000 S9: 00000000 S10: 00000000 S11: 00000000
riscv_registerdump: SP: 4201bef0 FP: 4201b9a0 TP: 00000000 RA: 2300c78e
```

Another crash...

```text
up_assert: Assertion failed at file:common/riscv_doirq.c line: 78 task: sensortest
backtrace| 3: 0x2300bd9a
riscv_registerdump: EPC: 2300bd9a
riscv_registerdump: A0: 00000000 A1: 4201bc38 A2: 00000013 A3: 00000000
riscv_registerdump: A4: 00000000 A5: 0000000b A6: a0000000 A7: 2306a1b2
riscv_registerdump: T0: f0000000 T1: 80000000 T2: 00000000 T3: 00000000
riscv_registerdump: T4: 00000008 T5: 00010000 T6: 6d0cb600
riscv_registerdump: S0: 0000001b S1: 00000000 S2: 23079000 S3: 4201b8c8
riscv_registerdump: S4: 4201bc38 S5: 00000006 S6: 00000000 S7: 00000000
riscv_registerdump: S8: 00000000 S9: 00000000 S10: 00000000 S11: 00000000
riscv_registerdump: SP: 4201bbf0 FP: 0000001b TP: 00000000 RA: 2300bd78
```

Which happens when closing a file (console?)...

```text
/home/user/nuttx/nuttx/fs/inode/fs_files.c:380
  /* if f_inode is NULL, fd was closed */
  if (!(*filep)->f_inode)
2300bd98:	441c                	lw	a5,8(s0)
2300bd9a:	c39d                	beqz	a5,2300bdc0 <fs_getfilep+0xaa>
2300bd9c:	87a2                	mv	a5,s0
2300bd9e:	00fa2023          	sw	a5,0(s4)
```

And another crash...

```text
up_assert: Assertion failed at file:mm_heap/mm_free.c line: 154 task: sensortest
riscv_registerdump: EPC: 230086b0
riscv_registerdump: A0: 00000000 A1: 4201bc38 A2: 00000000 A3: 00000000
riscv_registerdump: A4: 23078460 A5: 23078000 A6: 4201bdbc A7: 23078000
riscv_registerdump: T0: 000001ff T1: 23078460 T2: 0000002d T3: 00000068
riscv_registerdump: T4: 00000009 T5: 0000002a T6: 0000002e
riscv_registerdump: S0: 4201c1f0 S1: 23078000 S2: 4201b800 S3: 4201bed0
riscv_registerdump: S4: 42013000 S5: 23078000 S6: 00000000 S7: 00000000
riscv_registerdump: S8: 00000081 S9: 00000025 S10: 23068e25 S11: 4201bec4
riscv_registerdump: SP: 4201beb0 FP: 00000000 TP: 23001478 RA: 230080c2
```

This crashes inside `free` when deallocating the Sensor Data Buffer, might be due to a Heap Problem.

For safety, we converted the Heap Buffer to a Static Buffer.

TODO: Why the weird crashes when we call the `debug` logger inside `print_valf2`?

# Customise Blockly

Next we customise [Blockly](https://github.com/lupyuen3/blockly-zig-nuttx) to generate the Zig Sensor App.

Read the article...

-   ["Zig Visual Programming with Blockly"](https://lupyuen.github.io/articles/blockly)

![Visual Programming for Zig with NuttX Sensors](https://lupyuen.github.io/images/sensor-visual.jpg)
