`timescale 1ns / 1ps
module HalfAdder(input a,b, 
    output sum,carry);
    _Xor X1(a,b,sum);
    _And X2(a,b,carry);
endmodule