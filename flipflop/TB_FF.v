`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:06:38 10/03/2017
// Design Name:   FlipFlop
// Module Name:   /home/lab_jos/bielabra/flipflop/TB_FF.v
// Project Name:  flipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FlipFlop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_FF;

	// Inputs
	reg clk;
	reg rst;
	reg d;

	// Outputs
	wire ffq;
        wire latchq;
        
        localparam hpc = 10;

	// Instantiate the Unit Under Test (UUT)
	FlipFlop uut (
		.clk(clk), 
		.rst(rst),
		.d(d), 
		.q(ffq)
	);
        
        latchd uut2(
		.g(clk), 
		.rst(rst), 
		.d(d), 
		.q(latchq)
        
        );

	initial begin
		// Initialize Inputs
		clk = 1'b0;
		// Add stimulus here
                forever #hpc clk = ~clk;
	end
        initial begin
                rst = 1'b0;
                #5 rst = 1'b1;
                #2 rst = 1'b0;
        end
        
        initial begin
                d = 1'b0;
                @(posedge clk);
                #(hpc/2) d = 1'b1;
                @(negedge clk);
                #(hpc/2) d = 1'b0;
                @(negedge clk);
                #(hpc*0.75) d = 1'b1;
                #(hpc*0.5) d = 1'b0;
                #2 d = 1'b1;
                @(posedge clk);
                #(hpc*0.25) d = 1'b0;
                #(hpc/4) d = 1'b1;
                @(negedge clk);
                #(hpc/4) d = 1'b0;
        end
                
                
        initial #200 $finish;
                
      
endmodule

