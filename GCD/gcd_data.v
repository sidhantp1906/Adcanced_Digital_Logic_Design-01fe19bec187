`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:42 02/07/2022 
// Design Name: 
// Module Name:    gcd_data 
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
module gcd_data(input clk,ldA,ldB,sel,out,strt,
input [3:0]data_A,data_B,
output reg [3:0]GCD
);

reg [3:0]a_nex,b_nex,a_reg,b_reg;

always @(posedge clk)
begin
if(ldA && ldB)
begin
a_reg <= data_A;
b_reg <= data_B;
end
else
begin
a_reg <= a_nex;
b_reg <= b_nex;
end
end

always @(*)
begin
	if(strt)
	begin
	case({sel,out})
	2'b00:begin
			b_nex = b_reg - a_reg;
		  end
	2'b10:begin
			a_nex = a_reg - b_reg;
		  end
	2'b01,2'b11:begin
					GCD = a_reg;
					end
	default:begin
				a_nex = a_reg;
				b_nex = b_reg;
				GCD = 4'h0;
	        end
	endcase
	end
	else
	begin
	a_nex = a_reg;
	b_nex = b_reg;
	GCD = 4'h0;
	end
end

endmodule
