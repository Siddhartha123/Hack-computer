`timescale 1ns / 1ps
module Or(input a,b,
    output c);
    wire _a,_b;
    nand X1(_a,a,a);
    nand X2(_b,b,b);
    nand X3(c,_a,_b);
endmodule