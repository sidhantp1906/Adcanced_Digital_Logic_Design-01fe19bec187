`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:52 01/25/2022 
// Design Name: 
// Module Name:    seq_detector 
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
module seq_detector(
input sequence,
input clk,resetn,
output reg out
    );
	 
reg [2:0]cur_s,nex_s;
parameter s0 = 3'b000,s1 = 3'b001,s2 = 3'b010,s3 = 3'b011,s4 = 3'b100;

always @(posedge clk)
begin
if(~resetn)
cur_s <= s0;
else
cur_s <= nex_s;
end

always @(cur_s,sequence)
begin
out = 0;
nex_s = cur_s;
case(cur_s)
s0:begin 
	if(sequence)
	nex_s = s1;
	else
	nex_s = s0;
	end
s1:begin
	if(sequence)
	nex_s = s1;
	else
	nex_s = s2;
	end
s2:begin
	if(sequence)
	nex_s = s3;
	else
	nex_s = s0;
	end
s3:begin
	if(sequence)
	nex_s = s4;
	else
	nex_s = s2;
	end
s4:begin
	out = 1;
	if(sequence)
	nex_s = s1;
	else
	nex_s = s2;
	end
endcase
end

//assign out = (s4)?1:0;



endmodule
