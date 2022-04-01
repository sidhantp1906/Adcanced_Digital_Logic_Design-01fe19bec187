`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:16:10 02/05/2022 
// Design Name: 
// Module Name:    Reg1 
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
module Reg1(input load,
            input [15:0]data,
input clk,output reg [15:0]X
    );
always @(posedge clk)
begin
 if(load)
 X <= data;
end
endmodule
