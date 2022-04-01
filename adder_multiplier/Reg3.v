`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:35 02/05/2022 
// Design Name: 
// Module Name:    Reg3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Reg3(input clk,loadb,dcb,
	    input[15:0]datb,output reg[15:0]datout
    );
always @(posedge clk)
begin
	if(loadb)
	datout <= datb;
	else if(dcb)
	begin
	datout <= datb - 1;
	end
end

endmodule
