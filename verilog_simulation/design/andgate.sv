module and_gate(a,b,out);
  input a, b;
  output out;
  
  begin
    assign out = a && b;
  end
endmodule