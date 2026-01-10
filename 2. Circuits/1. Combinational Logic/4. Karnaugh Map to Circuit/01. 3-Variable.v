Implement the circuit dexcribed by Karnaugh Map
CKT: https://hdlbits.01xz.net/mw/images/2/20/Kmap1.png

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module(
    input a,
    input b,
    input c,
    output out  ); 
    
    /*
    SOP Form: Three prie implicants (1 term each), summed.
    POS FOrm: One prime impliciant (of 3 terms)
    In this particular case, the result is the same for both SOP and POS. */
    assign out = (a | b | c);

endmodule
