`timescale 1ns / 1ps
module RAM4K(input [15:0] in,
    input [11:0] address,
    input load,clk,
    output [15:0] out);
    wire [15:0] out0,out1,out2,out3,out4,out5,out6,out7;
    wire l0,l1,l2,l3,l4,l5,l6,l7;
    DMux8Way D1(load,address[11:9],l0,l1,l2,l3,l4,l5,l6,l7);
    RAM512 R0(in,address[8:0],l0,clk,out0);
    RAM512 R1(in,address[8:0],l1,clk,out1);
    RAM512 R2(in,address[8:0],l2,clk,out2);
    RAM512 R3(in,address[8:0],l3,clk,out3);
    RAM512 R4(in,address[8:0],l4,clk,out4);
    RAM512 R5(in,address[8:0],l5,clk,out5);
    RAM512 R6(in,address[8:0],l6,clk,out6);
    RAM512 R7(in,address[8:0],l7,clk,out7);
    Mux8Way16 M1(out0,out1,out2,out3,out4,out5,out6,out7,address[11:9],out);
endmodule