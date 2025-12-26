/*
Connect the add16 modules together as shown in the diagram below. The provided module add16 has the following declaration:

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

Within each add16, 16 full adders (module add1, not provided) are instantiated to actually perform the addition. You must write the full adder module that has the following declaration:

module add1 ( input a, input b, input cin, output sum, output cout );

Recall that a full adder computes the sum and carry-out of a+b+cin.

In summary, there are three modules in this design:

top_module — Your top-level module that contains two of...
add16, provided — A 16-bit adder module that is composed of 16 of...
add1 — A 1-bit full adder module.


*/
CKT MODEL BLOCK:  https://hdlbits.01xz.net/mw/images/f/f3/Module_fadd.png
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire cin1,cout1, cout2;
    wire [15:0] sum1, sum2;
   // assign cin1 = 0;
    
    add16 inst1(.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(cout1), .sum(sum1));
    add16 inst2(.a(a[31:16]), .b(b[31:16]), .cin(cout1), .cout(cout2), .sum(sum2));
    assign sum = {sum2, sum1};

endmodule
// Full adder module
module add1 ( input a, input b, input cin,   output sum, output cout );
    
    assign sum = a ^ b ^ cin;
    assign cout = a&b | a&cin | b&cin;



endmodule

