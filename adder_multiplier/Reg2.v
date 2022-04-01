`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:21:41 02/05/2022 
// Design Name: 
// Module Name:    Reg2 
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
module Reg2(input clk,load_P,clear_p,
	    input[15:0]data_P,output reg[15:0]Y
    );
always @(posedge clk)
	begin
		if(clear_p)
		Y <= 16'h0000;
		else if(load_P)
		Y <= data_P;
	end
endmodule
