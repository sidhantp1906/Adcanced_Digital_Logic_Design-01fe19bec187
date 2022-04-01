`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:21 02/05/2022 
// Design Name: 
// Module Name:    mlt_top_mod 
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
module mlt_top_mod(input start,clk,resetn,
                   input[15:0]ain,bin,
output [15:0]data_op,
output done
    );
add_mlt multiplier(.clk(clk),.dataa(ain),.datab(bin),.ld_a(lda),.ld_b(ldb),.ld_p(ldp),.cr_p(clr_p),.dc_b(dec_b),.ax(ax),.py(py),.bd(bd),.zero(zero),.out(data_op));
mlt_control controller(.clk(clk),.resetn(resetn),.start(start),.eqz(zero),.lda(lda),.ldb(ldb),.ldp(ldp),.clr_p(clr_p),.dec_b(dec_b),.done(done));
endmodule
