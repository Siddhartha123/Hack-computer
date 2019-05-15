`timescale 1ns / 1ps
module DMux4Way(input in,
    input [1:0] sel,
    output a,b,c,d);
    wire in1,in2;
    DMux X1(in1,sel[0],a,b);
    DMux X2(in2,sel[0],c,d);
    DMux X3(in,sel[1],in1,in2);   
endmodule