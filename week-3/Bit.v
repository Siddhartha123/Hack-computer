`timescale 1ns / 1ps
module Bit(input in,load,clk,
    output reg out);

    //This structural description causes wrong edge of clock to get detected
    // _And A1(load,clk,clk1);
    // d_flip_flop D1(in,clk1,out);

    always @(posedge clk) begin
        if(load)
            out=in;
    end
endmodule