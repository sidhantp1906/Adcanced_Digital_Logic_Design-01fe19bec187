`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:32:52 03/06/2022 
// Design Name: 
// Module Name:    SPController 
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
module SPController(input entry_sensor,exit_sensor,clk,resetn,
input [7:0]entered_pass,
output reg entry,NoSpace,exit
    );
	 
reg [1:0]cur_s,nex_s;
parameter sensor = 2'b00,password = 2'b01,entrance = 2'b10,space = 2'b11;
parameter passkey = 8'hA4;
reg mem[0:49];
reg [5:0]j_reg,j_nex;
reg entr,ext;
integer i;

always @(posedge clk)
begin
if(~resetn)
begin
cur_s <= sensor;
j_reg <= 0;
for(i = 0;i < 50;i = i + 1)
begin
	mem[i] = 0;
end
//entr <= entry_sensor;
//exr <= exit_sensor;
end
else
begin
cur_s <= nex_s;
j_reg <= j_nex;
//entr <= entn;
//exr <= exn;
end
end

always @(*)
begin
if(entry_sensor)
begin
	entr <= 1;
	ext <= 0;
end
else if(exit_sensor)
begin
	entr <= 0;
	ext <= 1;
end
end

always @(*)
begin
nex_s = cur_s;
entry = 0;
exit = 0;
NoSpace = 0;
j_nex = j_reg;
	case(cur_s)
		sensor:begin
			if(entr)
			 begin
				nex_s = password;
			 end
			else if(ext)
			 begin
				nex_s = space;
				exit = 1;
			end
		end
		password:begin
			if(entered_pass == passkey)
			nex_s = entrance;
			else
			nex_s = cur_s;
		end
		entrance:begin
			entry = 1;
			nex_s = space;
		end
		space:begin
		if(j_reg < 50)
		 begin
			if(mem[j_reg] == 0 && entr)
			begin
				mem[j_reg] = 1;
				nex_s = sensor;
				j_nex = j_reg + 1;
			end
			else if(ext)
			begin
				mem[j_reg] = 0;
				j_nex = j_reg + 1;
				nex_s = sensor;
			end
			else
			begin
				nex_s = space;
			end
		 end
		else
		 begin
			j_nex = 0;
			nex_s = sensor;
			if(entr)
				NoSpace = 1;
			else if(ext)
				NoSpace = 0;
		 end
		end
	endcase
end

endmodule
