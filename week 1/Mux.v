`timescale 1ns / 1ps
module Mux(input a,b,sel,
    output out);
    wire _sel;
    nand X1(_sel,sel,sel);
    nand X2(a_sel,a,_sel);
    nand X3(b_sel,b,sel);
    nand X4(out,a_sel,b_sel);
    
endmodule