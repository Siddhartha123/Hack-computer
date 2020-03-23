`timescale 1ns / 1ps
module CPU(input clk, reset,
            input [15:0] inM,instruction,
            output [15:0] outM,
            output [14:0] addressM, PC,
            output writeM,
           output [6:0] control_word);


    wire [15:0] M;
    wire [6:0] ctrlWord;
    wire [14:0] A_value,PC_out;
    wire zr,ng;
    wire [15:0] ALU_out;
	
    assign outM=ALU_out;
    assign addressM=A_value;
    assign PC=PC_out;
	assign control_word=ctrlWord;

    CPU_FSM C1 (
    .ins(instruction),
    .reset(reset),
    .clk(clk),
    .ALU_zr(zr),
    .ALU_ng(ng),
    .ctrlWord(ctrlWord),
    .writeM(writeM)
    );
    
    CPU_Datapath D1(clk,
    inM,
    instruction,
    ctrlWord,
    ALU_out,
    A_value,
    PC_out,
    zr,ng);
endmodule
