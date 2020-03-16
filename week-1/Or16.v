`timescale 1ns / 1ps
module Or16(input [15:0] a,b,
    output [15:0] out);
    
    _Or X1(a[0],b[0],out[0]);
    _Or X2(a[1],b[1],out[1]);
    _Or X3(a[2],b[2],out[2]);
    _Or X4(a[3],b[3],out[3]);
    _Or X5(a[4],b[4],out[4]);
    _Or X6(a[5],b[5],out[5]);
    _Or X7(a[6],b[6],out[6]);
    _Or X8(a[7],b[7],out[7]);
    _Or X9(a[8],b[8],out[8]);
    _Or X10(a[9],b[9],out[9]);
    _Or X11(a[10],b[10],out[10]);
    _Or X12(a[11],b[11],out[11]);
    _Or X13(a[12],b[12],out[12]);
    _Or X14(a[13],b[13],out[13]);
    _Or X15(a[14],b[14],out[14]);
    _Or X16(a[15],b[15],out[15]);
    
endmodule