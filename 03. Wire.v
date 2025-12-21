module top_module( input in, output out );
    assign out = in;
endmodule
// Note that wires are directional, so "assign in = out" is not equivalent.
