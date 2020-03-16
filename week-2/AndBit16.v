`timescale 1ns / 1ps
module AndBit16(input [15:0] a,
    input b,
    output [15:0] out);
    
    _And X1(a[0],b,out[0]);
    _And X2(a[1],b,out[1]);
    _And X3(a[2],b,out[2]);
    _And X4(a[3],b,out[3]);
    _And X5(a[4],b,out[4]);
    _And X6(a[5],b,out[5]);
    _And X7(a[6],b,out[6]);
    _And X8(a[7],b,out[7]);
    _And X9(a[8],b,out[8]);
    _And X10(a[9],b,out[9]);
    _And X11(a[10],b,out[10]);
    _And X12(a[11],b,out[11]);
    _And X13(a[12],b,out[12]);
    _And X14(a[13],b,out[13]);
    _And X15(a[14],b,out[14]);
    _And X16(a[15],b,out[15]);
    
endmodule