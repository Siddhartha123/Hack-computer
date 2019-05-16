`timescale 1ns / 1ps
module ALU(input [15:0] x,y,
    input zx,nx,zy,ny,f,no,
    output [15:0] out,
    output zr,ng);
    wire [15:0] x_zx,y_zy,x1,y1,_out,xplusy,xandy;
    wire _zx,_zy;
    Not N1(zx,_zx);
    Not N2(zy,_zy);
    AndBit16 A1(x,_zx,x_zx);
    AndBit16 A2(y,_zy,y_zy);
    XorBit16 X1(x_zx,nx,x1);
    XorBit16 X2(y_zy,ny,y1);
    Add16 A3(x1,y1,xplusy);
    And16 A4(x1,y1,xandy);
    Mux16 M1(xandy,xplusy,f,_out);
    XorBit16 X4(_out,no,out);
    Or8Way O1(out[15:8],t1);
    Or8Way O2(out[7:0],t2);
    Or O3(t1,t2,_zr);
    Not N3(_zr,zr);
    assign ng=out[15];
endmodule