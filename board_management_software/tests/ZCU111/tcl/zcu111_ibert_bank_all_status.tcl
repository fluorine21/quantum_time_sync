open_hw
catch {disconnect_hw_server localhost:3121}
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/*/*]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/*/*]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
set xil_newLinks [list]
set xil_newLink [create_hw_sio_link -description {Link 0} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_128/MGT_X0Y4/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_128/MGT_X0Y4/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 1} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_128/MGT_X0Y5/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_128/MGT_X0Y5/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 2} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_128/MGT_X0Y6/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_128/MGT_X0Y6/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 3} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_128/MGT_X0Y7/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_128/MGT_X0Y7/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 4} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_129/MGT_X0Y8/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_129/MGT_X0Y8/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 5} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_129/MGT_X0Y9/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_129/MGT_X0Y9/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 6} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_129/MGT_X0Y10/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_129/MGT_X0Y10/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 7} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_129/MGT_X0Y11/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_129/MGT_X0Y11/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 8} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_130/MGT_X0Y12/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_130/MGT_X0Y12/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 9} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_130/MGT_X0Y13/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_130/MGT_X0Y13/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 10} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_130/MGT_X0Y14/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_130/MGT_X0Y14/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 11} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_130/MGT_X0Y15/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_130/MGT_X0Y15/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 12} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_131/MGT_X0Y16/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_131/MGT_X0Y16/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 13} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_131/MGT_X0Y17/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_131/MGT_X0Y17/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 14} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_131/MGT_X0Y18/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_131/MGT_X0Y18/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLink [create_hw_sio_link -description {Link 15} [lindex [get_hw_sio_txs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_131/MGT_X0Y19/TX] 0] [lindex [get_hw_sio_rxs localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_131/MGT_X0Y19/RX] 0] ]
lappend xil_newLinks $xil_newLink
set xil_newLinkGroup [create_hw_sio_linkgroup -description {Link Group 0} [get_hw_sio_links $xil_newLinks]]
unset xil_newLinks
set_property TX_PATTERN {PRBS 31-bit} [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
commit_hw_sio [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
set_property RX_PATTERN {PRBS 31-bit} [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
commit_hw_sio [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
set_property TXDIFFSWING {650 mV (01010)} [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
commit_hw_sio [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
set_property TXPRE {2.21 dB (01001)} [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
commit_hw_sio [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
set_property LOGIC.TX_RESET_DATAPATH 1 [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
commit_hw_sio [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
set_property LOGIC.TX_RESET_DATAPATH 0 [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
commit_hw_sio [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
set_property LOGIC.RX_RESET_DATAPATH 1 [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
commit_hw_sio [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
set_property LOGIC.RX_RESET_DATAPATH 0 [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
commit_hw_sio [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
set_property LOGIC.MGT_ERRCNT_RESET_CTRL 1 [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
commit_hw_sio [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
set_property LOGIC.MGT_ERRCNT_RESET_CTRL 0 [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
commit_hw_sio [get_hw_sio_links -of_objects [get_hw_sio_linkgroups {LINKGROUP_0}]]
refresh_hw_sio [get_hw_sio_links]

puts "Waiting 120 seconds for test to run."
after [expr 120 * 1000]

refresh_hw_sio [get_hw_sio_links]
# "0" is the first "get_hw_sio_gts" that applies "localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_128/MGT_X0Y4"
# "15" is the last "get_hw_sio_gts" that applies "localhost:3121/xilinx_tcf/Xilinx/*/0_1_0_0/IBERT/Quad_131/MGT_X0Y19"
# i for "get_hw_sio_gts"; j for "get_hw_sio_links"; qpll0, qpll1, and cpll0 are for get_hw_sio_plls
set offset 0
set initial_links 0
for {set i $offset} {$i <= 15} {incr i} {
  set j [expr {$i - $offset + $initial_links}]
  set display_name [get_property {DISPLAY_NAME} [lindex [get_hw_sio_gts] $i]]
  set quad_name [lindex [split [get_property {NAME} [lindex [get_hw_sio_gts] $i]] /] 6]
  set qpll0 [expr [expr $i / 4] * 6]
  #set qpll1 [expr [expr [expr $i / 4] * 6] + 1]
  #set cpll0 [expr $qpll0 + 2 + [expr $i%4]]
  puts "$quad_name:$display_name: DESCRIPTION=[get_property {DESCRIPTION} [lindex [get_hw_sio_links] $j]]"
  puts "$quad_name:$display_name: STATUS=[get_property {STATUS} [lindex [get_hw_sio_links] $j]]"
  puts "$quad_name:$display_name: QPLL0_STATUS=[get_property {QPLL0_STATUS} [lindex [get_hw_sio_plls] $qpll0]]"
  #puts "$quad_name:$display_name: QPLL1_STATUS=[get_property {QPLL1_STATUS} [lindex [get_hw_sio_plls] $qpll1]]"
  #puts "$quad_name:$display_name: CPLL_STATUS=[get_property {PLL_STATUS} [lindex [get_hw_sio_plls] $cpll0]]"
  puts "$quad_name:$display_name: LINE_RATE=[get_property {LINE_RATE} [lindex [get_hw_sio_links] $j]]"
  puts "$quad_name:$display_name: LOGIC.ERRBIT_COUNT=[get_property {LOGIC.ERRBIT_COUNT} [lindex [get_hw_sio_links] $j]]"
  puts "$quad_name:$display_name: RX_RECEIVED_BIT_COUNT=[get_property {RX_RECEIVED_BIT_COUNT} [lindex [get_hw_sio_links] $j]]"
  puts "$quad_name:$display_name: TX_PATTERN=[get_property {TX_PATTERN} [lindex [get_hw_sio_links] $j]]"
  puts "$quad_name:$display_name: RX_PATTERN=[get_property {RX_PATTERN} [lindex [get_hw_sio_links] $j]]"
  puts "$quad_name:$display_name: LOOPBACK=[get_property {LOOPBACK} [lindex [get_hw_sio_links] $j]]"
  # Debug lines to insure the correct alignment of the get_hw_sio_gts, get_hw_sio_links, and get_hw_sio_plls numbering
  puts "$quad_name:$display_name: TX_ENDPOINT=[get_property {TX_ENDPOINT} [lindex [get_hw_sio_links] $j]]"
  puts "$quad_name:$display_name: RX_ENDPOINT=[get_property {RX_ENDPOINT} [lindex [get_hw_sio_links] $j]]"
  puts "$quad_name:$display_name: NAME=[get_property {NAME} [lindex [get_hw_sio_gts] $i]]"
  puts "$quad_name:$display_name: get_hw_sio_plls=[lindex [get_hw_sio_plls] $qpll0]"
  #puts "$quad_name:$display_name: get_hw_sio_plls=[lindex [get_hw_sio_plls] $qpll1]"
  #puts "$quad_name:$display_name: get_hw_sio_plls=[lindex [get_hw_sio_plls] $cpll0]"
}


close_hw_target [current_hw_target [get_hw_targets */xilinx_tcf/*/*]]
disconnect_hw_server localhost:3121
close_hw