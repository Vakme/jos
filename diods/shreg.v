`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:04 10/03/2017 
// Design Name: 
// Module Name:    shreg 
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
module shreg(
    input clk,
    input rst,
    input sin,
    output reg [7:0] pout
    );

always @(posedge clk, posedge rst)
        if(rst)
                pout <= 8'b0;
        else
                pout <= {pout[6:0], sin};
                


endmodule
