`timescale 1ns / 1ps
module And(input a,b, 
    output c);
    wire _c;
    nand X1(_c,a,b);
    nand(c,_c,_c);
endmodule