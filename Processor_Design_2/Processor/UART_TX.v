`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:24 05/06/2017 
// Design Name: 
// Module Name:    UART_TX 
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
module UART_TX(
    input clk, tx_start,
	 input [7:0] in_data_byte,
    output tx_out, tx_done
    );
	 
	parameter CLOCKS_PER_BIT = 50; // 9600 baud rate (100 MHz / 9600) 10417 **** 115200 baud rate 868 *** 109 for 12.5 MHz
	
	parameter IDLE 	= 3'b000;
	parameter START 	= 3'b001;
	parameter DATA_TX = 3'b010;
	parameter STOP 	= 3'b011;
	parameter CLEANUP = 3'b100;
	
	parameter DELAY = 2;	// 50 milli second delay = 5000000
	
	reg [2:0] state 			= 0;
	reg [7:0] data_byte 		= 0;
	reg [32:0] clock_count 	= 0;
	reg [2:0] tx_bit_index 	= 0;
	reg tx_data 				= 1'b1;
	reg tx_data_done 			= 1'b0;
	
	always @(posedge clk)
		begin
			
			case(state)
				IDLE:
					begin
						tx_data <= 1'b1;
						clock_count <= 0;
						tx_bit_index <= 0;
						
						if(tx_start)
							begin
								tx_data_done <= 0;
								data_byte <= in_data_byte;
								state <= START;
							end
						else
							begin
								state <= IDLE;
							end
					end					
				START:
					begin
						tx_data <= 1'b0;
						
						if(clock_count < CLOCKS_PER_BIT - 1)
							begin
								clock_count <= clock_count + 1;
								state <= START;
							end
						else
							begin
								clock_count <= 0;
								state <= DATA_TX;
							end					
					end
				DATA_TX:
					begin
						tx_data <= data_byte[tx_bit_index];
						
						if(clock_count < CLOCKS_PER_BIT - 1)
							begin
								clock_count <= clock_count + 1;
								state <= DATA_TX;
							end
						else
							begin
								if(tx_bit_index < 7)
									begin
										clock_count <= 0;
										tx_bit_index <= tx_bit_index + 1;
										state <= DATA_TX;
									end
								else
									begin
										clock_count <= 0;
										tx_bit_index <= 0;
										state <= STOP;
									end
							end
						
					end
				STOP:
					begin
						tx_data <= 1'b1;
						
						if(clock_count < CLOCKS_PER_BIT - 1)
							begin
								clock_count <= clock_count + 1;
								state <= STOP;
							end
						else
							begin
								clock_count <= 0;
								state <= CLEANUP;								
							end				
					end
				CLEANUP:
					begin
						if(clock_count < DELAY - 1)
							begin
								clock_count <= clock_count + 1;
							end
						else
							begin
								state <= IDLE;
								clock_count <= 0;
								tx_data_done <= 1;
							end
					end
				
				default:
					state <= IDLE;
					
			endcase
		end
		
		assign tx_out = tx_data;
		assign tx_done = tx_data_done;
	
endmodule
