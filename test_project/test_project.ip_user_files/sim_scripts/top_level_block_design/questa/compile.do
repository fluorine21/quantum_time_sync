vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_3
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_v10_v3_0_11
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_18
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_v3_2_18
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_bmg_v1_0_13
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/lib_fifo_v1_0_14
vlib questa_lib/msim/axi_ethernetlite_v3_0_20
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_21
vlib questa_lib/msim/axi_data_fifo_v2_1_20
vlib questa_lib/msim/axi_crossbar_v2_1_22
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_25
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_23

vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_3 questa_lib/msim/microblaze_v11_0_3
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_11 questa_lib/msim/lmb_v10_v3_0_11
vmap lmb_bram_if_cntlr_v4_0_18 questa_lib/msim/lmb_bram_if_cntlr_v4_0_18
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_18 questa_lib/msim/mdm_v3_2_18
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_bmg_v1_0_13 questa_lib/msim/lib_bmg_v1_0_13
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 questa_lib/msim/lib_fifo_v1_0_14
vmap axi_ethernetlite_v3_0_20 questa_lib/msim/axi_ethernetlite_v3_0_20
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_21 questa_lib/msim/axi_register_slice_v2_1_21
vmap axi_data_fifo_v2_1_20 questa_lib/msim/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 questa_lib/msim/axi_crossbar_v2_1_22
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_25 questa_lib/msim/axi_uartlite_v2_0_25
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_23 questa_lib/msim/axi_gpio_v2_0_23

vlog -work xpm  -sv "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_3  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/1efc/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/top_level_block_design/ip/top_level_block_design_microblaze_0_1/sim/top_level_block_design_microblaze_0_1.vhd" \

vcom -work lmb_v10_v3_0_11  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/c2ed/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/top_level_block_design/ip/top_level_block_design_dlmb_v10_0/sim/top_level_block_design_dlmb_v10_0.vhd" \
"../../../bd/top_level_block_design/ip/top_level_block_design_ilmb_v10_0/sim/top_level_block_design_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_18  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/246e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/top_level_block_design/ip/top_level_block_design_dlmb_bram_if_cntlr_0/sim/top_level_block_design_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/top_level_block_design/ip/top_level_block_design_ilmb_bram_if_cntlr_0/sim/top_level_block_design_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../bd/top_level_block_design/ip/top_level_block_design_lmb_bram_0/sim/top_level_block_design_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_18  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/e9fa/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/top_level_block_design/ip/top_level_block_design_mdm_1_0/sim/top_level_block_design_mdm_1_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../bd/top_level_block_design/ip/top_level_block_design_clk_wiz_1_0/top_level_block_design_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_clk_wiz_1_0/top_level_block_design_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/top_level_block_design/ip/top_level_block_design_rst_clk_wiz_1_100M_0/sim/top_level_block_design_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_bmg_v1_0_13  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_ethernetlite_v3_0_20  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/e293/hdl/axi_ethernetlite_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/top_level_block_design/ip/top_level_block_design_axi_ethernetlite_0_1/sim/top_level_block_design_axi_ethernetlite_0_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../bd/top_level_block_design/ip/top_level_block_design_xbar_0/sim/top_level_block_design_xbar_0.v" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_25  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/43b7/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/top_level_block_design/ip/top_level_block_design_axi_uartlite_0_0/sim/top_level_block_design_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_23  -93 \
"../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/top_level_block_design/ip/top_level_block_design_axi_gpio_0_0/sim/top_level_block_design_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_block.v" \

vlog -work xil_defaultlib  -sv "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -sv "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_device_rom.sv" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_por_fsm_disabled.sv" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_tile_config.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/8b3d" "+incdir+../../../../test_project.srcs/sources_1/bd/top_level_block_design/ipshared/ec67/hdl" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_drp_arbiter.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_register_decode.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_address_decoder.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_axi_lite_ipif.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_counter_f.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_pselect_f.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_slave_attachment.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_rf_wrapper.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_drp_control_top.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_drp_control.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_drp_access_ctrl.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_irq_req_ack.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_irq_sync.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_overvol_irq.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_powerup_state_irq.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0_rst_cnt.v" \
"../../../bd/top_level_block_design/ip/top_level_block_design_usp_rf_data_converter_0_0/synth/top_level_block_design_usp_rf_data_converter_0_0.v" \
"../../../bd/top_level_block_design/sim/top_level_block_design.v" \

vlog -work xil_defaultlib \
"glbl.v"

