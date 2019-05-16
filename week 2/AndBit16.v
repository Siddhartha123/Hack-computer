`timescale 1ns / 1ps
module AndBit16(input [15:0] a,
    input b,
    output [15:0] out);
    
    And X1(a[0],b,out[0]);
    And X2(a[1],b,out[1]);
    And X3(a[2],b,out[2]);
    And X4(a[3],b,out[3]);
    And X5(a[4],b,out[4]);
    And X6(a[5],b,out[5]);
    And X7(a[6],b,out[6]);
    And X8(a[7],b,out[7]);
    And X9(a[8],b,out[8]);
    And X10(a[9],b,out[9]);
    And X11(a[10],b,out[10]);
    And X12(a[11],b,out[11]);
    And X13(a[12],b,out[12]);
    And X14(a[13],b,out[13]);
    And X15(a[14],b,out[14]);
    And X16(a[15],b,out[15]);
    
endmodule