`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:25:27 11/17/2021 
// Design Name: 
// Module Name:    nat_sum 
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
module nat_sum #(parameter n = 512)(
    input clk,reset,
	 output [16:0]sum_out
    );


reg [9:0]inc[0:n-1];
reg [8:0]in;
reg [16:0]sum_reg,sum_cur;
reg [9:0]i_f,i_e;
//reg [16:0]s_e,s_f;



initial 
begin:data
integer i;
in = 9'b0;
 for(i=0;i<n;i=i+1)
	inc[i] = i+1;
end


always @(posedge clk)
begin
if(~reset)
sum_cur <= 17'b0;
else
sum_cur <= sum_reg;
end

always @(posedge clk or reset)
begin :fetch

/*if(~reset)
sum_cur <= 17'b0;
else
sum_cur <= sum_reg;*/

//if(reset)
//begin
i_f <= inc[in]; 
in <= in + 1;
//end
//else
//in = 9'b0;
//s_f <= sum_reg;
end

always @(posedge clk or reset)
begin:execute
//if(reset)
//begin
//s_e <= s_f;
i_e <= i_f;
sum_reg <= sum_cur + i_e;
//sum_reg <= sum;
//end
//else
//sum_reg <= 17'b0;
//sum_cur <= sum_reg;
end

assign sum_out = sum_cur;

endmodule
