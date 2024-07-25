module Cnt100_Test;
  
  reg Clk, RstN;
  wire [6:0] Q;
  Cnt100 U1(Clk, RstN, Q);
  
  initial Clk = 0;
  always Clk = #5 ~Clk;
  
  initial begin
    RstN = 1;
    #5 RstN = 0;
    #10 RstN = 1;
    #2000 $stop;
  end
endmodule
