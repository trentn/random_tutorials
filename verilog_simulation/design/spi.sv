//This module only implements SPI receive (Master -> Slave) communications
//CPOL = 1 and CPHA = 0
module spi(
  input i_clock,
  input i_dataIn,
  input i_select,
  output reg [7:0] o_dataByte = 255
);
  
  reg [2:0] r_bit = -1;
  reg [7:0] r_buffer = 0;
  
  always @ (negedge i_clock && !i_select) begin
    r_buffer[r_bit] = i_dataIn;
  	r_bit = r_bit + 1;
  end
  
  always @ (posedge i_clock && r_bit == 0) begin
    o_dataByte <= r_buffer;
  end
  
endmodule