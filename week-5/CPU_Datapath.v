`timescale 1ns / 1ps
module CPU_Datapath(input clk,
    input [15:0] M,
    input [15:0] ins,
    input [6:0] ctrlWord,
    output [15:0] ALU_out,
    output [14:0] A_value,
    output [14:0] PC_out,
    output zr,ng);
    wire A_or_C,A_or_M,loadA,loadD,loadPC,PC_inc,PC_rst;
    wire [15:0] inA,inD,outA,outD,ALU_x,ALU_y,PC_in;
    Register A(inA,loadA,clk,outA);
    Register D(inD,loadD,clk,outD);
    Mux16 M1(ins,ALU_out,A_or_C,inA);
    Mux16 M2(outA,M,A_or_M,ALU_y);
    ALU A1(ALU_x,ALU_y,zx,nx,zy,ny,f,no,ALU_out,zr,ng);
    PC P1(PC_in,PC_inc,loadPC,PC_rst,clk,PC_out);

    //wiring up the components
    assign A_value=outA[14:0];
    assign inD=ALU_out;
    assign ALU_x=outD;
    assign PC_in=outA;
    
    //defining control word
    assign {zx,nx,zy,ny,f,no}=ins[11:6];
    assign A_or_C=ctrlWord[6];
    assign A_or_M=ctrlWord[5];
    assign loadA=ctrlWord[4];
    assign loadD=ctrlWord[3];
    
    assign PC_inc=ctrlWord[2];
    assign loadPC=ctrlWord[1];
    assign PC_rst=ctrlWord[0];
    
endmodule
