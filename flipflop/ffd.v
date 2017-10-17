`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:36 10/10/2017 
// Design Name: 
// Module Name:    ffd 
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
module latchd(
    input g,
    input rst,
    input d,
    output reg q
    );
    always @*
        if(rst)
                q = 1'b0;
        else if(g)
                q = d;


endmodule
