# ST Nucleo-G071RB Minimal Setup

Install master branch of OpenOCD
The important commit is https://sourceforge.net/p/openocd/code/ci/ba131f30a0798d97729f9517c136d32f58f57571/

Ensure you have the required dependencies: see http://openocd.org/doc-release/README

`git clone git://git.code.sf.net/p/openocd/code openocd`
`cd openocd && git pull`
`./bootstrap`
`./configure`
`make`
`make install`


The code is copied from https://vivonomicon.com/2018/04/02/bare-metal-stm32-programming-part-1-hello-arm/ adjusting the linker script for the differences in the available memory. (The chip that blog article targets is smaller, so those values should work fine as is.)


Additional commentary on the blog post:

Information for the STM32G071RB can be found in the [reference manual](https://www.st.com/resource/en/reference_manual/dm00371828-stm32g0x1-advanced-armbased-32bit-mcus-stmicroelectronics.pdf)

Memory layout (show SRAM at 0x20000000 and flash at 0x08000000): section 2.2.2, Figure 2  
Vector table layout: Section 11.3, Table 6
