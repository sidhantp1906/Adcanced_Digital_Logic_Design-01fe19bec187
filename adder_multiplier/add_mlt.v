`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:43:03 02/05/2022 
// Design Name: 
// Module Name:    add_mlt 
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
module add_mlt(input clk,
               input[15:0]dataa,datab,
input ld_a,ld_b,ld_p,cr_p,dc_b,
output [15:0]ax,py,bd,
output zero,[15:0]out
    );

Reg1 A(.load(ld_a),.data(dataa),.clk(clk),.X(ax));
Reg2 P(.load_P(ld_p),.clear_p(cr_p),.data_P(out),.clk(clk),.Y(py));
Reg3 B(.loadb(ld_b),.clk(clk),.dcb(dc_b),.datb(datab),.datout(bd));
comp CMP(.clk(clk),.in(bd),.zer(zero));
multiply ADD(.clk(clk),.eqzero(zero),.a(ax),.p(py),.Z(out));

endmodule
