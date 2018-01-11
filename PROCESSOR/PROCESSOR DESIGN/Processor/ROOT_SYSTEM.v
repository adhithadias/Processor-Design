`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:18 05/07/2017 
// Design Name: 
// Module Name:    ROOT_SYSTEM 
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
module ROOT_SYSTEM(
    input clk,
    input reset,
	 input rx,
	 output tx,
    output status
    );

	wire [23:0] instruction, pc_addr;
	
	wire [7:0] ram_out_cpu, ram_in_cpu;
	wire [15:0] ram_addr_cpu;
	
	wire [7:0] ram_out_tx, ram_in_rx;
	wire [15:0] ram_addr_io;
	
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
	 
	 RAM Ram (
		.clka(clk2), // input clka
		.wea(write), // input [0 : 0] wea
		.addra(ram_addr), // input [15 : 0] addra
		.dina(ram_in), // input [7 : 0] dina
		.douta(ram_out) // output [7 : 0] douta
	);
	 
	 ROM rom (
		.address(pc_addr),
		.out(instruction)
    );
	 
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
		.B(ram_addr_cpu),
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
