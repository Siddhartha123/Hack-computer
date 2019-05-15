`timescale 1ns / 1ps
module Mux4Way16(input [15:0] a,b,c,d,
    input [1:0] sel,
    output [15:0] out);
    wire [15:0] out1,out2;
    Mux16 X1(a,b,sel[0],out1);
    Mux16 X2(c,d,sel[0],out2);
    Mux16 X3(out1,out2,sel[1],out);
endmodule