`timescale 1ns / 1ps
module ROM32K(input clk,input[14:0] address,
output reg [15:0]  out);

reg [15:0] mem [0:32767];

initial
    $readmemb("/home/sid/others/Hack-computer/week-5/program.mem",mem);


always @(posedge clk)
    out=mem[address];
endmodule