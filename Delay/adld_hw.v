`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:00 11/18/2021 
// Design Name: 
// Module Name:    adld_hw 
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
module adld_hw(
    input [2:0] a_late,
    input [2:0] b,
    output reg[2:0] out
    );

wire [2:0]max,c;
assign c = a_late+b;
//assign d = 3'b010;
assign max = 3'b100;

always @(c or max)
begin
if(c>=max)
 out = 3'b101;
else
 out = 3'b010;
end


endmodule
