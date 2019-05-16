`timescale 1ns / 1ps
module XorBit16(input [15:0] a,
    input b,
    output [15:0] out);
    
    Xor X1(a[0],b,out[0]);
    Xor X2(a[1],b,out[1]);
    Xor X3(a[2],b,out[2]);
    Xor X4(a[3],b,out[3]);
    Xor X5(a[4],b,out[4]);
    Xor X6(a[5],b,out[5]);
    Xor X7(a[6],b,out[6]);
    Xor X8(a[7],b,out[7]);
    Xor X9(a[8],b,out[8]);
    Xor X10(a[9],b,out[9]);
    Xor X11(a[10],b,out[10]);
    Xor X12(a[11],b,out[11]);
    Xor X13(a[12],b,out[12]);
    Xor X14(a[13],b,out[13]);
    Xor X15(a[14],b,out[14]);
    Xor X16(a[15],b,out[15]);
    
endmodule