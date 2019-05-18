`timescale 1ns / 1ps
module Register(input [15:0] in,
    input load,clk,
    output [15:0] out);
    Bit B0(in[0],load,clk,out[0]);
    Bit B1(in[1],load,clk,out[1]);
    Bit B2(in[2],load,clk,out[2]);
    Bit B3(in[3],load,clk,out[3]);
    Bit B4(in[4],load,clk,out[4]);
    Bit B5(in[5],load,clk,out[5]);
    Bit B6(in[6],load,clk,out[6]);
    Bit B7(in[7],load,clk,out[7]);
    Bit B8(in[8],load,clk,out[8]);
    Bit B9(in[9],load,clk,out[9]);
    Bit B10(in[10],load,clk,out[10]);
    Bit B11(in[11],load,clk,out[11]);
    Bit B12(in[12],load,clk,out[12]);
    Bit B13(in[13],load,clk,out[13]);
    Bit B14(in[14],load,clk,out[14]);
    Bit B15(in[15],load,clk,out[15]);    
endmodule