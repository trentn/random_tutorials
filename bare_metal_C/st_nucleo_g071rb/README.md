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

Vector table layout:
Memory layout (show SRAM at 0x20000000):
Flash location (shows flash starts at 0x08000000):
