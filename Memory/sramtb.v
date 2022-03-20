`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:41:13 05/24/2021
// Design Name:   rwmem
// Module Name:   C:/Users/sidhant priyadarshi/OneDrive/Desktop/xilinx/sram/sramtb.v
// Project Name:  sram
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rwmem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sramtb;

	// Inputs
	reg [3:0] addr;
	reg [7:0] din;
	reg we;
	reg clk;

	// Outputs
	wire [7:0] dout;

	// Instantiate the Unit Under Test (UUT)
	rwmem uut (
		.dout(dout), 
		.addr(addr), 
		.din(din), 
		.we(we), 
		.clk(clk)
	);

	initial begin
		clk = 0;
		#10;
	end
	always 
	begin
	#5 clk = ~clk;
	end
	 
	 initial
	 begin
	 addr = 4'b0100;
	 we = 1;
	 din = 8'h56;
	 #5
	 addr = 4'b0100;
	 we = 0;
	 
      end
endmodule

