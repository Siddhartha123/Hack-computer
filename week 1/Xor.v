`timescale 1ns / 1ps
module Xor(input a,b,
    output c);
    wire _a,_b,_ab,a_b;
    nand X1(_a,a,a);
    nand X2(_b,b,b);
    nand X3(_ab,_a,b);
    nand X4(a_b,a,_b);
    nand X5(c,_ab,a_b);
endmodule