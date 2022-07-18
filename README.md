# Visual Programming for Zig with NuttX Sensors

Can we use Scratch / Blockly to write Zig programs the drag-n-drop way?

Let's create a Visual Programming Tool for Zig that will make IoT Sensor Apps with Apache NuttX RTOS.

_Why limit to IoT Sensor Apps?_

-   Types are simpler: Only floating-point numbers supported, no strings needed

-   Blockly is Typeless. With Zig we can use Type Inference to fill in the missing Struct Types

-   Make it easier to experiment with various IoT Sensors: Temperature, Humidity, Air Pressure, ...

# Sensor Test App in C

NuttX compiles the Sensor Test App with this GCC command...

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

To fix the translation we need to insert this...

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

Because Zig Translate doesn't support `goto`.

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
gpio_pin_register: Registering /dev/gpio0
gpio_pin_register: Registering /dev/gpio1
gpint_enable: Disable the interrupt
gpio_pin_register: Registering /dev/gpio2
bl602_gpio_set_intmod: ****gpio_pin=115, int_ctlmod=1, int_trgmod=0
bl602_spi_setfrequency: frequency=400000, actual=0
bl602_spi_setbits: nbits=8
bl602_spi_setmode: mode=0
spi_test_driver_register: devpath=/dev/spitest0, spidev=0
bl602_spi_select: devid: 0, CS: free
bme280_register: devno=0
bme280_register: priv=0x4201b4b0, sensor_baro=0x4201b4b0, sensor_humi=0x4201b4cc
bl602_i2c_transfer: subflag=1ddr=0xd0, sublen=1
bl602_i2c_recvdata: count=1, temp=0x60
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xd0, size=1, buf[0]=0x60
bme280_chip_init: ID OK
bme280_reg_write: reg=0xe0, val=0xb6
bl602_i2c_transfer: subflgg=1, subaddr=0xb6e0, sublen=2
bl602_i2c_recvdata: count=1, temp=0x0
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x0
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x00
bl602_i2c_transfer: subflag=1, subaddr=0x88, sublen=1
bl602_i2c_recvdata: count=24, temp=0x67366e56
bl602_i2c_recvdata: count=20, temp=0x8f370032
bl602_i2c_recvdata: count=16, temp=0xbd0d63f
bl602_i2c_recvdata: count=12, temp=0xffa41a4e
bl602_i2c_recvdata: count=8, temp=0x26acfff9
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0x88, size=24
bl602_i2c_transfer: subflag=1, subaddr=0xa1, sublen=1
bl602_i2c_recvdata: count=1, temp=0x10bdd84b
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xa1, size=1, buf[0]=0x4b
bl602_i2c_transfer: subflag=1, subaddr=0xe1, sublen=1
bl602_i2c_recvdata: count=7, temp=0x1300016e
bl602_i2c_recvdata: count=3, temp=0x131e0006
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xe1, size=7
bme280_reg_write: reg=0xf2, val=0x05
bl602_i2c_transfer: subflag=1, subaddr=0x5f2, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0005
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf4, val=0x57
bl602_i2c_transfer: subflag=1, subaddr=0x57f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0057
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bme280_chip_init: "BME280" OK
bme280_reg_write: reg=0xf4, val=0x54
bl602_i2c_transfer: subflag=1, subaddr=0x54f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0054
bl602_i2c_transfer: i2c transfer success
sensor_custom_register: Registering /dev/sensor/baro0
sensor_custom_register: Registering /dev/sensor/humi0
bme280_register: BME280 driver loaded successfully!

NuttShell (NSH) NuttX-10.3.0
nsh> sensortest
Zig Sensor Test
sensortest [arguments...] <command>
        [-h      ]  sensortest commands help
        [-i <val>]  The output data period of sensor in us
                    default: 1000000
        [-b <val>]  The maximum report latency of sensor in us
                    default: 0
        [-n <val>]  The number of output data
                    default: 0
 Commands:
        <sensor_node_name> ex, accel0(/dev/sensor/accel0)

nsh> ls /dev
/dev:
 console
 gpio0
 gpio1
 gpio2
 i2c0
 null
 sensor/
 spi0
 spitest0
 timer0
 urandom
 zero

nsh> ls /dev/sensor
/dev/sensor:
 baro0
 humi0

