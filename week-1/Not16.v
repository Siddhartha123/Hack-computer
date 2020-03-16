`timescale 1ns / 1ps
module Not16(input [15:0] in,
    output [15:0] out);
    nand X1(out[0],in[0],in[0]);
    nand X2(out[1],in[1],in[1]);
    nand X3(out[2],in[2],in[2]);
    nand X4(out[3],in[3],in[3]);
    nand X5(out[4],in[4],in[4]);
    nand X6(out[5],in[5],in[5]);
    nand X7(out[6],in[6],in[6]);
    nand X8(out[7],in[7],in[7]);
    nand X9(out[8],in[8],in[8]);
    nand X10(out[9],in[9],in[9]);
    nand X11(out[10],in[10],in[10]);
    nand X12(out[11],in[11],in[11]);
    nand X13(out[12],in[12],in[12]);
    nand X14(out[13],in[13],in[13]);
    nand X15(out[14],in[14],in[14]);
    nand X16(out[15],in[15],in[15]);    
endmodule