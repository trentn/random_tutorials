# Bare Metal C Programming on Cortex M3 (with QEMU)

The code in this directory is based on Jacob Mossberg's blog post [Run a C program bare metal on ARM Cortex M3](https://jacobmossberg.se/posts/2018/08/11/run-c-program-bare-metal-on-arm-cortex-m3.html).  
Please read his blog post for more details.

I compiled and ran this code on a Ubuntu 18.04 VM.

## ARM GNU Toolchain Setup

1. Download the [GNU Embedded Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads) for ARM from the ARM Developer site.  
2. Extract the tar file and add the *bin* directory to your PATH.

## Run with QEMU and debug with GDB

Follow Jacob's blog post to compile the code. Jacob's blog post then describes how to run the resulting binary on a STM32 dev board. I did not have access to this board, so I instead looked to QEMU for emulation.  

[QEMU ARM](https://wiki.qemu.org/Documentation/Platforms/ARM) only supports two boards with a Cortex-M profile: the [Stellaris LM3S6965EVB](http://www.ti.com/lit/ds/symlink/lm3s6965.pdf) and [Stellaris LM3S811EVB](https://www.ti.com/lit/ds/symlink/lm3s6965.pdf). Both emulate a ARM Cortex-M3 core (see the datasheets at the links provided). I arbitrarily chose the LM3S6965EVB because it is first on the list.

To run the resulting binary:

1. Install QEMU:  
`sudo apt install qemu`

2. Run the binary with:  
`qemu-system-arm -M lm3s6965evb -s -nographic -S -kernel test.bin`

3. Connect with GDB:  
 `arm-none-eabi-gdb`

 In GDB:  
 `target remote localhost: 1234`  
 `file test.elf`

 You can now set breakpoints on the function names and step through the binary.