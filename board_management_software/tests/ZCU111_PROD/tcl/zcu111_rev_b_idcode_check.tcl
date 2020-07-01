open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/*/*]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/*/*]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
#
# ZCU111 Rev. B Silicon
# IDCODE: 147E0093
#
set IDCODE [get_property IDCODE_HEX [lindex [get_hw_device] 0]]
puts $IDCODE
if { $IDCODE == "147E0093"} {
   puts "IDCODE check PASSED"
} else {
   puts "IDCODE check FAILED" 
}
close_hw_target [current_hw_target [get_hw_targets */xilinx_tcf/*/*]]
disconnect_hw_server localhost:3121
close_hw
