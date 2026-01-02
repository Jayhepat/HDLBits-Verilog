Implement the following Circuit
CIRCUIT: https://hdlbits.01xz.net/mw/images/e/e6/Exams_m2014q4g.png
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    
    wire w1;
  assign w1 = ~(in1 ^ in2);   // The ^ is XOR, The ~ is NOT operator
    assign out = (w1 ^ in3);

endmodule
