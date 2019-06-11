module pwm_gen_tb;
  
  reg clock;
  
  parameter num_pwms = 3; //Add 1 to this value - zero indexed
  
  reg [7:0] period[0:num_pwms];
  reg [7:0] pulse[0:num_pwms];
  
  wire pwm[0:num_pwms];
  
  task set_pwm_params;
    input [7:0] i_index, i_period, i_pulse;
    begin
      period[i_index] = i_period;
      pulse[i_index] = i_pulse;
    end
  endtask
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
   	
    clock = 1;
    
    set_pwm_params(0,10,1);
    set_pwm_params(1,10,2);
    set_pwm_params(2,10,3);
    set_pwm_params(3,10,4);
    #40;
    
    $finish;
  end
  
  always begin
    #1 clock = !clock;
  end
  
  
  pwm_generator pwm_gen[0:num_pwms](
    .i_clock (clock),
    .i_period (period),
    .i_pulse (pulse),
    .o_pwm (pwm)
  );
  
endmodule