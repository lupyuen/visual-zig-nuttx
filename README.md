# Visual Programming for NuttX Sensors with Zig

TODO

```bash
cd $HOME/nuttx/apps/testing/sensortest

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
