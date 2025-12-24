The figure below shows a very simple circuit with a sub-module. In this exercise, create one instance of module mod_a, 
then connect the module's three pins (in1, in2, and out) to your top-level module's three ports (wires a, b, and out). 
The module mod_a is provided for you — you must instantiate it.

CIRCUIT :https://hdlbits.01xz.net/mw/images/c/c0/Module.png
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

module top_module (
	input a,
	input b,
	output out
);

	// Create an instance of "mod_a" named "inst1", and connect ports by name:
	mod_a inst1 ( 
		.in1(a), 	// Port"in1"connects to wire "a"
		.in2(b),	// Port "in2" connects to wire "b"
		.out(out)	// Port "out" connects to wire "out" 
				// (Note: mod_a's port "out" is not related to top_module's wire "out". 
				// It is simply coincidence that they have the same name)
	);

endmodule
