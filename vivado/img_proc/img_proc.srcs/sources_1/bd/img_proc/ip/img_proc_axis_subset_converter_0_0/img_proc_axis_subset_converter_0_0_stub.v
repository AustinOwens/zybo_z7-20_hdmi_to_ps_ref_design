// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
// Date        : Sun Nov  3 22:07:59 2019
// Host        : austin-ubuntu running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_axis_subset_converter_0_0/img_proc_axis_subset_converter_0_0_stub.v
// Design      : img_proc_axis_subset_converter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_img_proc_axis_subset_converter_0_0,Vivado 2019.2" *)
module img_proc_axis_subset_converter_0_0(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tlast, s_axis_tuser, m_axis_tvalid, m_axis_tready, m_axis_tdata, 
  m_axis_tlast, m_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[23:0],s_axis_tlast,s_axis_tuser[0:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[23:0],m_axis_tlast,m_axis_tuser[0:0]" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input s_axis_tlast;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output m_axis_tlast;
  output [0:0]m_axis_tuser;
endmodule