`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:13:43 02/07/2022 
// Design Name: 
// Module Name:    gcd_top 
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
module gcd_top(input clk,resetn,
input [3:0]Ain,Bin,
output [3:0]GCD
    );

wire LdA,LdA,Out,Sel,Strt;

gcd_data datapath(.clk(clk),.ldA(LdA),.ldB(LdB),.sel(Sel),.out(Out),.strt(Strt),.data_A(Ain),.data_B(Bin),.GCD(GCD));
gcd_control controlpath(.clk(clk),.resetn(resetn),.A(datapath.a_reg),.B(datapath.b_reg),.ldA(LdA),.ldB(LdB),.sel(Sel),.out(Out),.strt(Strt));
endmodule