nsh> sensortest -n 1 baro0
Zig Sensor Test
sensor_ioctl: cmd=a81 arg=4201c170
bme280_set_interval_baro: period_us=1000000
bme280_set_interval_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bme280_set_standby: value=5
bl602_i2c_transfer: subflag=1, subaddr=0xf5, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf5, size=1, buf[0]=0xa8
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf5, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf5, size=1, buf[0]=0xa8
sensor_ioctl: cmd=a82 arg=4201c168
sensor_ioctl: cmd=a80 arg=00000001
bme280_activate_baro: enable=1
bme280_activate_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bl602_i2c_transfer: subflag=1, subaddr=0xd0, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e0060
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xd0, size=1, buf[0]=0x60
bme280_chip_init: ID OK
bme280_reg_write: reg=0xe0, val=0xb6
bl602_i2c_transfer: subflag=1, subaddr=0xb6e0, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0000
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e0000
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x00
bl602_2c_transfer: subflag=1, subaddr=0x88, sublen=1
bl602_i2c_recvdata: count=24, temp=0x67366e56
bl602_i2c_recvdata: count=20, temp=0x8f370032
bl602_i2c_recvdata: count=16, temp=0xbd0d63f
bl602_i2c_recvdata: count=12, temp=0xffa41a4e
bl602_i2c_recvdata: count=8, temp=0x26acfff9
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0x88, size=24
bl602_i2c_transfer: subflag=1, subaddr=0xa1, sublen=1
bl602_i2c_recvdata: count=1, temp=0x10bdd84b
bl602_i2c_transfe: i2c transfer success
bme280_reg_read: start=0xa1, size=1, buf[0]=0x4b
bl602_i2c_transfer: subflag=1, subaddr=0xe1, sublen=1
bl602_i2c_recvdata: count=7, temp=0x1300016e
bl602_i2c_recvdata: count=3, temp=0x131e0006
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xe1, size=7
bme280_reg_write: reg=0xf2, val=0x05
bl602_i2c_transfer: subflag=1, subaddr=0x5f2, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0005
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf4, val=0x57
bl602_i2c_transfer: subflag=1, subaddr=0x57f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0057
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bme280_chip_init: "BME280" OK
SensorTest: Test /dev/sensor/baro0 with interval(1000000us), latency(0us)
sensor_pollnotify: Report events: 00000001
bme280_fetch_baro: buflen=16
bme280_fetch_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e000c
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x0c
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e000c
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x0c
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e0004
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x04
bl602_i2c_transfer: subflag=1, subaddr=0xf7, sublen=1
bl602_i2c_recvdata: count=8, temp=0x85909e56
bl602_i2c_recvdata: count=4, temp=0xc57e00fd
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf7, size=8
bme280_fetch: temperature=30.520000 °C, pressure=1029.177490 mbar, humidity=72.184570 %
baro0: timestamp:78490000 value1:72.18 value2:72.18
SensorTest: Received message: baro0, number:1/1
sensor_ioctl: cmd=a80 arg=00000000
bme280_activate_baro: enable=0
bme280_activate_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bme280_reg_write: reg=0xf4, val=0x54
bl602_i2c_transfer: subflag=1, subaddr=0x54f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0xc57e0054
bl602_i2c_transfer: i2c transfer success

