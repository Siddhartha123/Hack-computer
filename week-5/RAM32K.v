`timescale 1ns / 1ps

module RAM32K(input [15:0] in,
    input [14:0] address,
    input load,clk,
    output [15:0] out);
    reg [15:0] mem [32767:0];
    
	 initial 
		$readmemh("/home/sid/others/Hack-computer/week-5/ram.txt",mem);
	 
	 assign out = mem[address];
    always @(posedge clk) begin
        if(load) mem[address]=in;
    end
	 
endmodule