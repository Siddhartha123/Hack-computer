`timescale 1ns / 1ps
module RAM8(input [15:0] in,
    input [2:0] address,
    input load,clk,
    output [15:0] out);
    wire [15:0] out0,out1,out2,out3,out4,out5,out6,out7;
    wire l0,l1,l2,l3,l4,l5,l6,l7;
    DMux8Way D1(load,address,l0,l1,l2,l3,l4,l5,l6,l7);
    Register R0(in,l0,clk,out0);
    Register R1(in,l1,clk,out1);
    Register R2(in,l2,clk,out2);
    Register R3(in,l3,clk,out3);
    Register R4(in,l4,clk,out4);
    Register R5(in,l5,clk,out5);
    Register R6(in,l6,clk,out6);
    Register R7(in,l7,clk,out7);
    Mux8Way16 M1(out0,out1,out2,out3,out4,out5,out6,out7,address,out);
endmodule