////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: CPU_synthesis.v
// /___/   /\     Timestamp: Sun Aug 27 13:11:35 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim CPU.ngc CPU_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: CPU.ngc
// Output file	: D:\Competitions and Projects\Processor Design\Final\P4\WithIO\netgen\synthesis\CPU_synthesis.v
// # of Modules	: 1
// Design Name	: CPU
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module CPU (
  clk, reset, rx, tx, status
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input reset;
  input rx;
  output tx;
  output status;
  
  // synthesis translate_off
  
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire rx_IBUF_2;
  wire \clk_gen/out_BUFG_3 ;
  wire \IO/tx_start_20 ;
  wire \IO/reset_cpu_21 ;
  wire \IO/select_22 ;
  wire \Rx/data_byte_7_23 ;
  wire \Rx/data_byte_6_24 ;
  wire \Rx/data_byte_5_25 ;
  wire \Rx/data_byte_4_26 ;
  wire \Rx/data_byte_3_27 ;
  wire \Rx/data_byte_2_28 ;
  wire \Rx/data_byte_1_29 ;
  wire \Rx/data_byte_0_30 ;
  wire \Rx/rxdone_31 ;
  wire \pentium4/controlStore/MIR[5] ;
  wire \pentium4/controlStore/MIR[22] ;
  wire \Tx/tx_data_83 ;
  wire \Tx/tx_data_done_84 ;
  wire write;
  wire status_OBUF_102;
  wire \dmux1/A_7_111 ;
  wire \dmux1/A_6_112 ;
  wire \dmux1/A_5_113 ;
  wire \dmux1/A_4_114 ;
  wire \dmux1/A_3_115 ;
  wire \dmux1/A_2_116 ;
  wire \dmux1/A_1_117 ;
  wire \dmux1/A_0_118 ;
  wire \dmux1/B_7_119 ;
  wire \dmux1/B_6_120 ;
  wire \dmux1/B_5_121 ;
  wire \dmux1/B_4_122 ;
  wire \dmux1/B_3_123 ;
  wire \dmux1/B_2_124 ;
  wire \dmux1/B_1_125 ;
  wire \dmux1/B_0_126 ;
  wire \clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 ;
  wire \IO/read_addr[16]_GND_15_o_LessThan_24_o21 ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<15>_154 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<14>_155 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<13>_156 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<12>_157 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<11>_158 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<10>_159 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<9>_160 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<8>_161 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<7>_162 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<6>_163 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<5>_164 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<4>_165 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<3>_166 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<2>_167 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<1>_168 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<0>_169 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_lut<0> ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<14>_171 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<13>_172 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<12>_173 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<11>_174 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<10>_175 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<9>_176 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<8>_177 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<7>_178 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<6>_179 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<5>_180 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<4>_181 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<3>_182 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<2>_183 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<1>_184 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<0>_185 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_lut<0> ;
  wire \IO/STATE_TX_FSM_FFd1-In ;
  wire \IO/STATE_TX_FSM_FFd2-In ;
  wire \IO/STATE_TX_FSM_FFd5-In ;
  wire \IO/STATE_TX_FSM_FFd6-In ;
  wire \IO/STATE_RX_FSM_FFd1-In ;
  wire \IO/STATE_RX_FSM_FFd4-In ;
  wire \IO/STATE_RX_FSM_FFd5-In ;
  wire \IO/_n0184_inv ;
  wire \IO/_n0177_inv ;
  wire \IO/GND_15_o_GND_15_o_equal_6_o ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<0> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<1> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<2> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<3> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<4> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<5> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<6> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<7> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<8> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<9> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<10> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<11> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<12> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<13> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<14> ;
  wire \IO/STATE_TX[3]_GND_15_o_select_37_OUT<15> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<0> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<1> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<2> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<3> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<4> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<5> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<6> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<7> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<8> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<9> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<10> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<11> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<12> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<13> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<14> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<15> ;
  wire \IO/write_addr[16]_GND_15_o_add_4_OUT<16> ;
  wire \IO/STATE_TX[3]_tx_start_Select_42_o ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<0> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<1> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<2> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<3> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<4> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<5> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<6> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<7> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<8> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<9> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<10> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<11> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<12> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<13> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<14> ;
  wire \IO/read_addr[16]_GND_15_o_add_24_OUT<15> ;
  wire \IO/STATE_RX_FSM_FFd1_280 ;
  wire \IO/STATE_RX_FSM_FFd2_281 ;
  wire \IO/STATE_RX_FSM_FFd3_282 ;
  wire \IO/STATE_RX_FSM_FFd4_283 ;
  wire \IO/STATE_RX_FSM_FFd5_284 ;
  wire \IO/STATE_TX_FSM_FFd1_302 ;
  wire \IO/STATE_TX_FSM_FFd2_303 ;
  wire \IO/STATE_TX_FSM_FFd3_304 ;
  wire \IO/STATE_TX_FSM_FFd4_305 ;
  wire \IO/STATE_TX_FSM_FFd5_306 ;
  wire \IO/STATE_TX_FSM_FFd6_307 ;
  wire \Rx/state_FSM_FFd3-In1 ;
  wire \Rx/_n0169_inv1 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<5>_331 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<4>_332 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<3>_333 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<2>_334 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<1>_336 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<0>_338 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<0>_339 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lutdi_340 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>_341 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<4>_342 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<3>_343 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<2>_344 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<1>_345 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<0>_346 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_lut<0> ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<4>_348 ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<3>_349 ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<2>_350 ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<1>_351 ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<0>_352 ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_lut<0> ;
  wire \Rx/state_FSM_FFd1-In ;
  wire \Rx/state_FSM_FFd2-In ;
  wire \Rx/state_FSM_FFd3-In_356 ;
  wire \Rx/_n0148_inv ;
  wire \Rx/_n0335_inv ;
  wire \Rx/clock_count[32]_GND_17_o_add_23_OUT<0> ;
  wire \Rx/clock_count[32]_GND_17_o_add_23_OUT<1> ;
  wire \Rx/clock_count[32]_GND_17_o_add_23_OUT<2> ;
  wire \Rx/clock_count[32]_GND_17_o_add_23_OUT<3> ;
  wire \Rx/clock_count[32]_GND_17_o_add_23_OUT<4> ;
  wire \Rx/clock_count[32]_GND_17_o_add_23_OUT<5> ;
  wire \Rx/state[2]_clock_count[32]_wide_mux_28_OUT<0> ;
  wire \Rx/state[2]_clock_count[32]_wide_mux_28_OUT<1> ;
  wire \Rx/state[2]_clock_count[32]_wide_mux_28_OUT<2> ;
  wire \Rx/state[2]_clock_count[32]_wide_mux_28_OUT<3> ;
  wire \Rx/state[2]_clock_count[32]_wide_mux_28_OUT<4> ;
  wire \Rx/state[2]_clock_count[32]_wide_mux_28_OUT<5> ;
  wire \Rx/state_FSM_FFd3_379 ;
  wire \Rx/state_FSM_FFd2_380 ;
  wire \Rx/state_FSM_FFd1_381 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A113 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A25111 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A332 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_B101 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A252 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_rs_AS_inv ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<23>_435 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<22>_436 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<22>_437 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<21>_438 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<21>_439 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<20>_440 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<20>_441 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<19>_442 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<19>_443 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<18>_444 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<18>_445 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<17>_446 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<17>_447 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<16>_448 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<16>_449 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<15>_450 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<15>_451 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<14>_452 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<14>_453 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<13>_454 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<13>_455 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<12>_456 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<12>_457 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<11>_458 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<11>_459 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<10>_460 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<10>_461 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<9>_462 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<9>_463 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<8>_464 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<8>_465 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<7>_466 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<7>_467 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<6>_468 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<6>_469 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<5>_470 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<5>_471 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<4>_472 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<4>_473 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<3>_474 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<3>_475 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<2>_476 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<2>_477 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<1>_478 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<1>_479 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<0>_480 ;
  wire \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<0>_481 ;
  wire \pentium4/PC_reg/Mcount_ins_addr8 ;
  wire \pentium4/PC_reg/Mcount_ins_addr7 ;
  wire \pentium4/PC_reg/Mcount_ins_addr6 ;
  wire \pentium4/PC_reg/Mcount_ins_addr5 ;
  wire \pentium4/PC_reg/Mcount_ins_addr4 ;
  wire \pentium4/PC_reg/Mcount_ins_addr3 ;
  wire \pentium4/PC_reg/Mcount_ins_addr2 ;
  wire \pentium4/PC_reg/Mcount_ins_addr1 ;
  wire \pentium4/PC_reg/Mcount_ins_addr ;
  wire \pentium4/MIR<14>_inv ;
  wire \pentium4/PC_reg/_n0019_inv ;
  wire \pentium4/PC_reg/state_510 ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<23> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<22> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<21> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<20> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<19> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<18> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<17> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<16> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<15> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<14> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<13> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<12> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<11> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<10> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<9> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<8> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<7> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<6> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<5> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<4> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<3> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<2> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<1> ;
  wire \pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<0> ;
  wire \pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o ;
  wire \pentium4/ALU_24bit/Z_flag_559 ;
  wire \pentium4/controlStore/MIR[17] ;
  wire \pentium4/controlStore/MIR[18] ;
  wire \pentium4/controlStore/MIR[19] ;
  wire \pentium4/controlStore/MIR[20] ;
  wire \pentium4/controlStore/MIR[23] ;
  wire \pentium4/controlStore/MIR[24] ;
  wire \pentium4/controlStore/MIR[25] ;
  wire \pentium4/controlStore/MIR[26] ;
  wire \pentium4/controlStore/MIR[27] ;
  wire \pentium4/controlStore/MIR[28] ;
  wire \pentium4/controlStore/MIR[29] ;
  wire \pentium4/controlStore/MIR[30] ;
  wire \pentium4/controlStore/MIR[0] ;
  wire \pentium4/controlStore/MIR[1] ;
  wire \pentium4/controlStore/MIR[2] ;
  wire \pentium4/controlStore/MIR[3] ;
  wire \pentium4/controlStore/MIR[8] ;
  wire \pentium4/controlStore/MIR[9] ;
  wire \pentium4/controlStore/MIR[10] ;
  wire \pentium4/controlStore/MIR[11] ;
  wire \pentium4/controlStore/MIR[12] ;
  wire \pentium4/controlStore/MIR[13] ;
  wire \pentium4/controlStore/MIR[7] ;
  wire \pentium4/controlStore/MIR[4] ;
  wire \pentium4/controlStore/MIR[14] ;
  wire \pentium4/controlStore/MIR[6] ;
  wire \pentium4/controlStore/MIR[15] ;
  wire \pentium4/controlStore/MIR[16] ;
  wire \pentium4/MDR_reg/_n0010_inv ;
  wire \pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<0> ;
  wire \pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<1> ;
  wire \pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<2> ;
  wire \pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<3> ;
  wire \pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<4> ;
  wire \pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<5> ;
  wire \pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<6> ;
  wire \pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<7> ;
  wire \pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ;
  wire \pentium4/controlStore/state_FSM_FFd1_798 ;
  wire \pentium4/controlStore/state_FSM_FFd2_799 ;
  wire \pentium4/controlStore/state_FSM_FFd1-In ;
  wire \pentium4/controlStore/state_FSM_FFd2-In ;
  wire \pentium4/controlStore/_n0077[6] ;
  wire \pentium4/controlStore/_n0077[4] ;
  wire \pentium4/controlStore/_n0077[3] ;
  wire \pentium4/controlStore/_n0076 ;
  wire \pentium4/controlStore/_n0072 ;
  wire \pentium4/controlStore/_n0035[0] ;
  wire \pentium4/controlStore/_n0035[2] ;
  wire \pentium4/controlStore/_n0035[5] ;
  wire \pentium4/controlStore/_n0035[6] ;
  wire \pentium4/controlStore/_n0035[8] ;
  wire \pentium4/controlStore/_n0035[9] ;
  wire \pentium4/controlStore/_n0035[10] ;
  wire \pentium4/controlStore/_n0035[11] ;
  wire \pentium4/controlStore/_n0035[12] ;
  wire \pentium4/controlStore/_n0035[13] ;
  wire \pentium4/controlStore/_n0035[14] ;
  wire \pentium4/controlStore/_n0035[15] ;
  wire \pentium4/controlStore/_n0035[16] ;
  wire \pentium4/controlStore/_n0035[17] ;
  wire \pentium4/controlStore/_n0035[18] ;
  wire \pentium4/controlStore/_n0035[19] ;
  wire \pentium4/controlStore/_n0035[20] ;
  wire \pentium4/controlStore/_n0035[22] ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<0> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<1> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<2> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<3> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<4> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<5> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<6> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<7> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<8> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<9> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<10> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<11> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<12> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<13> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<14> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<15> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<16> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<17> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<18> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<19> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<20> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<22> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<23> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<24> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<25> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<26> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<27> ;
  wire \pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<28> ;
  wire \pentium4/controlStore/addr[7]_GND_10_o_equal_11_o ;
  wire \pentium4/controlStore/addr[7]_GND_10_o_equal_12_o ;
  wire \pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ;
  wire \Tx/state_FSM_FFd3-In1 ;
  wire \Tx/Mmux_tx_bit_index[2]_data_byte[7]_Mux_7_o_3_864 ;
  wire \Tx/Mmux_tx_bit_index[2]_data_byte[7]_Mux_7_o_4_865 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>_869 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<5>_870 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<4>_871 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<3>_872 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<2>_873 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<1>_874 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lut<1> ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<0>_876 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lut<0>_877 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lutdi_878 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<5>_880 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<4>_881 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<3>_882 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<2>_883 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<1>_884 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<0>_886 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_lut<0>_887 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_lutdi_888 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<4>_889 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<3>_890 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<2>_891 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<1>_892 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<0>_893 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_lut<0> ;
  wire \Tx/state_FSM_FFd1-In ;
  wire \Tx/state_FSM_FFd2-In ;
  wire \Tx/state_FSM_FFd3-In_897 ;
  wire \Tx/_n0077_inv ;
  wire \Tx/_n0125_inv ;
  wire \Tx/tx_bit_index[2]_data_byte[7]_Mux_7_o ;
  wire \Tx/clock_count[32]_GND_16_o_add_22_OUT<0> ;
  wire \Tx/clock_count[32]_GND_16_o_add_22_OUT<1> ;
  wire \Tx/clock_count[32]_GND_16_o_add_22_OUT<2> ;
  wire \Tx/clock_count[32]_GND_16_o_add_22_OUT<3> ;
  wire \Tx/clock_count[32]_GND_16_o_add_22_OUT<4> ;
  wire \Tx/clock_count[32]_GND_16_o_add_22_OUT<5> ;
  wire \Tx/state[2]_clock_count[32]_wide_mux_26_OUT<0> ;
  wire \Tx/state[2]_clock_count[32]_wide_mux_26_OUT<1> ;
  wire \Tx/state[2]_clock_count[32]_wide_mux_26_OUT<2> ;
  wire \Tx/state[2]_clock_count[32]_wide_mux_26_OUT<3> ;
  wire \Tx/state[2]_clock_count[32]_wide_mux_26_OUT<4> ;
  wire \Tx/state[2]_clock_count[32]_wide_mux_26_OUT<5> ;
  wire \Tx/state_FSM_FFd3_921 ;
  wire \Tx/state_FSM_FFd2_922 ;
  wire \Tx/state_FSM_FFd1_923 ;
  wire N3;
  wire \IO/read_addr[16]_GND_15_o_LessThan_24_o211_933 ;
  wire \IO/read_addr[16]_GND_15_o_LessThan_24_o212_934 ;
  wire \IO/GND_15_o_GND_15_o_equal_6_o<16>1_936 ;
  wire \IO/GND_15_o_GND_15_o_equal_6_o<16>2_937 ;
  wire N7;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A33 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A333_940 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A412 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A37 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A372 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A35 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A352 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A432 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A39 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A392 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A27 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A31_950 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A311_951 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A312_952 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A29 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A25 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A9 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A91_956 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A21 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A211_958 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A7 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A71_960 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A19 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A191_962 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A5 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A51_964 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A17 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A171_966 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A3 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A32_968 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A15 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A151_970 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A47 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A471_972 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A13_973 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A131_974 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A45 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A451_976 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A452_977 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A11 ;
  wire \pentium4/ALU_24bit/Mmux_C_bus12_A111_979 ;
  wire \pentium4/decoder_4to16/_n0087<7>1_996 ;
  wire \pentium4/decoder_4to16/_n0087<7>2_997 ;
  wire \pentium4/decoder_4to16/_n0087<6>1_999 ;
  wire \pentium4/decoder_4to16/_n0087<6>2_1000 ;
  wire \pentium4/decoder_4to16/_n0087<5>1_1002 ;
  wire \pentium4/decoder_4to16/_n0087<5>2_1003 ;
  wire \pentium4/decoder_4to16/_n0087<4>1_1005 ;
  wire \pentium4/decoder_4to16/_n0087<4>2_1006 ;
  wire \pentium4/decoder_4to16/_n0087<3>1_1008 ;
  wire \pentium4/decoder_4to16/_n0087<3>2_1009 ;
  wire \pentium4/decoder_4to16/_n0087<2>1_1011 ;
  wire \pentium4/decoder_4to16/_n0087<2>2_1012 ;
  wire \pentium4/decoder_4to16/_n0087<1>1_1014 ;
  wire \pentium4/decoder_4to16/_n0087<1>2_1015 ;
  wire \pentium4/decoder_4to16/_n0087<0>1_1017 ;
  wire \pentium4/decoder_4to16/_n0087<0>2_1018 ;
  wire \pentium4/decoder_4to16/_n0085<8>1_1020 ;
  wire \pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23> ;
  wire \pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>1_1022 ;
  wire \pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>2_1023 ;
  wire \pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>3_1024 ;
  wire N9;
  wire \clk_gen/Mcount_counter_cy<1>_rt_1031 ;
  wire \clk_gen/Mcount_counter_cy<2>_rt_1032 ;
  wire \clk_gen/Mcount_counter_cy<3>_rt_1033 ;
  wire \clk_gen/Mcount_counter_cy<4>_rt_1034 ;
  wire \clk_gen/Mcount_counter_cy<5>_rt_1035 ;
  wire \clk_gen/Mcount_counter_cy<6>_rt_1036 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<15>_rt_1037 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<14>_rt_1038 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<13>_rt_1039 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<12>_rt_1040 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<11>_rt_1041 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<10>_rt_1042 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<9>_rt_1043 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<8>_rt_1044 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<7>_rt_1045 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<6>_rt_1046 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<5>_rt_1047 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<4>_rt_1048 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<3>_rt_1049 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<2>_rt_1050 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<1>_rt_1051 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<14>_rt_1052 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<13>_rt_1053 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<12>_rt_1054 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<11>_rt_1055 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<10>_rt_1056 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<9>_rt_1057 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<8>_rt_1058 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<7>_rt_1059 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<6>_rt_1060 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<5>_rt_1061 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<4>_rt_1062 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<3>_rt_1063 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<2>_rt_1064 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<1>_rt_1065 ;
  wire \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<1>_rt_1066 ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<4>_rt_1067 ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<3>_rt_1068 ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<2>_rt_1069 ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<1>_rt_1070 ;
  wire \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<1>_rt_1071 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<4>_rt_1072 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<3>_rt_1073 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<2>_rt_1074 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<1>_rt_1075 ;
  wire \clk_gen/Mcount_counter_xor<7>_rt_1076 ;
  wire \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<16>_rt_1077 ;
  wire \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<15>_rt_1078 ;
  wire \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_xor<5>_rt_1079 ;
  wire \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_xor<5>_rt_1080 ;
  wire \clk_gen/out_rstpot_1081 ;
  wire \IO/reset_cpu_rstpot_1082 ;
  wire \IO/select_rstpot_1083 ;
  wire \Rx/data_byte_0_rstpot_1084 ;
  wire \Rx/data_byte_1_rstpot_1085 ;
  wire \Rx/data_byte_2_rstpot_1086 ;
  wire \Rx/data_byte_3_rstpot_1087 ;
  wire \Rx/data_byte_4_rstpot_1088 ;
  wire \Rx/data_byte_5_rstpot_1089 ;
  wire \Rx/data_byte_6_rstpot_1090 ;
  wire \Rx/data_byte_7_rstpot_1091 ;
  wire \Rx/rxdone_rstpot_1092 ;
  wire \Tx/tx_data_rstpot_1093 ;
  wire \Tx/tx_data_done_rstpot_1094 ;
  wire N11;
  wire N12;
  wire N14;
  wire N15;
  wire N17;
  wire N18;
  wire N20;
  wire N21;
  wire N23;
  wire N24;
  wire N26;
  wire N27;
  wire N29;
  wire N30;
  wire N32;
  wire N34;
  wire N35;
  wire N37;
  wire N38;
  wire N40;
  wire N41;
  wire N43;
  wire N44;
  wire N46;
  wire N47;
  wire N49;
  wire N50;
  wire N52;
  wire N53;
  wire N55;
  wire N56;
  wire N58;
  wire N59;
  wire N61;
  wire N62;
  wire N64;
  wire N65;
  wire N67;
  wire N68;
  wire N70;
  wire N71;
  wire N73;
  wire N74;
  wire N76;
  wire N78;
  wire N80;
  wire N82;
  wire N84;
  wire N86;
  wire N88;
  wire N90;
  wire N92;
  wire N94;
  wire N96;
  wire N98;
  wire N99;
  wire N101;
  wire N102;
  wire N103;
  wire N105;
  wire N106;
  wire N107;
  wire N109;
  wire N110;
  wire N111;
  wire N113;
  wire N114;
  wire N115;
  wire N120;
  wire N122;
  wire N124;
  wire N125;
  wire N127;
  wire N128;
  wire N130;
  wire N131;
  wire N136;
  wire N137;
  wire N139;
  wire N140;
  wire N141;
  wire N142;
  wire N144;
  wire N145;
  wire N147;
  wire N149;
  wire N151;
  wire N152;
  wire N154;
  wire N155;
  wire N157;
  wire N158;
  wire N160;
  wire N161;
  wire N163;
  wire N164;
  wire N166;
  wire N167;
  wire N169;
  wire N170;
  wire N171;
  wire N172;
  wire N174;
  wire N175;
  wire N177;
  wire N179;
  wire N181;
  wire N183;
  wire N185;
  wire N187;
  wire N189;
  wire N191;
  wire N193;
  wire \pentium4/controlStore/MIR_1_1_1208 ;
  wire \pentium4/controlStore/MIR_3_1_1209 ;
  wire \pentium4/controlStore/MIR_17_1_1210 ;
  wire \pentium4/controlStore/MIR_19_1_1211 ;
  wire \pentium4/controlStore/MIR_20_1_1212 ;
  wire \pentium4/controlStore/MIR_1_2_1213 ;
  wire \pentium4/controlStore/MIR_2_1_1214 ;
  wire \pentium4/controlStore/MIR_18_1_1215 ;
  wire \pentium4/controlStore/MIR_19_2_1216 ;
  wire \pentium4/controlStore/MIR_1_3_1217 ;
  wire \pentium4/controlStore/MIR_2_2_1218 ;
  wire \pentium4/controlStore/MIR_18_2_1219 ;
  wire \pentium4/controlStore/MIR_3_2_1220 ;
  wire \pentium4/controlStore/MIR_17_2_1221 ;
  wire \pentium4/controlStore/MIR_0_1_1222 ;
  wire \pentium4/controlStore/MIR_2_3_1223 ;
  wire \pentium4/controlStore/MIR_1_4_1224 ;
  wire \pentium4/controlStore/MIR_19_3_1225 ;
  wire \pentium4/controlStore/MIR_3_3_1226 ;
  wire \clk_gen/out_1227 ;
  wire [15 : 0] \IO/ram_addr ;
  wire [15 : 0] \pentium4/MAR_reg/data_addr ;
  wire [7 : 0] \pentium4/MDR_reg/data_out ;
  wire [8 : 0] \pentium4/PC_reg/ins_addr ;
  wire [7 : 0] ram_out;
  wire [7 : 0] instruction;
  wire [15 : 0] ram_addr;
  wire [7 : 0] ram_in;
  wire [7 : 0] \clk_gen/counter ;
  wire [7 : 0] Result;
  wire [0 : 0] \clk_gen/Mcount_counter_lut ;
  wire [6 : 0] \clk_gen/Mcount_counter_cy ;
  wire [16 : 0] \IO/_n0123 ;
  wire [15 : 0] \IO/_n0125 ;
  wire [16 : 0] \IO/write_addr ;
  wire [16 : 0] \IO/read_addr ;
  wire [2 : 0] \Rx/rx_bit_index ;
  wire [5 : 0] \Rx/clock_count ;
  wire [2 : 0] \Rx/_n0319 ;
  wire [23 : 0] \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut ;
  wire [22 : 0] \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy ;
  wire [8 : 0] \pentium4/PC_reg/Mcount_ins_addr_lut ;
  wire [7 : 0] \pentium4/PC_reg/Mcount_ins_addr_cy ;
  wire [22 : 0] \pentium4/ALU_24bit/Mmux_C_bus12_rs_A ;
  wire [23 : 0] \pentium4/C_bus ;
  wire [23 : 0] \pentium4/B_bus ;
  wire [23 : 0] \pentium4/AC_reg/d_out ;
  wire [23 : 0] \pentium4/R_reg/d_out ;
  wire [23 : 0] \pentium4/R4_reg/d_out ;
  wire [23 : 0] \pentium4/R3_reg/d_out ;
  wire [23 : 0] \pentium4/R2_reg/d_out ;
  wire [23 : 0] \pentium4/R1_reg/d_out ;
  wire [7 : 0] \pentium4/MBRU_reg/ins_out ;
  wire [1 : 1] \pentium4/controlStore/_n0075 ;
  wire [6 : 1] \pentium4/controlStore/_n0071 ;
  wire [2 : 0] \Tx/tx_bit_index ;
  wire [5 : 0] \Tx/clock_count ;
  wire [3 : 1] \Tx/_n0111 ;
  wire [7 : 0] \Tx/data_byte ;
  wire [16 : 16] \IO/GND_15_o_GND_15_o_equal_6_o_0 ;
  wire [23 : 8] \pentium4/decoder_4to16/_n0085 ;
  wire [7 : 0] \pentium4/decoder_4to16/_n0087 ;
  GND   XST_GND (
    .G(\IO/read_addr [16])
  );
  VCC   XST_VCC (
    .P(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \clk_gen/counter_0  (
    .C(clk_BUFGP_0),
    .D(Result[0]),
    .R(\clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 ),
    .Q(\clk_gen/counter [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \clk_gen/counter_1  (
    .C(clk_BUFGP_0),
    .D(Result[1]),
    .R(\clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 ),
    .Q(\clk_gen/counter [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \clk_gen/counter_2  (
    .C(clk_BUFGP_0),
    .D(Result[2]),
    .R(\clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 ),
    .Q(\clk_gen/counter [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \clk_gen/counter_3  (
    .C(clk_BUFGP_0),
    .D(Result[3]),
    .R(\clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 ),
    .Q(\clk_gen/counter [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \clk_gen/counter_4  (
    .C(clk_BUFGP_0),
    .D(Result[4]),
    .R(\clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 ),
    .Q(\clk_gen/counter [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \clk_gen/counter_5  (
    .C(clk_BUFGP_0),
    .D(Result[5]),
    .R(\clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 ),
    .Q(\clk_gen/counter [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \clk_gen/counter_6  (
    .C(clk_BUFGP_0),
    .D(Result[6]),
    .R(\clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 ),
    .Q(\clk_gen/counter [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \clk_gen/counter_7  (
    .C(clk_BUFGP_0),
    .D(Result[7]),
    .R(\clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 ),
    .Q(\clk_gen/counter [7])
  );
  MUXCY   \clk_gen/Mcount_counter_cy<0>  (
    .CI(\IO/read_addr [16]),
    .DI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .S(\clk_gen/Mcount_counter_lut [0]),
    .O(\clk_gen/Mcount_counter_cy [0])
  );
  XORCY   \clk_gen/Mcount_counter_xor<0>  (
    .CI(\IO/read_addr [16]),
    .LI(\clk_gen/Mcount_counter_lut [0]),
    .O(Result[0])
  );
  MUXCY   \clk_gen/Mcount_counter_cy<1>  (
    .CI(\clk_gen/Mcount_counter_cy [0]),
    .DI(\IO/read_addr [16]),
    .S(\clk_gen/Mcount_counter_cy<1>_rt_1031 ),
    .O(\clk_gen/Mcount_counter_cy [1])
  );
  XORCY   \clk_gen/Mcount_counter_xor<1>  (
    .CI(\clk_gen/Mcount_counter_cy [0]),
    .LI(\clk_gen/Mcount_counter_cy<1>_rt_1031 ),
    .O(Result[1])
  );
  MUXCY   \clk_gen/Mcount_counter_cy<2>  (
    .CI(\clk_gen/Mcount_counter_cy [1]),
    .DI(\IO/read_addr [16]),
    .S(\clk_gen/Mcount_counter_cy<2>_rt_1032 ),
    .O(\clk_gen/Mcount_counter_cy [2])
  );
  XORCY   \clk_gen/Mcount_counter_xor<2>  (
    .CI(\clk_gen/Mcount_counter_cy [1]),
    .LI(\clk_gen/Mcount_counter_cy<2>_rt_1032 ),
    .O(Result[2])
  );
  MUXCY   \clk_gen/Mcount_counter_cy<3>  (
    .CI(\clk_gen/Mcount_counter_cy [2]),
    .DI(\IO/read_addr [16]),
    .S(\clk_gen/Mcount_counter_cy<3>_rt_1033 ),
    .O(\clk_gen/Mcount_counter_cy [3])
  );
  XORCY   \clk_gen/Mcount_counter_xor<3>  (
    .CI(\clk_gen/Mcount_counter_cy [2]),
    .LI(\clk_gen/Mcount_counter_cy<3>_rt_1033 ),
    .O(Result[3])
  );
  MUXCY   \clk_gen/Mcount_counter_cy<4>  (
    .CI(\clk_gen/Mcount_counter_cy [3]),
    .DI(\IO/read_addr [16]),
    .S(\clk_gen/Mcount_counter_cy<4>_rt_1034 ),
    .O(\clk_gen/Mcount_counter_cy [4])
  );
  XORCY   \clk_gen/Mcount_counter_xor<4>  (
    .CI(\clk_gen/Mcount_counter_cy [3]),
    .LI(\clk_gen/Mcount_counter_cy<4>_rt_1034 ),
    .O(Result[4])
  );
  MUXCY   \clk_gen/Mcount_counter_cy<5>  (
    .CI(\clk_gen/Mcount_counter_cy [4]),
    .DI(\IO/read_addr [16]),
    .S(\clk_gen/Mcount_counter_cy<5>_rt_1035 ),
    .O(\clk_gen/Mcount_counter_cy [5])
  );
  XORCY   \clk_gen/Mcount_counter_xor<5>  (
    .CI(\clk_gen/Mcount_counter_cy [4]),
    .LI(\clk_gen/Mcount_counter_cy<5>_rt_1035 ),
    .O(Result[5])
  );
  MUXCY   \clk_gen/Mcount_counter_cy<6>  (
    .CI(\clk_gen/Mcount_counter_cy [5]),
    .DI(\IO/read_addr [16]),
    .S(\clk_gen/Mcount_counter_cy<6>_rt_1036 ),
    .O(\clk_gen/Mcount_counter_cy [6])
  );
  XORCY   \clk_gen/Mcount_counter_xor<6>  (
    .CI(\clk_gen/Mcount_counter_cy [5]),
    .LI(\clk_gen/Mcount_counter_cy<6>_rt_1036 ),
    .O(Result[6])
  );
  XORCY   \clk_gen/Mcount_counter_xor<7>  (
    .CI(\clk_gen/Mcount_counter_cy [6]),
    .LI(\clk_gen/Mcount_counter_xor<7>_rt_1076 ),
    .O(Result[7])
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<16>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<15>_154 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<16>_rt_1077 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<16> )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<15>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<14>_155 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<15>_rt_1037 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<15> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<15>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<14>_155 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<15>_rt_1037 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<15>_154 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<14>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<13>_156 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<14>_rt_1038 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<14> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<14>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<13>_156 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<14>_rt_1038 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<14>_155 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<13>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<12>_157 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<13>_rt_1039 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<13> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<13>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<12>_157 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<13>_rt_1039 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<13>_156 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<12>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<11>_158 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<12>_rt_1040 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<12> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<12>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<11>_158 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<12>_rt_1040 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<12>_157 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<11>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<10>_159 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<11>_rt_1041 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<11> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<11>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<10>_159 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<11>_rt_1041 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<11>_158 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<10>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<9>_160 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<10>_rt_1042 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<10> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<10>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<9>_160 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<10>_rt_1042 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<10>_159 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<9>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<8>_161 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<9>_rt_1043 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<9> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<9>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<8>_161 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<9>_rt_1043 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<9>_160 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<8>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<7>_162 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<8>_rt_1044 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<8> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<8>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<7>_162 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<8>_rt_1044 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<8>_161 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<7>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<6>_163 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<7>_rt_1045 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<7> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<7>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<6>_163 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<7>_rt_1045 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<7>_162 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<6>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<5>_164 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<6>_rt_1046 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<6> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<6>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<5>_164 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<6>_rt_1046 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<6>_163 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<5>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<4>_165 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<5>_rt_1047 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<5> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<5>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<4>_165 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<5>_rt_1047 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<5>_164 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<4>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<3>_166 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<4>_rt_1048 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<4> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<4>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<3>_166 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<4>_rt_1048 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<4>_165 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<3>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<2>_167 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<3>_rt_1049 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<3> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<3>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<2>_167 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<3>_rt_1049 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<3>_166 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<2>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<1>_168 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<2>_rt_1050 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<2> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<2>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<1>_168 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<2>_rt_1050 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<2>_167 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<1>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<0>_169 ),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<1>_rt_1051 ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<1> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<1>  (
    .CI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<0>_169 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<1>_rt_1051 ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<1>_168 )
  );
  XORCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<0>  (
    .CI(\IO/read_addr [16]),
    .LI(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_lut<0> ),
    .O(\IO/write_addr[16]_GND_15_o_add_4_OUT<0> )
  );
  MUXCY   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<0>  (
    .CI(\IO/read_addr [16]),
    .DI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .S(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_lut<0> ),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<0>_169 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<15>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<14>_171 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<15>_rt_1078 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<15> )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<14>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<13>_172 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<14>_rt_1052 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<14> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<14>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<13>_172 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<14>_rt_1052 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<14>_171 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<13>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<12>_173 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<13>_rt_1053 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<13> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<13>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<12>_173 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<13>_rt_1053 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<13>_172 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<12>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<11>_174 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<12>_rt_1054 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<12> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<12>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<11>_174 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<12>_rt_1054 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<12>_173 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<11>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<10>_175 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<11>_rt_1055 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<11> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<11>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<10>_175 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<11>_rt_1055 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<11>_174 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<10>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<9>_176 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<10>_rt_1056 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<10> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<10>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<9>_176 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<10>_rt_1056 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<10>_175 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<9>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<8>_177 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<9>_rt_1057 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<9> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<9>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<8>_177 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<9>_rt_1057 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<9>_176 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<8>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<7>_178 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<8>_rt_1058 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<8> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<8>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<7>_178 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<8>_rt_1058 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<8>_177 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<7>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<6>_179 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<7>_rt_1059 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<7> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<7>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<6>_179 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<7>_rt_1059 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<7>_178 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<6>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<5>_180 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<6>_rt_1060 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<6> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<6>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<5>_180 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<6>_rt_1060 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<6>_179 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<5>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<4>_181 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<5>_rt_1061 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<5> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<5>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<4>_181 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<5>_rt_1061 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<5>_180 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<4>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<3>_182 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<4>_rt_1062 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<4> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<4>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<3>_182 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<4>_rt_1062 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<4>_181 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<3>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<2>_183 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<3>_rt_1063 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<3> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<3>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<2>_183 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<3>_rt_1063 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<3>_182 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<2>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<1>_184 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<2>_rt_1064 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<2> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<2>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<1>_184 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<2>_rt_1064 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<2>_183 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<1>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<0>_185 ),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<1>_rt_1065 ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<1> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<1>  (
    .CI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<0>_185 ),
    .DI(\IO/read_addr [16]),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<1>_rt_1065 ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<1>_184 )
  );
  XORCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<0>  (
    .CI(\IO/read_addr [16]),
    .LI(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_lut<0> ),
    .O(\IO/read_addr[16]_GND_15_o_add_24_OUT<0> )
  );
  MUXCY   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<0>  (
    .CI(\IO/read_addr [16]),
    .DI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .S(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_lut<0> ),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<0>_185 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/STATE_TX_FSM_FFd3  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX_FSM_FFd4_305 ),
    .Q(\IO/STATE_TX_FSM_FFd3_304 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/STATE_RX_FSM_FFd2  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_RX_FSM_FFd3_282 ),
    .Q(\IO/STATE_RX_FSM_FFd2_281 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/STATE_TX_FSM_FFd4  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX_FSM_FFd5_306 ),
    .Q(\IO/STATE_TX_FSM_FFd4_305 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/STATE_RX_FSM_FFd3  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_RX_FSM_FFd4_283 ),
    .Q(\IO/STATE_RX_FSM_FFd3_282 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/STATE_TX_FSM_FFd1  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX_FSM_FFd1-In ),
    .Q(\IO/STATE_TX_FSM_FFd1_302 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/STATE_TX_FSM_FFd2  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX_FSM_FFd2-In ),
    .Q(\IO/STATE_TX_FSM_FFd2_303 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/STATE_TX_FSM_FFd5  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX_FSM_FFd5-In ),
    .Q(\IO/STATE_TX_FSM_FFd5_306 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \IO/STATE_TX_FSM_FFd6  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX_FSM_FFd6-In ),
    .Q(\IO/STATE_TX_FSM_FFd6_307 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/STATE_RX_FSM_FFd1  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_RX_FSM_FFd1-In ),
    .Q(\IO/STATE_RX_FSM_FFd1_280 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/STATE_RX_FSM_FFd4  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_RX_FSM_FFd4-In ),
    .Q(\IO/STATE_RX_FSM_FFd4_283 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \IO/STATE_RX_FSM_FFd5  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_RX_FSM_FFd5-In ),
    .Q(\IO/STATE_RX_FSM_FFd5_284 )
  );
  FDE   \IO/ram_addr_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [15]),
    .Q(\IO/ram_addr [15])
  );
  FDE   \IO/ram_addr_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [14]),
    .Q(\IO/ram_addr [14])
  );
  FDE   \IO/ram_addr_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [13]),
    .Q(\IO/ram_addr [13])
  );
  FDE   \IO/ram_addr_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [12]),
    .Q(\IO/ram_addr [12])
  );
  FDE   \IO/ram_addr_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [11]),
    .Q(\IO/ram_addr [11])
  );
  FDE   \IO/ram_addr_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [10]),
    .Q(\IO/ram_addr [10])
  );
  FDE   \IO/ram_addr_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [9]),
    .Q(\IO/ram_addr [9])
  );
  FDE   \IO/ram_addr_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [8]),
    .Q(\IO/ram_addr [8])
  );
  FDE   \IO/ram_addr_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [7]),
    .Q(\IO/ram_addr [7])
  );
  FDE   \IO/ram_addr_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [6]),
    .Q(\IO/ram_addr [6])
  );
  FDE   \IO/ram_addr_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [5]),
    .Q(\IO/ram_addr [5])
  );
  FDE   \IO/ram_addr_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [4]),
    .Q(\IO/ram_addr [4])
  );
  FDE   \IO/ram_addr_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [3]),
    .Q(\IO/ram_addr [3])
  );
  FDE   \IO/ram_addr_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [2]),
    .Q(\IO/ram_addr [2])
  );
  FDE   \IO/ram_addr_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [1]),
    .Q(\IO/ram_addr [1])
  );
  FDE   \IO/ram_addr_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0184_inv ),
    .D(\IO/_n0125 [0]),
    .Q(\IO/ram_addr [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_16  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [16]),
    .Q(\IO/write_addr [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [15]),
    .Q(\IO/write_addr [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [14]),
    .Q(\IO/write_addr [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [13]),
    .Q(\IO/write_addr [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [12]),
    .Q(\IO/write_addr [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [11]),
    .Q(\IO/write_addr [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [10]),
    .Q(\IO/write_addr [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [9]),
    .Q(\IO/write_addr [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [8]),
    .Q(\IO/write_addr [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [7]),
    .Q(\IO/write_addr [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [6]),
    .Q(\IO/write_addr [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [5]),
    .Q(\IO/write_addr [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [4]),
    .Q(\IO/write_addr [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [3]),
    .Q(\IO/write_addr [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [2]),
    .Q(\IO/write_addr [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [1]),
    .Q(\IO/write_addr [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \IO/write_addr_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\IO/_n0177_inv ),
    .D(\IO/_n0123 [0]),
    .Q(\IO/write_addr [0])
  );
  FD   \IO/tx_start  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_tx_start_Select_42_o ),
    .Q(\IO/tx_start_20 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<15> ),
    .Q(\IO/read_addr [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<14> ),
    .Q(\IO/read_addr [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<13> ),
    .Q(\IO/read_addr [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<12> ),
    .Q(\IO/read_addr [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<11> ),
    .Q(\IO/read_addr [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<10> ),
    .Q(\IO/read_addr [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<9> ),
    .Q(\IO/read_addr [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<8> ),
    .Q(\IO/read_addr [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<7> ),
    .Q(\IO/read_addr [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<6> ),
    .Q(\IO/read_addr [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<5> ),
    .Q(\IO/read_addr [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<4> ),
    .Q(\IO/read_addr [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<3> ),
    .Q(\IO/read_addr [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<2> ),
    .Q(\IO/read_addr [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<1> ),
    .Q(\IO/read_addr [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/read_addr_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0> ),
    .Q(\IO/read_addr [0])
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<5>_331 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<5>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<4>_332 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<5>_331 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<4>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<3>_333 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<4>_332 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<3>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<2>_334 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<3>_333 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<2>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<1>_336 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<2>_334 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<1>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<0>_338 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<1>_rt_1066 ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<1>_336 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<0>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .DI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lutdi_340 ),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<0>_339 ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<0>_338 )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<0>  (
    .I0(\Rx/clock_count [1]),
    .I1(\Rx/clock_count [2]),
    .I2(\Rx/clock_count [3]),
    .I3(\Rx/clock_count [0]),
    .I4(\Rx/clock_count [4]),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<0>_339 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lutdi  (
    .I0(\Rx/clock_count [4]),
    .I1(\Rx/clock_count [3]),
    .I2(\Rx/clock_count [2]),
    .I3(\Rx/clock_count [1]),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lutdi_340 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<4>_342 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>_341 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<4>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<3>_343 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<4>_342 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<3>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<2>_344 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<3>_343 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<2>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<1>_345 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<2>_344 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<1>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<0>_346 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<1>_345 )
  );
  MUXCY   \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<0>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .DI(\Rx/clock_count [5]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_lut<0> ),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<0>_346 )
  );
  XORCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_xor<5>  (
    .CI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<4>_348 ),
    .LI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_xor<5>_rt_1079 ),
    .O(\Rx/clock_count[32]_GND_17_o_add_23_OUT<5> )
  );
  XORCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_xor<4>  (
    .CI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<3>_349 ),
    .LI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<4>_rt_1067 ),
    .O(\Rx/clock_count[32]_GND_17_o_add_23_OUT<4> )
  );
  MUXCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<4>  (
    .CI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<3>_349 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<4>_rt_1067 ),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<4>_348 )
  );
  XORCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_xor<3>  (
    .CI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<2>_350 ),
    .LI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<3>_rt_1068 ),
    .O(\Rx/clock_count[32]_GND_17_o_add_23_OUT<3> )
  );
  MUXCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<3>  (
    .CI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<2>_350 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<3>_rt_1068 ),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<3>_349 )
  );
  XORCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_xor<2>  (
    .CI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<1>_351 ),
    .LI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<2>_rt_1069 ),
    .O(\Rx/clock_count[32]_GND_17_o_add_23_OUT<2> )
  );
  MUXCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<2>  (
    .CI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<1>_351 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<2>_rt_1069 ),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<2>_350 )
  );
  XORCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_xor<1>  (
    .CI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<0>_352 ),
    .LI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<1>_rt_1070 ),
    .O(\Rx/clock_count[32]_GND_17_o_add_23_OUT<1> )
  );
  MUXCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<1>  (
    .CI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<0>_352 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<1>_rt_1070 ),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<1>_351 )
  );
  XORCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_xor<0>  (
    .CI(\IO/read_addr [16]),
    .LI(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_lut<0> ),
    .O(\Rx/clock_count[32]_GND_17_o_add_23_OUT<0> )
  );
  MUXCY   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<0>  (
    .CI(\IO/read_addr [16]),
    .DI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .S(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_lut<0> ),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<0>_352 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/state_FSM_FFd1  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/state_FSM_FFd1-In ),
    .Q(\Rx/state_FSM_FFd1_381 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/state_FSM_FFd2  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/state_FSM_FFd2-In ),
    .Q(\Rx/state_FSM_FFd2_380 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/state_FSM_FFd3  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/state_FSM_FFd3-In_356 ),
    .Q(\Rx/state_FSM_FFd3_379 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Rx/clock_count_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Rx/_n0148_inv ),
    .D(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<5> ),
    .Q(\Rx/clock_count [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Rx/clock_count_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Rx/_n0148_inv ),
    .D(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<4> ),
    .Q(\Rx/clock_count [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Rx/clock_count_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Rx/_n0148_inv ),
    .D(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<3> ),
    .Q(\Rx/clock_count [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Rx/clock_count_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Rx/_n0148_inv ),
    .D(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<2> ),
    .Q(\Rx/clock_count [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Rx/clock_count_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Rx/_n0148_inv ),
    .D(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<1> ),
    .Q(\Rx/clock_count [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Rx/clock_count_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Rx/_n0148_inv ),
    .D(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<0> ),
    .Q(\Rx/clock_count [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Rx/rx_bit_index_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Rx/_n0335_inv ),
    .D(\Rx/_n0319 [2]),
    .Q(\Rx/rx_bit_index [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Rx/rx_bit_index_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Rx/_n0335_inv ),
    .D(\Rx/_n0319 [1]),
    .Q(\Rx/rx_bit_index [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Rx/rx_bit_index_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Rx/_n0335_inv ),
    .D(\Rx/_n0319 [0]),
    .Q(\Rx/rx_bit_index [0])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<23>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [22]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [23]),
    .O(\pentium4/C_bus [23])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<22>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [21]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [22]),
    .O(\pentium4/C_bus [22])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<22>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [21]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [22]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [22]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [22])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<21>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [20]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [21]),
    .O(\pentium4/C_bus [21])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<21>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [20]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [21]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [21]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [21])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<20>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [19]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [20]),
    .O(\pentium4/C_bus [20])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<20>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [19]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [20]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [20]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [20])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<19>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [18]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [19]),
    .O(\pentium4/C_bus [19])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<19>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [18]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [19]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [19]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [19])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<18>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [17]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [18]),
    .O(\pentium4/C_bus [18])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<18>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [17]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [18]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [18]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [18])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<17>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [16]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [17]),
    .O(\pentium4/C_bus [17])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<17>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [16]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [17]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [17]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [17])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<16>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [15]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [16]),
    .O(\pentium4/C_bus [16])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<16>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [15]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [16]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [16]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [16])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<15>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [14]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [15]),
    .O(\pentium4/C_bus [15])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<15>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [14]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [15]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [15]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [15])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<14>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [13]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [14]),
    .O(\pentium4/C_bus [14])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<14>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [13]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [14]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [14]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [14])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<13>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [12]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [13]),
    .O(\pentium4/C_bus [13])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<13>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [12]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [13]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [13]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [13])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<12>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [11]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [12]),
    .O(\pentium4/C_bus [12])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<12>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [11]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [12]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [12]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [12])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<11>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [10]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [11]),
    .O(\pentium4/C_bus [11])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<11>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [10]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [11]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [11]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [11])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<10>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [9]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [10]),
    .O(\pentium4/C_bus [10])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<10>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [9]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [10]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [10]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [10])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<9>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [8]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [9]),
    .O(\pentium4/C_bus [9])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<9>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [8]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [9]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [9]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [9])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<8>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [7]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [8]),
    .O(\pentium4/C_bus [8])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<8>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [7]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [8]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [8]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [8])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<7>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [6]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [7]),
    .O(\pentium4/C_bus [7])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<7>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [6]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [7]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [7]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [7])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<6>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [5]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [6]),
    .O(\pentium4/C_bus [6])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<6>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [5]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [6]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [6]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [6])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<5>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [4]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [5]),
    .O(\pentium4/C_bus [5])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<5>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [4]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [5]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [5]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [5])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<4>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [3]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [4]),
    .O(\pentium4/C_bus [4])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<4>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [3]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [4]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [4]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [4])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<3>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [2]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [3]),
    .O(\pentium4/C_bus [3])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<3>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [2]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [3]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [3]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [3])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<2>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [1]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [2]),
    .O(\pentium4/C_bus [2])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<2>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [1]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [2]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [2]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [2])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<1>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [0]),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [1]),
    .O(\pentium4/C_bus [1])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<1>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [0]),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [1]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [1]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [1])
  );
  XORCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_xor<0>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .LI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [0]),
    .O(\pentium4/C_bus [0])
  );
  MUXCY   \pentium4/ALU_24bit/Mmux_C_bus12_rs_cy<0>  (
    .CI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .DI(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [0]),
    .S(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [0]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_cy [0])
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<23>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<22>_436 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<23>_435 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<23> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<23>  (
    .I0(\pentium4/AC_reg/d_out [23]),
    .I1(\pentium4/B_bus [23]),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<23>_435 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<22>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<21>_438 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<22>_437 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<22> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<22>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<21>_438 ),
    .DI(\pentium4/AC_reg/d_out [22]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<22>_437 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<22>_436 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<22>  (
    .I0(\pentium4/AC_reg/d_out [22]),
    .I1(\pentium4/B_bus [22]),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<22>_437 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<21>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<20>_440 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<21>_439 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<21> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<21>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<20>_440 ),
    .DI(\pentium4/AC_reg/d_out [21]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<21>_439 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<21>_438 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<20>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<19>_442 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<20>_441 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<20> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<20>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<19>_442 ),
    .DI(\pentium4/AC_reg/d_out [20]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<20>_441 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<20>_440 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<19>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<18>_444 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<19>_443 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<19> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<19>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<18>_444 ),
    .DI(\pentium4/AC_reg/d_out [19]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<19>_443 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<19>_442 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<18>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<17>_446 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<18>_445 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<18> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<18>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<17>_446 ),
    .DI(\pentium4/AC_reg/d_out [18]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<18>_445 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<18>_444 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<17>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<16>_448 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<17>_447 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<17> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<17>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<16>_448 ),
    .DI(\pentium4/AC_reg/d_out [17]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<17>_447 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<17>_446 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<16>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<15>_450 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<16>_449 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<16> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<16>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<15>_450 ),
    .DI(\pentium4/AC_reg/d_out [16]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<16>_449 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<16>_448 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<15>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<14>_452 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<15>_451 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<15> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<15>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<14>_452 ),
    .DI(\pentium4/AC_reg/d_out [15]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<15>_451 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<15>_450 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<14>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<13>_454 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<14>_453 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<14> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<14>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<13>_454 ),
    .DI(\pentium4/AC_reg/d_out [14]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<14>_453 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<14>_452 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<13>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<12>_456 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<13>_455 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<13> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<13>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<12>_456 ),
    .DI(\pentium4/AC_reg/d_out [13]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<13>_455 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<13>_454 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<12>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<11>_458 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<12>_457 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<12> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<12>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<11>_458 ),
    .DI(\pentium4/AC_reg/d_out [12]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<12>_457 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<12>_456 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<11>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<10>_460 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<11>_459 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<11> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<11>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<10>_460 ),
    .DI(\pentium4/AC_reg/d_out [11]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<11>_459 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<11>_458 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<10>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<9>_462 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<10>_461 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<10> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<10>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<9>_462 ),
    .DI(\pentium4/AC_reg/d_out [10]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<10>_461 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<10>_460 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<9>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<8>_464 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<9>_463 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<9> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<9>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<8>_464 ),
    .DI(\pentium4/AC_reg/d_out [9]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<9>_463 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<9>_462 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<8>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<7>_466 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<8>_465 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<8> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<8>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<7>_466 ),
    .DI(\pentium4/AC_reg/d_out [8]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<8>_465 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<8>_464 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<7>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<6>_468 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<7>_467 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<7> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<7>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<6>_468 ),
    .DI(\pentium4/AC_reg/d_out [7]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<7>_467 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<7>_466 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<6>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<5>_470 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<6>_469 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<6> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<6>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<5>_470 ),
    .DI(\pentium4/AC_reg/d_out [6]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<6>_469 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<6>_468 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<5>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<4>_472 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<5>_471 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<5> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<5>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<4>_472 ),
    .DI(\pentium4/AC_reg/d_out [5]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<5>_471 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<5>_470 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<4>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<3>_474 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<4>_473 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<4> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<4>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<3>_474 ),
    .DI(\pentium4/AC_reg/d_out [4]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<4>_473 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<4>_472 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<3>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<2>_476 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<3>_475 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<3> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<3>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<2>_476 ),
    .DI(\pentium4/AC_reg/d_out [3]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<3>_475 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<3>_474 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<2>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<1>_478 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<2>_477 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<2> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<2>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<1>_478 ),
    .DI(\pentium4/AC_reg/d_out [2]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<2>_477 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<2>_476 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<1>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<0>_480 ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<1>_479 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<1> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<1>  (
    .CI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<0>_480 ),
    .DI(\pentium4/AC_reg/d_out [1]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<1>_479 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<1>_478 )
  );
  XORCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<0>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .LI(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<0>_481 ),
    .O(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<0> )
  );
  MUXCY   \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<0>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .DI(\pentium4/AC_reg/d_out [0]),
    .S(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<0>_481 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<0>_480 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \pentium4/PC_reg/ins_addr_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/PC_reg/_n0019_inv ),
    .D(\pentium4/PC_reg/Mcount_ins_addr8 ),
    .Q(\pentium4/PC_reg/ins_addr [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \pentium4/PC_reg/ins_addr_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/PC_reg/_n0019_inv ),
    .D(\pentium4/PC_reg/Mcount_ins_addr7 ),
    .Q(\pentium4/PC_reg/ins_addr [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \pentium4/PC_reg/ins_addr_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/PC_reg/_n0019_inv ),
    .D(\pentium4/PC_reg/Mcount_ins_addr6 ),
    .Q(\pentium4/PC_reg/ins_addr [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \pentium4/PC_reg/ins_addr_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/PC_reg/_n0019_inv ),
    .D(\pentium4/PC_reg/Mcount_ins_addr5 ),
    .Q(\pentium4/PC_reg/ins_addr [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \pentium4/PC_reg/ins_addr_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/PC_reg/_n0019_inv ),
    .D(\pentium4/PC_reg/Mcount_ins_addr4 ),
    .Q(\pentium4/PC_reg/ins_addr [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \pentium4/PC_reg/ins_addr_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/PC_reg/_n0019_inv ),
    .D(\pentium4/PC_reg/Mcount_ins_addr3 ),
    .Q(\pentium4/PC_reg/ins_addr [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \pentium4/PC_reg/ins_addr_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/PC_reg/_n0019_inv ),
    .D(\pentium4/PC_reg/Mcount_ins_addr2 ),
    .Q(\pentium4/PC_reg/ins_addr [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \pentium4/PC_reg/ins_addr_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/PC_reg/_n0019_inv ),
    .D(\pentium4/PC_reg/Mcount_ins_addr1 ),
    .Q(\pentium4/PC_reg/ins_addr [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \pentium4/PC_reg/ins_addr_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/PC_reg/_n0019_inv ),
    .D(\pentium4/PC_reg/Mcount_ins_addr ),
    .Q(\pentium4/PC_reg/ins_addr [0])
  );
  XORCY   \pentium4/PC_reg/Mcount_ins_addr_xor<8>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [7]),
    .LI(\pentium4/PC_reg/Mcount_ins_addr_lut [8]),
    .O(\pentium4/PC_reg/Mcount_ins_addr8 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pentium4/PC_reg/Mcount_ins_addr_lut<8>  (
    .I0(\pentium4/controlStore/MIR[14] ),
    .I1(\pentium4/PC_reg/ins_addr [8]),
    .I2(\pentium4/C_bus [8]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_lut [8])
  );
  XORCY   \pentium4/PC_reg/Mcount_ins_addr_xor<7>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [6]),
    .LI(\pentium4/PC_reg/Mcount_ins_addr_lut [7]),
    .O(\pentium4/PC_reg/Mcount_ins_addr7 )
  );
  MUXCY   \pentium4/PC_reg/Mcount_ins_addr_cy<7>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [6]),
    .DI(\IO/read_addr [16]),
    .S(\pentium4/PC_reg/Mcount_ins_addr_lut [7]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pentium4/PC_reg/Mcount_ins_addr_lut<7>  (
    .I0(\pentium4/controlStore/MIR[14] ),
    .I1(\pentium4/PC_reg/ins_addr [7]),
    .I2(\pentium4/C_bus [7]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_lut [7])
  );
  XORCY   \pentium4/PC_reg/Mcount_ins_addr_xor<6>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [5]),
    .LI(\pentium4/PC_reg/Mcount_ins_addr_lut [6]),
    .O(\pentium4/PC_reg/Mcount_ins_addr6 )
  );
  MUXCY   \pentium4/PC_reg/Mcount_ins_addr_cy<6>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [5]),
    .DI(\IO/read_addr [16]),
    .S(\pentium4/PC_reg/Mcount_ins_addr_lut [6]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pentium4/PC_reg/Mcount_ins_addr_lut<6>  (
    .I0(\pentium4/controlStore/MIR[14] ),
    .I1(\pentium4/PC_reg/ins_addr [6]),
    .I2(\pentium4/C_bus [6]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_lut [6])
  );
  XORCY   \pentium4/PC_reg/Mcount_ins_addr_xor<5>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [4]),
    .LI(\pentium4/PC_reg/Mcount_ins_addr_lut [5]),
    .O(\pentium4/PC_reg/Mcount_ins_addr5 )
  );
  MUXCY   \pentium4/PC_reg/Mcount_ins_addr_cy<5>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [4]),
    .DI(\IO/read_addr [16]),
    .S(\pentium4/PC_reg/Mcount_ins_addr_lut [5]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pentium4/PC_reg/Mcount_ins_addr_lut<5>  (
    .I0(\pentium4/controlStore/MIR[14] ),
    .I1(\pentium4/PC_reg/ins_addr [5]),
    .I2(\pentium4/C_bus [5]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_lut [5])
  );
  XORCY   \pentium4/PC_reg/Mcount_ins_addr_xor<4>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [3]),
    .LI(\pentium4/PC_reg/Mcount_ins_addr_lut [4]),
    .O(\pentium4/PC_reg/Mcount_ins_addr4 )
  );
  MUXCY   \pentium4/PC_reg/Mcount_ins_addr_cy<4>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [3]),
    .DI(\IO/read_addr [16]),
    .S(\pentium4/PC_reg/Mcount_ins_addr_lut [4]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pentium4/PC_reg/Mcount_ins_addr_lut<4>  (
    .I0(\pentium4/controlStore/MIR[14] ),
    .I1(\pentium4/PC_reg/ins_addr [4]),
    .I2(\pentium4/C_bus [4]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_lut [4])
  );
  XORCY   \pentium4/PC_reg/Mcount_ins_addr_xor<3>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [2]),
    .LI(\pentium4/PC_reg/Mcount_ins_addr_lut [3]),
    .O(\pentium4/PC_reg/Mcount_ins_addr3 )
  );
  MUXCY   \pentium4/PC_reg/Mcount_ins_addr_cy<3>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [2]),
    .DI(\IO/read_addr [16]),
    .S(\pentium4/PC_reg/Mcount_ins_addr_lut [3]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pentium4/PC_reg/Mcount_ins_addr_lut<3>  (
    .I0(\pentium4/controlStore/MIR[14] ),
    .I1(\pentium4/PC_reg/ins_addr [3]),
    .I2(\pentium4/C_bus [3]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_lut [3])
  );
  XORCY   \pentium4/PC_reg/Mcount_ins_addr_xor<2>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [1]),
    .LI(\pentium4/PC_reg/Mcount_ins_addr_lut [2]),
    .O(\pentium4/PC_reg/Mcount_ins_addr2 )
  );
  MUXCY   \pentium4/PC_reg/Mcount_ins_addr_cy<2>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [1]),
    .DI(\IO/read_addr [16]),
    .S(\pentium4/PC_reg/Mcount_ins_addr_lut [2]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pentium4/PC_reg/Mcount_ins_addr_lut<2>  (
    .I0(\pentium4/controlStore/MIR[14] ),
    .I1(\pentium4/PC_reg/ins_addr [2]),
    .I2(\pentium4/C_bus [2]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_lut [2])
  );
  XORCY   \pentium4/PC_reg/Mcount_ins_addr_xor<1>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [0]),
    .LI(\pentium4/PC_reg/Mcount_ins_addr_lut [1]),
    .O(\pentium4/PC_reg/Mcount_ins_addr1 )
  );
  MUXCY   \pentium4/PC_reg/Mcount_ins_addr_cy<1>  (
    .CI(\pentium4/PC_reg/Mcount_ins_addr_cy [0]),
    .DI(\IO/read_addr [16]),
    .S(\pentium4/PC_reg/Mcount_ins_addr_lut [1]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pentium4/PC_reg/Mcount_ins_addr_lut<1>  (
    .I0(\pentium4/controlStore/MIR[14] ),
    .I1(\pentium4/PC_reg/ins_addr [1]),
    .I2(\pentium4/C_bus [1]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_lut [1])
  );
  XORCY   \pentium4/PC_reg/Mcount_ins_addr_xor<0>  (
    .CI(\pentium4/MIR<14>_inv ),
    .LI(\pentium4/PC_reg/Mcount_ins_addr_lut [0]),
    .O(\pentium4/PC_reg/Mcount_ins_addr )
  );
  MUXCY   \pentium4/PC_reg/Mcount_ins_addr_cy<0>  (
    .CI(\pentium4/MIR<14>_inv ),
    .DI(\IO/read_addr [16]),
    .S(\pentium4/PC_reg/Mcount_ins_addr_lut [0]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pentium4/PC_reg/Mcount_ins_addr_lut<0>  (
    .I0(\pentium4/controlStore/MIR[14] ),
    .I1(\pentium4/PC_reg/ins_addr [0]),
    .I2(\pentium4/C_bus [0]),
    .O(\pentium4/PC_reg/Mcount_ins_addr_lut [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pentium4/PC_reg/state  (
    .C(\IO/reset_cpu_21 ),
    .D(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .Q(\pentium4/PC_reg/state_510 )
  );
  FDE   \pentium4/R1_reg/d_out_23  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [23]),
    .Q(\pentium4/R1_reg/d_out [23])
  );
  FDE   \pentium4/R1_reg/d_out_22  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [22]),
    .Q(\pentium4/R1_reg/d_out [22])
  );
  FDE   \pentium4/R1_reg/d_out_21  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [21]),
    .Q(\pentium4/R1_reg/d_out [21])
  );
  FDE   \pentium4/R1_reg/d_out_20  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [20]),
    .Q(\pentium4/R1_reg/d_out [20])
  );
  FDE   \pentium4/R1_reg/d_out_19  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [19]),
    .Q(\pentium4/R1_reg/d_out [19])
  );
  FDE   \pentium4/R1_reg/d_out_18  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [18]),
    .Q(\pentium4/R1_reg/d_out [18])
  );
  FDE   \pentium4/R1_reg/d_out_17  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [17]),
    .Q(\pentium4/R1_reg/d_out [17])
  );
  FDE   \pentium4/R1_reg/d_out_16  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [16]),
    .Q(\pentium4/R1_reg/d_out [16])
  );
  FDE   \pentium4/R1_reg/d_out_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [15]),
    .Q(\pentium4/R1_reg/d_out [15])
  );
  FDE   \pentium4/R1_reg/d_out_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [14]),
    .Q(\pentium4/R1_reg/d_out [14])
  );
  FDE   \pentium4/R1_reg/d_out_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [13]),
    .Q(\pentium4/R1_reg/d_out [13])
  );
  FDE   \pentium4/R1_reg/d_out_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [12]),
    .Q(\pentium4/R1_reg/d_out [12])
  );
  FDE   \pentium4/R1_reg/d_out_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [11]),
    .Q(\pentium4/R1_reg/d_out [11])
  );
  FDE   \pentium4/R1_reg/d_out_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [10]),
    .Q(\pentium4/R1_reg/d_out [10])
  );
  FDE   \pentium4/R1_reg/d_out_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [9]),
    .Q(\pentium4/R1_reg/d_out [9])
  );
  FDE   \pentium4/R1_reg/d_out_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [8]),
    .Q(\pentium4/R1_reg/d_out [8])
  );
  FDE   \pentium4/R1_reg/d_out_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [7]),
    .Q(\pentium4/R1_reg/d_out [7])
  );
  FDE   \pentium4/R1_reg/d_out_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [6]),
    .Q(\pentium4/R1_reg/d_out [6])
  );
  FDE   \pentium4/R1_reg/d_out_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [5]),
    .Q(\pentium4/R1_reg/d_out [5])
  );
  FDE   \pentium4/R1_reg/d_out_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [4]),
    .Q(\pentium4/R1_reg/d_out [4])
  );
  FDE   \pentium4/R1_reg/d_out_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [3]),
    .Q(\pentium4/R1_reg/d_out [3])
  );
  FDE   \pentium4/R1_reg/d_out_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [2]),
    .Q(\pentium4/R1_reg/d_out [2])
  );
  FDE   \pentium4/R1_reg/d_out_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [1]),
    .Q(\pentium4/R1_reg/d_out [1])
  );
  FDE   \pentium4/R1_reg/d_out_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[13] ),
    .D(\pentium4/C_bus [0]),
    .Q(\pentium4/R1_reg/d_out [0])
  );
  FDE   \pentium4/R2_reg/d_out_23  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [23]),
    .Q(\pentium4/R2_reg/d_out [23])
  );
  FDE   \pentium4/R2_reg/d_out_22  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [22]),
    .Q(\pentium4/R2_reg/d_out [22])
  );
  FDE   \pentium4/R2_reg/d_out_21  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [21]),
    .Q(\pentium4/R2_reg/d_out [21])
  );
  FDE   \pentium4/R2_reg/d_out_20  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [20]),
    .Q(\pentium4/R2_reg/d_out [20])
  );
  FDE   \pentium4/R2_reg/d_out_19  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [19]),
    .Q(\pentium4/R2_reg/d_out [19])
  );
  FDE   \pentium4/R2_reg/d_out_18  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [18]),
    .Q(\pentium4/R2_reg/d_out [18])
  );
  FDE   \pentium4/R2_reg/d_out_17  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [17]),
    .Q(\pentium4/R2_reg/d_out [17])
  );
  FDE   \pentium4/R2_reg/d_out_16  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [16]),
    .Q(\pentium4/R2_reg/d_out [16])
  );
  FDE   \pentium4/R2_reg/d_out_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [15]),
    .Q(\pentium4/R2_reg/d_out [15])
  );
  FDE   \pentium4/R2_reg/d_out_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [14]),
    .Q(\pentium4/R2_reg/d_out [14])
  );
  FDE   \pentium4/R2_reg/d_out_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [13]),
    .Q(\pentium4/R2_reg/d_out [13])
  );
  FDE   \pentium4/R2_reg/d_out_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [12]),
    .Q(\pentium4/R2_reg/d_out [12])
  );
  FDE   \pentium4/R2_reg/d_out_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [11]),
    .Q(\pentium4/R2_reg/d_out [11])
  );
  FDE   \pentium4/R2_reg/d_out_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [10]),
    .Q(\pentium4/R2_reg/d_out [10])
  );
  FDE   \pentium4/R2_reg/d_out_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [9]),
    .Q(\pentium4/R2_reg/d_out [9])
  );
  FDE   \pentium4/R2_reg/d_out_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [8]),
    .Q(\pentium4/R2_reg/d_out [8])
  );
  FDE   \pentium4/R2_reg/d_out_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [7]),
    .Q(\pentium4/R2_reg/d_out [7])
  );
  FDE   \pentium4/R2_reg/d_out_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [6]),
    .Q(\pentium4/R2_reg/d_out [6])
  );
  FDE   \pentium4/R2_reg/d_out_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [5]),
    .Q(\pentium4/R2_reg/d_out [5])
  );
  FDE   \pentium4/R2_reg/d_out_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [4]),
    .Q(\pentium4/R2_reg/d_out [4])
  );
  FDE   \pentium4/R2_reg/d_out_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [3]),
    .Q(\pentium4/R2_reg/d_out [3])
  );
  FDE   \pentium4/R2_reg/d_out_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [2]),
    .Q(\pentium4/R2_reg/d_out [2])
  );
  FDE   \pentium4/R2_reg/d_out_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [1]),
    .Q(\pentium4/R2_reg/d_out [1])
  );
  FDE   \pentium4/R2_reg/d_out_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[12] ),
    .D(\pentium4/C_bus [0]),
    .Q(\pentium4/R2_reg/d_out [0])
  );
  FDE   \pentium4/R3_reg/d_out_23  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [23]),
    .Q(\pentium4/R3_reg/d_out [23])
  );
  FDE   \pentium4/R3_reg/d_out_22  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [22]),
    .Q(\pentium4/R3_reg/d_out [22])
  );
  FDE   \pentium4/R3_reg/d_out_21  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [21]),
    .Q(\pentium4/R3_reg/d_out [21])
  );
  FDE   \pentium4/R3_reg/d_out_20  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [20]),
    .Q(\pentium4/R3_reg/d_out [20])
  );
  FDE   \pentium4/R3_reg/d_out_19  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [19]),
    .Q(\pentium4/R3_reg/d_out [19])
  );
  FDE   \pentium4/R3_reg/d_out_18  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [18]),
    .Q(\pentium4/R3_reg/d_out [18])
  );
  FDE   \pentium4/R3_reg/d_out_17  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [17]),
    .Q(\pentium4/R3_reg/d_out [17])
  );
  FDE   \pentium4/R3_reg/d_out_16  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [16]),
    .Q(\pentium4/R3_reg/d_out [16])
  );
  FDE   \pentium4/R3_reg/d_out_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [15]),
    .Q(\pentium4/R3_reg/d_out [15])
  );
  FDE   \pentium4/R3_reg/d_out_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [14]),
    .Q(\pentium4/R3_reg/d_out [14])
  );
  FDE   \pentium4/R3_reg/d_out_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [13]),
    .Q(\pentium4/R3_reg/d_out [13])
  );
  FDE   \pentium4/R3_reg/d_out_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [12]),
    .Q(\pentium4/R3_reg/d_out [12])
  );
  FDE   \pentium4/R3_reg/d_out_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [11]),
    .Q(\pentium4/R3_reg/d_out [11])
  );
  FDE   \pentium4/R3_reg/d_out_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [10]),
    .Q(\pentium4/R3_reg/d_out [10])
  );
  FDE   \pentium4/R3_reg/d_out_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [9]),
    .Q(\pentium4/R3_reg/d_out [9])
  );
  FDE   \pentium4/R3_reg/d_out_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [8]),
    .Q(\pentium4/R3_reg/d_out [8])
  );
  FDE   \pentium4/R3_reg/d_out_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [7]),
    .Q(\pentium4/R3_reg/d_out [7])
  );
  FDE   \pentium4/R3_reg/d_out_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [6]),
    .Q(\pentium4/R3_reg/d_out [6])
  );
  FDE   \pentium4/R3_reg/d_out_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [5]),
    .Q(\pentium4/R3_reg/d_out [5])
  );
  FDE   \pentium4/R3_reg/d_out_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [4]),
    .Q(\pentium4/R3_reg/d_out [4])
  );
  FDE   \pentium4/R3_reg/d_out_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [3]),
    .Q(\pentium4/R3_reg/d_out [3])
  );
  FDE   \pentium4/R3_reg/d_out_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [2]),
    .Q(\pentium4/R3_reg/d_out [2])
  );
  FDE   \pentium4/R3_reg/d_out_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [1]),
    .Q(\pentium4/R3_reg/d_out [1])
  );
  FDE   \pentium4/R3_reg/d_out_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[11] ),
    .D(\pentium4/C_bus [0]),
    .Q(\pentium4/R3_reg/d_out [0])
  );
  FDE   \pentium4/R4_reg/d_out_23  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [23]),
    .Q(\pentium4/R4_reg/d_out [23])
  );
  FDE   \pentium4/R4_reg/d_out_22  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [22]),
    .Q(\pentium4/R4_reg/d_out [22])
  );
  FDE   \pentium4/R4_reg/d_out_21  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [21]),
    .Q(\pentium4/R4_reg/d_out [21])
  );
  FDE   \pentium4/R4_reg/d_out_20  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [20]),
    .Q(\pentium4/R4_reg/d_out [20])
  );
  FDE   \pentium4/R4_reg/d_out_19  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [19]),
    .Q(\pentium4/R4_reg/d_out [19])
  );
  FDE   \pentium4/R4_reg/d_out_18  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [18]),
    .Q(\pentium4/R4_reg/d_out [18])
  );
  FDE   \pentium4/R4_reg/d_out_17  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [17]),
    .Q(\pentium4/R4_reg/d_out [17])
  );
  FDE   \pentium4/R4_reg/d_out_16  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [16]),
    .Q(\pentium4/R4_reg/d_out [16])
  );
  FDE   \pentium4/R4_reg/d_out_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [15]),
    .Q(\pentium4/R4_reg/d_out [15])
  );
  FDE   \pentium4/R4_reg/d_out_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [14]),
    .Q(\pentium4/R4_reg/d_out [14])
  );
  FDE   \pentium4/R4_reg/d_out_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [13]),
    .Q(\pentium4/R4_reg/d_out [13])
  );
  FDE   \pentium4/R4_reg/d_out_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [12]),
    .Q(\pentium4/R4_reg/d_out [12])
  );
  FDE   \pentium4/R4_reg/d_out_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [11]),
    .Q(\pentium4/R4_reg/d_out [11])
  );
  FDE   \pentium4/R4_reg/d_out_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [10]),
    .Q(\pentium4/R4_reg/d_out [10])
  );
  FDE   \pentium4/R4_reg/d_out_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [9]),
    .Q(\pentium4/R4_reg/d_out [9])
  );
  FDE   \pentium4/R4_reg/d_out_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [8]),
    .Q(\pentium4/R4_reg/d_out [8])
  );
  FDE   \pentium4/R4_reg/d_out_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [7]),
    .Q(\pentium4/R4_reg/d_out [7])
  );
  FDE   \pentium4/R4_reg/d_out_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [6]),
    .Q(\pentium4/R4_reg/d_out [6])
  );
  FDE   \pentium4/R4_reg/d_out_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [5]),
    .Q(\pentium4/R4_reg/d_out [5])
  );
  FDE   \pentium4/R4_reg/d_out_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [4]),
    .Q(\pentium4/R4_reg/d_out [4])
  );
  FDE   \pentium4/R4_reg/d_out_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [3]),
    .Q(\pentium4/R4_reg/d_out [3])
  );
  FDE   \pentium4/R4_reg/d_out_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [2]),
    .Q(\pentium4/R4_reg/d_out [2])
  );
  FDE   \pentium4/R4_reg/d_out_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [1]),
    .Q(\pentium4/R4_reg/d_out [1])
  );
  FDE   \pentium4/R4_reg/d_out_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[10] ),
    .D(\pentium4/C_bus [0]),
    .Q(\pentium4/R4_reg/d_out [0])
  );
  FDE   \pentium4/AC_reg/d_out_23  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [23]),
    .Q(\pentium4/AC_reg/d_out [23])
  );
  FDE   \pentium4/AC_reg/d_out_22  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [22]),
    .Q(\pentium4/AC_reg/d_out [22])
  );
  FDE   \pentium4/AC_reg/d_out_21  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [21]),
    .Q(\pentium4/AC_reg/d_out [21])
  );
  FDE   \pentium4/AC_reg/d_out_20  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [20]),
    .Q(\pentium4/AC_reg/d_out [20])
  );
  FDE   \pentium4/AC_reg/d_out_19  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [19]),
    .Q(\pentium4/AC_reg/d_out [19])
  );
  FDE   \pentium4/AC_reg/d_out_18  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [18]),
    .Q(\pentium4/AC_reg/d_out [18])
  );
  FDE   \pentium4/AC_reg/d_out_17  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [17]),
    .Q(\pentium4/AC_reg/d_out [17])
  );
  FDE   \pentium4/AC_reg/d_out_16  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [16]),
    .Q(\pentium4/AC_reg/d_out [16])
  );
  FDE   \pentium4/AC_reg/d_out_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [15]),
    .Q(\pentium4/AC_reg/d_out [15])
  );
  FDE   \pentium4/AC_reg/d_out_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [14]),
    .Q(\pentium4/AC_reg/d_out [14])
  );
  FDE   \pentium4/AC_reg/d_out_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [13]),
    .Q(\pentium4/AC_reg/d_out [13])
  );
  FDE   \pentium4/AC_reg/d_out_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [12]),
    .Q(\pentium4/AC_reg/d_out [12])
  );
  FDE   \pentium4/AC_reg/d_out_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [11]),
    .Q(\pentium4/AC_reg/d_out [11])
  );
  FDE   \pentium4/AC_reg/d_out_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [10]),
    .Q(\pentium4/AC_reg/d_out [10])
  );
  FDE   \pentium4/AC_reg/d_out_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [9]),
    .Q(\pentium4/AC_reg/d_out [9])
  );
  FDE   \pentium4/AC_reg/d_out_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [8]),
    .Q(\pentium4/AC_reg/d_out [8])
  );
  FDE   \pentium4/AC_reg/d_out_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [7]),
    .Q(\pentium4/AC_reg/d_out [7])
  );
  FDE   \pentium4/AC_reg/d_out_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [6]),
    .Q(\pentium4/AC_reg/d_out [6])
  );
  FDE   \pentium4/AC_reg/d_out_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [5]),
    .Q(\pentium4/AC_reg/d_out [5])
  );
  FDE   \pentium4/AC_reg/d_out_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [4]),
    .Q(\pentium4/AC_reg/d_out [4])
  );
  FDE   \pentium4/AC_reg/d_out_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [3]),
    .Q(\pentium4/AC_reg/d_out [3])
  );
  FDE   \pentium4/AC_reg/d_out_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [2]),
    .Q(\pentium4/AC_reg/d_out [2])
  );
  FDE   \pentium4/AC_reg/d_out_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [1]),
    .Q(\pentium4/AC_reg/d_out [1])
  );
  FDE   \pentium4/AC_reg/d_out_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[8] ),
    .D(\pentium4/C_bus [0]),
    .Q(\pentium4/AC_reg/d_out [0])
  );
  FDE   \pentium4/R_reg/d_out_23  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [23]),
    .Q(\pentium4/R_reg/d_out [23])
  );
  FDE   \pentium4/R_reg/d_out_22  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [22]),
    .Q(\pentium4/R_reg/d_out [22])
  );
  FDE   \pentium4/R_reg/d_out_21  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [21]),
    .Q(\pentium4/R_reg/d_out [21])
  );
  FDE   \pentium4/R_reg/d_out_20  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [20]),
    .Q(\pentium4/R_reg/d_out [20])
  );
  FDE   \pentium4/R_reg/d_out_19  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [19]),
    .Q(\pentium4/R_reg/d_out [19])
  );
  FDE   \pentium4/R_reg/d_out_18  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [18]),
    .Q(\pentium4/R_reg/d_out [18])
  );
  FDE   \pentium4/R_reg/d_out_17  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [17]),
    .Q(\pentium4/R_reg/d_out [17])
  );
  FDE   \pentium4/R_reg/d_out_16  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [16]),
    .Q(\pentium4/R_reg/d_out [16])
  );
  FDE   \pentium4/R_reg/d_out_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [15]),
    .Q(\pentium4/R_reg/d_out [15])
  );
  FDE   \pentium4/R_reg/d_out_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [14]),
    .Q(\pentium4/R_reg/d_out [14])
  );
  FDE   \pentium4/R_reg/d_out_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [13]),
    .Q(\pentium4/R_reg/d_out [13])
  );
  FDE   \pentium4/R_reg/d_out_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [12]),
    .Q(\pentium4/R_reg/d_out [12])
  );
  FDE   \pentium4/R_reg/d_out_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [11]),
    .Q(\pentium4/R_reg/d_out [11])
  );
  FDE   \pentium4/R_reg/d_out_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [10]),
    .Q(\pentium4/R_reg/d_out [10])
  );
  FDE   \pentium4/R_reg/d_out_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [9]),
    .Q(\pentium4/R_reg/d_out [9])
  );
  FDE   \pentium4/R_reg/d_out_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [8]),
    .Q(\pentium4/R_reg/d_out [8])
  );
  FDE   \pentium4/R_reg/d_out_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [7]),
    .Q(\pentium4/R_reg/d_out [7])
  );
  FDE   \pentium4/R_reg/d_out_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [6]),
    .Q(\pentium4/R_reg/d_out [6])
  );
  FDE   \pentium4/R_reg/d_out_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [5]),
    .Q(\pentium4/R_reg/d_out [5])
  );
  FDE   \pentium4/R_reg/d_out_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [4]),
    .Q(\pentium4/R_reg/d_out [4])
  );
  FDE   \pentium4/R_reg/d_out_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [3]),
    .Q(\pentium4/R_reg/d_out [3])
  );
  FDE   \pentium4/R_reg/d_out_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [2]),
    .Q(\pentium4/R_reg/d_out [2])
  );
  FDE   \pentium4/R_reg/d_out_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [1]),
    .Q(\pentium4/R_reg/d_out [1])
  );
  FDE   \pentium4/R_reg/d_out_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[9] ),
    .D(\pentium4/C_bus [0]),
    .Q(\pentium4/R_reg/d_out [0])
  );
  LD   \pentium4/ALU_24bit/Z_flag  (
    .D(\pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o ),
    .G(\pentium4/ALU_24bit/Mmux_C_bus12_A332 ),
    .Q(\pentium4/ALU_24bit/Z_flag_559 )
  );
  FDE   \pentium4/MDR_reg/data_out_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/MDR_reg/_n0010_inv ),
    .D(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<7> ),
    .Q(\pentium4/MDR_reg/data_out [7])
  );
  FDE   \pentium4/MDR_reg/data_out_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/MDR_reg/_n0010_inv ),
    .D(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<6> ),
    .Q(\pentium4/MDR_reg/data_out [6])
  );
  FDE   \pentium4/MDR_reg/data_out_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/MDR_reg/_n0010_inv ),
    .D(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<5> ),
    .Q(\pentium4/MDR_reg/data_out [5])
  );
  FDE   \pentium4/MDR_reg/data_out_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/MDR_reg/_n0010_inv ),
    .D(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<4> ),
    .Q(\pentium4/MDR_reg/data_out [4])
  );
  FDE   \pentium4/MDR_reg/data_out_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/MDR_reg/_n0010_inv ),
    .D(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<3> ),
    .Q(\pentium4/MDR_reg/data_out [3])
  );
  FDE   \pentium4/MDR_reg/data_out_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/MDR_reg/_n0010_inv ),
    .D(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<2> ),
    .Q(\pentium4/MDR_reg/data_out [2])
  );
  FDE   \pentium4/MDR_reg/data_out_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/MDR_reg/_n0010_inv ),
    .D(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<1> ),
    .Q(\pentium4/MDR_reg/data_out [1])
  );
  FDE   \pentium4/MDR_reg/data_out_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/MDR_reg/_n0010_inv ),
    .D(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<0> ),
    .Q(\pentium4/MDR_reg/data_out [0])
  );
  FDE   \pentium4/MBRU_reg/ins_out_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[7] ),
    .D(instruction[7]),
    .Q(\pentium4/MBRU_reg/ins_out [7])
  );
  FDE   \pentium4/MBRU_reg/ins_out_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[7] ),
    .D(instruction[6]),
    .Q(\pentium4/MBRU_reg/ins_out [6])
  );
  FDE   \pentium4/MBRU_reg/ins_out_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[7] ),
    .D(instruction[5]),
    .Q(\pentium4/MBRU_reg/ins_out [5])
  );
  FDE   \pentium4/MBRU_reg/ins_out_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[7] ),
    .D(instruction[4]),
    .Q(\pentium4/MBRU_reg/ins_out [4])
  );
  FDE   \pentium4/MBRU_reg/ins_out_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[7] ),
    .D(instruction[3]),
    .Q(\pentium4/MBRU_reg/ins_out [3])
  );
  FDE   \pentium4/MBRU_reg/ins_out_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[7] ),
    .D(instruction[2]),
    .Q(\pentium4/MBRU_reg/ins_out [2])
  );
  FDE   \pentium4/MBRU_reg/ins_out_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[7] ),
    .D(instruction[1]),
    .Q(\pentium4/MBRU_reg/ins_out [1])
  );
  FDE   \pentium4/MBRU_reg/ins_out_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[7] ),
    .D(instruction[0]),
    .Q(\pentium4/MBRU_reg/ins_out [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/state_FSM_FFd1  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\pentium4/controlStore/state_FSM_FFd1-In ),
    .Q(\pentium4/controlStore/state_FSM_FFd1_798 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/state_FSM_FFd2  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\pentium4/controlStore/state_FSM_FFd2-In ),
    .Q(\pentium4/controlStore/state_FSM_FFd2_799 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_30  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0071 [1]),
    .Q(\pentium4/controlStore/MIR[30] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_29  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0071 [2]),
    .Q(\pentium4/controlStore/MIR[29] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_28  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0071 [3]),
    .Q(\pentium4/controlStore/MIR[28] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_27  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0071 [4]),
    .Q(\pentium4/controlStore/MIR[27] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_26  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0071 [5]),
    .Q(\pentium4/controlStore/MIR[26] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_25  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0071 [6]),
    .Q(\pentium4/controlStore/MIR[25] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_24  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0072 ),
    .Q(\pentium4/controlStore/MIR[24] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_23  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0075 [1]),
    .Q(\pentium4/controlStore/MIR[23] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_22  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[22] ),
    .Q(\pentium4/controlStore/MIR[22] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_20  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[20] ),
    .Q(\pentium4/controlStore/MIR[20] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_19  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[19] ),
    .Q(\pentium4/controlStore/MIR[19] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_18  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[18] ),
    .Q(\pentium4/controlStore/MIR[18] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_17  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[17] ),
    .Q(\pentium4/controlStore/MIR[17] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_16  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[16] ),
    .Q(\pentium4/controlStore/MIR[16] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[15] ),
    .Q(\pentium4/controlStore/MIR[15] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[14] ),
    .Q(\pentium4/controlStore/MIR[14] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[13] ),
    .Q(\pentium4/controlStore/MIR[13] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[12] ),
    .Q(\pentium4/controlStore/MIR[12] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[11] ),
    .Q(\pentium4/controlStore/MIR[11] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[10] ),
    .Q(\pentium4/controlStore/MIR[10] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[9] ),
    .Q(\pentium4/controlStore/MIR[9] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[8] ),
    .Q(\pentium4/controlStore/MIR[8] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0076 ),
    .Q(\pentium4/controlStore/MIR[7] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[6] ),
    .Q(\pentium4/controlStore/MIR[6] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[5] ),
    .Q(\pentium4/controlStore/MIR[5] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0077[3] ),
    .Q(\pentium4/controlStore/MIR[4] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0077[4] ),
    .Q(\pentium4/controlStore/MIR[3] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[2] ),
    .Q(\pentium4/controlStore/MIR[2] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0077[6] ),
    .Q(\pentium4/controlStore/MIR[1] )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[0] ),
    .Q(\pentium4/controlStore/MIR[0] )
  );
  FDE   \pentium4/MAR_reg/data_addr_15  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [15]),
    .Q(\pentium4/MAR_reg/data_addr [15])
  );
  FDE   \pentium4/MAR_reg/data_addr_14  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [14]),
    .Q(\pentium4/MAR_reg/data_addr [14])
  );
  FDE   \pentium4/MAR_reg/data_addr_13  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [13]),
    .Q(\pentium4/MAR_reg/data_addr [13])
  );
  FDE   \pentium4/MAR_reg/data_addr_12  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [12]),
    .Q(\pentium4/MAR_reg/data_addr [12])
  );
  FDE   \pentium4/MAR_reg/data_addr_11  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [11]),
    .Q(\pentium4/MAR_reg/data_addr [11])
  );
  FDE   \pentium4/MAR_reg/data_addr_10  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [10]),
    .Q(\pentium4/MAR_reg/data_addr [10])
  );
  FDE   \pentium4/MAR_reg/data_addr_9  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [9]),
    .Q(\pentium4/MAR_reg/data_addr [9])
  );
  FDE   \pentium4/MAR_reg/data_addr_8  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [8]),
    .Q(\pentium4/MAR_reg/data_addr [8])
  );
  FDE   \pentium4/MAR_reg/data_addr_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [7]),
    .Q(\pentium4/MAR_reg/data_addr [7])
  );
  FDE   \pentium4/MAR_reg/data_addr_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [6]),
    .Q(\pentium4/MAR_reg/data_addr [6])
  );
  FDE   \pentium4/MAR_reg/data_addr_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [5]),
    .Q(\pentium4/MAR_reg/data_addr [5])
  );
  FDE   \pentium4/MAR_reg/data_addr_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [4]),
    .Q(\pentium4/MAR_reg/data_addr [4])
  );
  FDE   \pentium4/MAR_reg/data_addr_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [3]),
    .Q(\pentium4/MAR_reg/data_addr [3])
  );
  FDE   \pentium4/MAR_reg/data_addr_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [2]),
    .Q(\pentium4/MAR_reg/data_addr [2])
  );
  FDE   \pentium4/MAR_reg/data_addr_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [1]),
    .Q(\pentium4/MAR_reg/data_addr [1])
  );
  FDE   \pentium4/MAR_reg/data_addr_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/MIR[16] ),
    .D(\pentium4/C_bus [0]),
    .Q(\pentium4/MAR_reg/data_addr [0])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Tx/Mmux_tx_bit_index[2]_data_byte[7]_Mux_7_o_3  (
    .I0(\Tx/tx_bit_index [1]),
    .I1(\Tx/tx_bit_index [0]),
    .I2(\Tx/data_byte [6]),
    .I3(\Tx/data_byte [7]),
    .I4(\Tx/data_byte [5]),
    .I5(\Tx/data_byte [4]),
    .O(\Tx/Mmux_tx_bit_index[2]_data_byte[7]_Mux_7_o_3_864 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Tx/Mmux_tx_bit_index[2]_data_byte[7]_Mux_7_o_4  (
    .I0(\Tx/tx_bit_index [1]),
    .I1(\Tx/tx_bit_index [0]),
    .I2(\Tx/data_byte [2]),
    .I3(\Tx/data_byte [3]),
    .I4(\Tx/data_byte [1]),
    .I5(\Tx/data_byte [0]),
    .O(\Tx/Mmux_tx_bit_index[2]_data_byte[7]_Mux_7_o_4_865 )
  );
  MUXF7   \Tx/Mmux_tx_bit_index[2]_data_byte[7]_Mux_7_o_2_f7  (
    .I0(\Tx/Mmux_tx_bit_index[2]_data_byte[7]_Mux_7_o_4_865 ),
    .I1(\Tx/Mmux_tx_bit_index[2]_data_byte[7]_Mux_7_o_3_864 ),
    .S(\Tx/tx_bit_index [2]),
    .O(\Tx/tx_bit_index[2]_data_byte[7]_Mux_7_o )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<5>_870 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>_869 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<5>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<4>_871 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<5>_870 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<4>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<3>_872 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<4>_871 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<3>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<2>_873 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<3>_872 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<2>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<1>_874 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<2>_873 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<1>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<0>_876 ),
    .DI(\Tx/clock_count [5]),
    .S(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lut<1> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<1>_874 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<0>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .DI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lutdi_878 ),
    .S(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lut<0>_877 ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<0>_876 )
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lut<0>  (
    .I0(\Tx/clock_count [1]),
    .I1(\Tx/clock_count [2]),
    .I2(\Tx/clock_count [3]),
    .I3(\Tx/clock_count [0]),
    .I4(\Tx/clock_count [4]),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lut<0>_877 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lutdi  (
    .I0(\Tx/clock_count [4]),
    .I1(\Tx/clock_count [3]),
    .I2(\Tx/clock_count [2]),
    .I3(\Tx/clock_count [1]),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lutdi_878 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<5>_880 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<5>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<4>_881 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<5>_880 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<4>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<3>_882 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<4>_881 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<3>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<2>_883 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<3>_882 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<2>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<1>_884 ),
    .DI(\IO/read_addr [16]),
    .S(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<2>_883 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<1>  (
    .CI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<0>_886 ),
    .DI(\IO/read_addr [16]),
    .S(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<1>_rt_1071 ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<1>_884 )
  );
  MUXCY   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<0>  (
    .CI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .DI(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_lutdi_888 ),
    .S(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_lut<0>_887 ),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<0>_886 )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_lut<0>  (
    .I0(\Tx/clock_count [1]),
    .I1(\Tx/clock_count [2]),
    .I2(\Tx/clock_count [3]),
    .I3(\Tx/clock_count [0]),
    .I4(\Tx/clock_count [4]),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_lut<0>_887 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_lutdi  (
    .I0(\Tx/clock_count [4]),
    .I1(\Tx/clock_count [3]),
    .I2(\Tx/clock_count [2]),
    .I3(\Tx/clock_count [1]),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_lutdi_888 )
  );
  XORCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_xor<5>  (
    .CI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<4>_889 ),
    .LI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_xor<5>_rt_1080 ),
    .O(\Tx/clock_count[32]_GND_16_o_add_22_OUT<5> )
  );
  XORCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_xor<4>  (
    .CI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<3>_890 ),
    .LI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<4>_rt_1072 ),
    .O(\Tx/clock_count[32]_GND_16_o_add_22_OUT<4> )
  );
  MUXCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<4>  (
    .CI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<3>_890 ),
    .DI(\IO/read_addr [16]),
    .S(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<4>_rt_1072 ),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<4>_889 )
  );
  XORCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_xor<3>  (
    .CI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<2>_891 ),
    .LI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<3>_rt_1073 ),
    .O(\Tx/clock_count[32]_GND_16_o_add_22_OUT<3> )
  );
  MUXCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<3>  (
    .CI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<2>_891 ),
    .DI(\IO/read_addr [16]),
    .S(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<3>_rt_1073 ),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<3>_890 )
  );
  XORCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_xor<2>  (
    .CI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<1>_892 ),
    .LI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<2>_rt_1074 ),
    .O(\Tx/clock_count[32]_GND_16_o_add_22_OUT<2> )
  );
  MUXCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<2>  (
    .CI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<1>_892 ),
    .DI(\IO/read_addr [16]),
    .S(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<2>_rt_1074 ),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<2>_891 )
  );
  XORCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_xor<1>  (
    .CI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<0>_893 ),
    .LI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<1>_rt_1075 ),
    .O(\Tx/clock_count[32]_GND_16_o_add_22_OUT<1> )
  );
  MUXCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<1>  (
    .CI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<0>_893 ),
    .DI(\IO/read_addr [16]),
    .S(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<1>_rt_1075 ),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<1>_892 )
  );
  XORCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_xor<0>  (
    .CI(\IO/read_addr [16]),
    .LI(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_lut<0> ),
    .O(\Tx/clock_count[32]_GND_16_o_add_22_OUT<0> )
  );
  MUXCY   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<0>  (
    .CI(\IO/read_addr [16]),
    .DI(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_lut<2> ),
    .S(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_lut<0> ),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<0>_893 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Tx/state_FSM_FFd1  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Tx/state_FSM_FFd1-In ),
    .Q(\Tx/state_FSM_FFd1_923 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Tx/state_FSM_FFd2  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Tx/state_FSM_FFd2-In ),
    .Q(\Tx/state_FSM_FFd2_922 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Tx/state_FSM_FFd3  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Tx/state_FSM_FFd3-In_897 ),
    .Q(\Tx/state_FSM_FFd3_921 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/clock_count_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/_n0077_inv ),
    .D(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<5> ),
    .Q(\Tx/clock_count [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/clock_count_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/_n0077_inv ),
    .D(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<4> ),
    .Q(\Tx/clock_count [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/clock_count_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/_n0077_inv ),
    .D(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<3> ),
    .Q(\Tx/clock_count [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/clock_count_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/_n0077_inv ),
    .D(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<2> ),
    .Q(\Tx/clock_count [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/clock_count_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/_n0077_inv ),
    .D(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<1> ),
    .Q(\Tx/clock_count [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/clock_count_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/_n0077_inv ),
    .D(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<0> ),
    .Q(\Tx/clock_count [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/tx_bit_index_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/_n0125_inv ),
    .D(\Tx/_n0111 [1]),
    .Q(\Tx/tx_bit_index [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/tx_bit_index_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/_n0125_inv ),
    .D(\Tx/_n0111 [2]),
    .Q(\Tx/tx_bit_index [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/tx_bit_index_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/_n0125_inv ),
    .D(\Tx/_n0111 [3]),
    .Q(\Tx/tx_bit_index [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/data_byte_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/state_FSM_FFd3-In1 ),
    .D(\dmux1/A_7_111 ),
    .Q(\Tx/data_byte [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/data_byte_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/state_FSM_FFd3-In1 ),
    .D(\dmux1/A_6_112 ),
    .Q(\Tx/data_byte [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/data_byte_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/state_FSM_FFd3-In1 ),
    .D(\dmux1/A_5_113 ),
    .Q(\Tx/data_byte [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/data_byte_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/state_FSM_FFd3-In1 ),
    .D(\dmux1/A_4_114 ),
    .Q(\Tx/data_byte [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/data_byte_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/state_FSM_FFd3-In1 ),
    .D(\dmux1/A_3_115 ),
    .Q(\Tx/data_byte [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/data_byte_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/state_FSM_FFd3-In1 ),
    .D(\dmux1/A_2_116 ),
    .Q(\Tx/data_byte [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/data_byte_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/state_FSM_FFd3-In1 ),
    .D(\dmux1/A_1_117 ),
    .Q(\Tx/data_byte [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \Tx/data_byte_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\Tx/state_FSM_FFd3-In1 ),
    .D(\dmux1/A_0_118 ),
    .Q(\Tx/data_byte [0])
  );
  LD   \dmux1/A_0  (
    .D(ram_out[0]),
    .G(status_OBUF_102),
    .Q(\dmux1/A_0_118 )
  );
  LD   \dmux1/A_1  (
    .D(ram_out[1]),
    .G(status_OBUF_102),
    .Q(\dmux1/A_1_117 )
  );
  LD   \dmux1/A_2  (
    .D(ram_out[2]),
    .G(status_OBUF_102),
    .Q(\dmux1/A_2_116 )
  );
  LD   \dmux1/A_3  (
    .D(ram_out[3]),
    .G(status_OBUF_102),
    .Q(\dmux1/A_3_115 )
  );
  LD   \dmux1/A_4  (
    .D(ram_out[4]),
    .G(status_OBUF_102),
    .Q(\dmux1/A_4_114 )
  );
  LD   \dmux1/A_5  (
    .D(ram_out[5]),
    .G(status_OBUF_102),
    .Q(\dmux1/A_5_113 )
  );
  LD   \dmux1/A_6  (
    .D(ram_out[6]),
    .G(status_OBUF_102),
    .Q(\dmux1/A_6_112 )
  );
  LD   \dmux1/A_7  (
    .D(ram_out[7]),
    .G(status_OBUF_102),
    .Q(\dmux1/A_7_111 )
  );
  LD   \dmux1/B_7  (
    .D(ram_out[7]),
    .G(\IO/select_22 ),
    .Q(\dmux1/B_7_119 )
  );
  LD   \dmux1/B_0  (
    .D(ram_out[0]),
    .G(\IO/select_22 ),
    .Q(\dmux1/B_0_126 )
  );
  LD   \dmux1/B_1  (
    .D(ram_out[1]),
    .G(\IO/select_22 ),
    .Q(\dmux1/B_1_125 )
  );
  LD   \dmux1/B_2  (
    .D(ram_out[2]),
    .G(\IO/select_22 ),
    .Q(\dmux1/B_2_124 )
  );
  LD   \dmux1/B_3  (
    .D(ram_out[3]),
    .G(\IO/select_22 ),
    .Q(\dmux1/B_3_123 )
  );
  LD   \dmux1/B_4  (
    .D(ram_out[4]),
    .G(\IO/select_22 ),
    .Q(\dmux1/B_4_122 )
  );
  LD   \dmux1/B_5  (
    .D(ram_out[5]),
    .G(\IO/select_22 ),
    .Q(\dmux1/B_5_121 )
  );
  LD   \dmux1/B_6  (
    .D(ram_out[6]),
    .G(\IO/select_22 ),
    .Q(\dmux1/B_6_120 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux2/Mmux_OUT11  (
    .I0(\IO/select_22 ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\pentium4/controlStore/MIR[5] ),
    .O(write)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT161  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [9]),
    .I2(\pentium4/MAR_reg/data_addr [9]),
    .O(ram_addr[9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT151  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [8]),
    .I2(\pentium4/MAR_reg/data_addr [8]),
    .O(ram_addr[8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT141  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [7]),
    .I2(\pentium4/MAR_reg/data_addr [7]),
    .O(ram_addr[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT131  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [6]),
    .I2(\pentium4/MAR_reg/data_addr [6]),
    .O(ram_addr[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT121  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [5]),
    .I2(\pentium4/MAR_reg/data_addr [5]),
    .O(ram_addr[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT111  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [4]),
    .I2(\pentium4/MAR_reg/data_addr [4]),
    .O(ram_addr[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT101  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [3]),
    .I2(\pentium4/MAR_reg/data_addr [3]),
    .O(ram_addr[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT91  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [2]),
    .I2(\pentium4/MAR_reg/data_addr [2]),
    .O(ram_addr[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT81  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [1]),
    .I2(\pentium4/MAR_reg/data_addr [1]),
    .O(ram_addr[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT71  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [15]),
    .I2(\pentium4/MAR_reg/data_addr [15]),
    .O(ram_addr[15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT61  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [14]),
    .I2(\pentium4/MAR_reg/data_addr [14]),
    .O(ram_addr[14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT51  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [13]),
    .I2(\pentium4/MAR_reg/data_addr [13]),
    .O(ram_addr[13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT41  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [12]),
    .I2(\pentium4/MAR_reg/data_addr [12]),
    .O(ram_addr[12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT31  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [11]),
    .I2(\pentium4/MAR_reg/data_addr [11]),
    .O(ram_addr[11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT21  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [10]),
    .I2(\pentium4/MAR_reg/data_addr [10]),
    .O(ram_addr[10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux1/Mmux_OUT11  (
    .I0(\IO/select_22 ),
    .I1(\IO/ram_addr [0]),
    .I2(\pentium4/MAR_reg/data_addr [0]),
    .O(ram_addr[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux3/Mmux_OUT81  (
    .I0(\IO/select_22 ),
    .I1(\Rx/data_byte_7_23 ),
    .I2(\pentium4/MDR_reg/data_out [7]),
    .O(ram_in[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux3/Mmux_OUT71  (
    .I0(\IO/select_22 ),
    .I1(\Rx/data_byte_6_24 ),
    .I2(\pentium4/MDR_reg/data_out [6]),
    .O(ram_in[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux3/Mmux_OUT61  (
    .I0(\IO/select_22 ),
    .I1(\Rx/data_byte_5_25 ),
    .I2(\pentium4/MDR_reg/data_out [5]),
    .O(ram_in[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux3/Mmux_OUT51  (
    .I0(\IO/select_22 ),
    .I1(\Rx/data_byte_4_26 ),
    .I2(\pentium4/MDR_reg/data_out [4]),
    .O(ram_in[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux3/Mmux_OUT41  (
    .I0(\IO/select_22 ),
    .I1(\Rx/data_byte_3_27 ),
    .I2(\pentium4/MDR_reg/data_out [3]),
    .O(ram_in[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux3/Mmux_OUT31  (
    .I0(\IO/select_22 ),
    .I1(\Rx/data_byte_2_28 ),
    .I2(\pentium4/MDR_reg/data_out [2]),
    .O(ram_in[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux3/Mmux_OUT21  (
    .I0(\IO/select_22 ),
    .I1(\Rx/data_byte_1_29 ),
    .I2(\pentium4/MDR_reg/data_out [1]),
    .O(ram_in[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \mux3/Mmux_OUT11  (
    .I0(\IO/select_22 ),
    .I1(\Rx/data_byte_0_30 ),
    .I2(\pentium4/MDR_reg/data_out [0]),
    .O(ram_in[0])
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \IO/STATE_RX__n0177_inv1  (
    .I0(reset_IBUF_1),
    .I1(\IO/STATE_RX_FSM_FFd1_280 ),
    .I2(\IO/STATE_RX_FSM_FFd5_284 ),
    .I3(\IO/STATE_RX_FSM_FFd3_282 ),
    .O(\IO/_n0177_inv )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \IO/STATE_RX_FSM_FFd5-In1  (
    .I0(\Rx/rxdone_31 ),
    .I1(\IO/STATE_RX_FSM_FFd1_280 ),
    .I2(\IO/STATE_RX_FSM_FFd5_284 ),
    .O(\IO/STATE_RX_FSM_FFd5-In )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \IO/STATE_TX_FSM_FFd6-In1  (
    .I0(\pentium4/controlStore/MIR[22] ),
    .I1(\IO/STATE_TX_FSM_FFd6_307 ),
    .I2(\IO/STATE_TX_FSM_FFd1_302 ),
    .O(\IO/STATE_TX_FSM_FFd6-In )
  );
  LUT5 #(
    .INIT ( 32'hFF080808 ))
  \IO/STATE_TX_FSM_FFd1-In1  (
    .I0(\IO/STATE_TX_FSM_FFd2_303 ),
    .I1(\Tx/tx_data_done_84 ),
    .I2(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I3(\IO/STATE_TX_FSM_FFd1_302 ),
    .I4(\pentium4/controlStore/MIR[22] ),
    .O(\IO/STATE_TX_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAAAA8 ))
  \IO/STATE_TX_STATE_TX[3]_tx_start_Select_42_o1  (
    .I0(\IO/tx_start_20 ),
    .I1(\IO/STATE_TX_FSM_FFd6_307 ),
    .I2(\IO/STATE_TX_FSM_FFd5_306 ),
    .I3(\IO/STATE_TX_FSM_FFd2_303 ),
    .I4(\IO/STATE_TX_FSM_FFd1_302 ),
    .I5(\IO/STATE_TX_FSM_FFd4_305 ),
    .O(\IO/STATE_TX[3]_tx_start_Select_42_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFEEFE ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>11  (
    .I0(\IO/STATE_TX_FSM_FFd3_304 ),
    .I1(\IO/STATE_TX_FSM_FFd5_306 ),
    .I2(\IO/STATE_TX_FSM_FFd2_303 ),
    .I3(\Tx/tx_data_done_84 ),
    .I4(\IO/STATE_TX_FSM_FFd1_302 ),
    .I5(\IO/STATE_TX_FSM_FFd4_305 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \IO/STATE_TX_FSM_FFd2-In1  (
    .I0(\IO/STATE_TX_FSM_FFd3_304 ),
    .I1(\Tx/tx_data_done_84 ),
    .I2(\IO/STATE_TX_FSM_FFd2_303 ),
    .O(\IO/STATE_TX_FSM_FFd2-In )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n0125161  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [0]),
    .I2(\IO/read_addr [0]),
    .O(\IO/_n0125 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n0125151  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [1]),
    .I2(\IO/read_addr [1]),
    .O(\IO/_n0125 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n0125141  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [2]),
    .I2(\IO/read_addr [2]),
    .O(\IO/_n0125 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n0125131  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [3]),
    .I2(\IO/read_addr [3]),
    .O(\IO/_n0125 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n0125121  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [4]),
    .I2(\IO/read_addr [4]),
    .O(\IO/_n0125 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n0125111  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [5]),
    .I2(\IO/read_addr [5]),
    .O(\IO/_n0125 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n0125101  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [6]),
    .I2(\IO/read_addr [6]),
    .O(\IO/_n0125 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n012591  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [7]),
    .I2(\IO/read_addr [7]),
    .O(\IO/_n0125 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n012581  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [8]),
    .I2(\IO/read_addr [8]),
    .O(\IO/_n0125 [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n012571  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [9]),
    .I2(\IO/read_addr [9]),
    .O(\IO/_n0125 [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n012561  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [10]),
    .I2(\IO/read_addr [10]),
    .O(\IO/_n0125 [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n012551  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [11]),
    .I2(\IO/read_addr [11]),
    .O(\IO/_n0125 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n012541  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [12]),
    .I2(\IO/read_addr [12]),
    .O(\IO/_n0125 [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n012531  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [13]),
    .I2(\IO/read_addr [13]),
    .O(\IO/_n0125 [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n012521  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [14]),
    .I2(\IO/read_addr [14]),
    .O(\IO/_n0125 [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \IO/Mmux__n012511  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/write_addr [15]),
    .I2(\IO/read_addr [15]),
    .O(\IO/_n0125 [15])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \IO/STATE_RX_FSM_FFd1-In1  (
    .I0(\IO/STATE_RX_FSM_FFd2_281 ),
    .I1(\Rx/rxdone_31 ),
    .I2(\IO/STATE_RX_FSM_FFd1_280 ),
    .O(\IO/STATE_RX_FSM_FFd1-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \IO/STATE_RX_FSM_FFd4-In1  (
    .I0(\Rx/rxdone_31 ),
    .I1(\IO/STATE_RX_FSM_FFd5_284 ),
    .O(\IO/STATE_RX_FSM_FFd4-In )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \IO/_n0184_inv1  (
    .I0(\IO/STATE_TX_FSM_FFd5_306 ),
    .I1(\IO/STATE_RX_FSM_FFd5_284 ),
    .I2(\Rx/rxdone_31 ),
    .O(\IO/_n0184_inv )
  );
  LUT4 #(
    .INIT ( 16'h555E ))
  \Rx/_n0148_inv1  (
    .I0(\Rx/state_FSM_FFd1_381 ),
    .I1(rx_IBUF_2),
    .I2(\Rx/state_FSM_FFd2_380 ),
    .I3(\Rx/state_FSM_FFd3_379 ),
    .O(\Rx/_n0148_inv )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Rx/state_FSM_FFd3-In11  (
    .I0(\Rx/state_FSM_FFd1_381 ),
    .I1(\Rx/state_FSM_FFd2_380 ),
    .I2(rx_IBUF_2),
    .I3(\Rx/state_FSM_FFd3_379 ),
    .O(\Rx/state_FSM_FFd3-In1 )
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \Rx/Mmux__n031931  (
    .I0(\Rx/state_FSM_FFd2_380 ),
    .I1(\Rx/rx_bit_index [2]),
    .I2(\Rx/rx_bit_index [0]),
    .I3(\Rx/rx_bit_index [1]),
    .O(\Rx/_n0319 [2])
  );
  LUT4 #(
    .INIT ( 16'h7A2A ))
  \Rx/state_FSM_FFd2-In1  (
    .I0(\Rx/state_FSM_FFd2_380 ),
    .I1(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .I2(\Rx/state_FSM_FFd3_379 ),
    .I3(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>_341 ),
    .O(\Rx/state_FSM_FFd2-In )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \Rx/Mmux__n031921  (
    .I0(\Rx/state_FSM_FFd2_380 ),
    .I1(\Rx/rx_bit_index [0]),
    .I2(\Rx/rx_bit_index [1]),
    .O(\Rx/_n0319 [1])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  \Rx/_n0335_inv1  (
    .I0(\Rx/state_FSM_FFd3_379 ),
    .I1(\Rx/state_FSM_FFd1_381 ),
    .I2(\Rx/state_FSM_FFd2_380 ),
    .I3(rx_IBUF_2),
    .I4(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .O(\Rx/_n0335_inv )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \Rx/_n0169_inv11  (
    .I0(\Rx/state_FSM_FFd1_381 ),
    .I1(\Rx/state_FSM_FFd2_380 ),
    .I2(\Rx/state_FSM_FFd3_379 ),
    .I3(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .O(\Rx/_n0169_inv1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \Rx/Mmux__n031911  (
    .I0(\Rx/state_FSM_FFd2_380 ),
    .I1(\Rx/rx_bit_index [0]),
    .O(\Rx/_n0319 [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Rx/state_FSM_FFd1-In1  (
    .I0(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .I1(\Rx/state_FSM_FFd3_379 ),
    .I2(\Rx/state_FSM_FFd2_380 ),
    .O(\Rx/state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_B1011  (
    .I0(\pentium4/controlStore/MIR_18_1_1215 ),
    .I1(\pentium4/controlStore/MIR_20_1_1212 ),
    .I2(\pentium4/controlStore/MIR_17_1_1210 ),
    .I3(\pentium4/controlStore/MIR_19_1_1211 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_B101 )
  );
  LUT4 #(
    .INIT ( 16'h4308 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A2511  (
    .I0(\pentium4/controlStore/MIR_20_1_1212 ),
    .I1(\pentium4/controlStore/MIR_18_1_1215 ),
    .I2(\pentium4/controlStore/MIR_19_1_1211 ),
    .I3(\pentium4/controlStore/MIR_17_1_1210 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A113 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \pentium4/PC_reg/_n0019_inv1  (
    .I0(\pentium4/PC_reg/state_510 ),
    .I1(\pentium4/controlStore/MIR[14] ),
    .I2(\pentium4/controlStore/MIR[4] ),
    .O(\pentium4/PC_reg/_n0019_inv )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A251111  (
    .I0(\pentium4/controlStore/MIR_20_1_1212 ),
    .I1(\pentium4/controlStore/MIR_19_1_1211 ),
    .I2(\pentium4/controlStore/MIR_17_1_1210 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A33211  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[18] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A332 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_AS_inv2  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_AS_inv )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \pentium4/MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT11  (
    .I0(\dmux1/B_0_126 ),
    .I1(\pentium4/controlStore/MIR[6] ),
    .I2(\pentium4/C_bus [0]),
    .O(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \pentium4/MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT21  (
    .I0(\dmux1/B_1_125 ),
    .I1(\pentium4/controlStore/MIR[6] ),
    .I2(\pentium4/C_bus [1]),
    .O(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \pentium4/MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT31  (
    .I0(\dmux1/B_2_124 ),
    .I1(\pentium4/controlStore/MIR[6] ),
    .I2(\pentium4/C_bus [2]),
    .O(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \pentium4/MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT41  (
    .I0(\dmux1/B_3_123 ),
    .I1(\pentium4/controlStore/MIR[6] ),
    .I2(\pentium4/C_bus [3]),
    .O(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \pentium4/MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT51  (
    .I0(\dmux1/B_4_122 ),
    .I1(\pentium4/controlStore/MIR[6] ),
    .I2(\pentium4/C_bus [4]),
    .O(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \pentium4/MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT61  (
    .I0(\dmux1/B_5_121 ),
    .I1(\pentium4/controlStore/MIR[6] ),
    .I2(\pentium4/C_bus [5]),
    .O(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \pentium4/MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT71  (
    .I0(\dmux1/B_6_120 ),
    .I1(\pentium4/controlStore/MIR[6] ),
    .I2(\pentium4/C_bus [6]),
    .O(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \pentium4/MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT81  (
    .I0(\dmux1/B_7_119 ),
    .I1(\pentium4/controlStore/MIR[6] ),
    .I2(\pentium4/C_bus [7]),
    .O(\pentium4/MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pentium4/MDR_reg/_n0010_inv1  (
    .I0(\pentium4/controlStore/MIR[6] ),
    .I1(\pentium4/controlStore/MIR[15] ),
    .O(\pentium4/MDR_reg/_n0010_inv )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<0>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<0> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[0] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<2>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<2> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[2] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<5>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<5> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[5] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<6>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<6> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[6] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<8>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<8> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[8] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<9>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<9> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[9] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<10>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<10> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[10] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<12>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<12> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[12] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<11>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<11> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[11] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<13>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<13> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[13] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<14>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<14> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[14] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<15>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<15> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[15] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<16>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<16> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[16] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<17>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<17> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[17] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<18>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<18> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[18] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<19>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<19> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[19] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<22>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<22> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[22] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAA2AAAAAAAA ))
  \pentium4/controlStore/_n0035<20>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<20> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0035[20] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAEAAAAAAAA ))
  \pentium4/controlStore/_n0077<6>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<1> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[24] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[27] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0077[6] )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAEAAAAAAAA ))
  \pentium4/controlStore/_n0077<4>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<3> ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[24] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[27] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0077[4] )
  );
  LUT6 #(
    .INIT ( 64'hAAA8EAAAAAAAAAAA ))
  \pentium4/controlStore/_n0077<3>1  (
    .I0(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<4> ),
    .I1(\pentium4/controlStore/MIR[27] ),
    .I2(\pentium4/controlStore/MIR[24] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[23] ),
    .I5(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/_n0077[3] )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>2  (
    .I0(\pentium4/controlStore/MIR[24] ),
    .I1(\pentium4/controlStore/MIR[25] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[23] ),
    .I4(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \pentium4/controlStore/addr[7]_GND_10_o_equal_12_o<7>1  (
    .I0(\pentium4/controlStore/MIR[23] ),
    .I1(\pentium4/controlStore/MIR[24] ),
    .I2(\pentium4/controlStore/MIR[25] ),
    .I3(\pentium4/controlStore/MIR[27] ),
    .I4(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .O(\pentium4/controlStore/addr[7]_GND_10_o_equal_12_o )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>11  (
    .I0(\pentium4/controlStore/MIR[28] ),
    .I1(\pentium4/controlStore/MIR[26] ),
    .I2(\pentium4/controlStore/MIR[30] ),
    .I3(\pentium4/controlStore/MIR[29] ),
    .O(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 )
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \pentium4/controlStore/_n0075<1>1  (
    .I0(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o ),
    .I1(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<23> ),
    .I2(\pentium4/controlStore/addr[7]_GND_10_o_equal_12_o ),
    .I3(\pentium4/MBRU_reg/ins_out [0]),
    .O(\pentium4/controlStore/_n0075 [1])
  );
  LUT4 #(
    .INIT ( 16'h2272 ))
  \pentium4/controlStore/_n00761  (
    .I0(\pentium4/controlStore/addr[7]_GND_10_o_equal_12_o ),
    .I1(\pentium4/ALU_24bit/Z_flag_559 ),
    .I2(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<7> ),
    .I3(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o ),
    .O(\pentium4/controlStore/_n0076 )
  );
  LUT5 #(
    .INIT ( 32'hF7F22722 ))
  \pentium4/controlStore/_n00721  (
    .I0(\pentium4/controlStore/addr[7]_GND_10_o_equal_12_o ),
    .I1(\pentium4/ALU_24bit/Z_flag_559 ),
    .I2(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o ),
    .I3(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<24> ),
    .I4(\pentium4/MBRU_reg/ins_out [1]),
    .O(\pentium4/controlStore/_n0072 )
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \pentium4/controlStore/_n0071<6>1  (
    .I0(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o ),
    .I1(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<25> ),
    .I2(\pentium4/controlStore/addr[7]_GND_10_o_equal_12_o ),
    .I3(\pentium4/MBRU_reg/ins_out [2]),
    .O(\pentium4/controlStore/_n0071 [6])
  );
  LUT4 #(
    .INIT ( 16'hFEBA ))
  \pentium4/controlStore/_n0071<5>1  (
    .I0(\pentium4/controlStore/addr[7]_GND_10_o_equal_12_o ),
    .I1(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o ),
    .I2(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<26> ),
    .I3(\pentium4/MBRU_reg/ins_out [3]),
    .O(\pentium4/controlStore/_n0071 [5])
  );
  LUT4 #(
    .INIT ( 16'hFEBA ))
  \pentium4/controlStore/_n0071<4>1  (
    .I0(\pentium4/controlStore/addr[7]_GND_10_o_equal_12_o ),
    .I1(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o ),
    .I2(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<27> ),
    .I3(\pentium4/MBRU_reg/ins_out [4]),
    .O(\pentium4/controlStore/_n0071 [4])
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \pentium4/controlStore/_n0071<3>1  (
    .I0(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o ),
    .I1(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<28> ),
    .I2(\pentium4/controlStore/addr[7]_GND_10_o_equal_12_o ),
    .I3(\pentium4/MBRU_reg/ins_out [5]),
    .O(\pentium4/controlStore/_n0071 [3])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \pentium4/controlStore/state_FSM_FFd1-In1  (
    .I0(\pentium4/controlStore/state_FSM_FFd1_798 ),
    .I1(\pentium4/PC_reg/state_510 ),
    .I2(\pentium4/controlStore/state_FSM_FFd2_799 ),
    .O(\pentium4/controlStore/state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  \pentium4/controlStore/state_FSM_FFd2-In1  (
    .I0(\pentium4/PC_reg/state_510 ),
    .I1(\pentium4/controlStore/state_FSM_FFd1_798 ),
    .I2(\pentium4/controlStore/state_FSM_FFd2_799 ),
    .O(\pentium4/controlStore/state_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/controlStore/state_state[1]_PWR_10_o_equal_7_o1  (
    .I0(\pentium4/controlStore/state_FSM_FFd1_798 ),
    .I1(\pentium4/controlStore/state_FSM_FFd2_799 ),
    .O(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Tx/state_FSM_FFd2-In1  (
    .I0(\Tx/state_FSM_FFd2_922 ),
    .I1(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ),
    .I2(\Tx/state_FSM_FFd3_921 ),
    .O(\Tx/state_FSM_FFd2-In )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \Tx/Mmux__n011121  (
    .I0(\Tx/state_FSM_FFd2_922 ),
    .I1(\Tx/tx_bit_index [0]),
    .I2(\Tx/tx_bit_index [1]),
    .O(\Tx/_n0111 [2])
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \Tx/_n0125_inv1  (
    .I0(\Tx/state_FSM_FFd3_921 ),
    .I1(\Tx/state_FSM_FFd1_923 ),
    .I2(\Tx/state_FSM_FFd2_922 ),
    .I3(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ),
    .O(\Tx/_n0125_inv )
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \Tx/Mmux__n011111  (
    .I0(\Tx/state_FSM_FFd2_922 ),
    .I1(\Tx/tx_bit_index [2]),
    .I2(\Tx/tx_bit_index [0]),
    .I3(\Tx/tx_bit_index [1]),
    .O(\Tx/_n0111 [1])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \Tx/state_FSM_FFd3-In11  (
    .I0(\Tx/state_FSM_FFd2_922 ),
    .I1(\Tx/state_FSM_FFd1_923 ),
    .I2(\IO/tx_start_20 ),
    .I3(\Tx/state_FSM_FFd3_921 ),
    .O(\Tx/state_FSM_FFd3-In1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \Tx/Mmux__n011131  (
    .I0(\Tx/state_FSM_FFd2_922 ),
    .I1(\Tx/tx_bit_index [0]),
    .O(\Tx/_n0111 [3])
  );
  LUT5 #(
    .INIT ( 32'h80FF8080 ))
  \Tx/state_FSM_FFd1-In1  (
    .I0(\Tx/state_FSM_FFd2_922 ),
    .I1(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ),
    .I2(\Tx/state_FSM_FFd3_921 ),
    .I3(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>_869 ),
    .I4(\Tx/state_FSM_FFd1_923 ),
    .O(\Tx/state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \Tx/_n0077_inv1  (
    .I0(\Tx/state_FSM_FFd3_921 ),
    .I1(\Tx/state_FSM_FFd2_922 ),
    .I2(\Tx/state_FSM_FFd1_923 ),
    .O(\Tx/_n0077_inv )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_SW0  (
    .I0(\clk_gen/counter [6]),
    .I1(\clk_gen/counter [0]),
    .I2(\clk_gen/counter [1]),
    .O(N3)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv  (
    .I0(\clk_gen/counter [5]),
    .I1(\clk_gen/counter [4]),
    .I2(\clk_gen/counter [3]),
    .I3(\clk_gen/counter [2]),
    .I4(\clk_gen/counter [7]),
    .I5(N3),
    .O(\clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \IO/read_addr[16]_GND_15_o_LessThan_24_o211  (
    .I0(\IO/read_addr [12]),
    .I1(\IO/read_addr [13]),
    .I2(\IO/read_addr [1]),
    .I3(\IO/read_addr [0]),
    .I4(\IO/read_addr [5]),
    .I5(\IO/read_addr [4]),
    .O(\IO/read_addr[16]_GND_15_o_LessThan_24_o211_933 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \IO/read_addr[16]_GND_15_o_LessThan_24_o212  (
    .I0(\IO/read_addr [2]),
    .I1(\IO/read_addr [3]),
    .I2(\IO/read_addr [6]),
    .I3(\IO/read_addr [11]),
    .I4(\IO/read_addr [10]),
    .I5(\IO/read_addr [9]),
    .O(\IO/read_addr[16]_GND_15_o_LessThan_24_o212_934 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFBFFFFFFF ))
  \IO/read_addr[16]_GND_15_o_LessThan_24_o213  (
    .I0(\IO/read_addr[16]_GND_15_o_LessThan_24_o212_934 ),
    .I1(\IO/read_addr [7]),
    .I2(\IO/read_addr [8]),
    .I3(\IO/read_addr [15]),
    .I4(\IO/read_addr [14]),
    .I5(\IO/read_addr[16]_GND_15_o_LessThan_24_o211_933 ),
    .O(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \IO/GND_15_o_GND_15_o_equal_6_o<16>1  (
    .I0(\IO/write_addr [0]),
    .I1(\IO/write_addr [1]),
    .I2(\IO/write_addr [2]),
    .I3(\IO/write_addr [3]),
    .I4(\IO/write_addr [16]),
    .I5(\IO/write_addr [4]),
    .O(\IO/GND_15_o_GND_15_o_equal_6_o_0 [16])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \IO/GND_15_o_GND_15_o_equal_6_o<16>2  (
    .I0(\IO/write_addr [6]),
    .I1(\IO/write_addr [5]),
    .I2(\IO/write_addr [7]),
    .I3(\IO/write_addr [8]),
    .I4(\IO/write_addr [9]),
    .I5(\IO/write_addr [10]),
    .O(\IO/GND_15_o_GND_15_o_equal_6_o<16>1_936 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \IO/GND_15_o_GND_15_o_equal_6_o<16>3  (
    .I0(\IO/write_addr [12]),
    .I1(\IO/write_addr [11]),
    .I2(\IO/write_addr [13]),
    .I3(\IO/write_addr [14]),
    .I4(\IO/write_addr [15]),
    .O(\IO/GND_15_o_GND_15_o_equal_6_o<16>2_937 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \IO/GND_15_o_GND_15_o_equal_6_o<16>4  (
    .I0(\IO/GND_15_o_GND_15_o_equal_6_o_0 [16]),
    .I1(\IO/GND_15_o_GND_15_o_equal_6_o<16>1_936 ),
    .I2(\IO/GND_15_o_GND_15_o_equal_6_o<16>2_937 ),
    .O(\IO/GND_15_o_GND_15_o_equal_6_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \Rx/state_FSM_FFd3-In_SW0  (
    .I0(\Rx/rx_bit_index [2]),
    .I1(\Rx/rx_bit_index [1]),
    .I2(\Rx/rx_bit_index [0]),
    .O(N7)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF20287078 ))
  \Rx/state_FSM_FFd3-In  (
    .I0(\Rx/state_FSM_FFd2_380 ),
    .I1(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .I2(\Rx/state_FSM_FFd3_379 ),
    .I3(N7),
    .I4(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>_341 ),
    .I5(\Rx/state_FSM_FFd3-In1 ),
    .O(\Rx/state_FSM_FFd3-In_356 )
  );
  LUT5 #(
    .INIT ( 32'hBA30AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A331  (
    .I0(\pentium4/AC_reg/d_out [2]),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I4(\pentium4/B_bus [2]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A33 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A333  (
    .I0(\pentium4/AC_reg/d_out [1]),
    .I1(\pentium4/controlStore/MIR_18_1_1215 ),
    .I2(\pentium4/controlStore/MIR_17_1_1210 ),
    .I3(\pentium4/controlStore/MIR_19_1_1211 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A333_940 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A413  (
    .I0(\pentium4/AC_reg/d_out [5]),
    .I1(\pentium4/controlStore/MIR_18_2_1219 ),
    .I2(\pentium4/controlStore/MIR_17_2_1221 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A412 )
  );
  LUT5 #(
    .INIT ( 32'hBA30AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A371  (
    .I0(\pentium4/AC_reg/d_out [4]),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I4(\pentium4/B_bus [4]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A37 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A373  (
    .I0(\pentium4/AC_reg/d_out [3]),
    .I1(\pentium4/controlStore/MIR_18_2_1219 ),
    .I2(\pentium4/controlStore/MIR_17_2_1221 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A372 )
  );
  LUT5 #(
    .INIT ( 32'hBA30AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A351  (
    .I0(\pentium4/AC_reg/d_out [3]),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I4(\pentium4/B_bus [3]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A35 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A353  (
    .I0(\pentium4/AC_reg/d_out [2]),
    .I1(\pentium4/controlStore/MIR_18_2_1219 ),
    .I2(\pentium4/controlStore/MIR_17_2_1221 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A352 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A433  (
    .I0(\pentium4/AC_reg/d_out [6]),
    .I1(\pentium4/controlStore/MIR_18_2_1219 ),
    .I2(\pentium4/controlStore/MIR_17_2_1221 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A432 )
  );
  LUT5 #(
    .INIT ( 32'hBA30AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A391  (
    .I0(\pentium4/AC_reg/d_out [5]),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I4(\pentium4/B_bus [5]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A39 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A393  (
    .I0(\pentium4/AC_reg/d_out [4]),
    .I1(\pentium4/controlStore/MIR_18_2_1219 ),
    .I2(\pentium4/controlStore/MIR_17_2_1221 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A392 )
  );
  LUT5 #(
    .INIT ( 32'hBA30AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A271  (
    .I0(\pentium4/AC_reg/d_out [21]),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I4(\pentium4/B_bus [21]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A27 )
  );
  LUT5 #(
    .INIT ( 32'hBA30AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A311  (
    .I0(\pentium4/AC_reg/d_out [23]),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I4(\pentium4/B_bus [23]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A31_950 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A312  (
    .I0(\pentium4/controlStore/MIR[17] ),
    .I1(\pentium4/AC_reg/d_out [21]),
    .I2(\pentium4/AC_reg/d_out [15]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A311_951 )
  );
  LUT6 #(
    .INIT ( 64'h23CC230020CC2000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A313  (
    .I0(\pentium4/AC_reg/d_out [22]),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A311_951 ),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<23> ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A312_952 )
  );
  LUT5 #(
    .INIT ( 32'hBA30AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A291  (
    .I0(\pentium4/AC_reg/d_out [22]),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I4(\pentium4/B_bus [22]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A29 )
  );
  LUT5 #(
    .INIT ( 32'hBA30AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A251  (
    .I0(\pentium4/AC_reg/d_out [20]),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I4(\pentium4/B_bus [20]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A25 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A91  (
    .I0(\pentium4/AC_reg/d_out [13]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/B_bus [13]),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A9 )
  );
  LUT5 #(
    .INIT ( 32'h0A00C000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A92  (
    .I0(\pentium4/AC_reg/d_out [12]),
    .I1(\pentium4/AC_reg/d_out [5]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A91_956 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A211  (
    .I0(\pentium4/AC_reg/d_out [19]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/B_bus [19]),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A21 )
  );
  LUT5 #(
    .INIT ( 32'h28200800 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A212  (
    .I0(\pentium4/controlStore/MIR[17] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[18] ),
    .I3(\pentium4/AC_reg/d_out [11]),
    .I4(\pentium4/AC_reg/d_out [18]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A211_958 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A71  (
    .I0(\pentium4/AC_reg/d_out [12]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/B_bus [12]),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A7 )
  );
  LUT5 #(
    .INIT ( 32'h0A00C000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A72  (
    .I0(\pentium4/AC_reg/d_out [11]),
    .I1(\pentium4/AC_reg/d_out [4]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A71_960 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A191  (
    .I0(\pentium4/AC_reg/d_out [18]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/B_bus [18]),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A19 )
  );
  LUT5 #(
    .INIT ( 32'h28200800 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A192  (
    .I0(\pentium4/controlStore/MIR[17] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[18] ),
    .I3(\pentium4/AC_reg/d_out [10]),
    .I4(\pentium4/AC_reg/d_out [17]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A191_962 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A51  (
    .I0(\pentium4/AC_reg/d_out [11]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/B_bus [11]),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A5 )
  );
  LUT5 #(
    .INIT ( 32'h0C00A000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A52  (
    .I0(\pentium4/AC_reg/d_out [3]),
    .I1(\pentium4/AC_reg/d_out [10]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A51_964 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A171  (
    .I0(\pentium4/AC_reg/d_out [17]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/B_bus [17]),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A17 )
  );
  LUT5 #(
    .INIT ( 32'h28200800 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A172  (
    .I0(\pentium4/controlStore/MIR[17] ),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/AC_reg/d_out [16]),
    .I4(\pentium4/AC_reg/d_out [9]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A171_966 )
  );
  LUT5 #(
    .INIT ( 32'h0A00C000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A32  (
    .I0(\pentium4/AC_reg/d_out [9]),
    .I1(\pentium4/AC_reg/d_out [2]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A32_968 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A151  (
    .I0(\pentium4/AC_reg/d_out [16]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/B_bus [16]),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A15 )
  );
  LUT5 #(
    .INIT ( 32'h0C00A000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A152  (
    .I0(\pentium4/AC_reg/d_out [8]),
    .I1(\pentium4/AC_reg/d_out [15]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A151_970 )
  );
  LUT5 #(
    .INIT ( 32'h0A00C000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A472  (
    .I0(\pentium4/AC_reg/d_out [8]),
    .I1(\pentium4/AC_reg/d_out [1]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A471_972 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A131  (
    .I0(\pentium4/AC_reg/d_out [15]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/B_bus [15]),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A13_973 )
  );
  LUT5 #(
    .INIT ( 32'h0C00A000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A132  (
    .I0(\pentium4/AC_reg/d_out [7]),
    .I1(\pentium4/AC_reg/d_out [14]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A131_974 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A451  (
    .I0(\pentium4/AC_reg/d_out [8]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/B_bus [8]),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A45 )
  );
  LUT5 #(
    .INIT ( 32'h0A00C000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A452  (
    .I0(\pentium4/AC_reg/d_out [7]),
    .I1(\pentium4/AC_reg/d_out [0]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A451_976 )
  );
  LUT6 #(
    .INIT ( 64'h00CF00A000C000A0 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A453  (
    .I0(\pentium4/AC_reg/d_out [6]),
    .I1(\pentium4/AC_reg/d_out [12]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<8> ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A452_977 )
  );
  LUT4 #(
    .INIT ( 16'hF5F4 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A454  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A451_976 ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A45 ),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A452_977 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [8])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A111  (
    .I0(\pentium4/AC_reg/d_out [14]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/B_bus [14]),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A11 )
  );
  LUT5 #(
    .INIT ( 32'h0C00A000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A112  (
    .I0(\pentium4/AC_reg/d_out [6]),
    .I1(\pentium4/AC_reg/d_out [13]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A111_979 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<9>1  (
    .I0(\pentium4/R1_reg/d_out [9]),
    .I1(\pentium4/R3_reg/d_out [9]),
    .I2(\pentium4/R4_reg/d_out [9]),
    .I3(\pentium4/R2_reg/d_out [9]),
    .I4(\pentium4/controlStore/MIR[1] ),
    .I5(\pentium4/controlStore/MIR[0] ),
    .O(\pentium4/decoder_4to16/_n0085 [9])
  );
  LUT6 #(
    .INIT ( 64'h2226222200040000 ))
  \pentium4/decoder_4to16/_n0085<9>2  (
    .I0(\pentium4/controlStore/MIR[2] ),
    .I1(\pentium4/controlStore/MIR[3] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[0] ),
    .I4(\pentium4/R_reg/d_out [9]),
    .I5(\pentium4/decoder_4to16/_n0085 [9]),
    .O(\pentium4/B_bus [9])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<23>1  (
    .I0(\pentium4/R1_reg/d_out [23]),
    .I1(\pentium4/R3_reg/d_out [23]),
    .I2(\pentium4/R4_reg/d_out [23]),
    .I3(\pentium4/R2_reg/d_out [23]),
    .I4(\pentium4/controlStore/MIR[1] ),
    .I5(\pentium4/controlStore/MIR[0] ),
    .O(\pentium4/decoder_4to16/_n0085 [23])
  );
  LUT6 #(
    .INIT ( 64'h2226222200040000 ))
  \pentium4/decoder_4to16/_n0085<23>2  (
    .I0(\pentium4/controlStore/MIR[2] ),
    .I1(\pentium4/controlStore/MIR[3] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[0] ),
    .I4(\pentium4/R_reg/d_out [23]),
    .I5(\pentium4/decoder_4to16/_n0085 [23]),
    .O(\pentium4/B_bus [23])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<22>1  (
    .I0(\pentium4/R1_reg/d_out [22]),
    .I1(\pentium4/R3_reg/d_out [22]),
    .I2(\pentium4/R4_reg/d_out [22]),
    .I3(\pentium4/R2_reg/d_out [22]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [22])
  );
  LUT6 #(
    .INIT ( 64'h00CC02CC00000200 ))
  \pentium4/decoder_4to16/_n0085<22>2  (
    .I0(\pentium4/R_reg/d_out [22]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .I5(\pentium4/decoder_4to16/_n0085 [22]),
    .O(\pentium4/B_bus [22])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<21>1  (
    .I0(\pentium4/R1_reg/d_out [21]),
    .I1(\pentium4/R3_reg/d_out [21]),
    .I2(\pentium4/R4_reg/d_out [21]),
    .I3(\pentium4/R2_reg/d_out [21]),
    .I4(\pentium4/controlStore/MIR[1] ),
    .I5(\pentium4/controlStore/MIR[0] ),
    .O(\pentium4/decoder_4to16/_n0085 [21])
  );
  LUT6 #(
    .INIT ( 64'h2226222200040000 ))
  \pentium4/decoder_4to16/_n0085<21>2  (
    .I0(\pentium4/controlStore/MIR[2] ),
    .I1(\pentium4/controlStore/MIR[3] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[0] ),
    .I4(\pentium4/R_reg/d_out [21]),
    .I5(\pentium4/decoder_4to16/_n0085 [21]),
    .O(\pentium4/B_bus [21])
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \pentium4/decoder_4to16/_n0085<20>1  (
    .I0(\pentium4/R1_reg/d_out [20]),
    .I1(\pentium4/R3_reg/d_out [20]),
    .I2(\pentium4/R4_reg/d_out [20]),
    .I3(\pentium4/R2_reg/d_out [20]),
    .I4(\pentium4/controlStore/MIR_0_1_1222 ),
    .I5(\pentium4/controlStore/MIR[1] ),
    .O(\pentium4/decoder_4to16/_n0085 [20])
  );
  LUT6 #(
    .INIT ( 64'h2226222200040000 ))
  \pentium4/decoder_4to16/_n0085<20>2  (
    .I0(\pentium4/controlStore/MIR[2] ),
    .I1(\pentium4/controlStore/MIR[3] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[0] ),
    .I4(\pentium4/R_reg/d_out [20]),
    .I5(\pentium4/decoder_4to16/_n0085 [20]),
    .O(\pentium4/B_bus [20])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<19>1  (
    .I0(\pentium4/R1_reg/d_out [19]),
    .I1(\pentium4/R3_reg/d_out [19]),
    .I2(\pentium4/R4_reg/d_out [19]),
    .I3(\pentium4/R2_reg/d_out [19]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [19])
  );
  LUT6 #(
    .INIT ( 64'h00CC02CC00000200 ))
  \pentium4/decoder_4to16/_n0085<19>2  (
    .I0(\pentium4/R_reg/d_out [19]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .I5(\pentium4/decoder_4to16/_n0085 [19]),
    .O(\pentium4/B_bus [19])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<18>1  (
    .I0(\pentium4/R1_reg/d_out [18]),
    .I1(\pentium4/R3_reg/d_out [18]),
    .I2(\pentium4/R4_reg/d_out [18]),
    .I3(\pentium4/R2_reg/d_out [18]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [18])
  );
  LUT6 #(
    .INIT ( 64'h00CC02CC00000200 ))
  \pentium4/decoder_4to16/_n0085<18>2  (
    .I0(\pentium4/R_reg/d_out [18]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .I5(\pentium4/decoder_4to16/_n0085 [18]),
    .O(\pentium4/B_bus [18])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<17>1  (
    .I0(\pentium4/R1_reg/d_out [17]),
    .I1(\pentium4/R3_reg/d_out [17]),
    .I2(\pentium4/R4_reg/d_out [17]),
    .I3(\pentium4/R2_reg/d_out [17]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [17])
  );
  LUT6 #(
    .INIT ( 64'h00CC02CC00000200 ))
  \pentium4/decoder_4to16/_n0085<17>2  (
    .I0(\pentium4/R_reg/d_out [17]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .I5(\pentium4/decoder_4to16/_n0085 [17]),
    .O(\pentium4/B_bus [17])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<16>1  (
    .I0(\pentium4/R1_reg/d_out [16]),
    .I1(\pentium4/R3_reg/d_out [16]),
    .I2(\pentium4/R4_reg/d_out [16]),
    .I3(\pentium4/R2_reg/d_out [16]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [16])
  );
  LUT6 #(
    .INIT ( 64'h00CC02CC00000200 ))
  \pentium4/decoder_4to16/_n0085<16>2  (
    .I0(\pentium4/R_reg/d_out [16]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .I5(\pentium4/decoder_4to16/_n0085 [16]),
    .O(\pentium4/B_bus [16])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<15>1  (
    .I0(\pentium4/R1_reg/d_out [15]),
    .I1(\pentium4/R3_reg/d_out [15]),
    .I2(\pentium4/R4_reg/d_out [15]),
    .I3(\pentium4/R2_reg/d_out [15]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [15])
  );
  LUT6 #(
    .INIT ( 64'h00CC02CC00000200 ))
  \pentium4/decoder_4to16/_n0085<15>2  (
    .I0(\pentium4/R_reg/d_out [15]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .I5(\pentium4/decoder_4to16/_n0085 [15]),
    .O(\pentium4/B_bus [15])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<14>1  (
    .I0(\pentium4/R1_reg/d_out [14]),
    .I1(\pentium4/R3_reg/d_out [14]),
    .I2(\pentium4/R4_reg/d_out [14]),
    .I3(\pentium4/R2_reg/d_out [14]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [14])
  );
  LUT6 #(
    .INIT ( 64'h00CC02CC00000200 ))
  \pentium4/decoder_4to16/_n0085<14>2  (
    .I0(\pentium4/R_reg/d_out [14]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .I5(\pentium4/decoder_4to16/_n0085 [14]),
    .O(\pentium4/B_bus [14])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<13>1  (
    .I0(\pentium4/R1_reg/d_out [13]),
    .I1(\pentium4/R3_reg/d_out [13]),
    .I2(\pentium4/R4_reg/d_out [13]),
    .I3(\pentium4/R2_reg/d_out [13]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [13])
  );
  LUT6 #(
    .INIT ( 64'h00CC02CC00000200 ))
  \pentium4/decoder_4to16/_n0085<13>2  (
    .I0(\pentium4/R_reg/d_out [13]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .I5(\pentium4/decoder_4to16/_n0085 [13]),
    .O(\pentium4/B_bus [13])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<12>1  (
    .I0(\pentium4/R1_reg/d_out [12]),
    .I1(\pentium4/R3_reg/d_out [12]),
    .I2(\pentium4/R4_reg/d_out [12]),
    .I3(\pentium4/R2_reg/d_out [12]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [12])
  );
  LUT6 #(
    .INIT ( 64'h00CC02CC00000200 ))
  \pentium4/decoder_4to16/_n0085<12>2  (
    .I0(\pentium4/R_reg/d_out [12]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .I5(\pentium4/decoder_4to16/_n0085 [12]),
    .O(\pentium4/B_bus [12])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<11>1  (
    .I0(\pentium4/R1_reg/d_out [11]),
    .I1(\pentium4/R3_reg/d_out [11]),
    .I2(\pentium4/R4_reg/d_out [11]),
    .I3(\pentium4/R2_reg/d_out [11]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [11])
  );
  LUT6 #(
    .INIT ( 64'h00CC02CC00000200 ))
  \pentium4/decoder_4to16/_n0085<11>2  (
    .I0(\pentium4/R_reg/d_out [11]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .I5(\pentium4/decoder_4to16/_n0085 [11]),
    .O(\pentium4/B_bus [11])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<10>1  (
    .I0(\pentium4/R1_reg/d_out [10]),
    .I1(\pentium4/R3_reg/d_out [10]),
    .I2(\pentium4/R4_reg/d_out [10]),
    .I3(\pentium4/R2_reg/d_out [10]),
    .I4(\pentium4/controlStore/MIR[1] ),
    .I5(\pentium4/controlStore/MIR[0] ),
    .O(\pentium4/decoder_4to16/_n0085 [10])
  );
  LUT6 #(
    .INIT ( 64'h2226222200040000 ))
  \pentium4/decoder_4to16/_n0085<10>2  (
    .I0(\pentium4/controlStore/MIR[2] ),
    .I1(\pentium4/controlStore/MIR[3] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[0] ),
    .I4(\pentium4/R_reg/d_out [10]),
    .I5(\pentium4/decoder_4to16/_n0085 [10]),
    .O(\pentium4/B_bus [10])
  );
  LUT6 #(
    .INIT ( 64'hCCCCAAAAFF00F0F0 ))
  \pentium4/decoder_4to16/_n0087<7>1  (
    .I0(\pentium4/R2_reg/d_out [7]),
    .I1(\pentium4/R4_reg/d_out [7]),
    .I2(\pentium4/MDR_reg/data_out [7]),
    .I3(\pentium4/MBRU_reg/ins_out [7]),
    .I4(\pentium4/controlStore/MIR_1_3_1217 ),
    .I5(\pentium4/controlStore/MIR_2_3_1223 ),
    .O(\pentium4/decoder_4to16/_n0087 [7])
  );
  LUT5 #(
    .INIT ( 32'hCCAAF000 ))
  \pentium4/decoder_4to16/_n0087<7>2  (
    .I0(\pentium4/R1_reg/d_out [7]),
    .I1(\pentium4/R3_reg/d_out [7]),
    .I2(\pentium4/PC_reg/ins_addr [7]),
    .I3(\pentium4/controlStore/MIR_1_3_1217 ),
    .I4(\pentium4/controlStore/MIR_2_3_1223 ),
    .O(\pentium4/decoder_4to16/_n0087<7>1_996 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \pentium4/decoder_4to16/_n0087<7>3  (
    .I0(\pentium4/R_reg/d_out [7]),
    .I1(\pentium4/controlStore/MIR_3_1_1209 ),
    .I2(\pentium4/controlStore/MIR_2_3_1223 ),
    .I3(\pentium4/controlStore/MIR_1_4_1224 ),
    .O(\pentium4/decoder_4to16/_n0087<7>2_997 )
  );
  LUT5 #(
    .INIT ( 32'h73735140 ))
  \pentium4/decoder_4to16/_n0087<7>4  (
    .I0(\pentium4/controlStore/MIR_3_3_1226 ),
    .I1(\pentium4/controlStore/MIR[0] ),
    .I2(\pentium4/decoder_4to16/_n0087 [7]),
    .I3(\pentium4/decoder_4to16/_n0087<7>1_996 ),
    .I4(\pentium4/decoder_4to16/_n0087<7>2_997 ),
    .O(\pentium4/B_bus [7])
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00AAAAF0F0 ))
  \pentium4/decoder_4to16/_n0087<6>1  (
    .I0(\pentium4/R2_reg/d_out [6]),
    .I1(\pentium4/R4_reg/d_out [6]),
    .I2(\pentium4/MDR_reg/data_out [6]),
    .I3(\pentium4/MBRU_reg/ins_out [6]),
    .I4(\pentium4/controlStore/MIR_2_2_1218 ),
    .I5(\pentium4/controlStore/MIR_1_3_1217 ),
    .O(\pentium4/decoder_4to16/_n0087 [6])
  );
  LUT5 #(
    .INIT ( 32'hCCF0AA00 ))
  \pentium4/decoder_4to16/_n0087<6>2  (
    .I0(\pentium4/R1_reg/d_out [6]),
    .I1(\pentium4/R3_reg/d_out [6]),
    .I2(\pentium4/PC_reg/ins_addr [6]),
    .I3(\pentium4/controlStore/MIR_2_3_1223 ),
    .I4(\pentium4/controlStore/MIR_1_1_1208 ),
    .O(\pentium4/decoder_4to16/_n0087<6>1_999 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \pentium4/decoder_4to16/_n0087<6>3  (
    .I0(\pentium4/R_reg/d_out [6]),
    .I1(\pentium4/controlStore/MIR_1_2_1213 ),
    .I2(\pentium4/controlStore/MIR_3_1_1209 ),
    .I3(\pentium4/controlStore/MIR_2_1_1214 ),
    .O(\pentium4/decoder_4to16/_n0087<6>2_1000 )
  );
  LUT5 #(
    .INIT ( 32'h73517340 ))
  \pentium4/decoder_4to16/_n0087<6>4  (
    .I0(\pentium4/controlStore/MIR_3_3_1226 ),
    .I1(\pentium4/controlStore/MIR_0_1_1222 ),
    .I2(\pentium4/decoder_4to16/_n0087 [6]),
    .I3(\pentium4/decoder_4to16/_n0087<6>2_1000 ),
    .I4(\pentium4/decoder_4to16/_n0087<6>1_999 ),
    .O(\pentium4/B_bus [6])
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00AAAAF0F0 ))
  \pentium4/decoder_4to16/_n0087<5>1  (
    .I0(\pentium4/R2_reg/d_out [5]),
    .I1(\pentium4/R4_reg/d_out [5]),
    .I2(\pentium4/MDR_reg/data_out [5]),
    .I3(\pentium4/MBRU_reg/ins_out [5]),
    .I4(\pentium4/controlStore/MIR_2_2_1218 ),
    .I5(\pentium4/controlStore/MIR_1_1_1208 ),
    .O(\pentium4/decoder_4to16/_n0087 [5])
  );
  LUT5 #(
    .INIT ( 32'hCCF0AA00 ))
  \pentium4/decoder_4to16/_n0087<5>2  (
    .I0(\pentium4/R1_reg/d_out [5]),
    .I1(\pentium4/R3_reg/d_out [5]),
    .I2(\pentium4/PC_reg/ins_addr [5]),
    .I3(\pentium4/controlStore/MIR_2_1_1214 ),
    .I4(\pentium4/controlStore/MIR_1_1_1208 ),
    .O(\pentium4/decoder_4to16/_n0087<5>1_1002 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \pentium4/decoder_4to16/_n0087<5>3  (
    .I0(\pentium4/R_reg/d_out [5]),
    .I1(\pentium4/controlStore/MIR_1_2_1213 ),
    .I2(\pentium4/controlStore/MIR_3_1_1209 ),
    .I3(\pentium4/controlStore/MIR_2_1_1214 ),
    .O(\pentium4/decoder_4to16/_n0087<5>2_1003 )
  );
  LUT5 #(
    .INIT ( 32'h73735140 ))
  \pentium4/decoder_4to16/_n0087<5>4  (
    .I0(\pentium4/controlStore/MIR_3_2_1220 ),
    .I1(\pentium4/controlStore/MIR_0_1_1222 ),
    .I2(\pentium4/decoder_4to16/_n0087 [5]),
    .I3(\pentium4/decoder_4to16/_n0087<5>1_1002 ),
    .I4(\pentium4/decoder_4to16/_n0087<5>2_1003 ),
    .O(\pentium4/B_bus [5])
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00AAAAF0F0 ))
  \pentium4/decoder_4to16/_n0087<4>1  (
    .I0(\pentium4/R2_reg/d_out [4]),
    .I1(\pentium4/R4_reg/d_out [4]),
    .I2(\pentium4/MDR_reg/data_out [4]),
    .I3(\pentium4/MBRU_reg/ins_out [4]),
    .I4(\pentium4/controlStore/MIR_2_2_1218 ),
    .I5(\pentium4/controlStore/MIR_1_1_1208 ),
    .O(\pentium4/decoder_4to16/_n0087 [4])
  );
  LUT5 #(
    .INIT ( 32'hCCF0AA00 ))
  \pentium4/decoder_4to16/_n0087<4>2  (
    .I0(\pentium4/R1_reg/d_out [4]),
    .I1(\pentium4/R3_reg/d_out [4]),
    .I2(\pentium4/PC_reg/ins_addr [4]),
    .I3(\pentium4/controlStore/MIR_2_1_1214 ),
    .I4(\pentium4/controlStore/MIR_1_1_1208 ),
    .O(\pentium4/decoder_4to16/_n0087<4>1_1005 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \pentium4/decoder_4to16/_n0087<4>3  (
    .I0(\pentium4/R_reg/d_out [4]),
    .I1(\pentium4/controlStore/MIR_1_2_1213 ),
    .I2(\pentium4/controlStore/MIR_3_1_1209 ),
    .I3(\pentium4/controlStore/MIR_2_1_1214 ),
    .O(\pentium4/decoder_4to16/_n0087<4>2_1006 )
  );
  LUT5 #(
    .INIT ( 32'h73735140 ))
  \pentium4/decoder_4to16/_n0087<4>4  (
    .I0(\pentium4/controlStore/MIR_3_2_1220 ),
    .I1(\pentium4/controlStore/MIR_0_1_1222 ),
    .I2(\pentium4/decoder_4to16/_n0087 [4]),
    .I3(\pentium4/decoder_4to16/_n0087<4>1_1005 ),
    .I4(\pentium4/decoder_4to16/_n0087<4>2_1006 ),
    .O(\pentium4/B_bus [4])
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00AAAAF0F0 ))
  \pentium4/decoder_4to16/_n0087<3>1  (
    .I0(\pentium4/R2_reg/d_out [3]),
    .I1(\pentium4/R4_reg/d_out [3]),
    .I2(\pentium4/MDR_reg/data_out [3]),
    .I3(\pentium4/MBRU_reg/ins_out [3]),
    .I4(\pentium4/controlStore/MIR_2_2_1218 ),
    .I5(\pentium4/controlStore/MIR_1_1_1208 ),
    .O(\pentium4/decoder_4to16/_n0087 [3])
  );
  LUT5 #(
    .INIT ( 32'hCCF0AA00 ))
  \pentium4/decoder_4to16/_n0087<3>2  (
    .I0(\pentium4/R1_reg/d_out [3]),
    .I1(\pentium4/R3_reg/d_out [3]),
    .I2(\pentium4/PC_reg/ins_addr [3]),
    .I3(\pentium4/controlStore/MIR_2_1_1214 ),
    .I4(\pentium4/controlStore/MIR_1_1_1208 ),
    .O(\pentium4/decoder_4to16/_n0087<3>1_1008 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \pentium4/decoder_4to16/_n0087<3>3  (
    .I0(\pentium4/R_reg/d_out [3]),
    .I1(\pentium4/controlStore/MIR_1_2_1213 ),
    .I2(\pentium4/controlStore/MIR_3_1_1209 ),
    .I3(\pentium4/controlStore/MIR_2_1_1214 ),
    .O(\pentium4/decoder_4to16/_n0087<3>2_1009 )
  );
  LUT5 #(
    .INIT ( 32'h73735140 ))
  \pentium4/decoder_4to16/_n0087<3>4  (
    .I0(\pentium4/controlStore/MIR_3_2_1220 ),
    .I1(\pentium4/controlStore/MIR_0_1_1222 ),
    .I2(\pentium4/decoder_4to16/_n0087 [3]),
    .I3(\pentium4/decoder_4to16/_n0087<3>1_1008 ),
    .I4(\pentium4/decoder_4to16/_n0087<3>2_1009 ),
    .O(\pentium4/B_bus [3])
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00AAAAF0F0 ))
  \pentium4/decoder_4to16/_n0087<2>1  (
    .I0(\pentium4/R2_reg/d_out [2]),
    .I1(\pentium4/R4_reg/d_out [2]),
    .I2(\pentium4/MDR_reg/data_out [2]),
    .I3(\pentium4/MBRU_reg/ins_out [2]),
    .I4(\pentium4/controlStore/MIR_2_2_1218 ),
    .I5(\pentium4/controlStore/MIR_1_1_1208 ),
    .O(\pentium4/decoder_4to16/_n0087 [2])
  );
  LUT5 #(
    .INIT ( 32'hCCF0AA00 ))
  \pentium4/decoder_4to16/_n0087<2>2  (
    .I0(\pentium4/R1_reg/d_out [2]),
    .I1(\pentium4/R3_reg/d_out [2]),
    .I2(\pentium4/PC_reg/ins_addr [2]),
    .I3(\pentium4/controlStore/MIR_2_1_1214 ),
    .I4(\pentium4/controlStore/MIR_1_1_1208 ),
    .O(\pentium4/decoder_4to16/_n0087<2>1_1011 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \pentium4/decoder_4to16/_n0087<2>3  (
    .I0(\pentium4/R_reg/d_out [2]),
    .I1(\pentium4/controlStore/MIR_1_2_1213 ),
    .I2(\pentium4/controlStore/MIR_3_1_1209 ),
    .I3(\pentium4/controlStore/MIR_2_1_1214 ),
    .O(\pentium4/decoder_4to16/_n0087<2>2_1012 )
  );
  LUT5 #(
    .INIT ( 32'h73735140 ))
  \pentium4/decoder_4to16/_n0087<2>4  (
    .I0(\pentium4/controlStore/MIR_3_2_1220 ),
    .I1(\pentium4/controlStore/MIR_0_1_1222 ),
    .I2(\pentium4/decoder_4to16/_n0087 [2]),
    .I3(\pentium4/decoder_4to16/_n0087<2>1_1011 ),
    .I4(\pentium4/decoder_4to16/_n0087<2>2_1012 ),
    .O(\pentium4/B_bus [2])
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00AAAAF0F0 ))
  \pentium4/decoder_4to16/_n0087<1>1  (
    .I0(\pentium4/R2_reg/d_out [1]),
    .I1(\pentium4/R4_reg/d_out [1]),
    .I2(\pentium4/MDR_reg/data_out [1]),
    .I3(\pentium4/MBRU_reg/ins_out [1]),
    .I4(\pentium4/controlStore/MIR_2_2_1218 ),
    .I5(\pentium4/controlStore/MIR_1_3_1217 ),
    .O(\pentium4/decoder_4to16/_n0087 [1])
  );
  LUT5 #(
    .INIT ( 32'hCCAAF000 ))
  \pentium4/decoder_4to16/_n0087<1>2  (
    .I0(\pentium4/R1_reg/d_out [1]),
    .I1(\pentium4/R3_reg/d_out [1]),
    .I2(\pentium4/PC_reg/ins_addr [1]),
    .I3(\pentium4/controlStore/MIR_1_3_1217 ),
    .I4(\pentium4/controlStore/MIR_2_3_1223 ),
    .O(\pentium4/decoder_4to16/_n0087<1>1_1014 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \pentium4/decoder_4to16/_n0087<1>3  (
    .I0(\pentium4/R_reg/d_out [1]),
    .I1(\pentium4/controlStore/MIR_1_3_1217 ),
    .I2(\pentium4/controlStore/MIR_3_1_1209 ),
    .I3(\pentium4/controlStore/MIR_2_3_1223 ),
    .O(\pentium4/decoder_4to16/_n0087<1>2_1015 )
  );
  LUT5 #(
    .INIT ( 32'h73735140 ))
  \pentium4/decoder_4to16/_n0087<1>4  (
    .I0(\pentium4/controlStore/MIR[3] ),
    .I1(\pentium4/controlStore/MIR[0] ),
    .I2(\pentium4/decoder_4to16/_n0087 [1]),
    .I3(\pentium4/decoder_4to16/_n0087<1>1_1014 ),
    .I4(\pentium4/decoder_4to16/_n0087<1>2_1015 ),
    .O(\pentium4/B_bus [1])
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00AAAAF0F0 ))
  \pentium4/decoder_4to16/_n0087<0>1  (
    .I0(\pentium4/R2_reg/d_out [0]),
    .I1(\pentium4/R4_reg/d_out [0]),
    .I2(\pentium4/MDR_reg/data_out [0]),
    .I3(\pentium4/MBRU_reg/ins_out [0]),
    .I4(\pentium4/controlStore/MIR_2_2_1218 ),
    .I5(\pentium4/controlStore/MIR_1_3_1217 ),
    .O(\pentium4/decoder_4to16/_n0087 [0])
  );
  LUT5 #(
    .INIT ( 32'hCCF0AA00 ))
  \pentium4/decoder_4to16/_n0087<0>2  (
    .I0(\pentium4/R1_reg/d_out [0]),
    .I1(\pentium4/R3_reg/d_out [0]),
    .I2(\pentium4/PC_reg/ins_addr [0]),
    .I3(\pentium4/controlStore/MIR_2_3_1223 ),
    .I4(\pentium4/controlStore/MIR_1_1_1208 ),
    .O(\pentium4/decoder_4to16/_n0087<0>1_1017 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \pentium4/decoder_4to16/_n0087<0>3  (
    .I0(\pentium4/R_reg/d_out [0]),
    .I1(\pentium4/controlStore/MIR_1_2_1213 ),
    .I2(\pentium4/controlStore/MIR_3_1_1209 ),
    .I3(\pentium4/controlStore/MIR_2_3_1223 ),
    .O(\pentium4/decoder_4to16/_n0087<0>2_1018 )
  );
  LUT5 #(
    .INIT ( 32'h73517340 ))
  \pentium4/decoder_4to16/_n0087<0>4  (
    .I0(\pentium4/controlStore/MIR[3] ),
    .I1(\pentium4/controlStore/MIR[0] ),
    .I2(\pentium4/decoder_4to16/_n0087 [0]),
    .I3(\pentium4/decoder_4to16/_n0087<0>2_1018 ),
    .I4(\pentium4/decoder_4to16/_n0087<0>1_1017 ),
    .O(\pentium4/B_bus [0])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \pentium4/decoder_4to16/_n0085<8>1  (
    .I0(\pentium4/R1_reg/d_out [8]),
    .I1(\pentium4/R3_reg/d_out [8]),
    .I2(\pentium4/R4_reg/d_out [8]),
    .I3(\pentium4/R2_reg/d_out [8]),
    .I4(\pentium4/controlStore/MIR_1_4_1224 ),
    .I5(\pentium4/controlStore/MIR_0_1_1222 ),
    .O(\pentium4/decoder_4to16/_n0085 [8])
  );
  LUT4 #(
    .INIT ( 16'h0CA0 ))
  \pentium4/decoder_4to16/_n0085<8>2  (
    .I0(\pentium4/R_reg/d_out [8]),
    .I1(\pentium4/PC_reg/ins_addr [8]),
    .I2(\pentium4/controlStore/MIR_3_2_1220 ),
    .I3(\pentium4/controlStore/MIR_1_4_1224 ),
    .O(\pentium4/decoder_4to16/_n0085<8>1_1020 )
  );
  LUT5 #(
    .INIT ( 32'h27220500 ))
  \pentium4/decoder_4to16/_n0085<8>3  (
    .I0(\pentium4/controlStore/MIR[2] ),
    .I1(\pentium4/controlStore/MIR[3] ),
    .I2(\pentium4/controlStore/MIR[0] ),
    .I3(\pentium4/decoder_4to16/_n0085<8>1_1020 ),
    .I4(\pentium4/decoder_4to16/_n0085 [8]),
    .O(\pentium4/B_bus [8])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>1  (
    .I0(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<1> ),
    .I1(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<0> ),
    .I2(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<2> ),
    .I3(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<3> ),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<4> ),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<5> ),
    .O(\pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>2  (
    .I0(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<6> ),
    .I1(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<7> ),
    .I2(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<8> ),
    .I3(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<9> ),
    .I4(\pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23> ),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<10> ),
    .O(\pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>1_1022 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>3  (
    .I0(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<11> ),
    .I1(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<12> ),
    .I2(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<13> ),
    .I3(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<14> ),
    .I4(\pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>1_1022 ),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<15> ),
    .O(\pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>2_1023 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>4  (
    .I0(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<16> ),
    .I1(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<17> ),
    .I2(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<18> ),
    .I3(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<19> ),
    .I4(\pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>2_1023 ),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<20> ),
    .O(\pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>3_1024 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>5  (
    .I0(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<21> ),
    .I1(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<22> ),
    .I2(\pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o<23>3_1024 ),
    .I3(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<23> ),
    .O(\pentium4/ALU_24bit/A_bus[23]_GND_11_o_equal_3_o )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \Tx/state_FSM_FFd3-In_SW0  (
    .I0(\Tx/tx_bit_index [1]),
    .I1(\Tx/tx_bit_index [0]),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF55005580 ))
  \Tx/state_FSM_FFd3-In  (
    .I0(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ),
    .I1(\Tx/state_FSM_FFd2_922 ),
    .I2(\Tx/tx_bit_index [2]),
    .I3(\Tx/state_FSM_FFd3_921 ),
    .I4(N9),
    .I5(\Tx/state_FSM_FFd3-In1 ),
    .O(\Tx/state_FSM_FFd3-In_897 )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   rx_IBUF (
    .I(rx),
    .O(rx_IBUF_2)
  );
  OBUF   tx_OBUF (
    .I(\Tx/tx_data_83 ),
    .O(tx)
  );
  OBUF   status_OBUF (
    .I(status_OBUF_102),
    .O(status)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_lut<0>1  (
    .I0(\Rx/clock_count [4]),
    .I1(\Rx/clock_count [5]),
    .I2(\Rx/clock_count [3]),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_lut<0> )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_gen/Mcount_counter_cy<1>_rt  (
    .I0(\clk_gen/counter [1]),
    .O(\clk_gen/Mcount_counter_cy<1>_rt_1031 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_gen/Mcount_counter_cy<2>_rt  (
    .I0(\clk_gen/counter [2]),
    .O(\clk_gen/Mcount_counter_cy<2>_rt_1032 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_gen/Mcount_counter_cy<3>_rt  (
    .I0(\clk_gen/counter [3]),
    .O(\clk_gen/Mcount_counter_cy<3>_rt_1033 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_gen/Mcount_counter_cy<4>_rt  (
    .I0(\clk_gen/counter [4]),
    .O(\clk_gen/Mcount_counter_cy<4>_rt_1034 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_gen/Mcount_counter_cy<5>_rt  (
    .I0(\clk_gen/counter [5]),
    .O(\clk_gen/Mcount_counter_cy<5>_rt_1035 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_gen/Mcount_counter_cy<6>_rt  (
    .I0(\clk_gen/counter [6]),
    .O(\clk_gen/Mcount_counter_cy<6>_rt_1036 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<15>_rt  (
    .I0(\IO/write_addr [15]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<15>_rt_1037 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<14>_rt  (
    .I0(\IO/write_addr [14]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<14>_rt_1038 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<13>_rt  (
    .I0(\IO/write_addr [13]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<13>_rt_1039 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<12>_rt  (
    .I0(\IO/write_addr [12]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<12>_rt_1040 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<11>_rt  (
    .I0(\IO/write_addr [11]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<11>_rt_1041 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<10>_rt  (
    .I0(\IO/write_addr [10]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<10>_rt_1042 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<9>_rt  (
    .I0(\IO/write_addr [9]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<9>_rt_1043 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<8>_rt  (
    .I0(\IO/write_addr [8]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<8>_rt_1044 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<7>_rt  (
    .I0(\IO/write_addr [7]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<7>_rt_1045 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<6>_rt  (
    .I0(\IO/write_addr [6]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<6>_rt_1046 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<5>_rt  (
    .I0(\IO/write_addr [5]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<5>_rt_1047 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<4>_rt  (
    .I0(\IO/write_addr [4]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<4>_rt_1048 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<3>_rt  (
    .I0(\IO/write_addr [3]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<3>_rt_1049 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<2>_rt  (
    .I0(\IO/write_addr [2]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<2>_rt_1050 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<1>_rt  (
    .I0(\IO/write_addr [1]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_cy<1>_rt_1051 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<14>_rt  (
    .I0(\IO/read_addr [14]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<14>_rt_1052 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<13>_rt  (
    .I0(\IO/read_addr [13]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<13>_rt_1053 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<12>_rt  (
    .I0(\IO/read_addr [12]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<12>_rt_1054 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<11>_rt  (
    .I0(\IO/read_addr [11]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<11>_rt_1055 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<10>_rt  (
    .I0(\IO/read_addr [10]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<10>_rt_1056 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<9>_rt  (
    .I0(\IO/read_addr [9]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<9>_rt_1057 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<8>_rt  (
    .I0(\IO/read_addr [8]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<8>_rt_1058 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<7>_rt  (
    .I0(\IO/read_addr [7]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<7>_rt_1059 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<6>_rt  (
    .I0(\IO/read_addr [6]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<6>_rt_1060 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<5>_rt  (
    .I0(\IO/read_addr [5]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<5>_rt_1061 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<4>_rt  (
    .I0(\IO/read_addr [4]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<4>_rt_1062 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<3>_rt  (
    .I0(\IO/read_addr [3]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<3>_rt_1063 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<2>_rt  (
    .I0(\IO/read_addr [2]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<2>_rt_1064 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<1>_rt  (
    .I0(\IO/read_addr [1]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_cy<1>_rt_1065 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<1>_rt  (
    .I0(\Rx/clock_count [5]),
    .O(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<1>_rt_1066 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<4>_rt  (
    .I0(\Rx/clock_count [4]),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<4>_rt_1067 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<3>_rt  (
    .I0(\Rx/clock_count [3]),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<3>_rt_1068 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<2>_rt  (
    .I0(\Rx/clock_count [2]),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<2>_rt_1069 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<1>_rt  (
    .I0(\Rx/clock_count [1]),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_cy<1>_rt_1070 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<1>_rt  (
    .I0(\Tx/clock_count [5]),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<1>_rt_1071 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<4>_rt  (
    .I0(\Tx/clock_count [4]),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<4>_rt_1072 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<3>_rt  (
    .I0(\Tx/clock_count [3]),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<3>_rt_1073 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<2>_rt  (
    .I0(\Tx/clock_count [2]),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<2>_rt_1074 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<1>_rt  (
    .I0(\Tx/clock_count [1]),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_cy<1>_rt_1075 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_gen/Mcount_counter_xor<7>_rt  (
    .I0(\clk_gen/counter [7]),
    .O(\clk_gen/Mcount_counter_xor<7>_rt_1076 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<16>_rt  (
    .I0(\IO/write_addr [16]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_xor<16>_rt_1077 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<15>_rt  (
    .I0(\IO/read_addr [15]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_xor<15>_rt_1078 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_xor<5>_rt  (
    .I0(\Rx/clock_count [5]),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_xor<5>_rt_1079 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_xor<5>_rt  (
    .I0(\Tx/clock_count [5]),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_xor<5>_rt_1080 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \clk_gen/out  (
    .C(clk_BUFGP_0),
    .D(\clk_gen/out_rstpot_1081 ),
    .Q(\clk_gen/out_1227 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/reset_cpu  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/reset_cpu_rstpot_1082 ),
    .Q(\IO/reset_cpu_21 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \IO/select  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\IO/select_rstpot_1083 ),
    .Q(\IO/select_22 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/data_byte_0  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/data_byte_0_rstpot_1084 ),
    .Q(\Rx/data_byte_0_30 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/data_byte_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/data_byte_1_rstpot_1085 ),
    .Q(\Rx/data_byte_1_29 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/data_byte_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/data_byte_2_rstpot_1086 ),
    .Q(\Rx/data_byte_2_28 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/data_byte_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/data_byte_3_rstpot_1087 ),
    .Q(\Rx/data_byte_3_27 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/data_byte_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/data_byte_4_rstpot_1088 ),
    .Q(\Rx/data_byte_4_26 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/data_byte_5  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/data_byte_5_rstpot_1089 ),
    .Q(\Rx/data_byte_5_25 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/data_byte_6  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/data_byte_6_rstpot_1090 ),
    .Q(\Rx/data_byte_6_24 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/data_byte_7  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/data_byte_7_rstpot_1091 ),
    .Q(\Rx/data_byte_7_23 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Rx/rxdone  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Rx/rxdone_rstpot_1092 ),
    .Q(\Rx/rxdone_31 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \Tx/tx_data  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Tx/tx_data_rstpot_1093 ),
    .Q(\Tx/tx_data_83 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \Tx/tx_data_done  (
    .C(\clk_gen/out_BUFG_3 ),
    .D(\Tx/tx_data_done_rstpot_1094 ),
    .Q(\Tx/tx_data_done_84 )
  );
  LUT6 #(
    .INIT ( 64'h6A5A66566A5A6555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<0>  (
    .I0(\pentium4/AC_reg/d_out [0]),
    .I1(\pentium4/controlStore/MIR_3_3_1226 ),
    .I2(\pentium4/controlStore/MIR[0] ),
    .I3(\pentium4/decoder_4to16/_n0087 [0]),
    .I4(\pentium4/decoder_4to16/_n0087<0>2_1018 ),
    .I5(\pentium4/decoder_4to16/_n0087<0>1_1017 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<0>_481 )
  );
  LUT6 #(
    .INIT ( 64'h6A5A6A5A66566555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<1>  (
    .I0(\pentium4/AC_reg/d_out [1]),
    .I1(\pentium4/controlStore/MIR_3_3_1226 ),
    .I2(\pentium4/controlStore/MIR[0] ),
    .I3(\pentium4/decoder_4to16/_n0087 [1]),
    .I4(\pentium4/decoder_4to16/_n0087<1>1_1014 ),
    .I5(\pentium4/decoder_4to16/_n0087<1>2_1015 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<1>_479 )
  );
  LUT6 #(
    .INIT ( 64'h6A5A6A5A66566555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<2>  (
    .I0(\pentium4/AC_reg/d_out [2]),
    .I1(\pentium4/controlStore/MIR_3_3_1226 ),
    .I2(\pentium4/controlStore/MIR[0] ),
    .I3(\pentium4/decoder_4to16/_n0087 [2]),
    .I4(\pentium4/decoder_4to16/_n0087<2>1_1011 ),
    .I5(\pentium4/decoder_4to16/_n0087<2>2_1012 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<2>_477 )
  );
  LUT6 #(
    .INIT ( 64'h6A5A6A5A66566555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<3>  (
    .I0(\pentium4/AC_reg/d_out [3]),
    .I1(\pentium4/controlStore/MIR_3_3_1226 ),
    .I2(\pentium4/controlStore/MIR[0] ),
    .I3(\pentium4/decoder_4to16/_n0087 [3]),
    .I4(\pentium4/decoder_4to16/_n0087<3>1_1008 ),
    .I5(\pentium4/decoder_4to16/_n0087<3>2_1009 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<3>_475 )
  );
  LUT6 #(
    .INIT ( 64'h6A5A6A5A66566555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<4>  (
    .I0(\pentium4/AC_reg/d_out [4]),
    .I1(\pentium4/controlStore/MIR_3_3_1226 ),
    .I2(\pentium4/controlStore/MIR[0] ),
    .I3(\pentium4/decoder_4to16/_n0087 [4]),
    .I4(\pentium4/decoder_4to16/_n0087<4>1_1005 ),
    .I5(\pentium4/decoder_4to16/_n0087<4>2_1006 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<4>_473 )
  );
  LUT6 #(
    .INIT ( 64'h6A5A6A5A66566555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<5>  (
    .I0(\pentium4/AC_reg/d_out [5]),
    .I1(\pentium4/controlStore/MIR_3_3_1226 ),
    .I2(\pentium4/controlStore/MIR[0] ),
    .I3(\pentium4/decoder_4to16/_n0087 [5]),
    .I4(\pentium4/decoder_4to16/_n0087<5>1_1002 ),
    .I5(\pentium4/decoder_4to16/_n0087<5>2_1003 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<5>_471 )
  );
  LUT6 #(
    .INIT ( 64'h6A5A66566A5A6555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<6>  (
    .I0(\pentium4/AC_reg/d_out [6]),
    .I1(\pentium4/controlStore/MIR_3_3_1226 ),
    .I2(\pentium4/controlStore/MIR[0] ),
    .I3(\pentium4/decoder_4to16/_n0087 [6]),
    .I4(\pentium4/decoder_4to16/_n0087<6>2_1000 ),
    .I5(\pentium4/decoder_4to16/_n0087<6>1_999 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<6>_469 )
  );
  LUT6 #(
    .INIT ( 64'h6A5A6A5A66566555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<7>  (
    .I0(\pentium4/AC_reg/d_out [7]),
    .I1(\pentium4/controlStore/MIR_3_3_1226 ),
    .I2(\pentium4/controlStore/MIR[0] ),
    .I3(\pentium4/decoder_4to16/_n0087 [7]),
    .I4(\pentium4/decoder_4to16/_n0087<7>1_996 ),
    .I5(\pentium4/decoder_4to16/_n0087<7>2_997 ),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<7>_467 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF53FF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A432_SW0  (
    .I0(\pentium4/AC_reg/d_out [11]),
    .I1(\pentium4/AC_reg/d_out [5]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .I4(\pentium4/controlStore/MIR_17_2_1221 ),
    .O(N11)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A432_SW1  (
    .I0(\pentium4/AC_reg/d_out [11]),
    .I1(\pentium4/AC_reg/d_out [5]),
    .I2(\pentium4/controlStore/MIR_19_3_1225 ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N12)
  );
  LUT5 #(
    .INIT ( 32'hFFFF53FF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A412_SW0  (
    .I0(\pentium4/AC_reg/d_out [10]),
    .I1(\pentium4/AC_reg/d_out [4]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .I4(\pentium4/controlStore/MIR_17_2_1221 ),
    .O(N14)
  );
  LUT5 #(
    .INIT ( 32'hFF53FF0F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A412_SW1  (
    .I0(\pentium4/AC_reg/d_out [10]),
    .I1(\pentium4/AC_reg/d_out [4]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_17_2_1221 ),
    .I4(\pentium4/controlStore/MIR_19_2_1216 ),
    .O(N15)
  );
  LUT5 #(
    .INIT ( 32'hFFFF53FF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A392_SW0  (
    .I0(\pentium4/AC_reg/d_out [9]),
    .I1(\pentium4/AC_reg/d_out [3]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .I4(\pentium4/controlStore/MIR_17_2_1221 ),
    .O(N17)
  );
  LUT5 #(
    .INIT ( 32'hFF53FF0F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A392_SW1  (
    .I0(\pentium4/AC_reg/d_out [9]),
    .I1(\pentium4/AC_reg/d_out [3]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_17_2_1221 ),
    .I4(\pentium4/controlStore/MIR_19_2_1216 ),
    .O(N18)
  );
  LUT5 #(
    .INIT ( 32'hFFFF53FF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A372_SW0  (
    .I0(\pentium4/AC_reg/d_out [8]),
    .I1(\pentium4/AC_reg/d_out [2]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .I4(\pentium4/controlStore/MIR_17_2_1221 ),
    .O(N20)
  );
  LUT5 #(
    .INIT ( 32'hFF53FF0F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A372_SW1  (
    .I0(\pentium4/AC_reg/d_out [8]),
    .I1(\pentium4/AC_reg/d_out [2]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_17_2_1221 ),
    .I4(\pentium4/controlStore/MIR_19_2_1216 ),
    .O(N21)
  );
  LUT5 #(
    .INIT ( 32'hFFFF53FF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A352_SW0  (
    .I0(\pentium4/AC_reg/d_out [7]),
    .I1(\pentium4/AC_reg/d_out [1]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .I4(\pentium4/controlStore/MIR_17_2_1221 ),
    .O(N23)
  );
  LUT5 #(
    .INIT ( 32'hFF53FF0F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A352_SW1  (
    .I0(\pentium4/AC_reg/d_out [7]),
    .I1(\pentium4/AC_reg/d_out [1]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_17_2_1221 ),
    .I4(\pentium4/controlStore/MIR_19_2_1216 ),
    .O(N24)
  );
  LUT5 #(
    .INIT ( 32'hFFFF53FF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A332_SW0  (
    .I0(\pentium4/AC_reg/d_out [6]),
    .I1(\pentium4/AC_reg/d_out [0]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_19_2_1216 ),
    .I4(\pentium4/controlStore/MIR_17_2_1221 ),
    .O(N26)
  );
  LUT5 #(
    .INIT ( 32'hFF53FF0F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A332_SW1  (
    .I0(\pentium4/AC_reg/d_out [6]),
    .I1(\pentium4/AC_reg/d_out [0]),
    .I2(\pentium4/controlStore/MIR_18_2_1219 ),
    .I3(\pentium4/controlStore/MIR_17_2_1221 ),
    .I4(\pentium4/controlStore/MIR_19_2_1216 ),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF404040FF40 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A233  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\pentium4/B_bus [1]),
    .I3(N29),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<1> ),
    .I5(N30),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [1])
  );
  LUT6 #(
    .INIT ( 64'h596A595955665555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<8>  (
    .I0(\pentium4/AC_reg/d_out [8]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[3] ),
    .I3(\pentium4/controlStore/MIR[0] ),
    .I4(\pentium4/decoder_4to16/_n0085<8>1_1020 ),
    .I5(\pentium4/decoder_4to16/_n0085 [8]),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<8>_465 )
  );
  LUT6 #(
    .INIT ( 64'h2722050000000000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<8>_SW0  (
    .I0(\pentium4/controlStore/MIR[2] ),
    .I1(\pentium4/controlStore/MIR[3] ),
    .I2(\pentium4/controlStore/MIR[0] ),
    .I3(\pentium4/decoder_4to16/_n0085<8>1_1020 ),
    .I4(\pentium4/decoder_4to16/_n0085 [8]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .O(N32)
  );
  LUT5 #(
    .INIT ( 32'hFF05FF11 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A294  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N34),
    .I2(N35),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A29 ),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<22> ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [22])
  );
  LUT5 #(
    .INIT ( 32'hFFFF0511 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A274  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N37),
    .I2(N38),
    .I3(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<21> ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A27 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [21])
  );
  LUT5 #(
    .INIT ( 32'hFF05FF11 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A254  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N40),
    .I2(N41),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A25 ),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<20> ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [20])
  );
  LUT5 #(
    .INIT ( 32'hFF5FFF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A213_SW0  (
    .I0(\pentium4/AC_reg/d_out [23]),
    .I1(\pentium4/AC_reg/d_out [17]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N43)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A213_SW1  (
    .I0(\pentium4/AC_reg/d_out [23]),
    .I1(\pentium4/AC_reg/d_out [17]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A214  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N43),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A211_958 ),
    .I3(N44),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<19> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A21 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [19])
  );
  LUT5 #(
    .INIT ( 32'hFF5FFF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A193_SW0  (
    .I0(\pentium4/AC_reg/d_out [22]),
    .I1(\pentium4/AC_reg/d_out [16]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N46)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A193_SW1  (
    .I0(\pentium4/AC_reg/d_out [22]),
    .I1(\pentium4/AC_reg/d_out [16]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N47)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A194  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N46),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A191_962 ),
    .I3(N47),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<18> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A19 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [18])
  );
  LUT5 #(
    .INIT ( 32'hFF5FFF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A173_SW0  (
    .I0(\pentium4/AC_reg/d_out [21]),
    .I1(\pentium4/AC_reg/d_out [15]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N49)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A173_SW1  (
    .I0(\pentium4/AC_reg/d_out [21]),
    .I1(\pentium4/AC_reg/d_out [15]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A174  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N49),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A171_966 ),
    .I3(N50),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<17> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A17 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [17])
  );
  LUT5 #(
    .INIT ( 32'hFF5FFF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A153_SW0  (
    .I0(\pentium4/AC_reg/d_out [20]),
    .I1(\pentium4/AC_reg/d_out [14]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N52)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A153_SW1  (
    .I0(\pentium4/AC_reg/d_out [20]),
    .I1(\pentium4/AC_reg/d_out [14]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N53)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A154  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N52),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A151_970 ),
    .I3(N53),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<16> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A15 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [16])
  );
  LUT5 #(
    .INIT ( 32'hFF5FFF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A133_SW0  (
    .I0(\pentium4/AC_reg/d_out [19]),
    .I1(\pentium4/AC_reg/d_out [13]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N55)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A133_SW1  (
    .I0(\pentium4/AC_reg/d_out [19]),
    .I1(\pentium4/AC_reg/d_out [13]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A134  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N55),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A131_974 ),
    .I3(N56),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<15> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A13_973 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [15])
  );
  LUT5 #(
    .INIT ( 32'hFF5FFF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A113_SW0  (
    .I0(\pentium4/AC_reg/d_out [18]),
    .I1(\pentium4/AC_reg/d_out [12]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N58)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A113_SW1  (
    .I0(\pentium4/AC_reg/d_out [18]),
    .I1(\pentium4/AC_reg/d_out [12]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N59)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A114  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N58),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A111_979 ),
    .I3(N59),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<14> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A11 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [14])
  );
  LUT5 #(
    .INIT ( 32'hFF5FFF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A93_SW0  (
    .I0(\pentium4/AC_reg/d_out [17]),
    .I1(\pentium4/AC_reg/d_out [11]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N61)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A93_SW1  (
    .I0(\pentium4/AC_reg/d_out [17]),
    .I1(\pentium4/AC_reg/d_out [11]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A94  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N61),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A91_956 ),
    .I3(N62),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<13> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A9 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [13])
  );
  LUT5 #(
    .INIT ( 32'hFF5FFF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A73_SW0  (
    .I0(\pentium4/AC_reg/d_out [16]),
    .I1(\pentium4/AC_reg/d_out [10]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N64)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A73_SW1  (
    .I0(\pentium4/AC_reg/d_out [16]),
    .I1(\pentium4/AC_reg/d_out [10]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A74  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N64),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A71_960 ),
    .I3(N65),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<12> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A7 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [12])
  );
  LUT5 #(
    .INIT ( 32'hFF5FFF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A53_SW0  (
    .I0(\pentium4/AC_reg/d_out [15]),
    .I1(\pentium4/AC_reg/d_out [9]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N67)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A53_SW1  (
    .I0(\pentium4/AC_reg/d_out [15]),
    .I1(\pentium4/AC_reg/d_out [9]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N68)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A54  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N67),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A51_964 ),
    .I3(N68),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<11> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A5 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [11])
  );
  LUT5 #(
    .INIT ( 32'hFF3FFF5F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A33_SW0  (
    .I0(\pentium4/AC_reg/d_out [8]),
    .I1(\pentium4/AC_reg/d_out [14]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N70)
  );
  LUT5 #(
    .INIT ( 32'hFF30FF5F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A33_SW1  (
    .I0(\pentium4/AC_reg/d_out [8]),
    .I1(\pentium4/AC_reg/d_out [14]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N71)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A34  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N70),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A32_968 ),
    .I3(N71),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<10> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A3 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [10])
  );
  LUT5 #(
    .INIT ( 32'hFF5FFF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A473_SW0  (
    .I0(\pentium4/AC_reg/d_out [13]),
    .I1(\pentium4/AC_reg/d_out [7]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N73)
  );
  LUT5 #(
    .INIT ( 32'hFF50FF3F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A473_SW1  (
    .I0(\pentium4/AC_reg/d_out [13]),
    .I1(\pentium4/AC_reg/d_out [7]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .O(N74)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF50555151 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A474  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(N73),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A471_972 ),
    .I3(N74),
    .I4(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<9> ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A47 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<9>2_SW0  (
    .I0(\pentium4/R_reg/d_out [9]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N76)
  );
  LUT6 #(
    .INIT ( 64'h5969595955655555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<9>  (
    .I0(\pentium4/AC_reg/d_out [9]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[3] ),
    .I3(\pentium4/controlStore/MIR[1] ),
    .I4(N76),
    .I5(\pentium4/decoder_4to16/_n0085 [9]),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<9>_463 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<10>2_SW0  (
    .I0(\pentium4/R_reg/d_out [10]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N78)
  );
  LUT6 #(
    .INIT ( 64'h5969595955655555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<10>  (
    .I0(\pentium4/AC_reg/d_out [10]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[3] ),
    .I3(\pentium4/controlStore/MIR[1] ),
    .I4(N78),
    .I5(\pentium4/decoder_4to16/_n0085 [10]),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<10>_461 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<11>2_SW0  (
    .I0(\pentium4/R_reg/d_out [11]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N80)
  );
  LUT6 #(
    .INIT ( 64'h5699565555995555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<11>  (
    .I0(\pentium4/AC_reg/d_out [11]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/decoder_4to16/_n0085 [11]),
    .I5(N80),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<11>_459 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<12>2_SW0  (
    .I0(\pentium4/R_reg/d_out [12]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N82)
  );
  LUT6 #(
    .INIT ( 64'h5699565555995555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<12>  (
    .I0(\pentium4/AC_reg/d_out [12]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/decoder_4to16/_n0085 [12]),
    .I5(N82),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<12>_457 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<13>2_SW0  (
    .I0(\pentium4/R_reg/d_out [13]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N84)
  );
  LUT6 #(
    .INIT ( 64'h5699565555995555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<13>  (
    .I0(\pentium4/AC_reg/d_out [13]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/decoder_4to16/_n0085 [13]),
    .I5(N84),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<13>_455 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<14>2_SW0  (
    .I0(\pentium4/R_reg/d_out [14]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N86)
  );
  LUT6 #(
    .INIT ( 64'h5699565555995555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<14>  (
    .I0(\pentium4/AC_reg/d_out [14]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/decoder_4to16/_n0085 [14]),
    .I5(N86),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<14>_453 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<15>2_SW0  (
    .I0(\pentium4/R_reg/d_out [15]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N88)
  );
  LUT6 #(
    .INIT ( 64'h5699565555995555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<15>  (
    .I0(\pentium4/AC_reg/d_out [15]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/decoder_4to16/_n0085 [15]),
    .I5(N88),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<15>_451 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<16>2_SW0  (
    .I0(\pentium4/R_reg/d_out [16]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N90)
  );
  LUT6 #(
    .INIT ( 64'h5699565555995555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<16>  (
    .I0(\pentium4/AC_reg/d_out [16]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/decoder_4to16/_n0085 [16]),
    .I5(N90),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<16>_449 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<17>2_SW0  (
    .I0(\pentium4/R_reg/d_out [17]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N92)
  );
  LUT6 #(
    .INIT ( 64'h5699565555995555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<17>  (
    .I0(\pentium4/AC_reg/d_out [17]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/decoder_4to16/_n0085 [17]),
    .I5(N92),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<17>_447 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<18>2_SW0  (
    .I0(\pentium4/R_reg/d_out [18]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N94)
  );
  LUT6 #(
    .INIT ( 64'h5699565555995555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<18>  (
    .I0(\pentium4/AC_reg/d_out [18]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/decoder_4to16/_n0085 [18]),
    .I5(N94),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<18>_445 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<19>2_SW0  (
    .I0(\pentium4/R_reg/d_out [19]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N96)
  );
  LUT6 #(
    .INIT ( 64'h5699565555995555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<19>  (
    .I0(\pentium4/AC_reg/d_out [19]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/decoder_4to16/_n0085 [19]),
    .I5(N96),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<19>_443 )
  );
  LUT6 #(
    .INIT ( 64'hFF44FF00F4F4F0F0 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A13  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(N98),
    .I3(N99),
    .I4(\pentium4/B_bus [0]),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<0> ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [0])
  );
  LUT5 #(
    .INIT ( 32'h4B5ABBAA ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A334_SW0  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A333_940 ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .I3(N26),
    .I4(\pentium4/B_bus [2]),
    .O(N101)
  );
  LUT5 #(
    .INIT ( 32'h4B5ABBAA ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A334_SW1  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A333_940 ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .I3(N27),
    .I4(\pentium4/B_bus [2]),
    .O(N102)
  );
  LUT6 #(
    .INIT ( 64'h66666666AAA55A55 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<2>  (
    .I0(\pentium4/ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .I1(N103),
    .I2(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<2> ),
    .I3(N101),
    .I4(N102),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A33 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [2])
  );
  LUT5 #(
    .INIT ( 32'h6636AAFA ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A354_SW0  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .I2(N23),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A352 ),
    .I4(\pentium4/B_bus [3]),
    .O(N105)
  );
  LUT5 #(
    .INIT ( 32'h6636AAFA ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A354_SW1  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .I2(N24),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A352 ),
    .I4(\pentium4/B_bus [3]),
    .O(N106)
  );
  LUT6 #(
    .INIT ( 64'h66666666AAA55A55 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<3>  (
    .I0(\pentium4/ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .I1(N107),
    .I2(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<3> ),
    .I3(N105),
    .I4(N106),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A35 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [3])
  );
  LUT5 #(
    .INIT ( 32'h6636AAFA ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A374_SW0  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .I2(N20),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A372 ),
    .I4(\pentium4/B_bus [4]),
    .O(N109)
  );
  LUT5 #(
    .INIT ( 32'h6636AAFA ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A374_SW1  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .I2(N21),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A372 ),
    .I4(\pentium4/B_bus [4]),
    .O(N110)
  );
  LUT6 #(
    .INIT ( 64'h66666666AAA55A55 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<4>  (
    .I0(\pentium4/ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .I1(N111),
    .I2(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<4> ),
    .I3(N109),
    .I4(N110),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A37 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [4])
  );
  LUT6 #(
    .INIT ( 64'hD2D287D222227722 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A394_SW0  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .I3(N17),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A392 ),
    .I5(\pentium4/B_bus [5]),
    .O(N113)
  );
  LUT6 #(
    .INIT ( 64'hD2D287D222227722 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A394_SW1  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .I3(N18),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A392 ),
    .I5(\pentium4/B_bus [5]),
    .O(N114)
  );
  LUT5 #(
    .INIT ( 32'hCCCC0A5F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<5>  (
    .I0(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<5> ),
    .I1(N115),
    .I2(N114),
    .I3(N113),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A39 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [5])
  );
  LUT4 #(
    .INIT ( 16'hF35F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A232_SW0_SW0  (
    .I0(\pentium4/AC_reg/d_out [5]),
    .I1(\pentium4/AC_reg/d_out [0]),
    .I2(\pentium4/controlStore/MIR_19_2_1216 ),
    .I3(\pentium4/controlStore/MIR_17_2_1221 ),
    .O(N120)
  );
  LUT4 #(
    .INIT ( 16'hF350 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A232_SW1_SW0  (
    .I0(\pentium4/AC_reg/d_out [5]),
    .I1(\pentium4/AC_reg/d_out [0]),
    .I2(\pentium4/controlStore/MIR_19_3_1225 ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .O(N122)
  );
  LUT5 #(
    .INIT ( 32'hBBAB3303 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A411_SW0  (
    .I0(\pentium4/AC_reg/d_out [6]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(N14),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A412 ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N124)
  );
  LUT5 #(
    .INIT ( 32'hBBAB3303 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A411_SW1  (
    .I0(\pentium4/AC_reg/d_out [6]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(N15),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A412 ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N125)
  );
  LUT6 #(
    .INIT ( 64'hFFFF4040FF40FF40 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A414  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\pentium4/B_bus [6]),
    .I3(N124),
    .I4(N125),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<6> ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [6])
  );
  LUT6 #(
    .INIT ( 64'h88CCABEFFFFFFFFF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A334_SW2  (
    .I0(\pentium4/controlStore/MIR[3] ),
    .I1(\pentium4/controlStore/MIR[0] ),
    .I2(\pentium4/decoder_4to16/_n0087<2>1_1011 ),
    .I3(\pentium4/decoder_4to16/_n0087 [2]),
    .I4(\pentium4/decoder_4to16/_n0087<2>2_1012 ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .O(N103)
  );
  LUT6 #(
    .INIT ( 64'h88CCABEFFFFFFFFF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A354_SW2  (
    .I0(\pentium4/controlStore/MIR[3] ),
    .I1(\pentium4/controlStore/MIR[0] ),
    .I2(\pentium4/decoder_4to16/_n0087<3>1_1008 ),
    .I3(\pentium4/decoder_4to16/_n0087 [3]),
    .I4(\pentium4/decoder_4to16/_n0087<3>2_1009 ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .O(N107)
  );
  LUT6 #(
    .INIT ( 64'h88CCABEFFFFFFFFF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A374_SW2  (
    .I0(\pentium4/controlStore/MIR[3] ),
    .I1(\pentium4/controlStore/MIR[0] ),
    .I2(\pentium4/decoder_4to16/_n0087<4>1_1005 ),
    .I3(\pentium4/decoder_4to16/_n0087 [4]),
    .I4(\pentium4/decoder_4to16/_n0087<4>2_1006 ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .O(N111)
  );
  LUT6 #(
    .INIT ( 64'h0A000CA000AA0000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A11_SW0  (
    .I0(\pentium4/AC_reg/d_out [0]),
    .I1(\pentium4/AC_reg/d_out [4]),
    .I2(\pentium4/controlStore/MIR[20] ),
    .I3(\pentium4/controlStore/MIR[19] ),
    .I4(\pentium4/controlStore/MIR[17] ),
    .I5(\pentium4/controlStore/MIR[18] ),
    .O(N98)
  );
  LUT6 #(
    .INIT ( 64'h0A000CAF00AA0000 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A11_SW1  (
    .I0(\pentium4/AC_reg/d_out [0]),
    .I1(\pentium4/AC_reg/d_out [4]),
    .I2(\pentium4/controlStore/MIR[20] ),
    .I3(\pentium4/controlStore/MIR[19] ),
    .I4(\pentium4/controlStore/MIR[17] ),
    .I5(\pentium4/controlStore/MIR[18] ),
    .O(N99)
  );
  LUT5 #(
    .INIT ( 32'hAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A414_SW0  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [6]),
    .O(N127)
  );
  LUT5 #(
    .INIT ( 32'hAAEFAA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A414_SW1  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [6]),
    .O(N128)
  );
  LUT6 #(
    .INIT ( 64'h03CF0145FEBAFC30 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<6>  (
    .I0(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I1(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<6> ),
    .I2(N124),
    .I3(N125),
    .I4(N128),
    .I5(N127),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [6])
  );
  LUT5 #(
    .INIT ( 32'hBBAB3303 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A431_SW0  (
    .I0(\pentium4/AC_reg/d_out [7]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(N11),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A432 ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N130)
  );
  LUT5 #(
    .INIT ( 32'hBA30BB33 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A431_SW1  (
    .I0(\pentium4/AC_reg/d_out [7]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A432 ),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I4(N12),
    .O(N131)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF4040FF4040 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A434  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\pentium4/B_bus [7]),
    .I3(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<7> ),
    .I4(N130),
    .I5(N131),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [7])
  );
  LUT6 #(
    .INIT ( 64'h887722DD887727D8 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<8>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A451_976 ),
    .I3(N32),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A45 ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A452_977 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [8])
  );
  LUT5 #(
    .INIT ( 32'h5E5F5F5F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A394_SW2  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[18] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/B_bus [5]),
    .O(N115)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A2521  (
    .I0(\pentium4/controlStore/MIR_19_3_1225 ),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A252 )
  );
  LUT5 #(
    .INIT ( 32'hAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A434_SW0  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [7]),
    .O(N136)
  );
  LUT5 #(
    .INIT ( 32'hAAEFAA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A434_SW1  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [7]),
    .O(N137)
  );
  LUT6 #(
    .INIT ( 64'h03F30151FEAEFC0C ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<7>  (
    .I0(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I1(N130),
    .I2(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<7> ),
    .I3(N131),
    .I4(N137),
    .I5(N136),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h333300FF55550F0F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<0>  (
    .I0(N140),
    .I1(N142),
    .I2(N139),
    .I3(N141),
    .I4(\pentium4/B_bus [0]),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<0> ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [0])
  );
  LUT5 #(
    .INIT ( 32'hBABB3033 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A331_SW0  (
    .I0(\pentium4/AC_reg/d_out [2]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A333_940 ),
    .I3(N26),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N144)
  );
  LUT5 #(
    .INIT ( 32'hBABB3033 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A331_SW1  (
    .I0(\pentium4/AC_reg/d_out [2]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_A333_940 ),
    .I3(N27),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N145)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF4040FF4040 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A334  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\pentium4/B_bus [2]),
    .I3(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<2> ),
    .I4(N144),
    .I5(N145),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<20>2_SW0  (
    .I0(\pentium4/R_reg/d_out [20]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N147)
  );
  LUT6 #(
    .INIT ( 64'h5699565555995555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<20>  (
    .I0(\pentium4/AC_reg/d_out [20]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/decoder_4to16/_n0085 [20]),
    .I5(N147),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<20>_441 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pentium4/decoder_4to16/_n0085<21>2_SW0  (
    .I0(\pentium4/R_reg/d_out [21]),
    .I1(\pentium4/controlStore/MIR[0] ),
    .O(N149)
  );
  LUT6 #(
    .INIT ( 64'h5969595955655555 ))
  \pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<21>  (
    .I0(\pentium4/AC_reg/d_out [21]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[3] ),
    .I3(\pentium4/controlStore/MIR[1] ),
    .I4(N149),
    .I5(\pentium4/decoder_4to16/_n0085 [21]),
    .O(\pentium4/ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<21>_439 )
  );
  LUT5 #(
    .INIT ( 32'hFF45FF55 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A294_SW0  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [22]),
    .O(N151)
  );
  LUT5 #(
    .INIT ( 32'hAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A294_SW1  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [22]),
    .O(N152)
  );
  LUT6 #(
    .INIT ( 64'h00FFFC3000FFFA50 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<22>  (
    .I0(N34),
    .I1(N35),
    .I2(N151),
    .I3(N152),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A29 ),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<22> ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [22])
  );
  LUT5 #(
    .INIT ( 32'hFF45FF55 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A274_SW0  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [21]),
    .O(N154)
  );
  LUT5 #(
    .INIT ( 32'hAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A274_SW1  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [21]),
    .O(N155)
  );
  LUT6 #(
    .INIT ( 64'h0000FFFFFFCA3500 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<21>  (
    .I0(N37),
    .I1(N38),
    .I2(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<21> ),
    .I3(N154),
    .I4(N155),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A27 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [21])
  );
  LUT5 #(
    .INIT ( 32'hFFFFFDFF ))
  \pentium4/decoder_4to16/_n0085<9>2_SW1  (
    .I0(\pentium4/R_reg/d_out [9]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .O(N157)
  );
  LUT5 #(
    .INIT ( 32'hFF33FD33 ))
  \pentium4/decoder_4to16/_n0085<9>2_SW2  (
    .I0(\pentium4/R_reg/d_out [9]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .O(N158)
  );
  LUT6 #(
    .INIT ( 64'h888FF8FF88888888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A471  (
    .I0(\pentium4/AC_reg/d_out [9]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/decoder_4to16/_n0085 [9]),
    .I3(N157),
    .I4(N158),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A47 )
  );
  LUT5 #(
    .INIT ( 32'hBBAB3303 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A351_SW0  (
    .I0(\pentium4/AC_reg/d_out [3]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(N23),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A352 ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N160)
  );
  LUT5 #(
    .INIT ( 32'hBBAB3303 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A351_SW1  (
    .I0(\pentium4/AC_reg/d_out [3]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(N24),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A352 ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N161)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF4040FF4040 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A354  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\pentium4/B_bus [3]),
    .I3(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<3> ),
    .I4(N160),
    .I5(N161),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [3])
  );
  LUT5 #(
    .INIT ( 32'hBBAB3303 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A371_SW0  (
    .I0(\pentium4/AC_reg/d_out [4]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(N20),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A372 ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N163)
  );
  LUT5 #(
    .INIT ( 32'hBBAB3303 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A371_SW1  (
    .I0(\pentium4/AC_reg/d_out [4]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(N21),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A372 ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N164)
  );
  LUT6 #(
    .INIT ( 64'hFFFF4040FF40FF40 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A374  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\pentium4/B_bus [4]),
    .I3(N163),
    .I4(N164),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<4> ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [4])
  );
  LUT6 #(
    .INIT ( 64'h87772DDD87777888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<23>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[18] ),
    .I2(\pentium4/ALU_24bit/Mmux_C_bus12_B101 ),
    .I3(\pentium4/B_bus [23]),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A31_950 ),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A312_952 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [23])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<20>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [20]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [20]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [20])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<19>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [19]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [19]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [19])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<18>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [18]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [18]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [18])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<17>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [17]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [17]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [17])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<16>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [16]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [16]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [16])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<15>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [15]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [15]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [15])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<14>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [14]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [14]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [14])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<13>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [13]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [13]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [13])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<9>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [9]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [9]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [9])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<10>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [10]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [10]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<11>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [11]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [11]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [11])
  );
  LUT6 #(
    .INIT ( 64'h55EF55FFAA10AA00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<12>  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/B_bus [12]),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [12]),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [12])
  );
  LUT5 #(
    .INIT ( 32'hBBAB3303 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A391_SW0  (
    .I0(\pentium4/AC_reg/d_out [5]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(N17),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A392 ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N166)
  );
  LUT5 #(
    .INIT ( 32'hBBAB3303 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A391_SW1  (
    .I0(\pentium4/AC_reg/d_out [5]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(N18),
    .I3(\pentium4/ALU_24bit/Mmux_C_bus12_A392 ),
    .I4(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .O(N167)
  );
  LUT6 #(
    .INIT ( 64'hFFFF4040FF40FF40 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A394  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\pentium4/B_bus [5]),
    .I3(N166),
    .I4(N167),
    .I5(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<5> ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_A [5])
  );
  LUT6 #(
    .INIT ( 64'h050F035FFFA5FFFF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<0>_SW0  (
    .I0(\pentium4/AC_reg/d_out [0]),
    .I1(\pentium4/AC_reg/d_out [4]),
    .I2(\pentium4/controlStore/MIR[20] ),
    .I3(\pentium4/controlStore/MIR[19] ),
    .I4(\pentium4/controlStore/MIR[17] ),
    .I5(\pentium4/controlStore/MIR[18] ),
    .O(N139)
  );
  LUT6 #(
    .INIT ( 64'h050F035FFFAAFF0F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<0>_SW1  (
    .I0(\pentium4/AC_reg/d_out [0]),
    .I1(\pentium4/AC_reg/d_out [4]),
    .I2(\pentium4/controlStore/MIR[20] ),
    .I3(\pentium4/controlStore/MIR[19] ),
    .I4(\pentium4/controlStore/MIR[17] ),
    .I5(\pentium4/controlStore/MIR[18] ),
    .O(N140)
  );
  LUT6 #(
    .INIT ( 64'h050F0350FFA5FFFF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<0>_SW2  (
    .I0(\pentium4/AC_reg/d_out [0]),
    .I1(\pentium4/AC_reg/d_out [4]),
    .I2(\pentium4/controlStore/MIR[20] ),
    .I3(\pentium4/controlStore/MIR[19] ),
    .I4(\pentium4/controlStore/MIR[17] ),
    .I5(\pentium4/controlStore/MIR[18] ),
    .O(N141)
  );
  LUT6 #(
    .INIT ( 64'h050F0350FFAAFF0F ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<0>_SW3  (
    .I0(\pentium4/AC_reg/d_out [0]),
    .I1(\pentium4/AC_reg/d_out [4]),
    .I2(\pentium4/controlStore/MIR[20] ),
    .I3(\pentium4/controlStore/MIR[19] ),
    .I4(\pentium4/controlStore/MIR[17] ),
    .I5(\pentium4/controlStore/MIR[18] ),
    .O(N142)
  );
  LUT6 #(
    .INIT ( 64'h20080A00333B0A00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A232_SW0  (
    .I0(\pentium4/AC_reg/d_out [1]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .I5(N120),
    .O(N29)
  );
  LUT6 #(
    .INIT ( 64'h20580000227A2222 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A232_SW1  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[19] ),
    .I4(\pentium4/AC_reg/d_out [1]),
    .I5(N122),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hECC40A00FFF70A00 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<1>_SW0  (
    .I0(\pentium4/AC_reg/d_out [1]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .I5(N120),
    .O(N169)
  );
  LUT6 #(
    .INIT ( 64'hECC4090CFFF7090C ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<1>_SW1  (
    .I0(\pentium4/AC_reg/d_out [1]),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/controlStore/MIR[18] ),
    .I5(N120),
    .O(N170)
  );
  LUT6 #(
    .INIT ( 64'hAD888088AFAAA2AA ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<1>_SW2  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/controlStore/MIR[20] ),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/AC_reg/d_out [1]),
    .I4(\pentium4/controlStore/MIR[17] ),
    .I5(N122),
    .O(N171)
  );
  LUT6 #(
    .INIT ( 64'hE822AA12FD22FF12 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<1>_SW3  (
    .I0(\pentium4/controlStore/MIR[20] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/controlStore/MIR[18] ),
    .I4(\pentium4/AC_reg/d_out [1]),
    .I5(N122),
    .O(N172)
  );
  LUT6 #(
    .INIT ( 64'hFFD855D8AAD800D8 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_rs_lut<1>  (
    .I0(\pentium4/B_bus [1]),
    .I1(N170),
    .I2(N169),
    .I3(\pentium4/ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<1> ),
    .I4(N172),
    .I5(N171),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_rs_lut [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFFDFF ))
  \pentium4/decoder_4to16/_n0085<10>2_SW1  (
    .I0(\pentium4/R_reg/d_out [10]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .O(N174)
  );
  LUT5 #(
    .INIT ( 32'hFF33FD33 ))
  \pentium4/decoder_4to16/_n0085<10>2_SW2  (
    .I0(\pentium4/R_reg/d_out [10]),
    .I1(\pentium4/controlStore/MIR[2] ),
    .I2(\pentium4/controlStore/MIR[1] ),
    .I3(\pentium4/controlStore/MIR[3] ),
    .I4(\pentium4/controlStore/MIR[0] ),
    .O(N175)
  );
  LUT6 #(
    .INIT ( 64'h888FF8FF88888888 ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A31  (
    .I0(\pentium4/AC_reg/d_out [10]),
    .I1(\pentium4/ALU_24bit/Mmux_C_bus12_A113 ),
    .I2(\pentium4/decoder_4to16/_n0085 [10]),
    .I3(N174),
    .I4(N175),
    .I5(\pentium4/ALU_24bit/Mmux_C_bus12_A252 ),
    .O(\pentium4/ALU_24bit/Mmux_C_bus12_A3 )
  );
  LUT5 #(
    .INIT ( 32'hEFEB4541 ))
  \Tx/tx_data_rstpot  (
    .I0(\Tx/state_FSM_FFd1_923 ),
    .I1(\Tx/state_FSM_FFd2_922 ),
    .I2(\Tx/state_FSM_FFd3_921 ),
    .I3(\Tx/tx_bit_index[2]_data_byte[7]_Mux_7_o ),
    .I4(\Tx/tx_data_83 ),
    .O(\Tx/tx_data_rstpot_1093 )
  );
  LUT6 #(
    .INIT ( 64'h0FFF08880AAA0888 ))
  \IO/select_rstpot  (
    .I0(\IO/STATE_RX_FSM_FFd2_281 ),
    .I1(\IO/GND_15_o_GND_15_o_equal_6_o ),
    .I2(\IO/STATE_TX_FSM_FFd6_307 ),
    .I3(\pentium4/controlStore/MIR[22] ),
    .I4(\IO/select_22 ),
    .I5(N177),
    .O(\IO/select_rstpot_1083 )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABAAAAA8AAAA ))
  \Tx/tx_data_done_rstpot  (
    .I0(\Tx/tx_data_done_84 ),
    .I1(\Tx/state_FSM_FFd3_921 ),
    .I2(\Tx/state_FSM_FFd2_922 ),
    .I3(\Tx/state_FSM_FFd1_923 ),
    .I4(\IO/tx_start_20 ),
    .I5(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>_869 ),
    .O(\Tx/tx_data_done_rstpot_1094 )
  );
  LUT5 #(
    .INIT ( 32'hAABBAAA8 ))
  \Rx/rxdone_rstpot  (
    .I0(\Rx/rxdone_31 ),
    .I1(\Rx/state_FSM_FFd3_379 ),
    .I2(rx_IBUF_2),
    .I3(\Rx/state_FSM_FFd2_380 ),
    .I4(\Rx/state_FSM_FFd1_381 ),
    .O(\Rx/rxdone_rstpot_1092 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \clk_gen/out_rstpot  (
    .I0(\clk_gen/counter[7]_GND_2_o_LessThan_2_o_inv_127 ),
    .I1(\clk_gen/out_1227 ),
    .O(\clk_gen/out_rstpot_1081 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \Rx/data_byte_0_rstpot_SW0  (
    .I0(\Rx/rx_bit_index [0]),
    .I1(\Rx/rx_bit_index [1]),
    .I2(\Rx/rx_bit_index [2]),
    .O(N179)
  );
  LUT6 #(
    .INIT ( 64'hEEFE440444044404 ))
  \Rx/data_byte_0_rstpot  (
    .I0(\Rx/state_FSM_FFd3-In1 ),
    .I1(\Rx/data_byte_0_30 ),
    .I2(\Rx/_n0169_inv1 ),
    .I3(N179),
    .I4(rx_IBUF_2),
    .I5(\Rx/state_FSM_FFd2_380 ),
    .O(\Rx/data_byte_0_rstpot_1084 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \Rx/data_byte_1_rstpot_SW0  (
    .I0(\Rx/rx_bit_index [2]),
    .I1(\Rx/rx_bit_index [1]),
    .I2(\Rx/rx_bit_index [0]),
    .O(N181)
  );
  LUT6 #(
    .INIT ( 64'hEEFE440444044404 ))
  \Rx/data_byte_1_rstpot  (
    .I0(\Rx/state_FSM_FFd3-In1 ),
    .I1(\Rx/data_byte_1_29 ),
    .I2(\Rx/_n0169_inv1 ),
    .I3(N181),
    .I4(rx_IBUF_2),
    .I5(\Rx/state_FSM_FFd2_380 ),
    .O(\Rx/data_byte_1_rstpot_1085 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \Rx/data_byte_2_rstpot_SW0  (
    .I0(\Rx/rx_bit_index [2]),
    .I1(\Rx/rx_bit_index [0]),
    .I2(\Rx/rx_bit_index [1]),
    .O(N183)
  );
  LUT6 #(
    .INIT ( 64'hEEFE440444044404 ))
  \Rx/data_byte_2_rstpot  (
    .I0(\Rx/state_FSM_FFd3-In1 ),
    .I1(\Rx/data_byte_2_28 ),
    .I2(\Rx/_n0169_inv1 ),
    .I3(N183),
    .I4(rx_IBUF_2),
    .I5(\Rx/state_FSM_FFd2_380 ),
    .O(\Rx/data_byte_2_rstpot_1086 )
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \Rx/data_byte_3_rstpot_SW0  (
    .I0(\Rx/rx_bit_index [0]),
    .I1(\Rx/rx_bit_index [2]),
    .I2(\Rx/rx_bit_index [1]),
    .O(N185)
  );
  LUT6 #(
    .INIT ( 64'hEEFE440444044404 ))
  \Rx/data_byte_3_rstpot  (
    .I0(\Rx/state_FSM_FFd3-In1 ),
    .I1(\Rx/data_byte_3_27 ),
    .I2(\Rx/_n0169_inv1 ),
    .I3(N185),
    .I4(rx_IBUF_2),
    .I5(\Rx/state_FSM_FFd2_380 ),
    .O(\Rx/data_byte_3_rstpot_1087 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \Rx/data_byte_4_rstpot_SW0  (
    .I0(\Rx/rx_bit_index [0]),
    .I1(\Rx/rx_bit_index [1]),
    .I2(\Rx/rx_bit_index [2]),
    .O(N187)
  );
  LUT6 #(
    .INIT ( 64'hEEFE440444044404 ))
  \Rx/data_byte_4_rstpot  (
    .I0(\Rx/state_FSM_FFd3-In1 ),
    .I1(\Rx/data_byte_4_26 ),
    .I2(\Rx/_n0169_inv1 ),
    .I3(N187),
    .I4(rx_IBUF_2),
    .I5(\Rx/state_FSM_FFd2_380 ),
    .O(\Rx/data_byte_4_rstpot_1088 )
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \Rx/data_byte_5_rstpot_SW0  (
    .I0(\Rx/rx_bit_index [0]),
    .I1(\Rx/rx_bit_index [1]),
    .I2(\Rx/rx_bit_index [2]),
    .O(N189)
  );
  LUT6 #(
    .INIT ( 64'hEEFE440444044404 ))
  \Rx/data_byte_5_rstpot  (
    .I0(\Rx/state_FSM_FFd3-In1 ),
    .I1(\Rx/data_byte_5_25 ),
    .I2(\Rx/_n0169_inv1 ),
    .I3(N189),
    .I4(rx_IBUF_2),
    .I5(\Rx/state_FSM_FFd2_380 ),
    .O(\Rx/data_byte_5_rstpot_1089 )
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \Rx/data_byte_6_rstpot_SW0  (
    .I0(\Rx/rx_bit_index [1]),
    .I1(\Rx/rx_bit_index [0]),
    .I2(\Rx/rx_bit_index [2]),
    .O(N191)
  );
  LUT6 #(
    .INIT ( 64'hEEFE440444044404 ))
  \Rx/data_byte_6_rstpot  (
    .I0(\Rx/state_FSM_FFd3-In1 ),
    .I1(\Rx/data_byte_6_24 ),
    .I2(\Rx/_n0169_inv1 ),
    .I3(N191),
    .I4(rx_IBUF_2),
    .I5(\Rx/state_FSM_FFd2_380 ),
    .O(\Rx/data_byte_6_rstpot_1090 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Rx/data_byte_7_rstpot_SW0  (
    .I0(\Rx/rx_bit_index [0]),
    .I1(\Rx/rx_bit_index [1]),
    .I2(\Rx/rx_bit_index [2]),
    .O(N193)
  );
  LUT6 #(
    .INIT ( 64'hFEEE044404440444 ))
  \Rx/data_byte_7_rstpot  (
    .I0(\Rx/state_FSM_FFd3-In1 ),
    .I1(\Rx/data_byte_7_23 ),
    .I2(\Rx/_n0169_inv1 ),
    .I3(N193),
    .I4(rx_IBUF_2),
    .I5(\Rx/state_FSM_FFd2_380 ),
    .O(\Rx/data_byte_7_rstpot_1091 )
  );
  LUT6 #(
    .INIT ( 64'hFF0FFFFF33FF55FF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A253_SW0  (
    .I0(\pentium4/AC_reg/d_out [18]),
    .I1(\pentium4/AC_reg/d_out [12]),
    .I2(\pentium4/AC_reg/d_out [19]),
    .I3(\pentium4/controlStore/MIR[19] ),
    .I4(\pentium4/controlStore/MIR[17] ),
    .I5(\pentium4/controlStore/MIR[18] ),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'hFF33FF000FFF55FF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A253_SW1  (
    .I0(\pentium4/AC_reg/d_out [18]),
    .I1(\pentium4/AC_reg/d_out [19]),
    .I2(\pentium4/AC_reg/d_out [12]),
    .I3(\pentium4/controlStore/MIR[19] ),
    .I4(\pentium4/controlStore/MIR[17] ),
    .I5(\pentium4/controlStore/MIR[18] ),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'hA7AFF7AFA7FFF7FF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A273_SW0  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/AC_reg/d_out [20]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/AC_reg/d_out [13]),
    .I5(\pentium4/AC_reg/d_out [19]),
    .O(N37)
  );
  LUT6 #(
    .INIT ( 64'h99D99DDDB9F9BDFD ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A273_SW1  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/AC_reg/d_out [13]),
    .I4(\pentium4/AC_reg/d_out [19]),
    .I5(\pentium4/AC_reg/d_out [20]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hA7AFF7AFA7FFF7FF ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A293_SW0  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/AC_reg/d_out [21]),
    .I2(\pentium4/controlStore/MIR[19] ),
    .I3(\pentium4/controlStore/MIR[17] ),
    .I4(\pentium4/AC_reg/d_out [14]),
    .I5(\pentium4/AC_reg/d_out [20]),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'h99D99DDDB9F9BDFD ))
  \pentium4/ALU_24bit/Mmux_C_bus12_A293_SW1  (
    .I0(\pentium4/controlStore/MIR[18] ),
    .I1(\pentium4/controlStore/MIR[19] ),
    .I2(\pentium4/controlStore/MIR[17] ),
    .I3(\pentium4/AC_reg/d_out [14]),
    .I4(\pentium4/AC_reg/d_out [20]),
    .I5(\pentium4/AC_reg/d_out [21]),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'h0000020020202220 ))
  \Rx/Mmux_state[2]_clock_count[32]_wide_mux_28_OUT11  (
    .I0(\Rx/clock_count[32]_GND_17_o_add_23_OUT<0> ),
    .I1(\Rx/state_FSM_FFd1_381 ),
    .I2(\Rx/state_FSM_FFd2_380 ),
    .I3(\Rx/state_FSM_FFd3_379 ),
    .I4(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>_341 ),
    .I5(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .O(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h0000020020202220 ))
  \Rx/Mmux_state[2]_clock_count[32]_wide_mux_28_OUT121  (
    .I0(\Rx/clock_count[32]_GND_17_o_add_23_OUT<1> ),
    .I1(\Rx/state_FSM_FFd1_381 ),
    .I2(\Rx/state_FSM_FFd2_380 ),
    .I3(\Rx/state_FSM_FFd3_379 ),
    .I4(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>_341 ),
    .I5(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .O(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0000020020202220 ))
  \Rx/Mmux_state[2]_clock_count[32]_wide_mux_28_OUT231  (
    .I0(\Rx/clock_count[32]_GND_17_o_add_23_OUT<2> ),
    .I1(\Rx/state_FSM_FFd1_381 ),
    .I2(\Rx/state_FSM_FFd2_380 ),
    .I3(\Rx/state_FSM_FFd3_379 ),
    .I4(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>_341 ),
    .I5(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .O(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0000020020202220 ))
  \Rx/Mmux_state[2]_clock_count[32]_wide_mux_28_OUT271  (
    .I0(\Rx/clock_count[32]_GND_17_o_add_23_OUT<3> ),
    .I1(\Rx/state_FSM_FFd1_381 ),
    .I2(\Rx/state_FSM_FFd2_380 ),
    .I3(\Rx/state_FSM_FFd3_379 ),
    .I4(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>_341 ),
    .I5(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .O(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0000020020202220 ))
  \Rx/Mmux_state[2]_clock_count[32]_wide_mux_28_OUT281  (
    .I0(\Rx/clock_count[32]_GND_17_o_add_23_OUT<4> ),
    .I1(\Rx/state_FSM_FFd1_381 ),
    .I2(\Rx/state_FSM_FFd2_380 ),
    .I3(\Rx/state_FSM_FFd3_379 ),
    .I4(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>_341 ),
    .I5(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .O(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h0000020020202220 ))
  \Rx/Mmux_state[2]_clock_count[32]_wide_mux_28_OUT291  (
    .I0(\Rx/clock_count[32]_GND_17_o_add_23_OUT<5> ),
    .I1(\Rx/state_FSM_FFd1_381 ),
    .I2(\Rx/state_FSM_FFd2_380 ),
    .I3(\Rx/state_FSM_FFd3_379 ),
    .I4(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_8_o_cy<5>_341 ),
    .I5(\Rx/Mcompar_clock_count[32]_GND_17_o_LessThan_12_o_cy<6>_330 ),
    .O(\Rx/state[2]_clock_count[32]_wide_mux_28_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'h020202008A8A8A88 ))
  \Tx/Mmux_state[2]_clock_count[32]_wide_mux_26_OUT11  (
    .I0(\Tx/clock_count[32]_GND_16_o_add_22_OUT<0> ),
    .I1(\Tx/state_FSM_FFd1_923 ),
    .I2(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ),
    .I3(\Tx/state_FSM_FFd2_922 ),
    .I4(\Tx/state_FSM_FFd3_921 ),
    .I5(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>_869 ),
    .O(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h020202008A8A8A88 ))
  \Tx/Mmux_state[2]_clock_count[32]_wide_mux_26_OUT121  (
    .I0(\Tx/clock_count[32]_GND_16_o_add_22_OUT<1> ),
    .I1(\Tx/state_FSM_FFd1_923 ),
    .I2(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ),
    .I3(\Tx/state_FSM_FFd2_922 ),
    .I4(\Tx/state_FSM_FFd3_921 ),
    .I5(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>_869 ),
    .O(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h020202008A8A8A88 ))
  \Tx/Mmux_state[2]_clock_count[32]_wide_mux_26_OUT231  (
    .I0(\Tx/clock_count[32]_GND_16_o_add_22_OUT<2> ),
    .I1(\Tx/state_FSM_FFd1_923 ),
    .I2(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ),
    .I3(\Tx/state_FSM_FFd2_922 ),
    .I4(\Tx/state_FSM_FFd3_921 ),
    .I5(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>_869 ),
    .O(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h020202008A8A8A88 ))
  \Tx/Mmux_state[2]_clock_count[32]_wide_mux_26_OUT271  (
    .I0(\Tx/clock_count[32]_GND_16_o_add_22_OUT<3> ),
    .I1(\Tx/state_FSM_FFd1_923 ),
    .I2(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ),
    .I3(\Tx/state_FSM_FFd2_922 ),
    .I4(\Tx/state_FSM_FFd3_921 ),
    .I5(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>_869 ),
    .O(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h020202008A8A8A88 ))
  \Tx/Mmux_state[2]_clock_count[32]_wide_mux_26_OUT281  (
    .I0(\Tx/clock_count[32]_GND_16_o_add_22_OUT<4> ),
    .I1(\Tx/state_FSM_FFd1_923 ),
    .I2(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ),
    .I3(\Tx/state_FSM_FFd2_922 ),
    .I4(\Tx/state_FSM_FFd3_921 ),
    .I5(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>_869 ),
    .O(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h020202008A8A8A88 ))
  \Tx/Mmux_state[2]_clock_count[32]_wide_mux_26_OUT291  (
    .I0(\Tx/clock_count[32]_GND_16_o_add_22_OUT<5> ),
    .I1(\Tx/state_FSM_FFd1_923 ),
    .I2(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_18_o_cy<6>_879 ),
    .I3(\Tx/state_FSM_FFd2_922 ),
    .I4(\Tx/state_FSM_FFd3_921 ),
    .I5(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_cy<6>_869 ),
    .O(\Tx/state[2]_clock_count[32]_wide_mux_26_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>3  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<0> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [0]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<1>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<1> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [1]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<2>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<2> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [2]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<3>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<3> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [3]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<4>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<4> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [4]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<5>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<5> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [5]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<6>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<6> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [6]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<7>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<7> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [7]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<8>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<8> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [8]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<9>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<9> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [9]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<10>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<10> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [10]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<11>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<11> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [11]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<12>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<12> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [12]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<12> )
  );
  LUT5 #(
    .INIT ( 32'hFF808080 ))
  \IO/STATE_TX_FSM_FFd5-In1  (
    .I0(\IO/STATE_TX_FSM_FFd2_303 ),
    .I1(\Tx/tx_data_done_84 ),
    .I2(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I3(\pentium4/controlStore/MIR[22] ),
    .I4(\IO/STATE_TX_FSM_FFd6_307 ),
    .O(\IO/STATE_TX_FSM_FFd5-In )
  );
  LUT5 #(
    .INIT ( 32'hD5558000 ))
  \IO/reset_cpu_rstpot  (
    .I0(\IO/STATE_RX_FSM_FFd2_281 ),
    .I1(\IO/GND_15_o_GND_15_o_equal_6_o_0 [16]),
    .I2(\IO/GND_15_o_GND_15_o_equal_6_o<16>1_936 ),
    .I3(\IO/GND_15_o_GND_15_o_equal_6_o<16>2_937 ),
    .I4(\IO/reset_cpu_21 ),
    .O(\IO/reset_cpu_rstpot_1082 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<13>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<13> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [13]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<13> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<14>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<14> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [14]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<14> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \IO/STATE_TX[3]_GND_15_o_select_37_OUT<15>1  (
    .I0(\IO/read_addr[16]_GND_15_o_add_24_OUT<15> ),
    .I1(\IO/STATE_TX_FSM_FFd2_303 ),
    .I2(\Tx/tx_data_done_84 ),
    .I3(\IO/read_addr[16]_GND_15_o_LessThan_24_o21 ),
    .I4(\IO/read_addr [15]),
    .I5(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<0>1 ),
    .O(\IO/STATE_TX[3]_GND_15_o_select_37_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<16>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<16> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [16])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<15>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<15> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [15])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<14>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<14> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [14])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<13>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<13> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [13])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<12>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<12> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [12])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<11>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<11> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [11])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<10>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<10> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [10])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<9>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<9> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [9])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<8>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<8> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [8])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<7>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<7> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [7])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<6>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<6> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [6])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<5>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<5> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [5])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<4>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<4> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [4])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<3>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<3> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [3])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<2>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<2> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [2])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<1>1  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<1> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [1])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \IO/STATE_RX__n0123<0>2  (
    .I0(\IO/write_addr[16]_GND_15_o_add_4_OUT<0> ),
    .I1(\IO/STATE_RX_FSM_FFd3_282 ),
    .I2(\IO/STATE_RX_FSM_FFd2_281 ),
    .O(\IO/_n0123 [0])
  );
  LUT6 #(
    .INIT ( 64'h0000000000004000 ))
  \pentium4/controlStore/_n0071<2>1  (
    .I0(\pentium4/controlStore/MIR[24] ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .I3(\pentium4/MBRU_reg/ins_out [6]),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/MIR[27] ),
    .O(\pentium4/controlStore/_n0071 [2])
  );
  LUT6 #(
    .INIT ( 64'h0000000000004000 ))
  \pentium4/controlStore/_n0071<1>1  (
    .I0(\pentium4/controlStore/MIR[24] ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/addr[7]_GND_10_o_equal_11_o<7>1 ),
    .I3(\pentium4/MBRU_reg/ins_out [7]),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/MIR[27] ),
    .O(\pentium4/controlStore/_n0071 [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF54 ))
  \IO/select_rstpot_SW0  (
    .I0(reset_IBUF_1),
    .I1(\IO/STATE_RX_FSM_FFd5_284 ),
    .I2(\IO/STATE_RX_FSM_FFd1_280 ),
    .I3(\IO/STATE_RX_FSM_FFd4_283 ),
    .I4(\IO/STATE_RX_FSM_FFd3_282 ),
    .O(N177)
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_1_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0077[6] ),
    .Q(\pentium4/controlStore/MIR_1_1_1208 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_3_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0077[4] ),
    .Q(\pentium4/controlStore/MIR_3_1_1209 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_17_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[17] ),
    .Q(\pentium4/controlStore/MIR_17_1_1210 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_19_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[19] ),
    .Q(\pentium4/controlStore/MIR_19_1_1211 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_20_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[20] ),
    .Q(\pentium4/controlStore/MIR_20_1_1212 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_1_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0077[6] ),
    .Q(\pentium4/controlStore/MIR_1_2_1213 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_2_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[2] ),
    .Q(\pentium4/controlStore/MIR_2_1_1214 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_18_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[18] ),
    .Q(\pentium4/controlStore/MIR_18_1_1215 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_19_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[19] ),
    .Q(\pentium4/controlStore/MIR_19_2_1216 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_1_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0077[6] ),
    .Q(\pentium4/controlStore/MIR_1_3_1217 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_2_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[2] ),
    .Q(\pentium4/controlStore/MIR_2_2_1218 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_18_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[18] ),
    .Q(\pentium4/controlStore/MIR_18_2_1219 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_3_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0077[4] ),
    .Q(\pentium4/controlStore/MIR_3_2_1220 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_17_2  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[17] ),
    .Q(\pentium4/controlStore/MIR_17_2_1221 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_0_1  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[0] ),
    .Q(\pentium4/controlStore/MIR_0_1_1222 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_2_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[2] ),
    .Q(\pentium4/controlStore/MIR_2_3_1223 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_1_4  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0077[6] ),
    .Q(\pentium4/controlStore/MIR_1_4_1224 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_19_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0035[19] ),
    .Q(\pentium4/controlStore/MIR_19_3_1225 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \pentium4/controlStore/MIR_3_3  (
    .C(\clk_gen/out_BUFG_3 ),
    .CE(\pentium4/controlStore/state[1]_PWR_10_o_equal_7_o ),
    .D(\pentium4/controlStore/_n0077[4] ),
    .Q(\pentium4/controlStore/MIR_3_3_1226 )
  );
  BUFG   \clk_gen/out_BUFG  (
    .O(\clk_gen/out_BUFG_3 ),
    .I(\clk_gen/out_1227 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \clk_gen/Mcount_counter_lut<0>_INV_0  (
    .I(\clk_gen/counter [0]),
    .O(\clk_gen/Mcount_counter_lut [0])
  );
  INV   \IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_lut<0>_INV_0  (
    .I(\IO/write_addr [0]),
    .O(\IO/Madd_write_addr[16]_GND_15_o_add_4_OUT_lut<0> )
  );
  INV   \IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_lut<0>_INV_0  (
    .I(\IO/read_addr [0]),
    .O(\IO/Madd_read_addr[16]_GND_15_o_add_24_OUT_lut<0> )
  );
  INV   \Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_lut<0>_INV_0  (
    .I(\Rx/clock_count [0]),
    .O(\Rx/Madd_clock_count[32]_GND_17_o_add_23_OUT_lut<0> )
  );
  INV   \Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_lut<0>_INV_0  (
    .I(\Tx/clock_count [0]),
    .O(\Tx/Madd_clock_count[32]_GND_16_o_add_22_OUT_lut<0> )
  );
  INV   status1_INV_0 (
    .I(\IO/select_22 ),
    .O(status_OBUF_102)
  );
  INV   \pentium4/MIR<14>_inv1_INV_0  (
    .I(\pentium4/controlStore/MIR[14] ),
    .O(\pentium4/MIR<14>_inv )
  );
  INV   \Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lut<1>1_INV_0  (
    .I(\Tx/clock_count [5]),
    .O(\Tx/Mcompar_clock_count[32]_GND_16_o_LessThan_22_o_lut<1> )
  );
  LUT6 #(
    .INIT ( 64'h82A20A0380AA6268 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT281  (
    .I0(\pentium4/controlStore/MIR[28] ),
    .I1(\pentium4/controlStore/MIR[26] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[23] ),
    .I5(\pentium4/controlStore/MIR[24] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<28> )
  );
  LUT6 #(
    .INIT ( 64'h8020A2818208A288 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT271  (
    .I0(\pentium4/controlStore/MIR[27] ),
    .I1(\pentium4/controlStore/MIR[28] ),
    .I2(\pentium4/controlStore/MIR[23] ),
    .I3(\pentium4/controlStore/MIR[26] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/MIR[24] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<27> )
  );
  LUT6 #(
    .INIT ( 64'h9588200980AA0828 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT261  (
    .I0(\pentium4/controlStore/MIR[26] ),
    .I1(\pentium4/controlStore/MIR[27] ),
    .I2(\pentium4/controlStore/MIR[28] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[23] ),
    .I5(\pentium4/controlStore/MIR[24] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<26> )
  );
  LUT6 #(
    .INIT ( 64'h0018080020380068 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT251  (
    .I0(\pentium4/controlStore/MIR[24] ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[25] ),
    .I3(\pentium4/controlStore/MIR[26] ),
    .I4(\pentium4/controlStore/MIR[28] ),
    .I5(\pentium4/controlStore/MIR[27] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<25> )
  );
  LUT6 #(
    .INIT ( 64'h1000042C10141C00 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT241  (
    .I0(\pentium4/controlStore/MIR[27] ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[24] ),
    .I3(\pentium4/controlStore/MIR[28] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/MIR[26] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<24> )
  );
  LUT6 #(
    .INIT ( 64'h9084111180905041 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT231  (
    .I0(\pentium4/controlStore/MIR[23] ),
    .I1(\pentium4/controlStore/MIR[27] ),
    .I2(\pentium4/controlStore/MIR[28] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[26] ),
    .I5(\pentium4/controlStore/MIR[24] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<23> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT221  (
    .I0(\pentium4/controlStore/MIR[23] ),
    .I1(\pentium4/controlStore/MIR[25] ),
    .I2(\pentium4/controlStore/MIR[26] ),
    .I3(\pentium4/controlStore/MIR[27] ),
    .I4(\pentium4/controlStore/MIR[24] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<22> )
  );
  LUT6 #(
    .INIT ( 64'h140406C4419C5450 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT201  (
    .I0(\pentium4/controlStore/MIR[26] ),
    .I1(\pentium4/controlStore/MIR[27] ),
    .I2(\pentium4/controlStore/MIR[25] ),
    .I3(\pentium4/controlStore/MIR[28] ),
    .I4(\pentium4/controlStore/MIR[24] ),
    .I5(\pentium4/controlStore/MIR[23] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<20> )
  );
  LUT6 #(
    .INIT ( 64'h1146481454C05042 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT191  (
    .I0(\pentium4/controlStore/MIR[27] ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[26] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[24] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<19> )
  );
  LUT6 #(
    .INIT ( 64'h18090C0C26298C10 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT181  (
    .I0(\pentium4/controlStore/MIR[24] ),
    .I1(\pentium4/controlStore/MIR[26] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[28] ),
    .I5(\pentium4/controlStore/MIR[23] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<18> )
  );
  LUT6 #(
    .INIT ( 64'h6376DC4C1324C406 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT171  (
    .I0(\pentium4/controlStore/MIR[27] ),
    .I1(\pentium4/controlStore/MIR[26] ),
    .I2(\pentium4/controlStore/MIR[24] ),
    .I3(\pentium4/controlStore/MIR[23] ),
    .I4(\pentium4/controlStore/MIR[28] ),
    .I5(\pentium4/controlStore/MIR[25] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<17> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT161  (
    .I0(\pentium4/controlStore/MIR[23] ),
    .I1(\pentium4/controlStore/MIR[24] ),
    .I2(\pentium4/controlStore/MIR[25] ),
    .I3(\pentium4/controlStore/MIR[26] ),
    .I4(\pentium4/controlStore/MIR[27] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<16> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT151  (
    .I0(\pentium4/controlStore/MIR[24] ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[25] ),
    .I3(\pentium4/controlStore/MIR[26] ),
    .I4(\pentium4/controlStore/MIR[27] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<15> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000004000 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT141  (
    .I0(\pentium4/controlStore/MIR[23] ),
    .I1(\pentium4/controlStore/MIR[27] ),
    .I2(\pentium4/controlStore/MIR[25] ),
    .I3(\pentium4/controlStore/MIR[26] ),
    .I4(\pentium4/controlStore/MIR[24] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<14> )
  );
  LUT6 #(
    .INIT ( 64'h0002000000002000 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT131  (
    .I0(\pentium4/controlStore/MIR[24] ),
    .I1(\pentium4/controlStore/MIR[25] ),
    .I2(\pentium4/controlStore/MIR[23] ),
    .I3(\pentium4/controlStore/MIR[26] ),
    .I4(\pentium4/controlStore/MIR[27] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<13> )
  );
  LUT6 #(
    .INIT ( 64'h0040000000000400 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT121  (
    .I0(\pentium4/controlStore/MIR[24] ),
    .I1(\pentium4/controlStore/MIR[25] ),
    .I2(\pentium4/controlStore/MIR[23] ),
    .I3(\pentium4/controlStore/MIR[26] ),
    .I4(\pentium4/controlStore/MIR[27] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<12> )
  );
  LUT6 #(
    .INIT ( 64'h0080000000000800 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT1111  (
    .I0(\pentium4/controlStore/MIR[25] ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[24] ),
    .I3(\pentium4/controlStore/MIR[26] ),
    .I4(\pentium4/controlStore/MIR[27] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000004000 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT101  (
    .I0(\pentium4/controlStore/MIR[23] ),
    .I1(\pentium4/controlStore/MIR[24] ),
    .I2(\pentium4/controlStore/MIR[25] ),
    .I3(\pentium4/controlStore/MIR[26] ),
    .I4(\pentium4/controlStore/MIR[27] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'h0000100440000000 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT91  (
    .I0(\pentium4/controlStore/MIR[27] ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[24] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[26] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'h3FD22DD21EB03F26 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT81  (
    .I0(\pentium4/controlStore/MIR[25] ),
    .I1(\pentium4/controlStore/MIR[26] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[28] ),
    .I4(\pentium4/controlStore/MIR[23] ),
    .I5(\pentium4/controlStore/MIR[24] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'h0110108000140081 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT71  (
    .I0(\pentium4/controlStore/MIR[27] ),
    .I1(\pentium4/controlStore/MIR[26] ),
    .I2(\pentium4/controlStore/MIR[23] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[28] ),
    .I5(\pentium4/controlStore/MIR[24] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT61  (
    .I0(\pentium4/controlStore/MIR[25] ),
    .I1(\pentium4/controlStore/MIR[23] ),
    .I2(\pentium4/controlStore/MIR[26] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[27] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT51  (
    .I0(\pentium4/controlStore/MIR[23] ),
    .I1(\pentium4/controlStore/MIR[24] ),
    .I2(\pentium4/controlStore/MIR[25] ),
    .I3(\pentium4/controlStore/MIR[26] ),
    .I4(\pentium4/controlStore/MIR[27] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'h0150100001180209 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT41  (
    .I0(\pentium4/controlStore/MIR[26] ),
    .I1(\pentium4/controlStore/MIR[27] ),
    .I2(\pentium4/controlStore/MIR[25] ),
    .I3(\pentium4/controlStore/MIR[28] ),
    .I4(\pentium4/controlStore/MIR[23] ),
    .I5(\pentium4/controlStore/MIR[24] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h0100900100090001 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT31  (
    .I0(\pentium4/controlStore/MIR[24] ),
    .I1(\pentium4/controlStore/MIR[26] ),
    .I2(\pentium4/controlStore/MIR[27] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[28] ),
    .I5(\pentium4/controlStore/MIR[23] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h4044000400040440 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT21  (
    .I0(\pentium4/controlStore/MIR[26] ),
    .I1(\pentium4/controlStore/MIR[27] ),
    .I2(\pentium4/controlStore/MIR[28] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[23] ),
    .I5(\pentium4/controlStore/MIR[24] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0A01012001444813 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT112  (
    .I0(\pentium4/controlStore/MIR[23] ),
    .I1(\pentium4/controlStore/MIR[27] ),
    .I2(\pentium4/controlStore/MIR[26] ),
    .I3(\pentium4/controlStore/MIR[24] ),
    .I4(\pentium4/controlStore/MIR[25] ),
    .I5(\pentium4/controlStore/MIR[28] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0209014401204510 ))
  \pentium4/controlStore_Mram_addr[5]_X_10_o_wide_mux_9_OUT110  (
    .I0(\pentium4/controlStore/MIR[23] ),
    .I1(\pentium4/controlStore/MIR[27] ),
    .I2(\pentium4/controlStore/MIR[26] ),
    .I3(\pentium4/controlStore/MIR[25] ),
    .I4(\pentium4/controlStore/MIR[28] ),
    .I5(\pentium4/controlStore/MIR[24] ),
    .O(\pentium4/controlStore/addr[5]_X_10_o_wide_mux_9_OUT<0> )
  );
  DataRAM   dram216 (
    .clka(\clk_gen/out_BUFG_3 ),
    .wea({write}),
    .addra({ram_addr[15], ram_addr[14], ram_addr[13], ram_addr[12], ram_addr[11], ram_addr[10], ram_addr[9], ram_addr[8], ram_addr[7], ram_addr[6], 
ram_addr[5], ram_addr[4], ram_addr[3], ram_addr[2], ram_addr[1], ram_addr[0]}),
    .dina({ram_in[7], ram_in[6], ram_in[5], ram_in[4], ram_in[3], ram_in[2], ram_in[1], ram_in[0]}),
    .douta({ram_out[7], ram_out[6], ram_out[5], ram_out[4], ram_out[3], ram_out[2], ram_out[1], ram_out[0]})
  );
  InsROM   irom512 (
    .clka(\clk_gen/out_BUFG_3 ),
    .addra({\pentium4/PC_reg/ins_addr [8], \pentium4/PC_reg/ins_addr [7], \pentium4/PC_reg/ins_addr [6], \pentium4/PC_reg/ins_addr [5], 
\pentium4/PC_reg/ins_addr [4], \pentium4/PC_reg/ins_addr [3], \pentium4/PC_reg/ins_addr [2], \pentium4/PC_reg/ins_addr [1], 
\pentium4/PC_reg/ins_addr [0]}),
    .douta({instruction[7], instruction[6], instruction[5], instruction[4], instruction[3], instruction[2], instruction[1], instruction[0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
