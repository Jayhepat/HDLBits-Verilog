Implement the following Circuit
CIRCUIT: https:  https://hdlbits.01xz.net/mw/images/e/e9/Exams_m2014q4e.png
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module (
    input in1,
    input in2,
    output out);
    
    assign out = ~(in1|in2);

endmodule
