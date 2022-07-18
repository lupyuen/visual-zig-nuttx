> ![TODO: Visual Programming for Zig with NuttX Sensors](https://lupyuen.github.io/images/2022-07-18%2012.30.20~2.JPG)

> (TODO)

# Visual Programming for Zig with NuttX Sensors

Can we use Scratch / [Blockly](https://github.com/google/blockly) to code Zig programs, the drag-n-drop way?

Let's create a Visual Programming Tool for Zig that will generate IoT Sensor Apps with Apache NuttX RTOS.

_Why limit to IoT Sensor Apps?_

-   Types are simpler: Only floating-point numbers will be supported, no strings needed

-   Blockly is Typeless. With Zig we can use Type Inference to deduce the missing Struct Types

-   Make it easier to experiment with various IoT Sensors: Temperature, Humidity, Air Pressure, ...

# Sensor Test App in C

We start with the Sensor Test App (in C) from Apache NuttX RTOS: [sensortest.c](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c)

Here are the steps for reading a NuttX Sensor...

```c
// From https://lupyuen.github.io/articles/bme280#sensor-test-app
// Open the Sensor Device.
// devname looks like "/dev/sensor/baro0" or "/dev/sensor/humi0"
fd = open(devname, O_RDONLY | O_NONBLOCK);

// Set Standby Interval
ioctl(fd, SNIOC_SET_INTERVAL, &interval);

// Set Batch Latency
ioctl(fd, SNIOC_BATCH, &latency);

// Enable Sensor and switch to Normal Power Mode
ioctl(fd, SNIOC_ACTIVATE, 1);

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

// Disable Sensor and switch to Low Power Mode
ioctl(fd, SNIOC_ACTIVATE, 0);

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

# Fix Sensor Values

Earlier we saw that our Zig Sensor App returned the incorrect Sensor Values for Pressure (`value1`) and Temperature (`value2`)...

```bash
nsh> sensortest -n 1 baro0
Zig Sensor Test
bme280_fetch: temperature=30.520000 °C, pressure=1029.177490 mbar, humidity=72.184570 %
baro0: timestamp:78490000 value1:72.18 value2:72.18
```

Zig seems to have a problem passing the Pressure and Temperature values (both `f32`) to `printf`...

```c
fn print_valf2(buffer: [*c]const u8, name: [*c]const u8) void {
    var event: [*c]c.struct_sensor_event_baro = @intToPtr([*c]c.struct_sensor_event_baro, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu value1:%.2f value2:%.2f\n", 
       name, 
       event.*.timestamp, 
       @floatCast(f64, event.*.pressure), 
       @floatCast(f64, event.*.temperature)
    );
}
```

[(Source)](https://github.com/lupyuen/visual-zig-nuttx/blob/0d3617dbcae5ae9836b5a70ba2026c75e12a00ce/sensortest.zig#L187-L198)

The workaround is to cast the values as Integer AND split into two calls to `printf`...

```c
fn print_valf2(buffer: [*c]const u8, name: [*c]const u8) void {
    var event: [*c]c.struct_sensor_event_baro = @intToPtr([*c]c.struct_sensor_event_baro, @ptrToInt(buffer));
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

Now our Zig Sensor App prints the correct values, truncated as Integers...

```text
nsh> sensortest -n 1 baro0
Zig Sensor Test
SensorTest: Test /dev/sensor/baro0 with interval(1000000us), latency(0us)
baro0: timestamp:42610000 value1:1003 value2:31
SensorTest: Received message: baro0, number:1/1

nsh> sensortest -n 1 humi0
Zig Sensor Test
SensorTest: Test /dev/sensor/humi0 with interval(1000000us), latency(0us)
humi0: timestamp:32420000 value:68
SensorTest: Received message: humi0, number:1/1
```

_Instead of `printf`, why not call the Zig Debug Logger `debug`?_

```zig
debug("pressure: {}", .{ event.*.pressure });
debug("temperature: {}", .{ event.*.temperature });
```

This causes a Linker Error, as explained below...

# Floating-Point Link Error

This code that prints two 32-bit Floating-Point numbers...

```zig
var event: [*c]c.struct_sensor_event_baro = 
  @intToPtr([*c]c.struct_sensor_event_baro, @ptrToInt(buffer));
debug("pressure: {}", .{ event.*.pressure });
debug("temperature: {}", .{ event.*.temperature });
```

Fails to link...

```text
riscv64-unknown-elf-ld: nuttx/nuttx/staging/libapps.a(sensortest.c.home.user.nuttx.apps.testing.sensortest.o): in function `std.fmt.errol.errolInt':
zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:305: undefined reference to `__fixunsdfti'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:305: undefined reference to `__floatuntidf'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:315: undefined reference to `__umodti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:316: undefined reference to `__udivti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:316: undefined reference to `__umodti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:318: undefined reference to `__umodti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:319: undefined reference to `__udivti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:319: undefined reference to `__umodti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:324: undefined reference to `__udivti3'
riscv64-unknown-elf-ld: zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:335: undefined reference to `__udivti3'
riscv64-unknown-elf-ld: nuttx/nuttx/staging/libapps.a(sensortest.c.home.user.nuttx.apps.testing.sensortest.o): in function `std.fmt.errol.fpeint':
zig-linux-x86_64-0.10.0-dev.2351+b64a1d5ab/lib/std/fmt/errol.zig:677: undefined reference to `__ashlti3'
```

So we print as Integers instead...

```zig
debug("pressure: {}", .{ @floatToInt(i32, event.*.pressure) });
debug("temperature: {}", .{ @floatToInt(i32, event.*.temperature) });
```

But calling the `debug` logger somehow causes NuttX to crash with an Assertion Failure or RISC-V Exception...

# Debug Logger Crashes

TODO

```zig
debug("timestamp: {}", .{ event.*.timestamp });
```

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

```text
/home/user/nuttx/nuttx/fs/inode/fs_files.c:380
  /* if f_inode is NULL, fd was closed */
  if (!(*filep)->f_inode)
2300bd98:	441c                	lw	a5,8(s0)
2300bd9a:	c39d                	beqz	a5,2300bdc0 <fs_getfilep+0xaa>
2300bd9c:	87a2                	mv	a5,s0
2300bd9e:	00fa2023          	sw	a5,0(s4)
```

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
