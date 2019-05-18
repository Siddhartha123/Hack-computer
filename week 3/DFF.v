`timescale 1ns / 1ps
module DFF(input in,clk,
    output reg out);
    initial begin
    out=0;
    end
    always @(posedge clk) begin
        out=in;
    end
endmodule