`timescale 1ns / 1ps
module Inc16_test;
    
    reg [15:0] in;
    wire [15:0] out;

    Inc16 uut (in,out);

    //always #20 clk = ~clk;

    initial begin
        //clk=0;
        in = 123;
        #40;
        in=56;
        #60;
        in=467;

    end

endmodule
    
