`timescale 1ns / 1ps

// This is the structural style implementation of RAM16K which requires large memory for synthesis.
// Use the 2-D matrix memory implementation instead
/*
module RAM16K(input [15:0] in,
    input [13:0] address,
    input load,clk,
    output [15:0] out);
    wire [15:0] out0,out1,out2,out3;
    wire l0,l1,l2,l3;
    DMux4Way D1(load,address[13:12],l0,l1,l2,l3);
    RAM4K R0(in,address[11:0],l0,clk,out0);
    RAM4K R1(in,address[11:0],l1,clk,out1);
    RAM4K R2(in,address[11:0],l2,clk,out2);
    RAM4K R3(in,address[11:0],l3,clk,out3);
    Mux4Way16 M1(out0,out1,out2,out3,address[13:12],out);
endmodule
*/

module RAM16K(input [15:0] in,
    input [13:0] address,
    input load,clk,
    output [15:0] out);
    reg [15:0] mem [16383:0];
    
	 initial begin
		$readmemh("read.txt",mem);
	 end
	 assign out = mem[address];
    always @(posedge clk) begin
        if(load) mem[address]=in;
    end
	 
endmodule