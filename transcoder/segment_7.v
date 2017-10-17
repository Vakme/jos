`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:43 10/17/2017 
// Design Name: 
// Module Name:    segment_7 
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
module segment_7(
    input clk,
    input rst,
    input button,
    output [3:0] output_4,
    output [6:0] output_7
    );
wire [15:0] out;
wire [3:0] out_4;
wire [1:0] m4out;

clockdiv clock_div(clk, rst, slow_clk);
mod4clk m4clk(clk, rst, slow_clk, m4out);
decoder decod(m4out, output_4);
cntBCD cnt_bcd(clk, rst, button, out);
MUX mux(m4out, out, out_4);
transcoder transc(out_4, output_7);

endmodule
