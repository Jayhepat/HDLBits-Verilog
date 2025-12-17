module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = !(a || b);  //bitwise-OR (|) and logical-OR (||) operators, like C. 
endmodule
