`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:07 10/10/2017
// Design Name:   clockdiv
// Module Name:   /home/lab_jos/bielabra/clock_divider/cd_TB.v
// Project Name:  clock_divider
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clockdiv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cd_TB;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire slowclk;

	// Instantiate the Unit Under Test (UUT)
	clockdiv #(.div(5)) uut (
		.clk(clk), 
		.rst(rst), 
		.slow_clk(slowclk)
	);

	initial begin
		rst = 1'b0;
                #2 rst = 1'b1;
                #2 rst = 1'b0;
         end
        
        initial begin
                clk = 1'b0;
                forever #10 clk = ~clk;
        end
        
        initial #1500 $finish;
      
endmodule

