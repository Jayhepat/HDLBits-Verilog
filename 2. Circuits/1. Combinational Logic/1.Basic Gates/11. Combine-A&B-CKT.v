The top-level design consists of two instantiations each of subcircuits A and B, as shown below.
CIRCUIT :  https://hdlbits.01xz.net/mw/images/f/f5/Mt2015_q4.png

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module (input x,
                  input y,
                  output z
                  );

  assign z = (((x ^ y) & x) | (~(x ^ y))) ^ (((x ^ y) & x) & (~(x ^ y)));
  
endmodule
