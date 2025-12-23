Given five 1-bit signals (a, b, c, d, and e), compute all 25 pairwise one-bit comparisons in the 25-bit output vector. The output should be 1 if the two bits being compared are equal.

IMAGE: https://hdlbits.01xz.net/mw/images/a/ac/Vector5.png
As the diagram shows, this can be done more easily using the replication and concatenation operators.

The top vector is a concatenation of 5 repeats of each input
The bottom vector is 5 repeats of a concatenation of the 5 inputs

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module (
    input a, b, c, d, e,
    output [24:0] out );
    
    wire [24:0] block1, block2;
    assign block1 = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}}; 
    assign block2 = {{ 5{a,b,c,d,e} }};
    assign out = ~{block1}^{block2};
    // assign out = ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ {5{a,b,c,d,e}};
    
endmodule