nsh> sensortest -n 1 humi0
Zig Sensor Test
sensor_ioctl: cmd=a81 arg=4201c170
bme280_set_interval_humi: period_us=1000000
bme280_set_interval_humi: priv=0x4201b4b0, sensor_humi=0x4201b4cc
bme280_set_standby: value=5
bl602_i2c_transfer: subflag=1, subaddr=0xf5, sublen=1
bl602_i2c_recvdata: count=1, temp=0xc57e00a8
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf5, size=1, buf[0]=0xa8
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0xc57e00a8
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf5, sublen=1
bl602_i2c_recvdata: count=1, temp=0xc57e00a8
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf5, size=1, buf[0]=0xa8
sensor_ioctl: cmd=a82 arg=4201c168
sensor_ioctl: cmd=a80 arg=00000001
bme280_activate_humi: enable=1
bme280_activate_humi: priv=0x4201b4b0, sensor_humi=0x4201b4cc
bl602_i2c_transfer: subflag=1, subaddr=0xd0, sublen=1
bl602_i2c_recvdata: count=1, temp=0xc57e0060
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xd0, size=1, buf[0]=0x60
bme280_chip_init: ID OK
bme280_reg_write: reg=0xe0, val=0xb6
bl602_i2c_transfer: subflag=1, subaddr=0xb6e0, sublen=2
bl602_i2c_recvdata: count=1, temp=0xc57e0000
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0xc57e0000
b602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x00
bl602_i2c_transfer: subflag=1, subaddr=0x88, sublen=1
bl602_i2c_recvdata: count=24, temp=0x67366e56
bl602_i2c_recvdata: count=20, temp=0x8f370032
bl602_i2c_recvdata: count=16, temp=0xbd0d63f
bl602_i2c_recvdata: count=12, temp=0xffa41a4e
bl602_i2c_recvdata: count=8, temp=0x26acfff9
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0x88, size=24
bl602_i2c_transfer: subflag=1, subaddr=0xa1, sublen=1
bl602_i2c_recvdata: count=1, temp=0x10bdd84b
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xa1, size=1, buf[0]=0x4b
bl602_i2c_transfer: subflag=1, subaddr=0xe1, sublen=1
bl602_i2c_recvdata: count=7, temp=0x1300016e
bl602_i2c_recvdata: count=3, temp=0x131e0006
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xe1, size=7
bme280_reg_write: reg=0xf2, val=0x05
bl602_i2c_transfer: subflag=1, subaddr=0x5f2, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0005
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf4, val=0x57
bl602_i2c_transfer: subflag=1, subaddr=0x57f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0057
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bme280_chip_init: "BME280" OK
SensorTest: Test /dev/sensor/humi0 with interval(1000000us), latency(0us)
sensor_pollnotify: Report events: 00000001
bme280_fetch_humi: buflen=16
bme280_fetch_humi: priv=0x4201b4b0, sensor_humi=0x4201b4cc
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e000c
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x0c
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e000c
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x0c
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e0004
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x04
bl602_i2c_transfer: subflag=1, subaddr=0xf7, sublen=1
bl602_i2c_recvdata: count=8, temp=0x85a09f56
bl602_i2c_recvdata: count=4, temp=0xce7e80fc
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf7, size=8
bme280_fetch: temperature=30.520000 °C, pressure=1027.211548 mbar, humidity=72.229492 %
humi0: timestamp:109080000 value:72.23
SensorTest: Received message: humi0, number:1/1
sensor_ioctl: cmd=a80 arg=00000000
bme280_activate_humi: enable=0
bme280_activate_humi: priv=0x4201b4b0, sensor_humi=0x4201b4cc
bme280_reg_write: reg=0xf4, val=0x54
bl602_i2c_transfer: subflag=1, subaddr=0x54f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0xce7e8054
bl602_i2c_transfer: i2c transfer success

