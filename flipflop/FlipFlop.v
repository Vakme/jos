`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:09 10/03/2017 
// Design Name: 
// Module Name:    FlipFlop 
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
module FlipFlop(
    input clk,
    input rst,
    input d,
    output reg q
    );
    always @(posedge clk, posedge rst)
        if(rst)
             q<=1'b0;
        else
             q<=d;

endmodule
