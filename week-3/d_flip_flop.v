`timescale 1ns / 1ps
module d_flip_flop(input in,clk,
    output reg out);
    initial begin
    out=0;
    end
    always @(posedge clk) begin
        out=in;
    end
endmodule