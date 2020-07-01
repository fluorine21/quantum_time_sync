// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Jun 28 13:57:18 2020
// Host        : pme10D0025 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_level_block_design_pulse_gen_0_0_sim_netlist.v
// Design      : top_level_block_design_pulse_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen
   (m_axis_tdata,
    fifo_read,
    fifo_empty,
    fifo_data,
    clk,
    rst);
  output [15:0]m_axis_tdata;
  output fifo_read;
  input fifo_empty;
  input [27:0]fifo_data;
  input clk;
  input rst;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_10_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire clk;
  wire [14:0]coarse_delay;
  wire \coarse_delay[10]_i_2_n_0 ;
  wire \coarse_delay[11]_i_2_n_0 ;
  wire \coarse_delay[14]_i_2_n_0 ;
  wire \coarse_delay[15]_i_1_n_0 ;
  wire \coarse_delay[15]_i_2_n_0 ;
  wire \coarse_delay[15]_i_3_n_0 ;
  wire \coarse_delay[15]_i_4_n_0 ;
  wire \coarse_delay[15]_i_5_n_0 ;
  wire \coarse_delay[4]_i_2_n_0 ;
  wire \coarse_delay[5]_i_2_n_0 ;
  wire \coarse_delay[7]_i_2_n_0 ;
  wire \coarse_delay[8]_i_2_n_0 ;
  wire \coarse_delay_reg_n_0_[0] ;
  wire \coarse_delay_reg_n_0_[10] ;
  wire \coarse_delay_reg_n_0_[11] ;
  wire \coarse_delay_reg_n_0_[12] ;
  wire \coarse_delay_reg_n_0_[13] ;
  wire \coarse_delay_reg_n_0_[14] ;
  wire \coarse_delay_reg_n_0_[15] ;
  wire \coarse_delay_reg_n_0_[1] ;
  wire \coarse_delay_reg_n_0_[2] ;
  wire \coarse_delay_reg_n_0_[3] ;
  wire \coarse_delay_reg_n_0_[4] ;
  wire \coarse_delay_reg_n_0_[5] ;
  wire \coarse_delay_reg_n_0_[6] ;
  wire \coarse_delay_reg_n_0_[7] ;
  wire \coarse_delay_reg_n_0_[8] ;
  wire \coarse_delay_reg_n_0_[9] ;
  wire [27:0]fifo_data;
  wire fifo_empty;
  wire fifo_read;
  wire fifo_read_i_1_n_0;
  wire fifo_read_i_2_n_0;
  wire \fine_delay[3]_i_1_n_0 ;
  wire is_phase_meas_mode_i_1_n_0;
  wire is_phase_meas_mode_i_2_n_0;
  wire is_phase_meas_mode_i_3_n_0;
  wire is_phase_meas_mode_reg_n_0;
  wire [15:0]m_axis_tdata;
  wire [254:14]m_axis_tdata_int;
  wire [7:4]m_axis_tdata_int1;
  wire \m_axis_tdata_int[254]_i_1_n_0 ;
  wire \m_axis_tdata_int[254]_i_3_n_0 ;
  wire \m_axis_tdata_int[254]_i_4_n_0 ;
  wire \m_axis_tdata_int[254]_i_5_n_0 ;
  wire \m_axis_tdata_int_reg_n_0_[110] ;
  wire \m_axis_tdata_int_reg_n_0_[126] ;
  wire \m_axis_tdata_int_reg_n_0_[142] ;
  wire \m_axis_tdata_int_reg_n_0_[14] ;
  wire \m_axis_tdata_int_reg_n_0_[158] ;
  wire \m_axis_tdata_int_reg_n_0_[174] ;
  wire \m_axis_tdata_int_reg_n_0_[190] ;
  wire \m_axis_tdata_int_reg_n_0_[206] ;
  wire \m_axis_tdata_int_reg_n_0_[222] ;
  wire \m_axis_tdata_int_reg_n_0_[238] ;
  wire \m_axis_tdata_int_reg_n_0_[254] ;
  wire \m_axis_tdata_int_reg_n_0_[30] ;
  wire \m_axis_tdata_int_reg_n_0_[46] ;
  wire \m_axis_tdata_int_reg_n_0_[62] ;
  wire \m_axis_tdata_int_reg_n_0_[78] ;
  wire \m_axis_tdata_int_reg_n_0_[94] ;
  wire rst;
  wire [1:0]state__0;
  wire [1:0]state__1;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(state__1[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(fifo_data[25]),
        .I1(fifo_data[26]),
        .I2(fifo_data[27]),
        .I3(fifo_data[23]),
        .I4(fifo_data[24]),
        .I5(fifo_data[22]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(\coarse_delay_reg_n_0_[15] ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_state[1]_i_5_n_0 ),
        .I4(\FSM_sequential_state[1]_i_6_n_0 ),
        .I5(\FSM_sequential_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[1]_i_10 
       (.I0(state__0[1]),
        .I1(fifo_empty),
        .O(\FSM_sequential_state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(state__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_sequential_state[1]_i_8_n_0 ),
        .I1(\FSM_sequential_state[1]_i_9_n_0 ),
        .I2(\coarse_delay_reg_n_0_[6] ),
        .I3(\coarse_delay[7]_i_2_n_0 ),
        .I4(\coarse_delay_reg_n_0_[8] ),
        .I5(\coarse_delay_reg_n_0_[7] ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\coarse_delay_reg_n_0_[14] ),
        .I1(\coarse_delay_reg_n_0_[13] ),
        .I2(\coarse_delay_reg_n_0_[12] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(\coarse_delay_reg_n_0_[13] ),
        .I1(\coarse_delay_reg_n_0_[14] ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFBBBAAAAAAAA)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(state__1[1]),
        .I1(is_phase_meas_mode_i_2_n_0),
        .I2(fifo_data[21]),
        .I3(fifo_data[22]),
        .I4(fifo_data[20]),
        .I5(\FSM_sequential_state[1]_i_10_n_0 ),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(\coarse_delay_reg_n_0_[10] ),
        .I1(\coarse_delay_reg_n_0_[11] ),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(\coarse_delay_reg_n_0_[11] ),
        .I1(\coarse_delay_reg_n_0_[10] ),
        .I2(\coarse_delay_reg_n_0_[9] ),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "state_wait_pulse:10,state_idle:00,state_wait_tick:01" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(state__1[0]),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "state_wait_pulse:10,state_idle:00,state_wait_tick:01" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(state__1[1]),
        .Q(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h003A)) 
    \coarse_delay[0]_i_1 
       (.I0(fifo_data[4]),
        .I1(\coarse_delay_reg_n_0_[0] ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(coarse_delay[0]));
  LUT6 #(
    .INIT(64'h0E020E020E02020E)) 
    \coarse_delay[10]_i_1 
       (.I0(fifo_data[14]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\coarse_delay_reg_n_0_[10] ),
        .I4(\coarse_delay[10]_i_2_n_0 ),
        .I5(\coarse_delay_reg_n_0_[9] ),
        .O(coarse_delay[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \coarse_delay[10]_i_2 
       (.I0(\coarse_delay_reg_n_0_[6] ),
        .I1(\coarse_delay[7]_i_2_n_0 ),
        .I2(\coarse_delay_reg_n_0_[8] ),
        .I3(\coarse_delay_reg_n_0_[7] ),
        .O(\coarse_delay[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0E02020E0E020E02)) 
    \coarse_delay[11]_i_1 
       (.I0(fifo_data[15]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\coarse_delay_reg_n_0_[11] ),
        .I4(\coarse_delay_reg_n_0_[10] ),
        .I5(\coarse_delay[11]_i_2_n_0 ),
        .O(coarse_delay[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \coarse_delay[11]_i_2 
       (.I0(\coarse_delay_reg_n_0_[9] ),
        .I1(\coarse_delay_reg_n_0_[7] ),
        .I2(\coarse_delay_reg_n_0_[8] ),
        .I3(\coarse_delay[7]_i_2_n_0 ),
        .I4(\coarse_delay_reg_n_0_[6] ),
        .O(\coarse_delay[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000C3AA)) 
    \coarse_delay[12]_i_1 
       (.I0(fifo_data[16]),
        .I1(\coarse_delay_reg_n_0_[12] ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(coarse_delay[12]));
  LUT6 #(
    .INIT(64'h0E020E020E02020E)) 
    \coarse_delay[13]_i_1 
       (.I0(fifo_data[17]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\coarse_delay_reg_n_0_[13] ),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .I5(\coarse_delay_reg_n_0_[12] ),
        .O(coarse_delay[13]));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAE)) 
    \coarse_delay[14]_i_1 
       (.I0(\coarse_delay[14]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\coarse_delay_reg_n_0_[14] ),
        .I3(\coarse_delay_reg_n_0_[13] ),
        .I4(\coarse_delay_reg_n_0_[12] ),
        .I5(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(coarse_delay[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \coarse_delay[14]_i_2 
       (.I0(fifo_data[18]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\coarse_delay[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \coarse_delay[15]_i_1 
       (.I0(\coarse_delay_reg_n_0_[15] ),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(\FSM_sequential_state[1]_i_5_n_0 ),
        .I3(\FSM_sequential_state[1]_i_6_n_0 ),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(\fine_delay[3]_i_1_n_0 ),
        .O(\coarse_delay[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5404545404540404)) 
    \coarse_delay[15]_i_2 
       (.I0(state__0[0]),
        .I1(fifo_data[19]),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state[1]_i_6_n_0 ),
        .I4(\coarse_delay[15]_i_3_n_0 ),
        .I5(\coarse_delay_reg_n_0_[15] ),
        .O(\coarse_delay[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \coarse_delay[15]_i_3 
       (.I0(\coarse_delay[15]_i_4_n_0 ),
        .I1(\coarse_delay[7]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_5_n_0 ),
        .I3(\FSM_sequential_state[1]_i_9_n_0 ),
        .I4(\FSM_sequential_state[1]_i_8_n_0 ),
        .I5(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(\coarse_delay[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \coarse_delay[15]_i_4 
       (.I0(\coarse_delay_reg_n_0_[7] ),
        .I1(\coarse_delay_reg_n_0_[8] ),
        .O(\coarse_delay[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \coarse_delay[15]_i_5 
       (.I0(\coarse_delay_reg_n_0_[8] ),
        .I1(\coarse_delay_reg_n_0_[7] ),
        .I2(\coarse_delay_reg_n_0_[6] ),
        .O(\coarse_delay[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000C3AA)) 
    \coarse_delay[1]_i_1 
       (.I0(fifo_data[5]),
        .I1(\coarse_delay_reg_n_0_[1] ),
        .I2(\coarse_delay_reg_n_0_[0] ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(coarse_delay[1]));
  LUT6 #(
    .INIT(64'h00000000CCC3AAAA)) 
    \coarse_delay[2]_i_1 
       (.I0(fifo_data[6]),
        .I1(\coarse_delay_reg_n_0_[2] ),
        .I2(\coarse_delay_reg_n_0_[0] ),
        .I3(\coarse_delay_reg_n_0_[1] ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(coarse_delay[2]));
  LUT5 #(
    .INIT(32'h0000C3AA)) 
    \coarse_delay[3]_i_1 
       (.I0(fifo_data[7]),
        .I1(\coarse_delay_reg_n_0_[3] ),
        .I2(\coarse_delay[4]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(coarse_delay[3]));
  LUT6 #(
    .INIT(64'h00000000CCC3AAAA)) 
    \coarse_delay[4]_i_1 
       (.I0(fifo_data[8]),
        .I1(\coarse_delay_reg_n_0_[4] ),
        .I2(\coarse_delay[4]_i_2_n_0 ),
        .I3(\coarse_delay_reg_n_0_[3] ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(coarse_delay[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \coarse_delay[4]_i_2 
       (.I0(\coarse_delay_reg_n_0_[2] ),
        .I1(\coarse_delay_reg_n_0_[0] ),
        .I2(\coarse_delay_reg_n_0_[1] ),
        .O(\coarse_delay[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC3CAAAA)) 
    \coarse_delay[5]_i_1 
       (.I0(fifo_data[9]),
        .I1(\coarse_delay_reg_n_0_[5] ),
        .I2(\coarse_delay[5]_i_2_n_0 ),
        .I3(\coarse_delay_reg_n_0_[4] ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(coarse_delay[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \coarse_delay[5]_i_2 
       (.I0(\coarse_delay_reg_n_0_[3] ),
        .I1(\coarse_delay_reg_n_0_[1] ),
        .I2(\coarse_delay_reg_n_0_[0] ),
        .I3(\coarse_delay_reg_n_0_[2] ),
        .O(\coarse_delay[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000C3AA)) 
    \coarse_delay[6]_i_1 
       (.I0(fifo_data[10]),
        .I1(\coarse_delay_reg_n_0_[6] ),
        .I2(\coarse_delay[7]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(coarse_delay[6]));
  LUT6 #(
    .INIT(64'h00000000CCC3AAAA)) 
    \coarse_delay[7]_i_1 
       (.I0(fifo_data[11]),
        .I1(\coarse_delay_reg_n_0_[7] ),
        .I2(\coarse_delay[7]_i_2_n_0 ),
        .I3(\coarse_delay_reg_n_0_[6] ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(coarse_delay[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \coarse_delay[7]_i_2 
       (.I0(\coarse_delay_reg_n_0_[3] ),
        .I1(\coarse_delay_reg_n_0_[2] ),
        .I2(\coarse_delay_reg_n_0_[0] ),
        .I3(\coarse_delay_reg_n_0_[1] ),
        .I4(\coarse_delay_reg_n_0_[5] ),
        .I5(\coarse_delay_reg_n_0_[4] ),
        .O(\coarse_delay[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC3CAAAA)) 
    \coarse_delay[8]_i_1 
       (.I0(fifo_data[12]),
        .I1(\coarse_delay_reg_n_0_[8] ),
        .I2(\coarse_delay[8]_i_2_n_0 ),
        .I3(\coarse_delay_reg_n_0_[7] ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(coarse_delay[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \coarse_delay[8]_i_2 
       (.I0(\coarse_delay_reg_n_0_[6] ),
        .I1(\coarse_delay[7]_i_2_n_0 ),
        .O(\coarse_delay[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000C3AA)) 
    \coarse_delay[9]_i_1 
       (.I0(fifo_data[13]),
        .I1(\coarse_delay_reg_n_0_[9] ),
        .I2(\coarse_delay[10]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(coarse_delay[9]));
  FDCE \coarse_delay_reg[0] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[0]),
        .Q(\coarse_delay_reg_n_0_[0] ));
  FDCE \coarse_delay_reg[10] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[10]),
        .Q(\coarse_delay_reg_n_0_[10] ));
  FDCE \coarse_delay_reg[11] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[11]),
        .Q(\coarse_delay_reg_n_0_[11] ));
  FDCE \coarse_delay_reg[12] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[12]),
        .Q(\coarse_delay_reg_n_0_[12] ));
  FDCE \coarse_delay_reg[13] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[13]),
        .Q(\coarse_delay_reg_n_0_[13] ));
  FDCE \coarse_delay_reg[14] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[14]),
        .Q(\coarse_delay_reg_n_0_[14] ));
  FDCE \coarse_delay_reg[15] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(\coarse_delay[15]_i_2_n_0 ),
        .Q(\coarse_delay_reg_n_0_[15] ));
  FDCE \coarse_delay_reg[1] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[1]),
        .Q(\coarse_delay_reg_n_0_[1] ));
  FDCE \coarse_delay_reg[2] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[2]),
        .Q(\coarse_delay_reg_n_0_[2] ));
  FDCE \coarse_delay_reg[3] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[3]),
        .Q(\coarse_delay_reg_n_0_[3] ));
  FDCE \coarse_delay_reg[4] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[4]),
        .Q(\coarse_delay_reg_n_0_[4] ));
  FDCE \coarse_delay_reg[5] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[5]),
        .Q(\coarse_delay_reg_n_0_[5] ));
  FDCE \coarse_delay_reg[6] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[6]),
        .Q(\coarse_delay_reg_n_0_[6] ));
  FDCE \coarse_delay_reg[7] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[7]),
        .Q(\coarse_delay_reg_n_0_[7] ));
  FDCE \coarse_delay_reg[8] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[8]),
        .Q(\coarse_delay_reg_n_0_[8] ));
  FDCE \coarse_delay_reg[9] 
       (.C(clk),
        .CE(\coarse_delay[15]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(coarse_delay[9]),
        .Q(\coarse_delay_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFD01)) 
    fifo_read_i_1
       (.I0(fifo_empty),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fifo_read),
        .O(fifo_read_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fifo_read_i_2
       (.I0(rst),
        .O(fifo_read_i_2_n_0));
  FDCE fifo_read_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(fifo_read_i_2_n_0),
        .D(fifo_read_i_1_n_0),
        .Q(fifo_read));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \fine_delay[3]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(fifo_data[21]),
        .I2(fifo_data[20]),
        .I3(state__0[0]),
        .I4(fifo_empty),
        .I5(state__0[1]),
        .O(\fine_delay[3]_i_1_n_0 ));
  FDCE \fine_delay_reg[0] 
       (.C(clk),
        .CE(\fine_delay[3]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(fifo_data[0]),
        .Q(m_axis_tdata_int1[4]));
  FDCE \fine_delay_reg[1] 
       (.C(clk),
        .CE(\fine_delay[3]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(fifo_data[1]),
        .Q(m_axis_tdata_int1[5]));
  FDCE \fine_delay_reg[2] 
       (.C(clk),
        .CE(\fine_delay[3]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(fifo_data[2]),
        .Q(m_axis_tdata_int1[6]));
  FDCE \fine_delay_reg[3] 
       (.C(clk),
        .CE(\fine_delay[3]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(fifo_data[3]),
        .Q(m_axis_tdata_int1[7]));
  LUT5 #(
    .INIT(32'hFF1F0010)) 
    is_phase_meas_mode_i_1
       (.I0(fifo_data[22]),
        .I1(state__0[1]),
        .I2(is_phase_meas_mode_i_2_n_0),
        .I3(is_phase_meas_mode_i_3_n_0),
        .I4(is_phase_meas_mode_reg_n_0),
        .O(is_phase_meas_mode_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    is_phase_meas_mode_i_2
       (.I0(fifo_data[24]),
        .I1(fifo_data[23]),
        .I2(fifo_data[27]),
        .I3(fifo_data[26]),
        .I4(fifo_data[25]),
        .O(is_phase_meas_mode_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFEFFFF)) 
    is_phase_meas_mode_i_3
       (.I0(state__0[1]),
        .I1(fifo_empty),
        .I2(state__0[0]),
        .I3(fifo_data[21]),
        .I4(fifo_data[22]),
        .I5(fifo_data[20]),
        .O(is_phase_meas_mode_i_3_n_0));
  FDCE is_phase_meas_mode_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(fifo_read_i_2_n_0),
        .D(is_phase_meas_mode_i_1_n_0),
        .Q(is_phase_meas_mode_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[14] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[126] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[128]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[142] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[144]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[158] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[160]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[174] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[30] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[176]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[190] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[192]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[206] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[208]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[222] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[224]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[238] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[240]_INST_0 
       (.I0(is_phase_meas_mode_reg_n_0),
        .I1(\m_axis_tdata_int_reg_n_0_[254] ),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[46] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[62] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[78] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[94] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[110] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \m_axis_tdata_int[110]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(state__0[1]),
        .I4(m_axis_tdata_int1[7]),
        .O(m_axis_tdata_int[110]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \m_axis_tdata_int[126]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(state__0[1]),
        .I4(m_axis_tdata_int1[7]),
        .O(m_axis_tdata_int[126]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \m_axis_tdata_int[142]_i_1 
       (.I0(m_axis_tdata_int1[7]),
        .I1(state__0[1]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int[142]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[14]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(state__0[1]),
        .I4(m_axis_tdata_int1[7]),
        .O(m_axis_tdata_int[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \m_axis_tdata_int[158]_i_1 
       (.I0(m_axis_tdata_int1[7]),
        .I1(state__0[1]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int[158]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \m_axis_tdata_int[174]_i_1 
       (.I0(m_axis_tdata_int1[7]),
        .I1(state__0[1]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int[174]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \m_axis_tdata_int[190]_i_1 
       (.I0(m_axis_tdata_int1[7]),
        .I1(state__0[1]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int[190]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[206]_i_1 
       (.I0(m_axis_tdata_int1[7]),
        .I1(state__0[1]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int[206]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[222]_i_1 
       (.I0(m_axis_tdata_int1[7]),
        .I1(state__0[1]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int[222]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[238]_i_1 
       (.I0(m_axis_tdata_int1[7]),
        .I1(state__0[1]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int[238]));
  LUT6 #(
    .INIT(64'h0000000155555555)) 
    \m_axis_tdata_int[254]_i_1 
       (.I0(state__0[0]),
        .I1(\coarse_delay_reg_n_0_[15] ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_state[1]_i_5_n_0 ),
        .I4(\FSM_sequential_state[1]_i_6_n_0 ),
        .I5(state__0[1]),
        .O(\m_axis_tdata_int[254]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888F88888888)) 
    \m_axis_tdata_int[254]_i_2 
       (.I0(\m_axis_tdata_int[254]_i_3_n_0 ),
        .I1(\m_axis_tdata_int[254]_i_4_n_0 ),
        .I2(\m_axis_tdata_int[254]_i_5_n_0 ),
        .I3(fifo_data[20]),
        .I4(fifo_data[21]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(m_axis_tdata_int[254]));
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_tdata_int[254]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(m_axis_tdata_int1[7]),
        .O(\m_axis_tdata_int[254]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m_axis_tdata_int[254]_i_4 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[254]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_axis_tdata_int[254]_i_5 
       (.I0(state__0[0]),
        .I1(fifo_empty),
        .I2(state__0[1]),
        .O(\m_axis_tdata_int[254]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \m_axis_tdata_int[30]_i_1 
       (.I0(m_axis_tdata_int1[4]),
        .I1(m_axis_tdata_int1[5]),
        .I2(m_axis_tdata_int1[6]),
        .I3(state__0[1]),
        .I4(m_axis_tdata_int1[7]),
        .O(m_axis_tdata_int[30]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \m_axis_tdata_int[46]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(state__0[1]),
        .I4(m_axis_tdata_int1[7]),
        .O(m_axis_tdata_int[46]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \m_axis_tdata_int[62]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(state__0[1]),
        .I4(m_axis_tdata_int1[7]),
        .O(m_axis_tdata_int[62]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[78]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(state__0[1]),
        .I4(m_axis_tdata_int1[7]),
        .O(m_axis_tdata_int[78]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \m_axis_tdata_int[94]_i_1 
       (.I0(m_axis_tdata_int1[4]),
        .I1(m_axis_tdata_int1[5]),
        .I2(m_axis_tdata_int1[6]),
        .I3(state__0[1]),
        .I4(m_axis_tdata_int1[7]),
        .O(m_axis_tdata_int[94]));
  FDCE \m_axis_tdata_int_reg[110] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[110]),
        .Q(\m_axis_tdata_int_reg_n_0_[110] ));
  FDCE \m_axis_tdata_int_reg[126] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[126]),
        .Q(\m_axis_tdata_int_reg_n_0_[126] ));
  FDCE \m_axis_tdata_int_reg[142] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[142]),
        .Q(\m_axis_tdata_int_reg_n_0_[142] ));
  FDCE \m_axis_tdata_int_reg[14] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[14]),
        .Q(\m_axis_tdata_int_reg_n_0_[14] ));
  FDCE \m_axis_tdata_int_reg[158] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[158]),
        .Q(\m_axis_tdata_int_reg_n_0_[158] ));
  FDCE \m_axis_tdata_int_reg[174] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[174]),
        .Q(\m_axis_tdata_int_reg_n_0_[174] ));
  FDCE \m_axis_tdata_int_reg[190] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[190]),
        .Q(\m_axis_tdata_int_reg_n_0_[190] ));
  FDCE \m_axis_tdata_int_reg[206] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[206]),
        .Q(\m_axis_tdata_int_reg_n_0_[206] ));
  FDCE \m_axis_tdata_int_reg[222] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[222]),
        .Q(\m_axis_tdata_int_reg_n_0_[222] ));
  FDCE \m_axis_tdata_int_reg[238] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[238]),
        .Q(\m_axis_tdata_int_reg_n_0_[238] ));
  FDCE \m_axis_tdata_int_reg[254] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[254]),
        .Q(\m_axis_tdata_int_reg_n_0_[254] ));
  FDCE \m_axis_tdata_int_reg[30] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[30]),
        .Q(\m_axis_tdata_int_reg_n_0_[30] ));
  FDCE \m_axis_tdata_int_reg[46] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[46]),
        .Q(\m_axis_tdata_int_reg_n_0_[46] ));
  FDCE \m_axis_tdata_int_reg[62] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[62]),
        .Q(\m_axis_tdata_int_reg_n_0_[62] ));
  FDCE \m_axis_tdata_int_reg[78] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[78]),
        .Q(\m_axis_tdata_int_reg_n_0_[78] ));
  FDCE \m_axis_tdata_int_reg[94] 
       (.C(clk),
        .CE(\m_axis_tdata_int[254]_i_1_n_0 ),
        .CLR(fifo_read_i_2_n_0),
        .D(m_axis_tdata_int[94]),
        .Q(\m_axis_tdata_int_reg_n_0_[94] ));
endmodule

(* CHECK_LICENSE_TYPE = "top_level_block_design_pulse_gen_0_0,pulse_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pulse_gen,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    fifo_empty,
    fifo_data,
    fifo_read,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET rst, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_level_block_design_usp_rf_data_converter_0_0_clk_dac1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input fifo_empty;
  input [31:0]fifo_data;
  output fifo_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [255:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN top_level_block_design_usp_rf_data_converter_0_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;

  wire \<const0> ;
  wire clk;
  wire [31:0]fifo_data;
  wire fifo_empty;
  wire fifo_read;
  wire [254:14]\^m_axis_tdata ;
  wire rst;

  assign m_axis_tdata[255] = \<const0> ;
  assign m_axis_tdata[254] = \^m_axis_tdata [254];
  assign m_axis_tdata[253] = \^m_axis_tdata [254];
  assign m_axis_tdata[252] = \^m_axis_tdata [254];
  assign m_axis_tdata[251] = \^m_axis_tdata [254];
  assign m_axis_tdata[250] = \^m_axis_tdata [254];
  assign m_axis_tdata[249] = \^m_axis_tdata [254];
  assign m_axis_tdata[248] = \^m_axis_tdata [254];
  assign m_axis_tdata[247] = \^m_axis_tdata [254];
  assign m_axis_tdata[246] = \^m_axis_tdata [254];
  assign m_axis_tdata[245] = \^m_axis_tdata [254];
  assign m_axis_tdata[244] = \^m_axis_tdata [254];
  assign m_axis_tdata[243] = \^m_axis_tdata [254];
  assign m_axis_tdata[242] = \^m_axis_tdata [254];
  assign m_axis_tdata[241] = \^m_axis_tdata [254];
  assign m_axis_tdata[240] = \^m_axis_tdata [254];
  assign m_axis_tdata[239] = \<const0> ;
  assign m_axis_tdata[238] = \^m_axis_tdata [238];
  assign m_axis_tdata[237] = \^m_axis_tdata [238];
  assign m_axis_tdata[236] = \^m_axis_tdata [238];
  assign m_axis_tdata[235] = \^m_axis_tdata [238];
  assign m_axis_tdata[234] = \^m_axis_tdata [238];
  assign m_axis_tdata[233] = \^m_axis_tdata [238];
  assign m_axis_tdata[232] = \^m_axis_tdata [238];
  assign m_axis_tdata[231] = \^m_axis_tdata [238];
  assign m_axis_tdata[230] = \^m_axis_tdata [238];
  assign m_axis_tdata[229] = \^m_axis_tdata [238];
  assign m_axis_tdata[228] = \^m_axis_tdata [238];
  assign m_axis_tdata[227] = \^m_axis_tdata [238];
  assign m_axis_tdata[226] = \^m_axis_tdata [238];
  assign m_axis_tdata[225] = \^m_axis_tdata [238];
  assign m_axis_tdata[224] = \^m_axis_tdata [238];
  assign m_axis_tdata[223] = \<const0> ;
  assign m_axis_tdata[222] = \^m_axis_tdata [222];
  assign m_axis_tdata[221] = \^m_axis_tdata [222];
  assign m_axis_tdata[220] = \^m_axis_tdata [222];
  assign m_axis_tdata[219] = \^m_axis_tdata [222];
  assign m_axis_tdata[218] = \^m_axis_tdata [222];
  assign m_axis_tdata[217] = \^m_axis_tdata [222];
  assign m_axis_tdata[216] = \^m_axis_tdata [222];
  assign m_axis_tdata[215] = \^m_axis_tdata [222];
  assign m_axis_tdata[214] = \^m_axis_tdata [222];
  assign m_axis_tdata[213] = \^m_axis_tdata [222];
  assign m_axis_tdata[212] = \^m_axis_tdata [222];
  assign m_axis_tdata[211] = \^m_axis_tdata [222];
  assign m_axis_tdata[210] = \^m_axis_tdata [222];
  assign m_axis_tdata[209] = \^m_axis_tdata [222];
  assign m_axis_tdata[208] = \^m_axis_tdata [222];
  assign m_axis_tdata[207] = \<const0> ;
  assign m_axis_tdata[206] = \^m_axis_tdata [206];
  assign m_axis_tdata[205] = \^m_axis_tdata [206];
  assign m_axis_tdata[204] = \^m_axis_tdata [206];
  assign m_axis_tdata[203] = \^m_axis_tdata [206];
  assign m_axis_tdata[202] = \^m_axis_tdata [206];
  assign m_axis_tdata[201] = \^m_axis_tdata [206];
  assign m_axis_tdata[200] = \^m_axis_tdata [206];
  assign m_axis_tdata[199] = \^m_axis_tdata [206];
  assign m_axis_tdata[198] = \^m_axis_tdata [206];
  assign m_axis_tdata[197] = \^m_axis_tdata [206];
  assign m_axis_tdata[196] = \^m_axis_tdata [206];
  assign m_axis_tdata[195] = \^m_axis_tdata [206];
  assign m_axis_tdata[194] = \^m_axis_tdata [206];
  assign m_axis_tdata[193] = \^m_axis_tdata [206];
  assign m_axis_tdata[192] = \^m_axis_tdata [206];
  assign m_axis_tdata[191] = \<const0> ;
  assign m_axis_tdata[190] = \^m_axis_tdata [190];
  assign m_axis_tdata[189] = \^m_axis_tdata [190];
  assign m_axis_tdata[188] = \^m_axis_tdata [190];
  assign m_axis_tdata[187] = \^m_axis_tdata [190];
  assign m_axis_tdata[186] = \^m_axis_tdata [190];
  assign m_axis_tdata[185] = \^m_axis_tdata [190];
  assign m_axis_tdata[184] = \^m_axis_tdata [190];
  assign m_axis_tdata[183] = \^m_axis_tdata [190];
  assign m_axis_tdata[182] = \^m_axis_tdata [190];
  assign m_axis_tdata[181] = \^m_axis_tdata [190];
  assign m_axis_tdata[180] = \^m_axis_tdata [190];
  assign m_axis_tdata[179] = \^m_axis_tdata [190];
  assign m_axis_tdata[178] = \^m_axis_tdata [190];
  assign m_axis_tdata[177] = \^m_axis_tdata [190];
  assign m_axis_tdata[176] = \^m_axis_tdata [190];
  assign m_axis_tdata[175] = \<const0> ;
  assign m_axis_tdata[174] = \^m_axis_tdata [174];
  assign m_axis_tdata[173] = \^m_axis_tdata [174];
  assign m_axis_tdata[172] = \^m_axis_tdata [174];
  assign m_axis_tdata[171] = \^m_axis_tdata [174];
  assign m_axis_tdata[170] = \^m_axis_tdata [174];
  assign m_axis_tdata[169] = \^m_axis_tdata [174];
  assign m_axis_tdata[168] = \^m_axis_tdata [174];
  assign m_axis_tdata[167] = \^m_axis_tdata [174];
  assign m_axis_tdata[166] = \^m_axis_tdata [174];
  assign m_axis_tdata[165] = \^m_axis_tdata [174];
  assign m_axis_tdata[164] = \^m_axis_tdata [174];
  assign m_axis_tdata[163] = \^m_axis_tdata [174];
  assign m_axis_tdata[162] = \^m_axis_tdata [174];
  assign m_axis_tdata[161] = \^m_axis_tdata [174];
  assign m_axis_tdata[160] = \^m_axis_tdata [174];
  assign m_axis_tdata[159] = \<const0> ;
  assign m_axis_tdata[158] = \^m_axis_tdata [158];
  assign m_axis_tdata[157] = \^m_axis_tdata [158];
  assign m_axis_tdata[156] = \^m_axis_tdata [158];
  assign m_axis_tdata[155] = \^m_axis_tdata [158];
  assign m_axis_tdata[154] = \^m_axis_tdata [158];
  assign m_axis_tdata[153] = \^m_axis_tdata [158];
  assign m_axis_tdata[152] = \^m_axis_tdata [158];
  assign m_axis_tdata[151] = \^m_axis_tdata [158];
  assign m_axis_tdata[150] = \^m_axis_tdata [158];
  assign m_axis_tdata[149] = \^m_axis_tdata [158];
  assign m_axis_tdata[148] = \^m_axis_tdata [158];
  assign m_axis_tdata[147] = \^m_axis_tdata [158];
  assign m_axis_tdata[146] = \^m_axis_tdata [158];
  assign m_axis_tdata[145] = \^m_axis_tdata [158];
  assign m_axis_tdata[144] = \^m_axis_tdata [158];
  assign m_axis_tdata[143] = \<const0> ;
  assign m_axis_tdata[142] = \^m_axis_tdata [142];
  assign m_axis_tdata[141] = \^m_axis_tdata [142];
  assign m_axis_tdata[140] = \^m_axis_tdata [142];
  assign m_axis_tdata[139] = \^m_axis_tdata [142];
  assign m_axis_tdata[138] = \^m_axis_tdata [142];
  assign m_axis_tdata[137] = \^m_axis_tdata [142];
  assign m_axis_tdata[136] = \^m_axis_tdata [142];
  assign m_axis_tdata[135] = \^m_axis_tdata [142];
  assign m_axis_tdata[134] = \^m_axis_tdata [142];
  assign m_axis_tdata[133] = \^m_axis_tdata [142];
  assign m_axis_tdata[132] = \^m_axis_tdata [142];
  assign m_axis_tdata[131] = \^m_axis_tdata [142];
  assign m_axis_tdata[130] = \^m_axis_tdata [142];
  assign m_axis_tdata[129] = \^m_axis_tdata [142];
  assign m_axis_tdata[128] = \^m_axis_tdata [142];
  assign m_axis_tdata[127] = \<const0> ;
  assign m_axis_tdata[126] = \^m_axis_tdata [126];
  assign m_axis_tdata[125] = \^m_axis_tdata [126];
  assign m_axis_tdata[124] = \^m_axis_tdata [126];
  assign m_axis_tdata[123] = \^m_axis_tdata [126];
  assign m_axis_tdata[122] = \^m_axis_tdata [126];
  assign m_axis_tdata[121] = \^m_axis_tdata [126];
  assign m_axis_tdata[120] = \^m_axis_tdata [126];
  assign m_axis_tdata[119] = \^m_axis_tdata [126];
  assign m_axis_tdata[118] = \^m_axis_tdata [126];
  assign m_axis_tdata[117] = \^m_axis_tdata [126];
  assign m_axis_tdata[116] = \^m_axis_tdata [126];
  assign m_axis_tdata[115] = \^m_axis_tdata [126];
  assign m_axis_tdata[114] = \^m_axis_tdata [126];
  assign m_axis_tdata[113] = \^m_axis_tdata [126];
  assign m_axis_tdata[112] = \^m_axis_tdata [126];
  assign m_axis_tdata[111] = \<const0> ;
  assign m_axis_tdata[110] = \^m_axis_tdata [110];
  assign m_axis_tdata[109] = \^m_axis_tdata [110];
  assign m_axis_tdata[108] = \^m_axis_tdata [110];
  assign m_axis_tdata[107] = \^m_axis_tdata [110];
  assign m_axis_tdata[106] = \^m_axis_tdata [110];
  assign m_axis_tdata[105] = \^m_axis_tdata [110];
  assign m_axis_tdata[104] = \^m_axis_tdata [110];
  assign m_axis_tdata[103] = \^m_axis_tdata [110];
  assign m_axis_tdata[102] = \^m_axis_tdata [110];
  assign m_axis_tdata[101] = \^m_axis_tdata [110];
  assign m_axis_tdata[100] = \^m_axis_tdata [110];
  assign m_axis_tdata[99] = \^m_axis_tdata [110];
  assign m_axis_tdata[98] = \^m_axis_tdata [110];
  assign m_axis_tdata[97] = \^m_axis_tdata [110];
  assign m_axis_tdata[96] = \^m_axis_tdata [110];
  assign m_axis_tdata[95] = \<const0> ;
  assign m_axis_tdata[94] = \^m_axis_tdata [94];
  assign m_axis_tdata[93] = \^m_axis_tdata [94];
  assign m_axis_tdata[92] = \^m_axis_tdata [94];
  assign m_axis_tdata[91] = \^m_axis_tdata [94];
  assign m_axis_tdata[90] = \^m_axis_tdata [94];
  assign m_axis_tdata[89] = \^m_axis_tdata [94];
  assign m_axis_tdata[88] = \^m_axis_tdata [94];
  assign m_axis_tdata[87] = \^m_axis_tdata [94];
  assign m_axis_tdata[86] = \^m_axis_tdata [94];
  assign m_axis_tdata[85] = \^m_axis_tdata [94];
  assign m_axis_tdata[84] = \^m_axis_tdata [94];
  assign m_axis_tdata[83] = \^m_axis_tdata [94];
  assign m_axis_tdata[82] = \^m_axis_tdata [94];
  assign m_axis_tdata[81] = \^m_axis_tdata [94];
  assign m_axis_tdata[80] = \^m_axis_tdata [94];
  assign m_axis_tdata[79] = \<const0> ;
  assign m_axis_tdata[78] = \^m_axis_tdata [78];
  assign m_axis_tdata[77] = \^m_axis_tdata [78];
  assign m_axis_tdata[76] = \^m_axis_tdata [78];
  assign m_axis_tdata[75] = \^m_axis_tdata [78];
  assign m_axis_tdata[74] = \^m_axis_tdata [78];
  assign m_axis_tdata[73] = \^m_axis_tdata [78];
  assign m_axis_tdata[72] = \^m_axis_tdata [78];
  assign m_axis_tdata[71] = \^m_axis_tdata [78];
  assign m_axis_tdata[70] = \^m_axis_tdata [78];
  assign m_axis_tdata[69] = \^m_axis_tdata [78];
  assign m_axis_tdata[68] = \^m_axis_tdata [78];
  assign m_axis_tdata[67] = \^m_axis_tdata [78];
  assign m_axis_tdata[66] = \^m_axis_tdata [78];
  assign m_axis_tdata[65] = \^m_axis_tdata [78];
  assign m_axis_tdata[64] = \^m_axis_tdata [78];
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \^m_axis_tdata [62];
  assign m_axis_tdata[61] = \^m_axis_tdata [62];
  assign m_axis_tdata[60] = \^m_axis_tdata [62];
  assign m_axis_tdata[59] = \^m_axis_tdata [62];
  assign m_axis_tdata[58] = \^m_axis_tdata [62];
  assign m_axis_tdata[57] = \^m_axis_tdata [62];
  assign m_axis_tdata[56] = \^m_axis_tdata [62];
  assign m_axis_tdata[55] = \^m_axis_tdata [62];
  assign m_axis_tdata[54] = \^m_axis_tdata [62];
  assign m_axis_tdata[53] = \^m_axis_tdata [62];
  assign m_axis_tdata[52] = \^m_axis_tdata [62];
  assign m_axis_tdata[51] = \^m_axis_tdata [62];
  assign m_axis_tdata[50] = \^m_axis_tdata [62];
  assign m_axis_tdata[49] = \^m_axis_tdata [62];
  assign m_axis_tdata[48] = \^m_axis_tdata [62];
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \^m_axis_tdata [46];
  assign m_axis_tdata[45] = \^m_axis_tdata [46];
  assign m_axis_tdata[44] = \^m_axis_tdata [46];
  assign m_axis_tdata[43] = \^m_axis_tdata [46];
  assign m_axis_tdata[42] = \^m_axis_tdata [46];
  assign m_axis_tdata[41] = \^m_axis_tdata [46];
  assign m_axis_tdata[40] = \^m_axis_tdata [46];
  assign m_axis_tdata[39] = \^m_axis_tdata [46];
  assign m_axis_tdata[38] = \^m_axis_tdata [46];
  assign m_axis_tdata[37] = \^m_axis_tdata [46];
  assign m_axis_tdata[36] = \^m_axis_tdata [46];
  assign m_axis_tdata[35] = \^m_axis_tdata [46];
  assign m_axis_tdata[34] = \^m_axis_tdata [46];
  assign m_axis_tdata[33] = \^m_axis_tdata [46];
  assign m_axis_tdata[32] = \^m_axis_tdata [46];
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \^m_axis_tdata [30];
  assign m_axis_tdata[29] = \^m_axis_tdata [30];
  assign m_axis_tdata[28] = \^m_axis_tdata [30];
  assign m_axis_tdata[27] = \^m_axis_tdata [30];
  assign m_axis_tdata[26] = \^m_axis_tdata [30];
  assign m_axis_tdata[25] = \^m_axis_tdata [30];
  assign m_axis_tdata[24] = \^m_axis_tdata [30];
  assign m_axis_tdata[23] = \^m_axis_tdata [30];
  assign m_axis_tdata[22] = \^m_axis_tdata [30];
  assign m_axis_tdata[21] = \^m_axis_tdata [30];
  assign m_axis_tdata[20] = \^m_axis_tdata [30];
  assign m_axis_tdata[19] = \^m_axis_tdata [30];
  assign m_axis_tdata[18] = \^m_axis_tdata [30];
  assign m_axis_tdata[17] = \^m_axis_tdata [30];
  assign m_axis_tdata[16] = \^m_axis_tdata [30];
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \^m_axis_tdata [14];
  assign m_axis_tdata[13] = \^m_axis_tdata [14];
  assign m_axis_tdata[12] = \^m_axis_tdata [14];
  assign m_axis_tdata[11] = \^m_axis_tdata [14];
  assign m_axis_tdata[10] = \^m_axis_tdata [14];
  assign m_axis_tdata[9] = \^m_axis_tdata [14];
  assign m_axis_tdata[8] = \^m_axis_tdata [14];
  assign m_axis_tdata[7] = \^m_axis_tdata [14];
  assign m_axis_tdata[6] = \^m_axis_tdata [14];
  assign m_axis_tdata[5] = \^m_axis_tdata [14];
  assign m_axis_tdata[4] = \^m_axis_tdata [14];
  assign m_axis_tdata[3] = \^m_axis_tdata [14];
  assign m_axis_tdata[2] = \^m_axis_tdata [14];
  assign m_axis_tdata[1] = \^m_axis_tdata [14];
  assign m_axis_tdata[0] = \^m_axis_tdata [14];
  assign m_axis_tvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen inst
       (.clk(clk),
        .fifo_data({fifo_data[31:8],fifo_data[3:0]}),
        .fifo_empty(fifo_empty),
        .fifo_read(fifo_read),
        .m_axis_tdata({\^m_axis_tdata [254],\^m_axis_tdata [238],\^m_axis_tdata [222],\^m_axis_tdata [206],\^m_axis_tdata [190],\^m_axis_tdata [174],\^m_axis_tdata [158],\^m_axis_tdata [142],\^m_axis_tdata [126],\^m_axis_tdata [110],\^m_axis_tdata [94],\^m_axis_tdata [78],\^m_axis_tdata [62],\^m_axis_tdata [46],\^m_axis_tdata [30],\^m_axis_tdata [14]}),
        .rst(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
