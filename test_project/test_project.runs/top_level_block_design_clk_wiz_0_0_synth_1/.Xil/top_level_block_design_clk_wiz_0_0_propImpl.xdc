set_property SRC_FILE_INFO {cfile:c:/James/test_project/test_project.srcs/sources_1/bd/top_level_block_design/ip/top_level_block_design_clk_wiz_0_0/top_level_block_design_clk_wiz_0_0.xdc rfile:../../../test_project.srcs/sources_1/bd/top_level_block_design/ip/top_level_block_design_clk_wiz_0_0/top_level_block_design_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.1
