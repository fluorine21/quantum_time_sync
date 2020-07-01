connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Vitis/2020.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
reset_apu
targets -set -nocase -filter {name =~"RPU*"}
clear_rpu_reset
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/James/vitis_workspace/test_proj_plat/export/test_proj_plat/hw/top_level_block_design_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/James/vitis_workspace/test_proj_plat/export/test_proj_plat/sw/test_proj_plat/boot/fsbl.elf
set bp_19_18_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_19_18_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/James/vitis_workspace/xgpiops_polled_example_1/Debug/xgpiops_polled_example_1.elf
configparams force-mem-access 0
bpadd -addr &main