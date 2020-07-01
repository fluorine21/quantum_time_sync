open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/*/*]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/*/*]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
set_property PROBES.FILE {} [get_hw_devices xczu28dr_0]
set_property FULL_PROBES.FILE {} [get_hw_devices xczu28dr_0]
set_property PROGRAM.FILE {C:/zcu111_bit/tests/ZCU111/bitstream/zcu111_xm107_lvds.bit} [get_hw_devices xczu28dr_0]
program_hw_devices [get_hw_devices xczu28dr_0]
refresh_hw_device [lindex [get_hw_devices xczu28dr_0] 0]
