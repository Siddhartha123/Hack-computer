`timescale 1ns / 1ps
module PC(input [14:0] in,
    input inc,load,reset,clk,
    output [14:0] out);
    wire t1,_rst,_load,ctrl,loadReg;
    wire [15:0] incR,in1;
    wire [14:0] inReg;
    _Not N1(reset,_rst);

    assign in1[15]=1'b0;
    assign incR[15]=1'b0;

    AndBit16 A1(in,_rst,in1);
    _Or O1(load,reset,t1);
    _Or O2(t1,inc,loadReg);
    Bit B0(inReg[0],loadReg,clk,out[0]);
    Bit B1(inReg[1],loadReg,clk,out[1]);
    Bit B2(inReg[2],loadReg,clk,out[2]);
    Bit B3(inReg[3],loadReg,clk,out[3]);
    Bit B4(inReg[4],loadReg,clk,out[4]);
    Bit B5(inReg[5],loadReg,clk,out[5]);
    Bit B6(inReg[6],loadReg,clk,out[6]);
    Bit B7(inReg[7],loadReg,clk,out[7]);
    Bit B8(inReg[8],loadReg,clk,out[8]);
    Bit B9(inReg[9],loadReg,clk,out[9]);
    Bit B10(inReg[10],loadReg,clk,out[10]);
    Bit B11(inReg[11],loadReg,clk,out[11]);
    Bit B12(inReg[12],loadReg,clk,out[12]);
    Bit B13(inReg[13],loadReg,clk,out[13]);
    Bit B14(inReg[14],loadReg,clk,out[14]);
    _And A2(inc,_rst,t2);
    _Not N2(load,_load);
    _And A3(t2,_load,ctrl);
    Mux16 M1(in1,incR,ctrl,inReg);
    Inc16 I1({1'b0,out},incR);
endmodule