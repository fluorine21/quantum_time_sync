open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/*/*]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/*/*]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -quiet [lindex [get_hw_devices] 0]
set_property PORT.QPLL0RESET 1 [get_hw_sio_commons *];commit_hw_sio [list [get_hw_sio_commons {*}] ]
set_property PORT.QPLL0RESET 0 [get_hw_sio_commons *];commit_hw_sio [list [get_hw_sio_commons {*}] ]
set_property PORT.QPLL1RESET 1 [get_hw_sio_commons *];commit_hw_sio [list [get_hw_sio_commons {*}] ]
set_property PORT.QPLL1RESET 0 [get_hw_sio_commons *];commit_hw_sio [list [get_hw_sio_commons {*}] ]
set_property PORT.CPLLRESET 1 [get_hw_sio_gts *];commit_hw_sio [list [get_hw_sio_gts {*}] ]
set_property PORT.CPLLRESET 0 [get_hw_sio_gts *];commit_hw_sio [list [get_hw_sio_gts {*}] ]
set_property PORT.GTRXRESET 1 [get_hw_sio_gts *];commit_hw_sio [list [get_hw_sio_gts {*}] ]
set_property PORT.GTRXRESET 0 [get_hw_sio_gts *];commit_hw_sio [list [get_hw_sio_gts {*}] ]
set_property PORT.GTTXRESET 1 [get_hw_sio_gts *];commit_hw_sio [list [get_hw_sio_gts {*}] ]
set_property PORT.GTTXRESET 0 [get_hw_sio_gts *];commit_hw_sio [list [get_hw_sio_gts {*}] ]
refresh_hw_sio [get_hw_sio_gts *]
refresh_hw_sio [get_hw_sio_commons *]
close_hw_target [current_hw_target [get_hw_targets */xilinx_tcf/*/*]]
disconnect_hw_server localhost:3121
close_hw