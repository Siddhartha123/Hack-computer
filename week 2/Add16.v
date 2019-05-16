`timescale 1ns / 1ps
module Add16(input [15:0] a,b,
    output [15:0] out);
    wire [15:1] c;
    HalfAdder X1(a[0],b[0],out[0],c[1]);
    FullAdder X2(a[1],b[1],c[1],out[1],c[2]);
    FullAdder X3(a[2],b[2],c[2],out[2],c[3]);
    FullAdder X4(a[3],b[3],c[3],out[3],c[4]);
    FullAdder X5(a[4],b[4],c[4],out[4],c[5]);
    FullAdder X6(a[5],b[5],c[5],out[5],c[6]);
    FullAdder X7(a[6],b[6],c[6],out[6],c[7]);
    FullAdder X8(a[7],b[7],c[7],out[7],c[8]);
    FullAdder X9(a[8],b[8],c[8],out[8],c[9]);
    FullAdder X10(a[9],b[9],c[9],out[9],c[10]);
    FullAdder X11(a[10],b[10],c[10],out[10],c[11]);
    FullAdder X12(a[11],b[11],c[11],out[11],c[12]);
    FullAdder X13(a[12],b[12],c[12],out[12],c[13]);
    FullAdder X14(a[13],b[13],c[13],out[13],c[14]);
    FullAdder X15(a[14],b[14],c[14],out[14],c[15]);
    FullAdder X16(a[15],b[15],c[15],out[15]);
endmodule