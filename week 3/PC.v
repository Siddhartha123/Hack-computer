`timescale 1ns / 1ps
module PC(input [15:0] in,
    input inc,load,reset,clk,
    output [15:0] out);
    wire t1,_rst,_load,ctrl,loadReg;
    wire [15:0] inReg,incR,in1;
    Not N1(reset,_rst);
    AndBit16 A1(in,_rst,in1);
    Or O1(load,reset,t1);
    Or O2(t1,inc,loadReg);
    Register R1(inReg,loadReg,clk,out);
    And A2(inc,_rst,t2);
    Not N2(load,_load);
    And A3(t2,_load,ctrl);
    Mux16 M1(in1,incR,ctrl,inReg);
    Inc16 I1(out,incR);
endmodule