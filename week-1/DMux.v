`timescale 1ns / 1ps
module DMux(input in,sel,
    output a,b);
    wire _sel,_a,_b;
    nand X1(_sel,sel,sel);
    nand X2(_a,in,_sel);
    nand X3(_b,in,sel);
    nand X4(a,_a,_a);
    nand X5(b,_b,_b);
    
endmodule