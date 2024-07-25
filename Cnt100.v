module Cnt100(Clk, RstN, Q);
  input Clk, RstN;
  output [6:0] Q;
  
  reg [6:0] Q;
  always@(posedge Clk)
    if(!RstN) Q = 20;
    else
      if(Q == 98) Q = 20;
      else Q = Q + 3;
        
endmodule
