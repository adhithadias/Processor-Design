/************************************************************************
 *                                                                      *
 * Copyright (c) 2009 Synfora, Inc.  All rights reserved.               *
 *                                                                      *
 * This file contains Confidential Information of Synfora, Inc.         *
 * In addition, certain inventions disclosed in this file may be        *
 * claimed within patents owned or patent applications filed by         *
 * Synfora or third parties.  Any use of Synfora's copyrighted works,   *
 * confidential information, patented inventions, or patent-pending     *
 * inventions is subject to the terms and conditions of your written    *
 * license agreement with Synfora, Inc.                                 *
 * All other use and disclosure is strictly prohibited.                 *
 *                                                                      *
 ************************************************************************/

/* Generated by PICO Extreme FPGA version 09.04 */
/* Target library : xilinx-spartan6-s2 */
/* Target frequency : 100 MHz */

`timescale 1ns / 10 ps
module test_pattern_generator_paw_0(
        clk,
        reset,
        enable,
        start,
        abort,
        status,
        err,
        stallbar_in,
        stallbar_out,
        busy,
        outstream_dvi_out_do_0,
        outstream_dvi_out_req_0,
        outstream_dvi_out_ready_0,
        rawdatain_0_0,
        rawdatainenable_0_0,
        rawdatain_1_0,
        rawdatainenable_1_0,
        rawdatain_2_0,
        rawdatainenable_2_0,
        rawdatain_3_0,
        rawdatainenable_3_0,
        rawdatain_4_0,
        rawdatainenable_4_0,
        rawdatain_5_0,
        rawdatainenable_5_0,
        rawdatain_6_0,
        rawdatainenable_6_0,
        rawdatain_7_0,
        rawdatainenable_7_0,
        rawdatain_8_0,
        rawdatainenable_8_0,
        rawdatain_9_0,
        rawdatainenable_9_0);

  // Module parameters


  // synopsys template

  // Ports

  input  clk;
  input  reset;
  input  enable;
  input  start;
  input  abort;
  output  status;
  output  err;
  input  stallbar_in;
  output  stallbar_out;
  output  busy;
  output [26 : 0] outstream_dvi_out_do_0;
  output  outstream_dvi_out_req_0;
  input  outstream_dvi_out_ready_0;
  input  rawdatain_0_0;
  input  rawdatainenable_0_0;
  input [31 : 0] rawdatain_1_0;
  input  rawdatainenable_1_0;
  input [31 : 0] rawdatain_2_0;
  input  rawdatainenable_2_0;
  input [31 : 0] rawdatain_3_0;
  input  rawdatainenable_3_0;
  input  rawdatain_4_0;
  input  rawdatainenable_4_0;
  input [31 : 0] rawdatain_5_0;
  input  rawdatainenable_5_0;
  input [31 : 0] rawdatain_6_0;
  input  rawdatainenable_6_0;
  input [31 : 0] rawdatain_7_0;
  input  rawdatainenable_7_0;
  input [31 : 0] rawdatain_8_0;
  input  rawdatainenable_8_0;
  input [31 : 0] rawdatain_9_0;
  input  rawdatainenable_9_0;

  // Wire/Reg for portformals 

  wire  clk;
  wire  reset;
  wire  enable;
  wire  start;
  wire  abort;
  wire  status;
  wire  err;
  wire  stallbar_in;
  wire  stallbar_out;
  wire  busy;
  wire [26 : 0] outstream_dvi_out_do_0;
  wire  outstream_dvi_out_req_0;
  wire  outstream_dvi_out_ready_0;
  wire  rawdatain_0_0;
  wire  rawdatainenable_0_0;
  wire [31 : 0] rawdatain_1_0;
  wire  rawdatainenable_1_0;
  wire [31 : 0] rawdatain_2_0;
  wire  rawdatainenable_2_0;
  wire [31 : 0] rawdatain_3_0;
  wire  rawdatainenable_3_0;
  wire  rawdatain_4_0;
  wire  rawdatainenable_4_0;
  wire [31 : 0] rawdatain_5_0;
  wire  rawdatainenable_5_0;
  wire [31 : 0] rawdatain_6_0;
  wire  rawdatainenable_6_0;
  wire [31 : 0] rawdatain_7_0;
  wire  rawdatainenable_7_0;
  wire [31 : 0] rawdatain_8_0;
  wire  rawdatainenable_8_0;
  wire [31 : 0] rawdatain_9_0;
  wire  rawdatainenable_9_0;

  wire [26 : 0] pa_outstream_dvi_out_do_0;
  wire  pa_outstream_dvi_out_req_0;
  wire  sig_outstream_dvi_out_ready_0;
  wire  sig_rawdatain_0_0;
  wire  sig_rawdatainenable_0_0;
  wire [31 : 0] sig_rawdatain_1_0;
  wire  sig_rawdatainenable_1_0;
  wire [31 : 0] sig_rawdatain_2_0;
  wire  sig_rawdatainenable_2_0;
  wire [31 : 0] sig_rawdatain_3_0;
  wire  sig_rawdatainenable_3_0;
  wire  sig_rawdatain_4_0;
  wire  sig_rawdatainenable_4_0;
  wire [31 : 0] sig_rawdatain_5_0;
  wire  sig_rawdatainenable_5_0;
  wire [31 : 0] sig_rawdatain_6_0;
  wire  sig_rawdatainenable_6_0;
  wire [31 : 0] sig_rawdatain_7_0;
  wire  sig_rawdatainenable_7_0;
  wire [31 : 0] sig_rawdatain_8_0;
  wire  sig_rawdatainenable_8_0;
  wire [31 : 0] sig_rawdatain_9_0;
  wire  sig_rawdatainenable_9_0;
  wire  slenable;
  wire  slstart;
  wire  slabort;
  wire  slstatus;
  wire  slerr;
  wire  slbusy;
  wire  slstallbarin;
  wire  slstallbarout;
  wire  pa_status;
  wire  and2n_inst0_o0;
  wire  and2n_inst2_o0;
  wire  saaslmentity_rsflipflop_inst0_q;
  wire  and3n_inst0_o0;
  wire  inverter1n_inst0_o0;
  wire  and2n_inst1_o0;
  wire  inverter1n_inst1_o0;
  wire  and2n_inst3_o0;


  // Signal assignments

  assign outstream_dvi_out_do_0 = pa_outstream_dvi_out_do_0;
  assign outstream_dvi_out_req_0 = pa_outstream_dvi_out_req_0;
  assign sig_outstream_dvi_out_ready_0 = outstream_dvi_out_ready_0;
  assign sig_rawdatain_0_0 = rawdatain_0_0;
  assign sig_rawdatainenable_0_0 = rawdatainenable_0_0;
  assign sig_rawdatain_1_0 = rawdatain_1_0;
  assign sig_rawdatainenable_1_0 = rawdatainenable_1_0;
  assign sig_rawdatain_2_0 = rawdatain_2_0;
  assign sig_rawdatainenable_2_0 = rawdatainenable_2_0;
  assign sig_rawdatain_3_0 = rawdatain_3_0;
  assign sig_rawdatainenable_3_0 = rawdatainenable_3_0;
  assign sig_rawdatain_4_0 = rawdatain_4_0;
  assign sig_rawdatainenable_4_0 = rawdatainenable_4_0;
  assign sig_rawdatain_5_0 = rawdatain_5_0;
  assign sig_rawdatainenable_5_0 = rawdatainenable_5_0;
  assign sig_rawdatain_6_0 = rawdatain_6_0;
  assign sig_rawdatainenable_6_0 = rawdatainenable_6_0;
  assign sig_rawdatain_7_0 = rawdatain_7_0;
  assign sig_rawdatainenable_7_0 = rawdatainenable_7_0;
  assign sig_rawdatain_8_0 = rawdatain_8_0;
  assign sig_rawdatainenable_8_0 = rawdatainenable_8_0;
  assign sig_rawdatain_9_0 = rawdatain_9_0;
  assign sig_rawdatainenable_9_0 = rawdatainenable_9_0;
  assign slenable = enable;
  assign slstart = start;
  assign slabort = abort;
  assign status = slstatus;
  assign err = slerr;
  assign busy = slbusy;
  assign slstallbarin = stallbar_in;
  assign stallbar_out = slstallbarout;

  // Basic logic assignments


  // Component port and generic maps / Behavioural code.

  test_pattern_generator_pa_0  pa(
                      .clk(clk),
                      .reset(reset),
                      .enable(slenable),
                      .start(slstart),
                      .abort(slabort),
                      .status(pa_status),
                      .err(slerr),
                      .stallbar_in(slstallbarin),
                      .stallbar_out(slstallbarout),
                      .busy(slbusy),
                      .outstream_dvi_out_do_0(pa_outstream_dvi_out_do_0[26 : 0]),
                      .outstream_dvi_out_req_0(pa_outstream_dvi_out_req_0),
                      .outstream_dvi_out_ready_0(sig_outstream_dvi_out_ready_0),
                      .lid_rawdatain_hsync_0_0(sig_rawdatain_0_0),
                      .lien_rawdatain_hsync_0_0(sig_rawdatainenable_0_0),
                      .lid_rawdatain_hblank_0_0(sig_rawdatain_1_0[31 : 0]),
                      .lien_rawdatain_hblank_0_0(sig_rawdatainenable_1_0),
                      .lid_rawdatain_hbporch_0_0(sig_rawdatain_2_0[31 : 0]),
                      .lien_rawdatain_hbporch_0_0(sig_rawdatainenable_2_0),
                      .lid_rawdatain_hactive_0_0(sig_rawdatain_3_0[31 : 0]),
                      .lien_rawdatain_hactive_0_0(sig_rawdatainenable_3_0),
                      .lid_rawdatain_vsync_0_0(sig_rawdatain_4_0),
                      .lien_rawdatain_vsync_0_0(sig_rawdatainenable_4_0),
                      .lid_rawdatain_vblank_0_0(sig_rawdatain_5_0[31 : 0]),
                      .lien_rawdatain_vblank_0_0(sig_rawdatainenable_5_0),
                      .lid_rawdatain_vbporch_0_0(sig_rawdatain_6_0[31 : 0]),
                      .lien_rawdatain_vbporch_0_0(sig_rawdatainenable_6_0),
                      .lid_rawdatain_vactive_0_0(sig_rawdatain_7_0[31 : 0]),
                      .lien_rawdatain_vactive_0_0(sig_rawdatainenable_7_0),
                      .lid_rawdatain_hfporch_0_0(sig_rawdatain_8_0[31 : 0]),
                      .lien_rawdatain_hfporch_0_0(sig_rawdatainenable_8_0),
                      .lid_rawdatain_vfporch_0_0(sig_rawdatain_9_0[31 : 0]),
                      .lien_rawdatain_vfporch_0_0(sig_rawdatainenable_9_0));

  rsflipflop #(.initvalue(0))  saaslmentity_rsflipflop_inst0(
                      .clk(clk),
                      .reset(reset),
                      .init(slabort),
                      .r(and2n_inst0_o0),
                      .s(and2n_inst2_o0),
                      .q(saaslmentity_rsflipflop_inst0_q));

  assign and3n_inst0_o0 = slenable & slstallbarin & slstallbarout;
  assign and2n_inst0_o0 = and3n_inst0_o0 & pa_status;
  assign inverter1n_inst0_o0 = ~pa_status;
  assign and2n_inst1_o0 = slstart & inverter1n_inst0_o0;
  assign and2n_inst2_o0 = and3n_inst0_o0 & and2n_inst1_o0;
  assign inverter1n_inst1_o0 = ~saaslmentity_rsflipflop_inst0_q;
  assign and2n_inst3_o0 = and3n_inst0_o0 & pa_status;
  assign slstatus = and2n_inst3_o0 | inverter1n_inst1_o0;

`ifdef TOPLEVEL_test_pattern_generator
`endif
endmodule
