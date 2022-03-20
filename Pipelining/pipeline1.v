`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:35:57 05/24/2021 
// Design Name: 
// Module Name:    pipeline1 
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
module pipeline1(
    output [9:0]f,
    input [9:0]a,
    input [9:0]b,
    input [9:0]c,
    input [9:0]d,
    input clk
    );
reg [9:0]l12_x1,l12_x2,l12_d,l23_x3,l23_d,l34_f;
assign f = l34_f;
always @(posedge clk)
begin
l12_x1 <= #4 a+b;
l12_x2 <= #4 c-d;
l12_d  <=      d;
end

always @(posedge clk)
begin
l23_x3 <= #4 l12_x1+l12_x2;
l23_d  <= l12_d;
end

always @(posedge clk)
begin
l34_f  <= #6 l23_x3*l23_d;
end
endmodule
