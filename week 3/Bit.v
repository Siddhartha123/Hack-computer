`timescale 1ns / 1ps
module Bit(input in,load,clk,
    output out);
    wire clk1;
    And A1(load,clk,clk1);
    DFF D1(in,clk1,out);
endmodule