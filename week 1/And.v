`timescale 1ns / 1ps
module And(input a,b, 
    output c);
    wire _c;
    nand X1(_c,a,b);
    nand X2(c,_c,_c);
endmodule