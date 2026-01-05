module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    //When should ringer be on ? When (Phone is ringing)  and (Phone is not in vibrate mode)
    assign ringer = ring & (~vibrate_mode); //Not both should start at once 
    
    //When should motor be on? When (Phone is ringing) and (Phone is in vibrate mode)
    assign motor = ring & vibrate_mode;

endmodule
