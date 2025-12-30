Given four unsigned numbers, find the minimum. Unsigned numbers can be compared with standard comparison operators (a < b). 
Use the conditional operator to make two-way min circuits, then compose a few of them to create a 4-way min circuit. 
You'll probably want some wire vectors for the intermediate results.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
    
    // assign intermediate_result1 = compare? true: false;
    wire [7:0] w1, w2, w3;
    assign w1 = (a < b)  ? a : b;
    assign w2 = (c < w1) ? c : w1;
    assign w3 = (d < w2) ? d : w2;
    assign min = w3;
    

endmodule
