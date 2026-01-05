A "population count" circuit counts the number of '1's in an input vector. Build a population count circuit for a 3-bit input vector.

module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    integer i;
    
    always @(*) begin
        out = 2'b0;
        for(i=0; i<3; i++) begin
            if(in[i]) begin
                out = out + 2'b1;
            end
        end
    end
    
endmodule
