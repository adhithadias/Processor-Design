`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:24:51 04/19/2017
// Design Name:   CPU
// Module Name:   C:/Users/adhit/Desktop/Processor Design/Projects/Start/CPU_TEST.v
// Project Name:  Start
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_TEST;

	// Inputs
	reg clk;
	reg enable;

	// Outputs
	wire finish;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.enable(enable),
		.clk(clk), 
		.finish(finish)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#200;
        
		// Add stimulus here
		enable = 1;

	end
	
	always begin
		#50
		clk = ~clk;
		
	end
      
endmodule

