`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:25 10/03/2017 
// Design Name: 
// Module Name:    fsm 
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
module fsm(
    input clk,
    input rst,
    input start,
    output imp3
    );
 
 reg [1:0] st, nst;
 localparam idle = 2'b00, s0 = 2'b01, s1 = 2'b10, s2 = 2'b11;
 
assign imp3 = (st == idle) ? 1'b0 : 1'b1;
 
 always @(posedge clk, posedge rst)
        if(rst)
                st <= 2'b0;
        else
                st <= nst;
                
always @*
        case(st)
                idle: 
                        if(start) nst = s0; 
                        else nst = idle;
                s0: 
                        nst = s1;
                s1:
                        nst = s2;
                s2:
                        nst = idle;
        endcase
        

endmodule
