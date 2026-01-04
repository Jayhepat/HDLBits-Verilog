Implement the following Circuit: https://hdlbits.01xz.net/mw/images/6/6a/Mt2015_q4b.png

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module(input x,
                  input y,
                  output z
                  );
  assign z = ~(x ^ y);

endmodule