nsh> sensortest -n 1 baro0
Zig Sensor Test
sensor_ioctl: cmd=a81 arg=4201c170
bme280_set_interval_baro: period_us=1000000
bme280_set_interval_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bme280_set_standby: value=5
bl602_i2c_transfer: subflag=1, subaddr=0xf5, sublen=1
bl602_i2c_recvdata: count=1, temp=0xce7e80a8
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf5, size=1, buf[0]=0xa8
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0xce7e80a8
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf5, sublen=1
bl602_i2c_recvdata: count=1, temp=0xce7e80a8
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf5, size=1, buf[0]=0xa8
sensor_ioctl: cmd=a82 arg=4201c168
sensor_ioctl: cmd=a80 arg=00000001
bme280_activate_baro: enable=1
bme280_activate_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bl602_i2c_transfer: subflag=1, subaddr=0xd0, sublen=1
bl602_i2c_recvdata: count=1, temp=0xce7e8060
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xd0, size=1, buf[0]=0x60
bme280_chip_init: ID OK
bme280_reg_write: reg=0xe0, val=0xb6
bl602_i2c_transfer: subflag=1, subaddr=0xb6e0, sublen=2
bl602_i2c_recvdata: count=1, temp=0xce7e8000
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0xce7e8000
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x00
bl602_i2c_transfer: subflag=1, subaddr=0x88, sublen=1
bl602_i2c_recvdata: count=24, temp=0x67366e56
bl602_i2c_recvdata: count=20, temp=0x8f370032
bl602_i2c_recvdata: count=16, temp=0xbd0d63f
bl602_i2c_recvdata: count=12, temp=0xffa41a4e
bl602_i2c_recvdata: count=8, temp=0x26acfff9
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0x88, size=24
bl602_i2c_transfer: subflag=1, subaddr=0xa1, sublen=1
bl602_i2c_recvdata: count=1, temp=0x10bdd84b
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xa1, size=1, buf[0]=0x4b
bl602_i2c_transfer: subflag=1, subaddr=0xe1, sublen=1
bl602_i2c_recvdata: count=7, temp=0x1300016e
bl602_i2c_recvdata: count=3, temp=0x131e0006
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xe1, size=7
bme280_reg_write: reg=0xf2, val=0x05
bl602_i2c_transfer: subflag=1, subaddr=0x5f2, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0005
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf4, val=0x57
bl602_i2c_transfer: subflag=1, subaddr=0x57f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0057
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bme280_chip_init: "BME280" OK
SensorTest: Test /dev/sensor/baro0 with interval(1000000us), latency(0us)
sensor_pollnotify: Report events: 00000001
bme280_fetch_baro: buflen=16
bme280_fetch_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e000c
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x0c
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e000c
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x0c
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e0004
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x04
bl602_i2c_transfer: subflag=1, subaddr=0xf7, sublen=1
bl602_i2c_recvdata: count=8, temp=0x86c0a056
bl602_i2c_recvdata: count=4, temp=0xd37e0002
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf7, size=8
bme280_fetch: temperature=30.549999 °C, pressure=1029.157593 mbar, humidity=72.268555 %
baro0: timestamp:149970000 value1:72.27 value2:72.27
SensorTest: Received message: baro0, number:1/1
sensor_ioctl: cmd=a80 arg=00000000
bme280_activate_baro: enable=0
bme280_activate_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bme280_reg_write: reg=0xf4, val=0x54
bl602_i2c_transfer: subflag=1, subaddr=0x54f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0xd37e0054
bl602_i2c_transfer: i2c transfer success
nsh>
```

TODO: Zig Humidity correct but not temperature and air pressure

TODO: Sensor App in C...

```bash
gpio_pin_register: Registering /dev/gpio0
gpio_pin_register: Registering /dev/gpio1
gpint_enable: Disable the interrupt
gpio_pin_register: Registering /dev/gpio2
bl602_gpio_set_intmod: ****gpio_pin=115, int_ctlmod=1, int_trgmod=0
bl602_spi_setfrequency: frequency=400000, actual=0
bl602_spi_setbits: nbits=8
bl602_spi_setmode: mode=0
spi_test_driver_register: devpath=/dev/spitest0, spidev=0
bl602_spi_select: devid: 0, CS: free
bme280_register: devno=0
bme280_register: priv=0x4201b4b0, sensor_baro=0x4201b4b0, sensor_humi=0x4201b4cc
bl602_i2c_transfer: subflag=1, subaddr=0xd0, sublen=1
bl602_i2c_recvdata: count=1, temp=0x60
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xd0, size=1, buf[0]=0x60
bme280_chip_init: ID OK
bme280_reg_write: reg=0xe0, val=0xb6
bl602_i2c_transfer: subflag=1, subaddr=0xb6e0, sublen=2
bl602_i2c_recvdata: count=1, temp=0x0
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x0
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x00
bl602_i2c_transfer: subflag=1, subaddr=0x88, sublen=1
bl602_i2c_recvdata: count=24, temp=0x67366e56
bl602_i2c_recvdata: count=20, temp=0x8f370032
bl602_i2c_recvdata: count=16, temp=0xbd0d63f
bl602_i2c_recvdata: count=12, temp=0xffa41a4e
bl602_i2c_recvdata: count=8, temp=0x26acfff9
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0x88, size=24
bl602_i2c_transfer: subflag=1, subaddr=0xa1, sublen=1
bl602_i2c_recvdata: count=1, temp=0x10bdd84b
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xa1, size=1, buf[0]=0x4b
bl602_i2c_transfer: subflag=1, subaddr=0xe1, sublen=1
bl602_i2c_recvdata: count=7, temp=0x1300016e
bl602_i2c_recvdata: count=3, temp=0x131e0006
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xe1, size=7
bme280_reg_write: reg=0xf2, val=0x05
bl602_i2c_transfer: subflag=1, subaddr=0x5f2, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0005
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf4, val=0x57
bl602_i2c_transfer: subflag=1, subaddr=0x57f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0057
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bme280_chip_init: "BME280" OK
bme280_reg_write: reg=0xf4, val=0x54
bl602_i2c_transfer: subflag=1, subaddr=0x54f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0054
bl602_i2c_transfer: i2c transfer success
sensor_custom_register: Registering /dev/sensor/baro0
sensor_custom_register: Registering /dev/sensor/humi0
bme280_register: BME280 driver loaded successfully!

