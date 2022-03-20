`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:00 01/25/2022
// Design Name:   seq_detector
// Module Name:   C:/Users/sidhant priyadarshi/OneDrive/Desktop/xilinx/seq_det/det_tb.v
// Project Name:  seq_det
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_detector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module det_tb;

	// Inputs
	reg sequence;
	reg clk;
	reg resetn;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	seq_detector uut (
		.sequence(sequence), 
		.clk(clk), 
		.resetn(resetn), 
		.out(out)
	);

initial begin clk = 1; end

always begin #5 clk = ~clk; end

initial
begin
resetn = 0;
sequence = 1;
#20
resetn = 1;
sequence <= 0;
#10
sequence <= 1;
#10
sequence <= 1;
#10
sequence <= 0;
#10;
end
	
      
endmodule

