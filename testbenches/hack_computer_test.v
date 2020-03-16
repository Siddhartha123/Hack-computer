`timescale 1ns / 1ps

module hack_computer_test;

reg clk, reset;
wire [6:0] control_word;
wire [15:0] instruction;
hack_computer uut(clk,reset,control_word,instruction);

always #40 clk=~clk;

initial begin
    clk=0;
    reset=1;
    #260;
    reset=0;
end

endmodule