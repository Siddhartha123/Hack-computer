`timescale 1ns / 1ps
module Inc16(input [15:0] in,
    output [15:0] out);
    wire [15:1] c;
    Not X0(in[0],out[0]);
    HalfAdder X1(in[1],in[0],out[1],c[1]);
    HalfAdder X2(in[2],c[1],out[2],c[2]);
    HalfAdder X3(in[3],c[2],out[3],c[3]);
    HalfAdder X4(in[4],c[3],out[4],c[4]);
    HalfAdder X5(in[5],c[4],out[5],c[5]);
    HalfAdder X6(in[6],c[5],out[6],c[6]);
    HalfAdder X7(in[7],c[6],out[7],c[7]);
    HalfAdder X8(in[8],c[7],out[8],c[8]);
    HalfAdder X9(in[9],c[8],out[9],c[9]);
    HalfAdder X10(in[10],c[9],out[10],c[10]);
    HalfAdder X11(in[11],c[10],out[11],c[11]);
    HalfAdder X12(in[12],c[11],out[12],c[12]);
    HalfAdder X13(in[13],c[12],out[13],c[13]);
    HalfAdder X14(in[14],c[13],out[14],c[14]);
    HalfAdder X15(in[15],c[14],out[15],c[15]);
    
endmodule