`timescale 1ns / 1ps
module Register_test;
    reg [15:0] in;
    reg load, clk;
    wire [15:0] out;

    Register uut (in,load,clk,out);

    always #20 clk=~clk;

    initial begin
        clk=0;
        load=0;
        #50;
        in=39;
        #10;
        load=1;
        #40;
        in=43;
        load=0;
    end
endmodule
