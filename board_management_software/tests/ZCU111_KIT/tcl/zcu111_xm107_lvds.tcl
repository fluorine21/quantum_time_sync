open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/*/*]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/*/*]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
current_hw_device [lindex [get_hw_devices arm_dap_1] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 1]
current_hw_device [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {[pwd]/../bitstream/zcu111_xm107_lvds.bit} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
close_hw_target [current_hw_target [get_hw_targets */xilinx_tcf/*/*]]
disconnect_hw_server localhost:3121
close_hw
