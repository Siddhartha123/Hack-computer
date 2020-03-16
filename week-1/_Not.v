`timescale 1ns / 1ps
module _Not(
	input x,
	output y );
	nand X1(y,x,x);
endmodule
