`timescale 1ns / 1ps

module CPU_test;
    reg clk, reset;
    reg [15:0] instruction;
    wire [15:0] inM;
    wire [15:0] outM;
    wire [14:0] addressM, PC;
    wire writeM;
    wire [6:0] control_word;

    reg [15:0] RAM [31:0];
    reg [15:0] ROM [31:0];

    CPU uut (clk,reset,inM,instruction,outM,addressM,PC,writeM,control_word);

    always #80 clk=~clk;

    initial begin
        $readmemb("/home/sid/others/Hack-computer/week-5/ROM_test.mem",ROM);
        $readmemh("/home/sid/others/Hack-computer/week-5/RAM_test.txt",RAM);
        clk=0;
        reset=1;
        #140;
        reset=0;
    end

    assign inM = RAM[addressM[4:0]];

    always @(posedge clk) 
        if(writeM) RAM[addressM[4:0]]=outM;

    always @(posedge clk)
        instruction=ROM[PC[4:0]];



endmodule