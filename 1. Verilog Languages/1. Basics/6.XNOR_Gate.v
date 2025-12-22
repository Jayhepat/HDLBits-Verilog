module top_module( 
    input a, 
    input b, 
    output out );
    
  assign out = !(a^b);    //The bitwise-XOR operator is ^. There is no logical-XOR operator.

endmodule
