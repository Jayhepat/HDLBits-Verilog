/*
you are provided with the same module add16 as the previous exercise, which adds two 16-bit numbers with carry-in and produces a carry-out and 16-bit sum. 
You must instantiate three of these to build the carry-select adder, using your own 16-bit 2-to-1 multiplexer.

Connect the modules together as shown in the diagram below. The provided module add16 has the following declaration:

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

*/
CKT MODEL BLOCK:  https://hdlbits.01xz.net/mw/images/3/3e/Module_cseladd.png
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout1, cout2, cout3;
    wire [15:0] sum1, sum2, sum3, sum_mux;
    
    add16 inst1(.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(cout1), .sum(sum1));
    add16 inst2(.a(a[31:16]), .b(b[31:16]), .cin(0), .cout(cout2),.sum(sum2));
    add16 inst3(.a(a[31:16]), .b(b[31:16]), .cin(1), .cout(cout3),.sum(sum3));
    
    always @(*) begin
        case(cout1)
            0 : sum_mux = sum2;
            1 : sum_mux = sum3;
        endcase
    end
    assign sum = {sum_mux, sum1};
endmodule
