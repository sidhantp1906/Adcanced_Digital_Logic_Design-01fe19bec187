`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:32 05/24/2021 
// Design Name: 
// Module Name:    rwmem 
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
module rwmem(
    output reg[7:0]dout,
    input [3:0]addr,
    input [7:0]din,
    input we,
    input clk
    );
reg [7:0]mem[0:15];
always @(posedge clk)
begin
if(we)
mem[addr] = din;
else
dout = mem[addr];
end
endmodule
