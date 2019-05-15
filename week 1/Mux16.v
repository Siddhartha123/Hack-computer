`timescale 1ns / 1ps
module Mux16(input [15:0] a,b,
    input sel,
    output [15:0] out);
    
    Mux X1(a[0],b[0],sel,out[0]);
    Mux X2(a[1],b[1],sel,out[1]);
    Mux X3(a[2],b[2],sel,out[2]);
    Mux X4(a[3],b[3],sel,out[3]);
    Mux X5(a[4],b[4],sel,out[4]);
    Mux X6(a[5],b[5],sel,out[5]);
    Mux X7(a[6],b[6],sel,out[6]);
    Mux X8(a[7],b[7],sel,out[7]);
    Mux X9(a[8],b[8],sel,out[8]);
    Mux X10(a[9],b[9],sel,out[9]);
    Mux X11(a[10],b[10],sel,out[10]);
    Mux X12(a[11],b[11],sel,out[11]);
    Mux X13(a[12],b[12],sel,out[12]);
    Mux X14(a[13],b[13],sel,out[13]);
    Mux X15(a[14],b[14],sel,out[14]);
    Mux X16(a[15],b[15],sel,out[15]);
    
endmodule