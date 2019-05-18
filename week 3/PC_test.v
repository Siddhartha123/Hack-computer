`timescale 1ns / 1ps

module PC_test;

	// Inputs
	reg [15:0] in;
	reg inc;
	reg load;
	reg reset;
	reg clk;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.in(in), 
		.inc(inc), 
		.load(load), 
		.reset(reset), 
		.clk(clk), 
		.out(out)
	);
	always #20 clk=~clk;
	initial begin
		// Initialize Inputs
		in = 0;
		inc = 0;
		load = 0;
		reset = 0;
		clk = 0;
		#10;
		in=45;
		#40;
		load=1;
		#40;
		load=0;
		#80;
		inc=1;
		#120;
		load=1;
	end
      
endmodule

