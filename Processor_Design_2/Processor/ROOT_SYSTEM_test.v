`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:55:16 05/07/2017
// Design Name:   ROOT_SYSTEM
// Module Name:   E:/UOM/Xilinx Workspace/Processor/ROOT_SYSTEM_test.v
// Project Name:  PROCESSOR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ROOT_SYSTEM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ROOT_SYSTEM_test;

	// Inputs
	reg clk;
	reg reset;
	reg rx;

	// Outputs
	wire tx;
	wire status;

	// Instantiate the Unit Under Test (UUT)
	ROOT_SYSTEM uut (
		.clk(clk), 
		.reset(reset), 
		.rx(rx), 
		.tx(tx), 
		.status(status)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		rx = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		rx = 0; #100; // start bit
		rx = 1; #100;
		rx = 0; #100;
		rx = 0; #100;
		rx = 0; #100;
		rx = 0; #100;
		rx = 1; #100;
		rx = 0; #100;
		rx = 1; #100; // stop bit
		
		#500;
		
		rx = 0; #100; // start bit
		rx = 0; #100;
		rx = 1; #100;
		rx = 0; #100;
		rx = 0; #100;
		rx = 0; #100;
		rx = 1; #100;
		rx = 0; #100;
		rx = 1; #100; // stop bit
		
	end
	
	always begin
		#5;
		clk = ~clk;
	end
      
endmodule

