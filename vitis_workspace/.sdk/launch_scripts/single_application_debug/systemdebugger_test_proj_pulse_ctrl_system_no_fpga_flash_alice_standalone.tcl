connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Vitis/2020.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 19395A" && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-19395A-5ba00477-0"}
reset_apu
targets -set -nocase -filter {name =~"RPU*" && jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 19395A" && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-19395A-5ba00477-0"}
clear_rpu_reset
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 19395A" && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-19395A-5ba00477-0"}
loadhw -hw C:/James/vitis_workspace/test_proj_plat/export/test_proj_plat/hw/top_level_block_design_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 19395A" && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-19395A-5ba00477-0"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0" && jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 19395A" && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-19395A-5ba00477-0"}
rst -processor
dow C:/James/vitis_workspace/test_proj_plat/export/test_proj_plat/sw/test_proj_plat/boot/fsbl.elf
set bp_55_57_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_55_57_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0" && jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 19395A" && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-19395A-5ba00477-0"}
rst -processor
dow C:/James/vitis_workspace/test_proj_pulse_ctrl/Debug/test_proj_pulse_ctrl.elf
configparams force-mem-access 0
bpadd -addr &main
