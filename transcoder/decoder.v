`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:47 10/17/2017 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
    input [1:0] input_2,
    output reg [3:0] output_4
    );
	
always @*
	case(input_2)
		2'b00:
			output_4 <= 4'b1110;
		2'b01:
			output_4 <= 4'b1101;
		2'b10:
			output_4 <= 4'b1011;
		2'b11:
			output_4 <= 4'b0111;
	endcase

endmodule
