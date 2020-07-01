open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/*/*]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/*/*]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
report_property [lindex [get_hw_device] 0] REGISTER.EFUSE.FUSE_DNA
report_property [lindex [get_hw_device] 1] REGISTER.EFUSE.FUSE_DNA
close_hw_target [current_hw_target [get_hw_targets */xilinx_tcf/*/*]]
disconnect_hw_server localhost:3121
close_hw
