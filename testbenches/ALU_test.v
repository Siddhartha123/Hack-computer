`timescale 1ns / 1ps

module ALU_test;

	// Inputs
	reg [15:0] x;
	reg [15:0] y;
	reg zx;
	reg nx;
	reg zy;
	reg ny;
	reg f;
	reg no;

	// Outputs
	wire [15:0] out;
	wire zr;
	wire ng;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.x(x), 
		.y(y), 
		.zx(zx), 
		.nx(nx), 
		.zy(zy), 
		.ny(ny), 
		.f(f), 
		.no(no), 
		.out(out), 
		.zr(zr), 
		.ng(ng)
	);

	initial begin
		// Initialize Inputs
		f = $fopen("output.txt","w");
x=0;
y=65535;
zx = 1;
nx = 0;
zy = 1;
ny = 0;
f = 1;
no = 0;
 $fwrite(f,"%b\n",   out);
#10; 
zx = 1;
nx = 1;
zy = 1;
ny = 1;
f = 1;
no = 1;
#10; 
zx = 1;
nx = 1;
zy = 1;
ny = 0;
f = 1;
no = 0;
#10; 
zx = 0;
nx = 0;
zy = 1;
ny = 1;
f = 0;
no = 0;
#10; 
zx = 1;
nx = 1;
zy = 0;
ny = 0;
f = 0;
no = 0;
#10; 
zx = 0;
nx = 0;
zy = 1;
ny = 1;
f = 0;
no = 1;
#10; 
zx = 1;
nx = 1;
zy = 0;
ny = 0;
f = 0;
no = 1;
#10; 
zx = 0;
nx = 0;
zy = 1;
ny = 1;
f = 1;
no = 1;
#10; 
zx = 1;
nx = 1;
zy = 0;
ny = 0;
f = 1;
no = 1;
#10; 
zx = 0;
nx = 1;
zy = 1;
ny = 1;
f = 1;
no = 1;
#10; 
zx = 1;
nx = 1;
zy = 0;
ny = 1;
f = 1;
no = 1;
#10; 
zx = 0;
nx = 0;
zy = 1;
ny = 1;
f = 1;
no = 0;
#10; 
zx = 1;
nx = 1;
zy = 0;
ny = 0;
f = 1;
no = 0;
#10; 
zx = 0;
nx = 0;
zy = 0;
ny = 0;
f = 1;
no = 0;
#10; 
zx = 0;
nx = 1;
zy = 0;
ny = 0;
f = 1;
no = 1;
#10; 
zx = 0;
nx = 0;
zy = 0;
ny = 1;
f = 1;
no = 1;
#10; 
zx = 0;
nx = 0;
zy = 0;
ny = 0;
f = 0;
no = 0;
#10; 
zx = 0;
nx = 1;
zy = 0;
ny = 1;
f = 0;
no = 1;
#10; 
x = 16'b000000000010001;y = 16'b000000000000011;zx = 1;
nx = 0;
zy = 1;
ny = 0;
f = 1;
no = 0;
#10; 
zx = 1;
nx = 1;
zy = 1;
ny = 1;
f = 1;
no = 1;
#10; 
zx = 1;
nx = 1;
zy = 1;
ny = 0;
f = 1;
no = 0;
#10; 
zx = 0;
nx = 0;
zy = 1;
ny = 1;
f = 0;
no = 0;
#10; 
zx = 1;
nx = 1;
zy = 0;
ny = 0;
f = 0;
no = 0;
#10; 
zx = 0;
nx = 0;
zy = 1;
ny = 1;
f = 0;
no = 1;
#10; 
zx = 1;
nx = 1;
zy = 0;
ny = 0;
f = 0;
no = 1;
#10; 
zx = 0;
nx = 0;
zy = 1;
ny = 1;
f = 1;
no = 1;
#10; 
zx = 1;
nx = 1;
zy = 0;
ny = 0;
f = 1;
no = 1;
#10; 
zx = 0;
nx = 1;
zy = 1;
ny = 1;
f = 1;
no = 1;
#10; 
zx = 1;
nx = 1;
zy = 0;
ny = 1;
f = 1;
no = 1;
#10; 
zx = 0;
nx = 0;
zy = 1;
ny = 1;
f = 1;
no = 0;
#10; 
zx = 1;
nx = 1;
zy = 0;
ny = 0;
f = 1;
no = 0;
#10; 
zx = 0;
nx = 0;
zy = 0;
ny = 0;
f = 1;
no = 0;
#10; 
zx = 0;
nx = 1;
zy = 0;
ny = 0;
f = 1;
no = 1;
#10; 
zx = 0;
nx = 0;
zy = 0;
ny = 1;
f = 1;
no = 1;
#10; 
zx = 0;
nx = 0;
zy = 0;
ny = 0;
f = 0;
no = 0;
#10; 
zx = 0;
nx = 1;
zy = 0;
ny = 1;
f = 0;
no = 1;
#10; 



	end
      
endmodule

