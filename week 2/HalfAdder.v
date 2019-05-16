`timescale 1ns / 1ps
module HalfAdder(input a,b, 
    output sum,carry);
    Xor X1(a,b,sum);
    And X2(a,b,carry);
endmodule