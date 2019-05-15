`timescale 1ns / 1ps
module DMux8Way(input in,
    input [2:0] sel,
    output a,b,c,d,e,f,g,h);
    wire in1,in2;
    DMux X1(in,sel[2],in1,in2);
    DMux4Way X2(in1,sel[1:0],a,b,c,d);
    DMux4Way X3(in2,sel[1:0],e,f,g,h);
    
endmodule