`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:34 01/25/2022 
// Design Name: 
// Module Name:    slave_det 
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
module slave_det(
    output reg sequence,
	 output out,
    input clk,
    input resetn,
	 input [4:0]in
    );
seq_detector sd(.sequence(sequence),.clk(clk),.resetn(resetn),.out(out));

always @(posedge clk)
begin
if(~resetn)
sequence = in[0];
else
sequence = {1'b0,in[4:1]};
end

endmodule
