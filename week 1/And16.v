`timescale 1ns / 1ps
module And16(input [15:0] a,b,
    output [15:0] out);
    wire _out[15:0];
    nand X1(_out[0],a[0],b[0]);
    nand Y1(out[0],_out[0],_out[0]);
    nand X2(_out[1],a[1],b[1]);
    nand Y2(out[1],_out[1],_out[1]);
    nand X3(_out[2],a[2],b[2]);
    nand Y3(out[2],_out[2],_out[2]);
    nand X4(_out[3],a[3],b[3]);
    nand Y4(out[3],_out[3],_out[3]);
    nand X5(_out[4],a[4],b[4]);
    nand Y5(out[4],_out[4],_out[4]);
    nand X6(_out[5],a[5],b[5]);
    nand Y6(out[5],_out[5],_out[5]);
    nand X7(_out[6],a[6],b[6]);
    nand Y7(out[6],_out[6],_out[6]);
    nand X8(_out[7],a[7],b[7]);
    nand Y8(out[7],_out[7],_out[7]);
    nand X9(_out[8],a[8],b[8]);
    nand Y9(out[8],_out[8],_out[8]);
    nand X10(_out[9],a[9],b[9]);
    nand Y10(out[9],_out[9],_out[9]);
    nand X11(_out[10],a[10],b[10]);
    nand Y11(out[10],_out[10],_out[10]);
    nand X12(_out[11],a[11],b[11]);
    nand Y12(out[11],_out[11],_out[11]);
    nand X13(_out[12],a[12],b[12]);
    nand Y13(out[12],_out[12],_out[12]);
    nand X14(_out[13],a[13],b[13]);
    nand Y14(out[13],_out[13],_out[13]);
    nand X15(_out[14],a[14],b[14]);
    nand Y15(out[14],_out[14],_out[14]);
    nand X16(_out[15],a[15],b[15]); 
    nand Y16(out[15],_out[15],_out[15]);   
endmodule