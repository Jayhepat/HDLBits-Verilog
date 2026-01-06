module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
   /*
    Use bitwise operator and part to do the entire calculation in one line of code
    in[3:1] is the vector:                 in[3]  in[2]  in[1]
    in[2:0] is the vector:                 in[2]  in[1]  in[0]
    Bitwise OR produces a threee bit vector |      |      |
    Assign these three bit result to the out_any[3:1] : o_a[3] o_a[2] o_a[1]
    
    Thus, each output bit is the OR of the input bit and its neighour to the right
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
