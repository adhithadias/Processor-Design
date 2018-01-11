`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:45 04/19/2017 
// Design Name: 
// Module Name:    CPU 
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
module CPU(

	input clk,
    input reset,
	 input rx,
	 output tx,
    output status
    );
/*
	input enable, clk;
	output finish;
	
	wire write;
	wire [7:0] data_out, DRAM_data_write, ins_out;
	wire [8:0] ins_addr;
	wire [23:0] data_addr;
	
*/

	// Instruction ROM
	wire [7:0] instruction;
	wire [8:0] pc_addr;
	
	// Instruction RAM CPU Related
	wire [7:0] ram_out_cpu, ram_in_cpu;
	wire [23:0] ram_addr_cpu;
	
	//
	wire [7:0] ram_out_tx, ram_in_rx;
	wire [15:0] ram_addr_io;
	
	// TO the RAM module
	wire [7:0] ram_out, ram_in;
	wire [15:0] ram_addr;
	
	wire write_cpu, write_io;	
	wire reset_cpu, finish;
	
	wire sel;
	wire clk2;
	
	assign status = ~sel;

	CLOCK_GEN clk_gen (
		.clk_in(clk),
		.clk_out(clk2)
    );

	
	Processor pentium4 (
	 .enable(reset_cpu),
    .clk(clk2),  
    .data_in(ram_out_cpu), 
    .DRAM_addr(ram_addr_cpu), 
    .DRAM_data_write(ram_in_cpu), 
    .write(write_cpu), 
    .IROM_ins_fetch(instruction), 
    .IROM_addr(pc_addr),
	 .finish(finish)
    );
	 
/*	 
	 CPU cpu (
		.clk(clk2),
		.INSTRUCTION(instruction),
		.RAM_IN(ram_out_cpu),
		.reset(reset_cpu),
		.RAM_OUT(ram_in_cpu),
		.RAM_ADDR(ram_addr_cpu),
		.PC_ADDR(pc_addr),
		.WRITE(write_cpu),
		.FINISH(finish)
    ); 
	 */
		 
	//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
	DataRAM dram216 (
	  .clka(clk2), // input clka
	  .wea(write), // input [0 : 0] wea
	  .addra(ram_addr), // input [15 : 0] addra
	  .dina(ram_in), // input [7 : 0] dina
	  .douta(ram_out) // output [7 : 0] douta
	);	

	/*
	 RAM Ram (
		.clka(clk2), // input clka
		.wea(write), // input [0 : 0] wea
		.addra(ram_addr), // input [15 : 0] addra
		.dina(ram_in), // input [7 : 0] dina
		.douta(ram_out) // output [7 : 0] douta
	);	
	*/
		 
	//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
	InsROM irom512 (
	  .clka(clk2), // input clka
	  .addra(pc_addr), // input [8 : 0] addra
	  .douta(instruction) // output [7 : 0] douta
	);

	/*
	 ROM rom (
		.address(pc_addr),
		.out(instruction)
    );
	*/
	
	
	 IO_MODULE IO (
		.clk(clk2), 
		.reset(reset),
		.start(finish), 
		.rx_done(rx_done), 
		.tx_start(tx_start), 
		.tx_done(tx_done), 
		.ram_addr(ram_addr_io), 
		.write(write_io),
		.reset_cpu(reset_cpu),
		.sel(sel)
	);

	UART_TX Tx (
		.clk(clk2), 
		.tx_start(tx_start), 
		.in_data_byte(ram_out_tx), 
		.tx_out(tx), 
		.tx_done(tx_done)
	);
	
	UART_RX Rx (
		.clk(clk2), 
		.rx_in(rx), 
		.rx_byte(ram_in_rx), 
		.rx_done(rx_done)
	);
	
	MUX2to1_16bit mux1 (
		.A(ram_addr_io),
		.B(ram_addr_cpu[15:0]),
		.sel(sel),
		.OUT(ram_addr)
    );
	 
	 MUX2to1 mux2 (
		.A(write_io),
		.B(write_cpu),
		.sel(sel),
		.OUT(write)
    );
	 
	MUX2to1_8bit mux3 (
		.A(ram_in_rx),
		.B(ram_in_cpu),
		.sel(sel),
		.OUT(ram_in)
    );	 
	
	DMUX1to2_8bit dmux1 (
		.IN(ram_out),
		.sel(sel),
		.A(ram_out_tx),
		.B(ram_out_cpu)
    );

endmodule
