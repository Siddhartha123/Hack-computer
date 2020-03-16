`timescale 1ns / 1ps

module hack_computer(input clk, reset,output [6:0] control_word,output[15:0] instruction);

wire [15:0] ins,inM,outM;
wire [14:0] PC,addressM;
assign instruction = ins;

CPU C1 (clk, reset,
              inM,ins,
             outM,
             addressM, PC,
             writeM,
           control_word);

RAM32K M1 (outM,
     addressM,
     writeM,clk,
    inM);

ROM32K M2 (
    .address(PC),
    .clk(clk),
    .out(ins)
    );

endmodule