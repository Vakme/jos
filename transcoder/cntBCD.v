`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:12 10/17/2017 
// Design Name: 
// Module Name:    cntBCD 
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
module cntBCD(
    input clk,
    input rst,
    input en,
    output [15:0] out
    );

localparam s = 4;
wire [s-1:0] ovl1;
wire [s:0] enn;
genvar i;

assign enn[0] = en;

generate for(i=0; i<s; i = i+1)
	begin: dek
		assign enn[i+1] = ovl1[i] & enn[i];
		cnt1dek bcd1 (clk, rst, enn[i], ovl1[i], out[4*i+3:4*i]);
	end
endgenerate
endmodule
