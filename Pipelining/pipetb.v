`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:46:23 05/24/2021
// Design Name:   pipeline1
// Module Name:   C:/Users/sidhant priyadarshi/OneDrive/Desktop/xilinx/pipe1/pipetb.v
// Project Name:  pipe1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipetb;

	// Inputs
	reg [9:0] a;
	reg [9:0] b;
	reg [9:0] c;
	reg [9:0] d;
	reg clk;

	// Outputs
	wire [9:0] f;

	// Instantiate the Unit Under Test (UUT)
	pipeline1 uut (
		.f(f), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.clk(clk)
	);

	initial 
	begin
		clk = 1;
	end
	always
	begin
	#5 clk =  ~clk;
end

initial	
begin
a = 9'h32;
		b = 9'h25;
		c = 9'h34;
		d = 9'h11;
	#10	
a = 9'h42;
		b = 9'h11;
		c = 9'h35;
		d = 9'h23;		
		end
      
endmodule

