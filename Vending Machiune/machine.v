`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:13 01/29/2022 
// Design Name:    soda & water vending machin
// Module Name:    machine 
// Project Name:   vending machine
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

module machine(
input clk,resetn,strt,
//output reg low_amnt,huge_amnt,
output reg incorrect_coin,
input [4:0]coin,
input soda_en,water_en,refund,
output reg water,soda,
output [4:0]refunded_coin,
output [6:0]returned_change,
output reg beeping,
output [6:0]total
    );
	 
	 //reg [4:0]i,n;
	 reg strt_reg,strt_nex;
	 reg [6:0]returned_change_reg,returned_change_nex;
	 reg [4:0]refunded_coin_reg,refunded_coin_nex;
	 reg c5_en,c10_en,c20_en;
	 reg [6:0]count_reg,count_nex;
	 reg [3:0]cur_s,nex_s;
	 parameter start = 4'b0000,coin5 = 4'b0001,coin10 = 4'b0010,coin20 = 4'b0011,return_change = 4'b0100,refund_coin = 4'b0101,eject_water = 4'b0110,eject_soda = 4'b0111,beep = 4'b1000;
	 
always @(posedge clk)
begin
if(~resetn)
	begin
		cur_s <= start;
		count_reg <= 7'b0000000;
		refunded_coin_reg <= 0;
		returned_change_reg <= 0;
		strt_reg <= strt;
	end
else 
	begin
		cur_s <= nex_s;
		count_reg <= count_nex;
		refunded_coin_reg <= refunded_coin_nex;
		returned_change_reg <= returned_change_nex;
		strt_reg <= strt_nex;
	end
end

always @(cur_s,coin,strt,strt_reg,count_reg,refunded_coin_reg,returned_change_reg,water_en,soda_en,refund)
begin
nex_s = cur_s;
strt_nex = 0;
c5_en = 0;
c10_en = 0;
c20_en = 0;
incorrect_coin = 0;
//low_amnt = 0;
//huge_amnt = 0;
refunded_coin_nex = refunded_coin_reg;
returned_change_nex = returned_change_reg;
water = 0;
soda = 0;
count_nex = count_reg;
beeping = 0;
case(cur_s)
start:begin
		strt_nex = strt;
		 if(strt_reg)
		 begin
				if(coin == 5'b00101)
				begin
					nex_s = coin5;
				end
				else if(coin == 5'b01010)
				begin
					nex_s = coin10;
				end
				else if(coin == 5'b10100)
				begin
					nex_s = coin20;
				end
				else
				begin
					incorrect_coin = 1;
					nex_s = start;
				end
				/*else if(coin < 5 || coin > 5 && coin <10 ||coin > 10 && coin <20 || coin > 20)
				nex_s = return_change;*/
			end
			else
			begin
				nex_s = start;
				end
		end
coin5:begin
		c5_en = 1;
		if(c5_en)
		begin
			if(refund)
			nex_s = refund_coin;
			else
			begin
			count_nex = count_reg + 7'b0000101;
			if(soda_en && count_reg == 55 )
				nex_s = eject_soda;
			else if(count_reg > 55 && count_reg < 70 || count_reg > 70 && count_reg < 90)
				nex_s = return_change;
			else if(water_en && count_reg == 70)
				nex_s = eject_water;	
			else
				nex_s = start;	
			end
		end
		else
		nex_s = coin5;
		end
coin10:begin
		c10_en = 1;
		if(c10_en)
		begin
			if(refund)
			nex_s = refund_coin;
			else
			begin
			count_nex = count_reg + 7'b0001010;
			if(soda_en && count_reg == 55 )
				nex_s = eject_soda;
			else if(count_reg > 55 && count_reg < 70 || count_reg > 70 && count_reg < 90)
				nex_s = return_change;
			else if(water_en && count_reg == 70)
				nex_s = eject_water;	
			else
				nex_s = start;	
			end
		end
		else
		nex_s = coin10;
		end
coin20:begin
		c20_en = 1;
		if(c20_en)
		begin
			if(refund)
			nex_s = refund_coin;
			else
			begin
			count_nex = count_reg + 7'b0010100;
			if(soda_en && count_reg == 55 )
				nex_s = eject_soda;
			else if(count_reg > 55 && count_reg < 70 || count_reg > 70 && count_reg < 90)
				nex_s = return_change;
			else if(water_en && count_reg == 70)
				nex_s = eject_water;	
			else
				nex_s = start;	
			end
		end
		else
		nex_s = coin20;
		end
return_change:begin
					/*if(coin > 5 && coin < 10)
					begin
						returned_change = count_reg - 5;
						nex_s = coin5;
					end
					else if(coin > 10 && coin < 20)
					begin
						returned_change = count_reg - 10;
						nex_s = coin10;
					end
					else if(coin > 20 && coin <= 25)
					begin
						returned_change = count_reg - 10;
						nex_s = coin20;
					end*/
				   if(soda_en && count_reg > 7'b0110111 && count_reg <  7'b1000110)
					begin
						returned_change_nex = count_reg - 7'b0110111;
						nex_s = eject_soda;
					end
					else if(water_en && count_reg >  7'b1000110 && count_reg < 7'b1011010)
					begin
						returned_change_nex = count_reg - 7'b1000110;
						nex_s = eject_water;
					end
					/*else if(coin > 25)
					begin
						huge_amnt = 1;
						nex_s = start;
					end
					else if(coin < 5)
					begin
						low_amnt = 1;
						nex_s = start;
					end*/
					else
						nex_s = start;
				  end
refund_coin:begin
					refunded_coin_nex = coin;
					nex_s = start;
				end
eject_water:begin
					if(water_en && coin != 0)
					begin
						water = 1;
						count_nex = 0;
						nex_s = start;
					end
					else
						nex_s = beep;
				end
eject_soda:begin
					if(soda_en && coin != 0)
					begin
						soda = 1;
						count_nex = 0;
						nex_s = start;
					end
					else
						nex_s = beep;
				end
beep:begin
		beeping = 1;
		nex_s = start;
	  end
endcase
end

assign total = count_reg;
assign returned_change = returned_change_reg;
assign refunded_coin = refunded_coin_reg;

endmodule
