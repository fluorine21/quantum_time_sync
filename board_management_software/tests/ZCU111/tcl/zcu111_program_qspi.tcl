open_hw
catch {disconnect_hw_server localhost:3121}
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/*/*]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/*/*]
open_hw_target
current_hw_device [lindex [get_hw_devices xczu28dr_0] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xczu28dr_0] 0]
current_hw_device [lindex [get_hw_devices arm_dap_1] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices arm_dap_1] 0]
current_hw_device [lindex [get_hw_devices xczu28dr_0] 0]
create_hw_cfgmem -hw_device [lindex [get_hw_devices] 0] -mem_dev  [lindex [get_cfgmem_parts {mt25qu02g-qspi-x8-dual_parallel}] 0]
set_property PROGRAM.BLANK_CHECK  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
set_property PROGRAM.ERASE  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
set_property PROGRAM.CFG_PROGRAM  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
set_property PROGRAM.VERIFY  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
set_property PROGRAM.CHECKSUM  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
refresh_hw_device [lindex [get_hw_devices xczu28dr_0] 0]
set_property PROGRAM.ADDRESS_RANGE  {use_file} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
set_property PROGRAM.FILES [list ./bitstream/blinkbist.mcs ] [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0]]
set_property PROGRAM.ZYNQ_FSBL {./elf/qspi_zynq_mp_fsbl.elf} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0]]
set_property PROGRAM.BLANK_CHECK  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
set_property PROGRAM.ERASE  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
set_property PROGRAM.CFG_PROGRAM  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
set_property PROGRAM.VERIFY  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
set_property PROGRAM.CHECKSUM  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
program_hw_cfgmem -hw_cfgmem [get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices] 0 ]]
close_hw_target [current_hw_target [get_hw_targets */xilinx_tcf/*/*]]
disconnect_hw_server localhost:3121
close_hw
