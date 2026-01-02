Implement the following Circuit
CIRCUIT: https://hdlbits.01xz.net/mw/images/b/b6/Exams_m2014q4f.png
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module( input in1,
                   input in2,
                   output out);

  assign out = (in1) & (~in2);

endmodule
