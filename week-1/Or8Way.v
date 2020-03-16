`timescale 1ns / 1ps
module Or8Way(input [7:0] in,
    output out);
    
    _Or X1(in[0],in[1],t1);
    _Or X2(in[2],in[3],t2);
    _Or X3(in[4],in[5],t3);
    _Or X4(in[6],in[7],t4);
    
    _Or X5(t1,t2,t5);
    _Or X6(t3,t4,t6);
    _Or X7(t5,t6,out);
endmodule