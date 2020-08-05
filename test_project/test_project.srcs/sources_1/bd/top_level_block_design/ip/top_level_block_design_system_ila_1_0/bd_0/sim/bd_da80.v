//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_da80.bd
//Design : bd_da80
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_da80,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_da80,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "top_level_block_design_system_ila_1_0.hwdef" *) 
module bd_da80
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tvalid,
    clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN top_level_block_design_usp_rf_data_converter_0_0_clk_dac1, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [255:0]SLOT_0_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *) input SLOT_0_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY" *) input SLOT_0_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *) input SLOT_0_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN top_level_block_design_usp_rf_data_converter_0_0_clk_dac1, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  input [31:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [7:0]probe3;
  input [0:0]probe4;
  input [31:0]probe5;
  input [0:0]probe6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [255:0]Conn_TDATA;
  wire Conn_TLAST;
  wire Conn_TREADY;
  wire Conn_TVALID;
  wire clk_1;
  wire [255:0]net_slot_0_axis_tdata;
  wire net_slot_0_axis_tlast;
  wire net_slot_0_axis_tready;
  wire net_slot_0_axis_tvalid;
  wire [31:0]probe0_1;
  wire [0:0]probe1_1;
  wire [0:0]probe2_1;
  wire [7:0]probe3_1;
  wire [0:0]probe4_1;
  wire [31:0]probe5_1;
  wire [0:0]probe6_1;
  wire resetn_1;

  assign Conn_TDATA = SLOT_0_AXIS_tdata[255:0];
  assign Conn_TLAST = SLOT_0_AXIS_tlast;
  assign Conn_TREADY = SLOT_0_AXIS_tready;
  assign Conn_TVALID = SLOT_0_AXIS_tvalid;
  assign clk_1 = clk;
  assign probe0_1 = probe0[31:0];
  assign probe1_1 = probe1[0];
  assign probe2_1 = probe2[0];
  assign probe3_1 = probe3[7:0];
  assign probe4_1 = probe4[0];
  assign probe5_1 = probe5[31:0];
  assign probe6_1 = probe6[0];
  assign resetn_1 = resetn;
  bd_da80_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axis_tdata(net_slot_0_axis_tdata),
        .m_slot_0_axis_tlast(net_slot_0_axis_tlast),
        .m_slot_0_axis_tready(net_slot_0_axis_tready),
        .m_slot_0_axis_tvalid(net_slot_0_axis_tvalid),
        .slot_0_axis_tdata(Conn_TDATA),
        .slot_0_axis_tlast(Conn_TLAST),
        .slot_0_axis_tready(Conn_TREADY),
        .slot_0_axis_tvalid(Conn_TVALID));
  bd_da80_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe10(net_slot_0_axis_tlast),
        .probe2(probe2_1),
        .probe3(probe3_1),
        .probe4(probe4_1),
        .probe5(probe5_1),
        .probe6(probe6_1),
        .probe7(net_slot_0_axis_tdata),
        .probe8(net_slot_0_axis_tvalid),
        .probe9(net_slot_0_axis_tready));
endmodule
