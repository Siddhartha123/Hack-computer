`timescale 1ns / 1ps

module ROM32K_test;

reg clk;
reg [14:0] address;
wire [15:0] out;

ROM32K uut(clk,address,out);
always #40 clk= ~clk;

initial begin
    clk=1;
    address=2;
    #70;
    address=0;
    #20;

end
endmodule