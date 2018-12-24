// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Dec 22 04:38:01 2018
// Host        : DESKTOP-2C3UA9R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_ShuffleNetV2_0_1/accelerator_bd_ShuffleNetV2_0_1_stub.v
// Design      : accelerator_bd_ShuffleNetV2_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ShuffleNetV2,Vivado 2017.2" *)
module accelerator_bd_ShuffleNetV2_0_1(s_axi_CTL_AWADDR, s_axi_CTL_AWVALID, 
  s_axi_CTL_AWREADY, s_axi_CTL_WDATA, s_axi_CTL_WSTRB, s_axi_CTL_WVALID, s_axi_CTL_WREADY, 
  s_axi_CTL_BRESP, s_axi_CTL_BVALID, s_axi_CTL_BREADY, s_axi_CTL_ARADDR, s_axi_CTL_ARVALID, 
  s_axi_CTL_ARREADY, s_axi_CTL_RDATA, s_axi_CTL_RRESP, s_axi_CTL_RVALID, s_axi_CTL_RREADY, 
  ap_clk, ap_rst_n, interrupt, m_axi_DATA_INPUT_OUTPUT_AWADDR, 
  m_axi_DATA_INPUT_OUTPUT_AWLEN, m_axi_DATA_INPUT_OUTPUT_AWSIZE, 
  m_axi_DATA_INPUT_OUTPUT_AWBURST, m_axi_DATA_INPUT_OUTPUT_AWLOCK, 
  m_axi_DATA_INPUT_OUTPUT_AWREGION, m_axi_DATA_INPUT_OUTPUT_AWCACHE, 
  m_axi_DATA_INPUT_OUTPUT_AWPROT, m_axi_DATA_INPUT_OUTPUT_AWQOS, 
  m_axi_DATA_INPUT_OUTPUT_AWVALID, m_axi_DATA_INPUT_OUTPUT_AWREADY, 
  m_axi_DATA_INPUT_OUTPUT_WDATA, m_axi_DATA_INPUT_OUTPUT_WSTRB, 
  m_axi_DATA_INPUT_OUTPUT_WLAST, m_axi_DATA_INPUT_OUTPUT_WVALID, 
  m_axi_DATA_INPUT_OUTPUT_WREADY, m_axi_DATA_INPUT_OUTPUT_BRESP, 
  m_axi_DATA_INPUT_OUTPUT_BVALID, m_axi_DATA_INPUT_OUTPUT_BREADY, 
  m_axi_DATA_INPUT_OUTPUT_ARADDR, m_axi_DATA_INPUT_OUTPUT_ARLEN, 
  m_axi_DATA_INPUT_OUTPUT_ARSIZE, m_axi_DATA_INPUT_OUTPUT_ARBURST, 
  m_axi_DATA_INPUT_OUTPUT_ARLOCK, m_axi_DATA_INPUT_OUTPUT_ARREGION, 
  m_axi_DATA_INPUT_OUTPUT_ARCACHE, m_axi_DATA_INPUT_OUTPUT_ARPROT, 
  m_axi_DATA_INPUT_OUTPUT_ARQOS, m_axi_DATA_INPUT_OUTPUT_ARVALID, 
  m_axi_DATA_INPUT_OUTPUT_ARREADY, m_axi_DATA_INPUT_OUTPUT_RDATA, 
  m_axi_DATA_INPUT_OUTPUT_RRESP, m_axi_DATA_INPUT_OUTPUT_RLAST, 
  m_axi_DATA_INPUT_OUTPUT_RVALID, m_axi_DATA_INPUT_OUTPUT_RREADY, 
  m_axi_DATA_OTHER_WEIGHTS_AWADDR, m_axi_DATA_OTHER_WEIGHTS_AWLEN, 
  m_axi_DATA_OTHER_WEIGHTS_AWSIZE, m_axi_DATA_OTHER_WEIGHTS_AWBURST, 
  m_axi_DATA_OTHER_WEIGHTS_AWLOCK, m_axi_DATA_OTHER_WEIGHTS_AWREGION, 
  m_axi_DATA_OTHER_WEIGHTS_AWCACHE, m_axi_DATA_OTHER_WEIGHTS_AWPROT, 
  m_axi_DATA_OTHER_WEIGHTS_AWQOS, m_axi_DATA_OTHER_WEIGHTS_AWVALID, 
  m_axi_DATA_OTHER_WEIGHTS_AWREADY, m_axi_DATA_OTHER_WEIGHTS_WDATA, 
  m_axi_DATA_OTHER_WEIGHTS_WSTRB, m_axi_DATA_OTHER_WEIGHTS_WLAST, 
  m_axi_DATA_OTHER_WEIGHTS_WVALID, m_axi_DATA_OTHER_WEIGHTS_WREADY, 
  m_axi_DATA_OTHER_WEIGHTS_BRESP, m_axi_DATA_OTHER_WEIGHTS_BVALID, 
  m_axi_DATA_OTHER_WEIGHTS_BREADY, m_axi_DATA_OTHER_WEIGHTS_ARADDR, 
  m_axi_DATA_OTHER_WEIGHTS_ARLEN, m_axi_DATA_OTHER_WEIGHTS_ARSIZE, 
  m_axi_DATA_OTHER_WEIGHTS_ARBURST, m_axi_DATA_OTHER_WEIGHTS_ARLOCK, 
  m_axi_DATA_OTHER_WEIGHTS_ARREGION, m_axi_DATA_OTHER_WEIGHTS_ARCACHE, 
  m_axi_DATA_OTHER_WEIGHTS_ARPROT, m_axi_DATA_OTHER_WEIGHTS_ARQOS, 
  m_axi_DATA_OTHER_WEIGHTS_ARVALID, m_axi_DATA_OTHER_WEIGHTS_ARREADY, 
  m_axi_DATA_OTHER_WEIGHTS_RDATA, m_axi_DATA_OTHER_WEIGHTS_RRESP, 
  m_axi_DATA_OTHER_WEIGHTS_RLAST, m_axi_DATA_OTHER_WEIGHTS_RVALID, 
  m_axi_DATA_OTHER_WEIGHTS_RREADY, m_axi_p3X3_1X1_WEIGHTS_AWADDR, 
  m_axi_p3X3_1X1_WEIGHTS_AWLEN, m_axi_p3X3_1X1_WEIGHTS_AWSIZE, 
  m_axi_p3X3_1X1_WEIGHTS_AWBURST, m_axi_p3X3_1X1_WEIGHTS_AWLOCK, 
  m_axi_p3X3_1X1_WEIGHTS_AWREGION, m_axi_p3X3_1X1_WEIGHTS_AWCACHE, 
  m_axi_p3X3_1X1_WEIGHTS_AWPROT, m_axi_p3X3_1X1_WEIGHTS_AWQOS, 
  m_axi_p3X3_1X1_WEIGHTS_AWVALID, m_axi_p3X3_1X1_WEIGHTS_AWREADY, 
  m_axi_p3X3_1X1_WEIGHTS_WDATA, m_axi_p3X3_1X1_WEIGHTS_WSTRB, 
  m_axi_p3X3_1X1_WEIGHTS_WLAST, m_axi_p3X3_1X1_WEIGHTS_WVALID, 
  m_axi_p3X3_1X1_WEIGHTS_WREADY, m_axi_p3X3_1X1_WEIGHTS_BRESP, 
  m_axi_p3X3_1X1_WEIGHTS_BVALID, m_axi_p3X3_1X1_WEIGHTS_BREADY, 
  m_axi_p3X3_1X1_WEIGHTS_ARADDR, m_axi_p3X3_1X1_WEIGHTS_ARLEN, 
  m_axi_p3X3_1X1_WEIGHTS_ARSIZE, m_axi_p3X3_1X1_WEIGHTS_ARBURST, 
  m_axi_p3X3_1X1_WEIGHTS_ARLOCK, m_axi_p3X3_1X1_WEIGHTS_ARREGION, 
  m_axi_p3X3_1X1_WEIGHTS_ARCACHE, m_axi_p3X3_1X1_WEIGHTS_ARPROT, 
  m_axi_p3X3_1X1_WEIGHTS_ARQOS, m_axi_p3X3_1X1_WEIGHTS_ARVALID, 
  m_axi_p3X3_1X1_WEIGHTS_ARREADY, m_axi_p3X3_1X1_WEIGHTS_RDATA, 
  m_axi_p3X3_1X1_WEIGHTS_RRESP, m_axi_p3X3_1X1_WEIGHTS_RLAST, 
  m_axi_p3X3_1X1_WEIGHTS_RVALID, m_axi_p3X3_1X1_WEIGHTS_RREADY, m_axi_DATA_BIAS_AWADDR, 
  m_axi_DATA_BIAS_AWLEN, m_axi_DATA_BIAS_AWSIZE, m_axi_DATA_BIAS_AWBURST, 
  m_axi_DATA_BIAS_AWLOCK, m_axi_DATA_BIAS_AWREGION, m_axi_DATA_BIAS_AWCACHE, 
  m_axi_DATA_BIAS_AWPROT, m_axi_DATA_BIAS_AWQOS, m_axi_DATA_BIAS_AWVALID, 
  m_axi_DATA_BIAS_AWREADY, m_axi_DATA_BIAS_WDATA, m_axi_DATA_BIAS_WSTRB, 
  m_axi_DATA_BIAS_WLAST, m_axi_DATA_BIAS_WVALID, m_axi_DATA_BIAS_WREADY, 
  m_axi_DATA_BIAS_BRESP, m_axi_DATA_BIAS_BVALID, m_axi_DATA_BIAS_BREADY, 
  m_axi_DATA_BIAS_ARADDR, m_axi_DATA_BIAS_ARLEN, m_axi_DATA_BIAS_ARSIZE, 
  m_axi_DATA_BIAS_ARBURST, m_axi_DATA_BIAS_ARLOCK, m_axi_DATA_BIAS_ARREGION, 
  m_axi_DATA_BIAS_ARCACHE, m_axi_DATA_BIAS_ARPROT, m_axi_DATA_BIAS_ARQOS, 
  m_axi_DATA_BIAS_ARVALID, m_axi_DATA_BIAS_ARREADY, m_axi_DATA_BIAS_RDATA, 
  m_axi_DATA_BIAS_RRESP, m_axi_DATA_BIAS_RLAST, m_axi_DATA_BIAS_RVALID, 
  m_axi_DATA_BIAS_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTL_AWADDR[7:0],s_axi_CTL_AWVALID,s_axi_CTL_AWREADY,s_axi_CTL_WDATA[31:0],s_axi_CTL_WSTRB[3:0],s_axi_CTL_WVALID,s_axi_CTL_WREADY,s_axi_CTL_BRESP[1:0],s_axi_CTL_BVALID,s_axi_CTL_BREADY,s_axi_CTL_ARADDR[7:0],s_axi_CTL_ARVALID,s_axi_CTL_ARREADY,s_axi_CTL_RDATA[31:0],s_axi_CTL_RRESP[1:0],s_axi_CTL_RVALID,s_axi_CTL_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_DATA_INPUT_OUTPUT_AWADDR[31:0],m_axi_DATA_INPUT_OUTPUT_AWLEN[7:0],m_axi_DATA_INPUT_OUTPUT_AWSIZE[2:0],m_axi_DATA_INPUT_OUTPUT_AWBURST[1:0],m_axi_DATA_INPUT_OUTPUT_AWLOCK[1:0],m_axi_DATA_INPUT_OUTPUT_AWREGION[3:0],m_axi_DATA_INPUT_OUTPUT_AWCACHE[3:0],m_axi_DATA_INPUT_OUTPUT_AWPROT[2:0],m_axi_DATA_INPUT_OUTPUT_AWQOS[3:0],m_axi_DATA_INPUT_OUTPUT_AWVALID,m_axi_DATA_INPUT_OUTPUT_AWREADY,m_axi_DATA_INPUT_OUTPUT_WDATA[31:0],m_axi_DATA_INPUT_OUTPUT_WSTRB[3:0],m_axi_DATA_INPUT_OUTPUT_WLAST,m_axi_DATA_INPUT_OUTPUT_WVALID,m_axi_DATA_INPUT_OUTPUT_WREADY,m_axi_DATA_INPUT_OUTPUT_BRESP[1:0],m_axi_DATA_INPUT_OUTPUT_BVALID,m_axi_DATA_INPUT_OUTPUT_BREADY,m_axi_DATA_INPUT_OUTPUT_ARADDR[31:0],m_axi_DATA_INPUT_OUTPUT_ARLEN[7:0],m_axi_DATA_INPUT_OUTPUT_ARSIZE[2:0],m_axi_DATA_INPUT_OUTPUT_ARBURST[1:0],m_axi_DATA_INPUT_OUTPUT_ARLOCK[1:0],m_axi_DATA_INPUT_OUTPUT_ARREGION[3:0],m_axi_DATA_INPUT_OUTPUT_ARCACHE[3:0],m_axi_DATA_INPUT_OUTPUT_ARPROT[2:0],m_axi_DATA_INPUT_OUTPUT_ARQOS[3:0],m_axi_DATA_INPUT_OUTPUT_ARVALID,m_axi_DATA_INPUT_OUTPUT_ARREADY,m_axi_DATA_INPUT_OUTPUT_RDATA[31:0],m_axi_DATA_INPUT_OUTPUT_RRESP[1:0],m_axi_DATA_INPUT_OUTPUT_RLAST,m_axi_DATA_INPUT_OUTPUT_RVALID,m_axi_DATA_INPUT_OUTPUT_RREADY,m_axi_DATA_OTHER_WEIGHTS_AWADDR[31:0],m_axi_DATA_OTHER_WEIGHTS_AWLEN[7:0],m_axi_DATA_OTHER_WEIGHTS_AWSIZE[2:0],m_axi_DATA_OTHER_WEIGHTS_AWBURST[1:0],m_axi_DATA_OTHER_WEIGHTS_AWLOCK[1:0],m_axi_DATA_OTHER_WEIGHTS_AWREGION[3:0],m_axi_DATA_OTHER_WEIGHTS_AWCACHE[3:0],m_axi_DATA_OTHER_WEIGHTS_AWPROT[2:0],m_axi_DATA_OTHER_WEIGHTS_AWQOS[3:0],m_axi_DATA_OTHER_WEIGHTS_AWVALID,m_axi_DATA_OTHER_WEIGHTS_AWREADY,m_axi_DATA_OTHER_WEIGHTS_WDATA[31:0],m_axi_DATA_OTHER_WEIGHTS_WSTRB[3:0],m_axi_DATA_OTHER_WEIGHTS_WLAST,m_axi_DATA_OTHER_WEIGHTS_WVALID,m_axi_DATA_OTHER_WEIGHTS_WREADY,m_axi_DATA_OTHER_WEIGHTS_BRESP[1:0],m_axi_DATA_OTHER_WEIGHTS_BVALID,m_axi_DATA_OTHER_WEIGHTS_BREADY,m_axi_DATA_OTHER_WEIGHTS_ARADDR[31:0],m_axi_DATA_OTHER_WEIGHTS_ARLEN[7:0],m_axi_DATA_OTHER_WEIGHTS_ARSIZE[2:0],m_axi_DATA_OTHER_WEIGHTS_ARBURST[1:0],m_axi_DATA_OTHER_WEIGHTS_ARLOCK[1:0],m_axi_DATA_OTHER_WEIGHTS_ARREGION[3:0],m_axi_DATA_OTHER_WEIGHTS_ARCACHE[3:0],m_axi_DATA_OTHER_WEIGHTS_ARPROT[2:0],m_axi_DATA_OTHER_WEIGHTS_ARQOS[3:0],m_axi_DATA_OTHER_WEIGHTS_ARVALID,m_axi_DATA_OTHER_WEIGHTS_ARREADY,m_axi_DATA_OTHER_WEIGHTS_RDATA[31:0],m_axi_DATA_OTHER_WEIGHTS_RRESP[1:0],m_axi_DATA_OTHER_WEIGHTS_RLAST,m_axi_DATA_OTHER_WEIGHTS_RVALID,m_axi_DATA_OTHER_WEIGHTS_RREADY,m_axi_p3X3_1X1_WEIGHTS_AWADDR[31:0],m_axi_p3X3_1X1_WEIGHTS_AWLEN[7:0],m_axi_p3X3_1X1_WEIGHTS_AWSIZE[2:0],m_axi_p3X3_1X1_WEIGHTS_AWBURST[1:0],m_axi_p3X3_1X1_WEIGHTS_AWLOCK[1:0],m_axi_p3X3_1X1_WEIGHTS_AWREGION[3:0],m_axi_p3X3_1X1_WEIGHTS_AWCACHE[3:0],m_axi_p3X3_1X1_WEIGHTS_AWPROT[2:0],m_axi_p3X3_1X1_WEIGHTS_AWQOS[3:0],m_axi_p3X3_1X1_WEIGHTS_AWVALID,m_axi_p3X3_1X1_WEIGHTS_AWREADY,m_axi_p3X3_1X1_WEIGHTS_WDATA[31:0],m_axi_p3X3_1X1_WEIGHTS_WSTRB[3:0],m_axi_p3X3_1X1_WEIGHTS_WLAST,m_axi_p3X3_1X1_WEIGHTS_WVALID,m_axi_p3X3_1X1_WEIGHTS_WREADY,m_axi_p3X3_1X1_WEIGHTS_BRESP[1:0],m_axi_p3X3_1X1_WEIGHTS_BVALID,m_axi_p3X3_1X1_WEIGHTS_BREADY,m_axi_p3X3_1X1_WEIGHTS_ARADDR[31:0],m_axi_p3X3_1X1_WEIGHTS_ARLEN[7:0],m_axi_p3X3_1X1_WEIGHTS_ARSIZE[2:0],m_axi_p3X3_1X1_WEIGHTS_ARBURST[1:0],m_axi_p3X3_1X1_WEIGHTS_ARLOCK[1:0],m_axi_p3X3_1X1_WEIGHTS_ARREGION[3:0],m_axi_p3X3_1X1_WEIGHTS_ARCACHE[3:0],m_axi_p3X3_1X1_WEIGHTS_ARPROT[2:0],m_axi_p3X3_1X1_WEIGHTS_ARQOS[3:0],m_axi_p3X3_1X1_WEIGHTS_ARVALID,m_axi_p3X3_1X1_WEIGHTS_ARREADY,m_axi_p3X3_1X1_WEIGHTS_RDATA[31:0],m_axi_p3X3_1X1_WEIGHTS_RRESP[1:0],m_axi_p3X3_1X1_WEIGHTS_RLAST,m_axi_p3X3_1X1_WEIGHTS_RVALID,m_axi_p3X3_1X1_WEIGHTS_RREADY,m_axi_DATA_BIAS_AWADDR[31:0],m_axi_DATA_BIAS_AWLEN[7:0],m_axi_DATA_BIAS_AWSIZE[2:0],m_axi_DATA_BIAS_AWBURST[1:0],m_axi_DATA_BIAS_AWLOCK[1:0],m_axi_DATA_BIAS_AWREGION[3:0],m_axi_DATA_BIAS_AWCACHE[3:0],m_axi_DATA_BIAS_AWPROT[2:0],m_axi_DATA_BIAS_AWQOS[3:0],m_axi_DATA_BIAS_AWVALID,m_axi_DATA_BIAS_AWREADY,m_axi_DATA_BIAS_WDATA[31:0],m_axi_DATA_BIAS_WSTRB[3:0],m_axi_DATA_BIAS_WLAST,m_axi_DATA_BIAS_WVALID,m_axi_DATA_BIAS_WREADY,m_axi_DATA_BIAS_BRESP[1:0],m_axi_DATA_BIAS_BVALID,m_axi_DATA_BIAS_BREADY,m_axi_DATA_BIAS_ARADDR[31:0],m_axi_DATA_BIAS_ARLEN[7:0],m_axi_DATA_BIAS_ARSIZE[2:0],m_axi_DATA_BIAS_ARBURST[1:0],m_axi_DATA_BIAS_ARLOCK[1:0],m_axi_DATA_BIAS_ARREGION[3:0],m_axi_DATA_BIAS_ARCACHE[3:0],m_axi_DATA_BIAS_ARPROT[2:0],m_axi_DATA_BIAS_ARQOS[3:0],m_axi_DATA_BIAS_ARVALID,m_axi_DATA_BIAS_ARREADY,m_axi_DATA_BIAS_RDATA[31:0],m_axi_DATA_BIAS_RRESP[1:0],m_axi_DATA_BIAS_RLAST,m_axi_DATA_BIAS_RVALID,m_axi_DATA_BIAS_RREADY" */;
  input [7:0]s_axi_CTL_AWADDR;
  input s_axi_CTL_AWVALID;
  output s_axi_CTL_AWREADY;
  input [31:0]s_axi_CTL_WDATA;
  input [3:0]s_axi_CTL_WSTRB;
  input s_axi_CTL_WVALID;
  output s_axi_CTL_WREADY;
  output [1:0]s_axi_CTL_BRESP;
  output s_axi_CTL_BVALID;
  input s_axi_CTL_BREADY;
  input [7:0]s_axi_CTL_ARADDR;
  input s_axi_CTL_ARVALID;
  output s_axi_CTL_ARREADY;
  output [31:0]s_axi_CTL_RDATA;
  output [1:0]s_axi_CTL_RRESP;
  output s_axi_CTL_RVALID;
  input s_axi_CTL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_DATA_INPUT_OUTPUT_AWADDR;
  output [7:0]m_axi_DATA_INPUT_OUTPUT_AWLEN;
  output [2:0]m_axi_DATA_INPUT_OUTPUT_AWSIZE;
  output [1:0]m_axi_DATA_INPUT_OUTPUT_AWBURST;
  output [1:0]m_axi_DATA_INPUT_OUTPUT_AWLOCK;
  output [3:0]m_axi_DATA_INPUT_OUTPUT_AWREGION;
  output [3:0]m_axi_DATA_INPUT_OUTPUT_AWCACHE;
  output [2:0]m_axi_DATA_INPUT_OUTPUT_AWPROT;
  output [3:0]m_axi_DATA_INPUT_OUTPUT_AWQOS;
  output m_axi_DATA_INPUT_OUTPUT_AWVALID;
  input m_axi_DATA_INPUT_OUTPUT_AWREADY;
  output [31:0]m_axi_DATA_INPUT_OUTPUT_WDATA;
  output [3:0]m_axi_DATA_INPUT_OUTPUT_WSTRB;
  output m_axi_DATA_INPUT_OUTPUT_WLAST;
  output m_axi_DATA_INPUT_OUTPUT_WVALID;
  input m_axi_DATA_INPUT_OUTPUT_WREADY;
  input [1:0]m_axi_DATA_INPUT_OUTPUT_BRESP;
  input m_axi_DATA_INPUT_OUTPUT_BVALID;
  output m_axi_DATA_INPUT_OUTPUT_BREADY;
  output [31:0]m_axi_DATA_INPUT_OUTPUT_ARADDR;
  output [7:0]m_axi_DATA_INPUT_OUTPUT_ARLEN;
  output [2:0]m_axi_DATA_INPUT_OUTPUT_ARSIZE;
  output [1:0]m_axi_DATA_INPUT_OUTPUT_ARBURST;
  output [1:0]m_axi_DATA_INPUT_OUTPUT_ARLOCK;
  output [3:0]m_axi_DATA_INPUT_OUTPUT_ARREGION;
  output [3:0]m_axi_DATA_INPUT_OUTPUT_ARCACHE;
  output [2:0]m_axi_DATA_INPUT_OUTPUT_ARPROT;
  output [3:0]m_axi_DATA_INPUT_OUTPUT_ARQOS;
  output m_axi_DATA_INPUT_OUTPUT_ARVALID;
  input m_axi_DATA_INPUT_OUTPUT_ARREADY;
  input [31:0]m_axi_DATA_INPUT_OUTPUT_RDATA;
  input [1:0]m_axi_DATA_INPUT_OUTPUT_RRESP;
  input m_axi_DATA_INPUT_OUTPUT_RLAST;
  input m_axi_DATA_INPUT_OUTPUT_RVALID;
  output m_axi_DATA_INPUT_OUTPUT_RREADY;
  output [31:0]m_axi_DATA_OTHER_WEIGHTS_AWADDR;
  output [7:0]m_axi_DATA_OTHER_WEIGHTS_AWLEN;
  output [2:0]m_axi_DATA_OTHER_WEIGHTS_AWSIZE;
  output [1:0]m_axi_DATA_OTHER_WEIGHTS_AWBURST;
  output [1:0]m_axi_DATA_OTHER_WEIGHTS_AWLOCK;
  output [3:0]m_axi_DATA_OTHER_WEIGHTS_AWREGION;
  output [3:0]m_axi_DATA_OTHER_WEIGHTS_AWCACHE;
  output [2:0]m_axi_DATA_OTHER_WEIGHTS_AWPROT;
  output [3:0]m_axi_DATA_OTHER_WEIGHTS_AWQOS;
  output m_axi_DATA_OTHER_WEIGHTS_AWVALID;
  input m_axi_DATA_OTHER_WEIGHTS_AWREADY;
  output [31:0]m_axi_DATA_OTHER_WEIGHTS_WDATA;
  output [3:0]m_axi_DATA_OTHER_WEIGHTS_WSTRB;
  output m_axi_DATA_OTHER_WEIGHTS_WLAST;
  output m_axi_DATA_OTHER_WEIGHTS_WVALID;
  input m_axi_DATA_OTHER_WEIGHTS_WREADY;
  input [1:0]m_axi_DATA_OTHER_WEIGHTS_BRESP;
  input m_axi_DATA_OTHER_WEIGHTS_BVALID;
  output m_axi_DATA_OTHER_WEIGHTS_BREADY;
  output [31:0]m_axi_DATA_OTHER_WEIGHTS_ARADDR;
  output [7:0]m_axi_DATA_OTHER_WEIGHTS_ARLEN;
  output [2:0]m_axi_DATA_OTHER_WEIGHTS_ARSIZE;
  output [1:0]m_axi_DATA_OTHER_WEIGHTS_ARBURST;
  output [1:0]m_axi_DATA_OTHER_WEIGHTS_ARLOCK;
  output [3:0]m_axi_DATA_OTHER_WEIGHTS_ARREGION;
  output [3:0]m_axi_DATA_OTHER_WEIGHTS_ARCACHE;
  output [2:0]m_axi_DATA_OTHER_WEIGHTS_ARPROT;
  output [3:0]m_axi_DATA_OTHER_WEIGHTS_ARQOS;
  output m_axi_DATA_OTHER_WEIGHTS_ARVALID;
  input m_axi_DATA_OTHER_WEIGHTS_ARREADY;
  input [31:0]m_axi_DATA_OTHER_WEIGHTS_RDATA;
  input [1:0]m_axi_DATA_OTHER_WEIGHTS_RRESP;
  input m_axi_DATA_OTHER_WEIGHTS_RLAST;
  input m_axi_DATA_OTHER_WEIGHTS_RVALID;
  output m_axi_DATA_OTHER_WEIGHTS_RREADY;
  output [31:0]m_axi_p3X3_1X1_WEIGHTS_AWADDR;
  output [7:0]m_axi_p3X3_1X1_WEIGHTS_AWLEN;
  output [2:0]m_axi_p3X3_1X1_WEIGHTS_AWSIZE;
  output [1:0]m_axi_p3X3_1X1_WEIGHTS_AWBURST;
  output [1:0]m_axi_p3X3_1X1_WEIGHTS_AWLOCK;
  output [3:0]m_axi_p3X3_1X1_WEIGHTS_AWREGION;
  output [3:0]m_axi_p3X3_1X1_WEIGHTS_AWCACHE;
  output [2:0]m_axi_p3X3_1X1_WEIGHTS_AWPROT;
  output [3:0]m_axi_p3X3_1X1_WEIGHTS_AWQOS;
  output m_axi_p3X3_1X1_WEIGHTS_AWVALID;
  input m_axi_p3X3_1X1_WEIGHTS_AWREADY;
  output [31:0]m_axi_p3X3_1X1_WEIGHTS_WDATA;
  output [3:0]m_axi_p3X3_1X1_WEIGHTS_WSTRB;
  output m_axi_p3X3_1X1_WEIGHTS_WLAST;
  output m_axi_p3X3_1X1_WEIGHTS_WVALID;
  input m_axi_p3X3_1X1_WEIGHTS_WREADY;
  input [1:0]m_axi_p3X3_1X1_WEIGHTS_BRESP;
  input m_axi_p3X3_1X1_WEIGHTS_BVALID;
  output m_axi_p3X3_1X1_WEIGHTS_BREADY;
  output [31:0]m_axi_p3X3_1X1_WEIGHTS_ARADDR;
  output [7:0]m_axi_p3X3_1X1_WEIGHTS_ARLEN;
  output [2:0]m_axi_p3X3_1X1_WEIGHTS_ARSIZE;
  output [1:0]m_axi_p3X3_1X1_WEIGHTS_ARBURST;
  output [1:0]m_axi_p3X3_1X1_WEIGHTS_ARLOCK;
  output [3:0]m_axi_p3X3_1X1_WEIGHTS_ARREGION;
  output [3:0]m_axi_p3X3_1X1_WEIGHTS_ARCACHE;
  output [2:0]m_axi_p3X3_1X1_WEIGHTS_ARPROT;
  output [3:0]m_axi_p3X3_1X1_WEIGHTS_ARQOS;
  output m_axi_p3X3_1X1_WEIGHTS_ARVALID;
  input m_axi_p3X3_1X1_WEIGHTS_ARREADY;
  input [31:0]m_axi_p3X3_1X1_WEIGHTS_RDATA;
  input [1:0]m_axi_p3X3_1X1_WEIGHTS_RRESP;
  input m_axi_p3X3_1X1_WEIGHTS_RLAST;
  input m_axi_p3X3_1X1_WEIGHTS_RVALID;
  output m_axi_p3X3_1X1_WEIGHTS_RREADY;
  output [31:0]m_axi_DATA_BIAS_AWADDR;
  output [7:0]m_axi_DATA_BIAS_AWLEN;
  output [2:0]m_axi_DATA_BIAS_AWSIZE;
  output [1:0]m_axi_DATA_BIAS_AWBURST;
  output [1:0]m_axi_DATA_BIAS_AWLOCK;
  output [3:0]m_axi_DATA_BIAS_AWREGION;
  output [3:0]m_axi_DATA_BIAS_AWCACHE;
  output [2:0]m_axi_DATA_BIAS_AWPROT;
  output [3:0]m_axi_DATA_BIAS_AWQOS;
  output m_axi_DATA_BIAS_AWVALID;
  input m_axi_DATA_BIAS_AWREADY;
  output [31:0]m_axi_DATA_BIAS_WDATA;
  output [3:0]m_axi_DATA_BIAS_WSTRB;
  output m_axi_DATA_BIAS_WLAST;
  output m_axi_DATA_BIAS_WVALID;
  input m_axi_DATA_BIAS_WREADY;
  input [1:0]m_axi_DATA_BIAS_BRESP;
  input m_axi_DATA_BIAS_BVALID;
  output m_axi_DATA_BIAS_BREADY;
  output [31:0]m_axi_DATA_BIAS_ARADDR;
  output [7:0]m_axi_DATA_BIAS_ARLEN;
  output [2:0]m_axi_DATA_BIAS_ARSIZE;
  output [1:0]m_axi_DATA_BIAS_ARBURST;
  output [1:0]m_axi_DATA_BIAS_ARLOCK;
  output [3:0]m_axi_DATA_BIAS_ARREGION;
  output [3:0]m_axi_DATA_BIAS_ARCACHE;
  output [2:0]m_axi_DATA_BIAS_ARPROT;
  output [3:0]m_axi_DATA_BIAS_ARQOS;
  output m_axi_DATA_BIAS_ARVALID;
  input m_axi_DATA_BIAS_ARREADY;
  input [31:0]m_axi_DATA_BIAS_RDATA;
  input [1:0]m_axi_DATA_BIAS_RRESP;
  input m_axi_DATA_BIAS_RLAST;
  input m_axi_DATA_BIAS_RVALID;
  output m_axi_DATA_BIAS_RREADY;
endmodule
