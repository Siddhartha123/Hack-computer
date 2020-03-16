`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:07:01 06/26/2019
// Design Name:   RAM16K
// Module Name:   D:/Hack-computer/RAM16K_test.v
// Project Name:  Hack-computer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM16K
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RAM16K_test;

	// Inputs
	reg [15:0] in;
	reg [13:0] address;
	reg load;
	reg clk;

	// Outputs
	wire [15:0] out;
	always #40 clk=~clk;
	// Instantiate the Unit Under Test (UUT)
	RAM16K uut (
		.in(in), 
		.address(address), 
		.load(load), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		address = 0;
		load = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
       address=2;
			#100;
			address=1;
		// Add stimulus here

	end
      
endmodule

