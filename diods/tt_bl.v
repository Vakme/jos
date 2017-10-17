`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:46:08 10/03/2017
// Design Name:   blinkled
// Module Name:   /home/lab_jos/bielabra/diods/tt_bl.v
// Project Name:  diods
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blinkled
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tt_bl;

	// Inputs
	reg clk;
	reg rst;
	reg start;

	// Outputs
	wire [7:0] pout;

	// Instantiate the Unit Under Test (UUT)
	blinkled uut (
		.clk(clk), 
		.rst(rst), 
		.start(start), 
		.pout(pout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
                forever #10 clk = ~clk;
       end
       initial begin
		rst = 1'b0;
                #5 rst = 1'b1;
                #2 rst = 1'b0;
       end
       initial begin
		start = 1'b0;
                #5 start = 1'b1;
                #20 start = 1'b0;
	end
        initial #2000 $finish;
      
endmodule

