`timescale 1ns / 1ps
module Mux8Way16(input [15:0] a,b,c,d,e,f,g,h,
    input [2:0] sel,
    output [15:0] out);
    wire [15:0] out1,out2;
    Mux4Way16 X1(a,b,c,d,sel[1:0],out1);
    Mux4Way16 X2(e,f,g,h,sel[1:0],out2);
    Mux16 X3(out1,out2,sel[2],out);
endmodule