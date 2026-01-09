Implement the following circuit
Circuit: https://hdlbits.01xz.net/mw/images/d/d2/Exams_m2014q4j.png

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module(input [3:0] x,
                  input [3:0]y,
                  output [4:0]sum);

  assign sum = x + y;
  
endmodule
