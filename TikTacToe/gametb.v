`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:35 01/21/2022
// Design Name:   tiktakgame
// Module Name:   C:/Users/sidhant priyadarshi/OneDrive/Desktop/xilinx/tiktaktoe/gametb.v
// Project Name:  tiktaktoe
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tiktakgame
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gametb;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;
	reg [1:0] c;
	reg [1:0] d;
	reg clk;
	reg resetn;
	reg player1,player2;

	// Outputs
	wire p1;
	wire p2;
	wire ilg1;
	wire ilg2;
	wire nospace;

	// Instantiate the Unit Under Test (UUT)
	tiktakgame uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.clk(clk), 
		.resetn(resetn), 
		.player1(player1),
		.player2(player2),
		.p1(p1), 
		.p2(p2), 
		.ilg1(ilg1), 
		.ilg2(ilg2), 
		.nospace(nospace)
	);

	
 initial begin clk = 0; end    
always 
begin 
#5 clk = ~clk; 
end

always
begin
resetn = 0;
#10
resetn = 1;
a = 2'b00;
b = 2'b00;
player1 = 1;
player2 = 0;
c = 2'b01;
d = 2'b00;
#20
player2 = 1;
player1 = 0;

#100
a = 2'b00;
b = 2'b01;
player2 = 0;
player1 = 1;
c = 2'b10;
d = 2'b01;
#20
player1 = 0;
player2 = 1;

#100
a = 2'b00;
b = 2'b10;
player2 = 0;
player1 = 1;
c = 2'b10;
d = 2'b10;
#20
player1 = 0;
player2 = 1;

#100;
end
endmodule

