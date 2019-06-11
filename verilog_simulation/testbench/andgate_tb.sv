module and_gate_tb;
  reg [1:0] in;
  wire out;
  
  initial begin
    $dumpfile("run.vcd"); $dumpvars;
    in = 0;
    #10 $finish;
  end
  
  always begin
    #1 in++;
  end
  
  and_gate AG (
    .a (in[1]),
    .b (in[0]),
    .out (out)
  );
    
endmodule