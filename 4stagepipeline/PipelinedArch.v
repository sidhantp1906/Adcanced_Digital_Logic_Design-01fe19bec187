`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:24 03/23/2022 
// Design Name: 
// Module Name:    PipelinedArch 
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
module PipelinedArch(input [3:0]rs1,rs2,rd,
input [2:0]func,
input [7:0]addr,
input clk1,clk2,
output [15:0]operation
    );
	 
	 parameter add = 3'b000,sub = 3'b001,div = 3'b010,mul = 3'b011,rsh = 3'b100,lsh = 3'b101; 
integer i;
initial begin
for(i=0;i<16;i=i+1)
Reg[i] = i+1;
end

reg [15:0]mem[0:255];
reg [15:0]Reg[0:15];
reg [15:0]L12_A,L12_B,L23_Z,L23_A,L23_B,L34_Z,L4_Z;

always @(posedge clk1)
begin
L12_A <= Reg[rs1];
L12_B <= Reg[rs2];
end

always @(posedge clk2)
begin
L23_A <= L12_A;
L23_B <= L12_B;
case(func)
add:L23_Z <= L23_A + L23_B;
sub:L23_Z <= L23_A - L23_B;
div:L23_Z <= L23_A / L23_B;
mul:L23_Z <= L23_A * L23_B;
rsh:L23_Z <= L23_B >> 1;
lsh:L23_Z <= L23_B << 1;
default:L23_Z <= 16'hxxxx;
endcase
end

always @(posedge clk1)
begin
L34_Z <= L23_Z;
Reg[rd] <= L34_Z;
end

always @(posedge clk2)
begin
L4_Z <= L34_Z;
mem[addr] <= L4_Z;
end

assign operation = L4_Z;

endmodule
