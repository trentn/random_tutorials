module spi_tb;
  reg clock;
  reg dataOut;
  reg ss;
  reg [7:0] spi_output;
  
  task write_byte;
    input [7:0] i_byte;
    begin
      ss = 0;
      for(integer ii = 0; ii<8; ii++) begin
        dataOut <= i_byte[ii];
        #2;
      end
      ss = 1;
    end
  endtask
  
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clock = 1;
    ss = 1;
    dataOut = 0;
    #10
    write_byte(8'h11);
    #10
    $finish;
  end
  
  
  always begin
    #1 clock = !clock;
  end
  
  spi spi_instance(
    .i_clock (clock),
    .i_dataIn (dataOut),
    .i_select (ss),
    .o_dataByte (spi_output)
  );
  
endmodule