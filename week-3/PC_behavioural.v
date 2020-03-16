`timescale 1ns / 1ps
module PC_behavioural(input [14:0] in,
    input inc,load,reset,clk,
    output reg [14:0] out);

    always@(posedge clk) begin
        if(reset)
            out='b0;
        else begin
            if(load)
                out=in;
            else if(inc)
                out=out + 1'b1;
        end
    end
    
endmodule