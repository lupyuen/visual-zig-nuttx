# Visual Programming for Zig with NuttX Sensors

Can we use Scratch / Blockly to write Zig programs the drag-n-drop way?

Let's create a Visual Programming Tool for Zig that will make IoT Sensor Apps with Apache NuttX RTOS.

_Why limit to IoT Sensor Apps?_

-   Types are simpler: Only floating-point numbers supported, no strings needed

-   Blockly is Typeless. With Zig we can use Type Inference to fill in the missing Struct Types

-   Make it easier to experiment with various IoT Sensors: Temperature, Humidity, Air Pressure, ...

# Sensor Test App in C

We start with the Sensor Test App (in C) from Apache NuttX RTOS: [sensortest.c](https://github.com/lupyuen/incubator-nuttx-apps/blob/pinedio/testing/sensortest/sensortest.c)

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

We compile our Zig Sensor App...

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

We connect BME280 to Pine64's [__PineCone BL602 Board__](https://lupyuen.github.io/articles/pinecone)...

| BL602 Pin | BME280 Pin | Wire Colour
|:---:|:---:|:---|
| __`GPIO 1`__ | `SDA` | Green 
| __`GPIO 2`__ | `SCL` | Blue
| __`3V3`__ | `3.3V` | Red
| __`GND`__ | `GND` | Black

# Run Zig Sensor App

We run the Zig Sensor App...

```bash
NuttShell (NSH) NuttX-10.3.0
nsh> sensortest -n 1 baro0
Zig Sensor Test
bme280_fetch: temperature=30.520000 °C, pressure=1029.177490 mbar, humidity=72.184570 %
baro0: timestamp:78490000 value1:72.18 value2:72.18
```

[(See the complete log)](https://gist.github.com/lupyuen/97358b560197d26304fc196ceb45565a)

This shows that the BME280 Driver fetched the correct Temperature (30 °C), Pressure (1,029 mbar) and Humidity (72 %).

But our Zig App returns both Pressure (`value1`) and Temperature (`value2`) as 72. Which is incorrect.

```bash
nsh> sensortest -n 1 humi0
Zig Sensor Test
bme280_fetch: temperature=30.520000 °C, pressure=1027.211548 mbar, humidity=72.229492 %
humi0: timestamp:109080000 value:72.23
```

[(See the complete log)](https://gist.github.com/lupyuen/97358b560197d26304fc196ceb45565a)

Our Zig App returns the correct Humidity (`value`): 72 %.

Compare the above output with the original C Version of the Sensor App...

```bash
nsh> sensortest -n 1 baro0
bme280_fetch: temperature=30.690001 °C, pressure=1029.177368 mbar, humidity=72.257813 %
baro0: timestamp:14280000 value1:1029.18 value2:30.69

nsh> sensortest -n 1 humi0
bme280_fetch: temperature=30.690001 °C, pressure=1027.283447 mbar, humidity=72.280273 %
humi0: timestamp:26000000 value:72.28
```

[(See the complete log)](https://gist.github.com/lupyuen/f20fbfbf5d4f1103946a278b87b8bc3c)

We see that Pressure (`value1`), Temperature (`value2`) and Humidity (`value`) are returned correctly by the C Version of the Sensor App.

Something got messed up in the Auto-Translation from C to Zig. Let's find out why...

# Fix Sensor App

TODO