NuttShell (NSH) NuttX-10.3.0
nsh> sensortest -n 1 baro0
sensor_ioctl: cmd=a81 arg=4201c02c
bme280_set_interval_baro: period_us=1000000
bme280_set_interval_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bme280_set_standby: value=5
bl602_i2c_transfer: subflag=1, subaddr=0xf5, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf5, size=1, buf[0]=0xa8
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf5, sublen=1
bl602_ic_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf5, size=1, buf[0]=0xa8
sensor_ioctl: cmd=a82 arg=4201c030
sensor_ioctl: cmd=a80 arg=00000001
bme280_activate_baro: enable=1
bme280_activate_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bl602_i2c_transfer: subflag=1, subaddr=0xd0, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e0060
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xd0, size=1, buf[0]=0x60
bme280_chip_init: ID OK
bme280_reg_write: reg=0xe0, val=0xb6
bl602_i2c_transfer: subflag=1, subaddr=0xb6e0, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0000
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e0000
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x00
bl602_i2c_transfer: subflag=1, subaddr=0x88, sublen=1
bl602_i2c_recvdata: count=24, temp=0x67366e56
bl602_i2c_recvdata: count=20, temp=0x8f370032
bl602_i2c_recvdata: count=16, temp=0xbd0d63f
bl602_i2c_recvdata: count=12, temp=0xffa41a4e
bl602_i2c_recvdata: count=8, temp=0x26acfff9
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0x88, size=24
bl602_i2c_transfer: subflag=1, subaddr=0xa1, sublen=1
bl602_i2c_recvdata: count=1, temp=0x10bdd84b
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xa1, size=1, buf[0]=0x4b
bl602_i2c_transfer: subflag=1, subaddr=0xe1, sublen=1
bl602_i2c_recvdata: count=7, temp=0x1300016e
bl602_i2c_recvdata: count=3, temp=0x131e0006
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xe1, size=7
bme280_reg_write: reg=0xf2, val=0x05
bl602_i2c_transfer: subflag=1, subaddr=0x5f2, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0005
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf4, val=0x57
bl602_i2c_transfer: subflag=1, subaddr=0x57f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0057
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2c_transfer: i2c transfer success
bme280_chip_init: "BME280" OK
SensorTest: Test /dev/sensor/baro0 with interval(1000000us), latency(0us)
sensor_pollnotify: Report events: 00000001
bme280_fetch_baro: buflen=16
bme280_fetch_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e000c
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x0c
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e000c
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x0c
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e0004
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x04
bl602_i2c_transfer: subflag=1, subaddr=0xf7, sublen=1
bl602_i2c_recvdata: count=8, temp=0x86d0a856
bl602_i2c_recvdata: count=4, temp=0xcd7e001f
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf7, size=8
bme280_fetch: temperature=30.690001 °C, pressure=1029.177368 mbar, humidity=72.257813 %
baro0: timestamp:14280000 value1:1029.18 value2:30.69
SensorTest: Received message: baro0, number:1/1
sensor_ioctl: cmd=a80 arg=00000000
bme280_activate_baro: enable=0
bme280_activate_baro: priv=0x4201b4b0, sensor_baro=0x4201b4b0
bme280_reg_write: reg=0xf4, val=0x54
bl602_i2c_transfer: subflag=1, subaddr=0x54f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0xcd7e0054
bl602_i2c_transfer: i2c transfer success

