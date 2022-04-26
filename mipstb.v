`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:20:10 05/24/2021
// Design Name:   mips
// Module Name:   C:/Users/sidhant priyadarshi/OneDrive/Desktop/xilinx/mips32/mipstb.v
// Project Name:  mips32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mipstb;

	// Inputs
	reg clk1;
	reg clk2;
integer k;
	// Instantiate the Unit Under Test (UUT)
	mips riscv (
		.clk1(clk1), 
		.clk2(clk2)
	);

	initial begin
		// Initialize Inputs
		clk1 = 0;
		clk2 = 0;
		#10;
	end
	always
	begin
	#5 clk1 = ~clk1;
	#5 clk2 = ~clk2;
	end
	initial
begin
for(k=0;k<31;k=k+1)
riscv.Reg[k] = k;
riscv.mem[0] = 32'h2801000a;
riscv.mem[1] = 32'h28020014;
riscv.mem[2] = 32'h28030019;
riscv.mem[3] = 32'h0ce77800;
riscv.mem[4] = 32'h0ce77800;
riscv.mem[5] = 32'h00222000;
riscv.mem[6] = 32'h0ce77800;
riscv.mem[7] = 32'h00832800;
riscv.mem[8] = 32'hfe000000;

riscv.HALTED = 0;
riscv.pc = 0;
riscv.TAKEN_BRANCH = 0;
	end
      
endmodule

