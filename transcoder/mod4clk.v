`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:19 10/17/2017 
// Design Name: 
// Module Name:    mod4clk 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:13 10/17/2017 
// Design Name: 
// Module Name:    cnt1dek 
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
module mod4clk(
    input clk,
    input rst,
    input en,
    output reg [1:0] out
    );

always @(posedge clk, posedge rst)
	if(rst)
		out<=2'b0;
	else if(en)
		out<=out+1'b1;
endmodule

