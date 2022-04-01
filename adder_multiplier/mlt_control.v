`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:43:24 02/05/2022 
// Design Name: 
// Module Name:    mlt_control 
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
module mlt_control( input clk,resetn,start,eqz,
output reg lda,ldb,ldp,clr_p,dec_b,done
    );
reg [3:0]cur_s,nex_s;
parameter strt = 4'b0000,load_A = 4'b0001,load_bp = 4'b0010,multiplication = 4'b0011,decreament_b = 4'b0100,done_out = 4'b0101;

always @(posedge clk)
begin
if(resetn)
cur_s <= strt;
else
cur_s <= nex_s;
end

always @(*)
begin
nex_s = cur_s;
lda = 0;
dec_b = 0;
ldb = 0;
done = 0;
clr_p = 0;
ldp = 0;
case(cur_s)
strt:begin
			clr_p = 1;
			if(start)
			nex_s = load_A;
		end
load_A:begin
			lda = 1;
			nex_s = load_bp;
		end
load_bp:begin
			 ldb = 1;
			 ldp = 1;
			 nex_s = multiplication;
		  end
multiplication:begin
						if(eqz)
						nex_s = done_out;
						else
						nex_s = decreament_b;
					end
decreament_b:begin
				 dec_b = 1;
				 nex_s = multiplication;
				 end
done_out:begin
			done = 1;
			end
endcase
end

endmodule
