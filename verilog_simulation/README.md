# Verilog on EDAPlayground

Finding a straight-forward and simple setup for learning verilog was not very easy. EDAPlayground presents a web-based IDE of sorts with selectable simulators - no real setup or toolchain installation required. This was exactly what I was looking for.

The code in this directory is intended to be copy/pasted into [EDAPlayground's online editor](https://edaplayground.com)

## EDAPlayground Configuration

There are a few settings in the lefthand configuration column that need to be selected for the code to run:   
- Under **Tools and Simulators** select one of the Aldec Riviera Pro versions.
- Check the box next to "Open EPWave after run"   
    Note: the code line `$dumpfile("filename.vcd"); $dumpvar` must be in the `initial` block for the waveform simulation to run

Copy the code from the [design](./design) directory to the `design.sv` tab in EDAPlayground, and the related code from the [testbench](./testbench) directory to the `testbench.sv` tab.

## Examples

[And Gate](./design/andgate.sv)   
Basic demo just to get up and running with verilog and the simulator.

[PWM Generator](./design/pwm.sv)   
A simple PWM generator module. The period and pulse length can be set as the number of clock cycles.

[SPI Receive](./design/spi.sv)   
A simple SPI Slave receiver module. Implements receive with CPHA = 0 and CPOL = 1.