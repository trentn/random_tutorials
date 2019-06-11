module pwm_generator(
  input i_clock,
  input [7:0] i_period,
  input [7:0] i_pulse,
  output reg o_pwm
);
  
  reg [7:0] r_counter;
  
  initial begin
    r_counter = 0;
    o_pwm = 1;
  end
  
  always @ (posedge i_clock) begin
    r_counter++;
    
    if(r_counter == i_pulse) begin
      o_pwm = 0;
    end
  
    if(r_counter == i_period) begin
      r_counter = 0;
      o_pwm = 1;
    end
  end
  
endmodule