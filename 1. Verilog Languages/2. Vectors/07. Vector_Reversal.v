/*
Given an 8-bit input vector [7:0], reverse its bit ordering.

NOTE:
- assign out[7:0] = in[0:7]; does not work because Verilog does not allow vector bit ordering to be flipped.
- The concatenation operator may save a bit of coding, allowing for 1 assign statement instead of 8.
*/

module top_module( 
    input [7:0] in,
    output [7:0] out
);
    //assign {out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]} = in;
    assign out[7] = in[0],
        out[6] = in[1],
        out[5] = in[2],
        out[4] = in[3],
        out[3] = in[4],
        out[2] = in[5],
        out[1] = in[6],
        out[0] = in[7];

endmodule
