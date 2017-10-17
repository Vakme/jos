`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:07 10/03/2017 
// Design Name: 
// Module Name:    blinkled 
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
module blinkled(
    input clk,
    input rst,
    input start,
    output [7:0] leds
    );

clockdiv clock_divider(clk, rst, slow_clk);
fsm controler(slow_clk, rst, start, imp3);
shreg register(slow_clk, rst, imp3, leds);

//or(pout[7], imp3, imp3);

endmodule
