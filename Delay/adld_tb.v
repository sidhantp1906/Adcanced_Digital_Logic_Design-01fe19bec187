`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:19:49 11/18/2021
// Design Name:   adld_hw
// Module Name:   C:/Users/sidhant priyadarshi/OneDrive/Desktop/xilinx/adldhw/adld_tb.v
// Project Name:  adldhw
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adld_hw
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adld_tb;

	// Inputs
	reg [2:0] a_late;
	reg [2:0] b;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	adld_hw uut (
		.a_late(a_late), 
		.b(b), 
		.out(out)
	);

	
	always
	begin
	b = 3;
	#5 a_late = 2;
	b = 1;
	#5 a_late = 2;
	$monitor("time = %t",$time);
	end
      
endmodule

