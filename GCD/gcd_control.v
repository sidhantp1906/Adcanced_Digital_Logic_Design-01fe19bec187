`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:44 02/07/2022 
// Design Name: 
// Module Name:    gcd_control 
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
module gcd_control(input clk,resetn,
input [3:0]A,B,
output reg ldA,ldB,sel,out,strt
    );
	 
	 reg [1:0]cur_s,nex_s;
	 parameter start = 2'b00,data_in = 2'b01,operation = 2'b10,outputs = 2'b11;
	 
	 always @(posedge clk)
	 begin
		if(~resetn)
		cur_s <= start;
		else
		cur_s <= nex_s;
	 end
	 
	 always @(*)
	 begin
		case(cur_s)
		start:begin
				strt = 1;
				nex_s = data_in;
				end
		data_in:begin
					ldA = 1;
					ldB = 1;
					nex_s = operation;
				  end
		operation:begin
					  if(A<B)
					  begin
					  sel = 0;
					  nex_s = operation;
					  end
					  else if(A>B)
					  begin
					  sel = 1;
					  nex_s = operation;
					  end
					  else if(A==B)
					  nex_s = outputs;
					 end
		 outputs:begin
					out = 1;
					end
		 default:begin
					 nex_s = cur_s;
					 {ldA,ldB,out} = 3'b000; 
					end
	 endcase
	 end


endmodule
