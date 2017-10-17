`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:43 10/17/2017 
// Design Name: 
// Module Name:    MUX 
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
module MUX(
    input [1:0] m4out,
	input [15:0] out,
    output reg [3:0] out_4
    );

always @*
	case(m4out)
		2'b00:
			out_4 <= out[3:0];
		2'b01:
			out_4 <= out[7:4];
		2'b10:
			out_4 <= out[11:8];
		2'b11:
			out_4 <= out[15:12];
	endcase

endmodule
