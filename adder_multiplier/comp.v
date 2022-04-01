`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:16 02/05/2022 
// Design Name: 
// Module Name:    comp 
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
module comp( input clk,
            input [15:0]in,output reg zer
    );
always @(clk)
begin
if(in == 16'h0000)
zer <= 1;
else
zer <= 0;
end
endmodule
