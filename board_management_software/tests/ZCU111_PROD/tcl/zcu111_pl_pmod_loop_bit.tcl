set_param xicom.use_bitstream_version_check false
open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/Xilinx/*]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/Xilinx/*]
open_hw_target -jtag_mode 1
scan_ir_hw_jtag 12 -tdi 0x90B
close_hw_target
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {[pwd]/../bitstream/pmod_loop.bit} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
close_hw_target [current_hw_target [get_hw_targets */xilinx_tcf/Xilinx/*]]
disconnect_hw_server localhost:3121
close_hw
