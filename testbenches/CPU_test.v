`timescale 1ns / 1ps

module CPU_test;
    reg clk, reset;
    reg [15:0] instruction;
    wire [15:0] inM;
    wire [15:0] outM;
    wire [14:0] addressM, PC;
    wire writeM;
    wire [6:0] control_word;

    reg [15:0] RAM [32767:0];
    reg [15:0] ROM [255:0];

    reg [15:0] i;
    CPU uut (clk,reset,inM,instruction,outM,addressM,PC,writeM,control_word);

    initial begin
        clk=0;
        for(i=0;i<11;i=i+1)
            #80 clk=~clk;
    end

    initial begin
        $readmemb("/home/sid/Codes/nand2tetris/Hack-computer/week-5/SimpleFunction256.mem",ROM);
        $readmemh("/home/sid/Codes/nand2tetris/Hack-computer/week-5/SimpleFunctionRAM32767.txt",RAM);
        
        RAM[0] = 317;
        RAM[1] = 317;
        RAM[2] = 310;
        RAM[3] = 3000;
        RAM[4] = 4000;
        RAM[310] = 1234;
        RAM[311] = 37;
        RAM[312] = 1000;
        RAM[313] = 305;
        RAM[314] = 300;
        RAM[315] = 3010;
        RAM[316] = 4010;

        reset=1;
        #140;
        reset=0;
    end

    assign inM = RAM[addressM];

    always @(posedge clk) 
        if(writeM) RAM[addressM]=outM;

    always @(posedge clk)
        instruction=ROM[PC[7:0]];



endmodule