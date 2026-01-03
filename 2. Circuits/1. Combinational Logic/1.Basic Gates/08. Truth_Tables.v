circuit that implements the truth table's function is to express the function in sum-of-products form. Sum (meaning OR) of products (meaning AND)

  
Row	Inputs	Outputs
number	x3	x2	x1	f
0      	0 	0 	0 	0
1	      0	  0	  1 	0
2	      0   1  	0 	1
3	      0  	1  	1  	1
4	      1  	0  	0  	0
5	      1  	0 	1 	1
6	      1 	1 	0 	0
7	      1  	1 	1 	1
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
        );
    assign f = x1&x3 | ~x3&x2;  //Combinational Logic Expression

endmodule
