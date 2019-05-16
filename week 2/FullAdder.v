`timescale 1ns / 1ps
module FullAdder(input a,b,c, 
    output sum,carry);
    wire t1,t2,t3,t4,t5;
    Xor X1(a,b,t1);
    Xor X2(t1,c,sum);
    And X3(a,b,t2);
    And X4(b,c,t3);
    And X5(c,a,t4);
    Or X6(t2,t3,t5);
    Or X7(t5,t4,carry);
endmodule