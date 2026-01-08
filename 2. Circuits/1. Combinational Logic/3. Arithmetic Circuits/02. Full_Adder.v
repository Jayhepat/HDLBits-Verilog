Create a full adder. A full adder adds three bits (including carry-in) and produces a sum and carry-out.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module( 
    input a, b, cin,
    output cout, sum );
    
    assign cout = a ^ b ^ cin;
    assign sum = a&b | b&cin | cin&a; 

endmodule