nsh> sensortest -n 1 humi0
sensor_ioctl: cmd=a81 arg=4201c02c
bme280_set_interval_humi: period_us=1000000
bme280_set_interval_humi: priv=0x4201b4b0, sensor_humi=0x4201b4cc
bme280_set_standby: value=5
bl602_i2c_transfer: subflag=1, subaddr=0xf5, sublen=1
bl602_i2c_recvdata: count=1, temp=0xcd7e00a8
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf5, size=1, buf[0]=0xa8
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0xcd7e00a8
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf5, sublen=1
bl602_i2c_recvdata: count=1, temp=0xcd7e00a8
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf5, size=1, buf[0]=0xa8
sensor_ioctl: cmd=a82 arg=4201c030
sensor_ioctl: cmd=a80 arg=00000001
bme280_activate_humi: enable=1
bme280_activate_humi: priv=0x4201b4b0, sensor_humi=0x4201b4cc
bl602_i2c_transfer: subflag=1, subaddr=0xd0, sublen=1
bl602_i2c_recvdata: count=1, temp=0xcd7e0060
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xd0, size=1, buf[0]=0x60
bme280_chip_init: ID OK
bme280_reg_write: reg=0xe0, val=0xb6
bl602_i2c_transfer: subflag=1, subaddr=0xb6e0, sublen=2
bl602_i2c_recvdata: count=1, temp=0xcd7e0000
bl602_i2c_transfer: i2c transfer success
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0xcd7e0000
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x00
bl602_i2c_transfer: subflag=1, subaddr=0x88, sublen=1
bl602_i2c_recvdata: count=24, temp=0x67366e56
bl602_i2c_recvdata: count=20, temp=0x8f370032
bl602_i2c_recvdata: count=16, temp=0xbd0d63f
bl602_i2c_recvdata: count=12, temp=0xffa41a4e
bl602_i2c_recvdata: count=8, temp=0x26acfff9
bl602_i2c_transfer: i2c transfer succes
bme280_reg_read: start=0x88, size=24
bl602_i2c_transfer: subflag=1, subaddr=0xa1, sublen=1
bl602_i2c_recvdata: count=1, temp=0x10bdd84b
bl602_i2c_transfer: i2c transfer success
bme280_regread: start=0xa1, size=1, buf[0]=0x4b
bl602_i2c_transfer: subflag=1, subaddr=0xe1, sublen=1
bl602_i2c_recvdata: count=7, temp=0x1300016e
bl602_i2c_recvdata: count=3, temp=0x131e0006
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xe1, size=7
bme280_reg_write: reg=0xf2, val=0x05
bl602_i2c_transfer: subflag=1, subaddr=0x5f2, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0005
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf4, val=0x57
bl602_i2c_transfer: subflag=1, subaddr=0x57f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e0057
bl602_i2c_transfer: i2c transfer success
bme280_reg_write: reg=0xf5, val=0xa8
bl602_i2c_transfer: subflag=1, subaddr=0xa8f5, sublen=2
bl602_i2c_recvdata: count=1, temp=0x131e00a8
bl602_i2_transfer: i2c transfer success
bme280_chip_init: "BME280" OK
SensorTest: Test /dev/sensor/humi0 with interval(1000000us), latency(0us)
sensor_pollnotify: Report events: 00000001
bme280_fetch_humi: buflen=16
bme280_fetch_humi: priv=0x4201b4b0, sensor_humi=0x4201b4cc
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e000c
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x0c
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e000c
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x0c
bl602_i2c_transfer: subflag=1, subaddr=0xf3, sublen=1
bl602_i2c_recvdata: count=1, temp=0x131e0004
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf3, size=1, buf[0]=0x04
bl602_2c_transfer: subflag=1, subaddr=0xf7, sublen=1
bl602_i2c_recvdata: count=8, temp=0x8690a756
bl602_i2c_recvdata: count=4, temp=0xd17e001f
bl602_i2c_transfer: i2c transfer success
bme280_reg_read: start=0xf7, size=8
bme280_fetch: temperature=30.690001 °C, pressure=1027.283447 mbar, humidity=72.280273 %
humi0: timestamp:26000000 value:72.28
SensorTest: Received message: humi0, number:1/1
sensor_ioctl: cmd=a80 arg=00000000
bme280_activate_humi: enable=0
bme280_activate_humi: priv=0x4201b4b0, sensor_humi=0x4201b4cc
bme280_reg_write: reg=0xf4, val=0x54
bl602_i2c_transfer: subflag=1, subaddr=0x54f4, sublen=2
bl602_i2c_recvdata: count=1, temp=0xd17e0054
bl602_i2c_transfer: i2c transfer success
nsh>
```
