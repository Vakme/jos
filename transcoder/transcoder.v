`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:09 10/17/2017 
// Design Name: 
// Module Name:    transcoder 
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
module transcoder(
    input [3:0] input_4,
    output [6:0] noutput_7
    );
reg [6:0] output_7 ;
always @* 
	case(input_4)
		4'b0000:
			output_7 <= 7'b0111111; // 0
		4'b0001:
			output_7 <= 7'b0000110; // 1
		4'b0010:
			output_7 <= 7'b1011011; // 2
		4'b0011:
			output_7 <= 7'b1001111; // 3
		4'b0100:
			output_7 <= 7'b1100110; // 4
		4'b0101:
			output_7 <= 7'b1101101; // 5
		4'b0110:
			output_7 <= 7'b1111101; // 6
		4'b0111:
			output_7 <= 7'b0000111; // 7
		4'b1000:
			output_7 <= 7'b1111111; // 8
		4'b1001:
			output_7 <= 7'b1101111; // 9
		default:
			output_7 <= 7'b0000000;
	endcase
assign noutput_7 = ~output_7;
endmodule
