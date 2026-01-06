module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
   /*
   out_both: Each bit is 1 only if both a bit and its neighbor are 1 (bitwise AND).
   out_any: Each bit is 1 if either a bit or its neighbor is 1 (bitwise OR).
   out_different: Each bit is 1 if a bit differs from its rotated neighbor (bitwise XOR with right rotation).
    */
    assign out_any = in[3:1] | in[2:0];
    assign out_both = in[2:0] & in[3:1];
    assign out_different = in ^ {in[0], in[3:1]};
    // XOR 'in' with a vector that is 'in' rotated to the right by 1 position: {in[0], in[3:1]}
	  // The rotation is accomplished by using part selects[] and the concatenation operator{}.
    
endmodule
/*
 integer i;
    
    always @(*) begin
        out_different[3] = in[3] ^ in[0];
        for(i=0; i<3; i++) begin
            
     out_both[i] = in[i] & in[i+1];
     out_any[i+1] = in[i] | in[i+1];
     out_different[i] = in[i] ^ in[i+1];
        end
    end
    */
