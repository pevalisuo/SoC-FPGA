// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Mar 17 16:44:24 2020
// Host        : kryyni running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /lacie/xilinx/linux/predictor/predictor-hw/predictor-hw.srcs/sources_1/bd/design_1/ip/design_1_predictor_0_0/design_1_predictor_0_0_stub.v
// Design      : design_1_predictor_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "predictor,Vivado 2019.2" *)
module design_1_predictor_0_0(aclk, aresetn, s00_axis_tready, s00_axis_tdata, 
  s00_axis_tstrb, s00_axis_tlast, s00_axis_tvalid, m00_axis_tvalid, m00_axis_tdata, 
  m00_axis_tstrb, m00_axis_tlast, m00_axis_tready, m00_axis_tkeep)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,m00_axis_tvalid,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tready,m00_axis_tkeep[3:0]" */;
  input aclk;
  input aresetn;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  input m00_axis_tready;
  output [3:0]m00_axis_tkeep;
endmodule
