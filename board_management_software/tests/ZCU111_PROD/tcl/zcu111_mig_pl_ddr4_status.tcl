#if { $::argc > 0 } {
#    set i 1
#    foreach arg $::argv {
#        puts "argument $i is $arg"
#        incr i
#    }
#}
#set TEST_DELAY [lindex $argv 0]
set TEST_DELAY 120
#set TEST_DELAY 10
disconnect_hw_server -quiet
open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/*/*]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/*/*]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
set_property PROBES.FILE {[pwd]/../bitstream/zcu111_mig_pl_ddr4.ltx} [lindex [get_hw_devices] 0]
puts "\n    10 second delay for UltraScale MIG calibration\n"
after 10000
refresh_hw_device [lindex [get_hw_devices] 0]
puts "\n    Refreshing VIO\n"
refresh_hw_vio [get_hw_vios hw_vio_*]
puts "\n    Reading LED Status Before Resetting\n"
set leds [get_property INPUT_VALUE [get_hw_probes -filter {NAME =~ */led || NAME =~ */out}]]
if {${leds} == "9" || ${leds} == "b"} {
    set pass_1 true
} else {
    set pass_1 false
}
puts "\n    Info:VIO Core Read LED Data Pass 1:_________${leds}_________\n"
puts "\n    Reset the design\n"
set_property OUTPUT_VALUE 1 [get_hw_probes u_led_display_driver/reset_in -of_objects [get_hw_vios hw_vio_*]]
commit_hw_vio [get_hw_probes {u_led_display_driver/reset_in} -of_objects [get_hw_vios hw_vio_*]]
after 5000
set_property OUTPUT_VALUE 0 [get_hw_probes u_led_display_driver/reset_in -of_objects [get_hw_vios hw_vio_*]]
commit_hw_vio [get_hw_probes {u_led_display_driver/reset_in} -of_objects [get_hw_vios hw_vio_*]]
puts "\n    Waiting $TEST_DELAY seconds for test to run\n"
after [expr $TEST_DELAY * 1000]
puts "\n    Refreshing VIO\n"
refresh_hw_vio [get_hw_vios hw_vio_*]
puts "\n    Reading LED Status"
set leds [get_property INPUT_VALUE [get_hw_probes -filter {NAME =~ */led || NAME =~ */out}]]
if {${leds} == "9" || ${leds} == "b"} {
    set pass_2 true
} else {
    set pass_2 false
}
puts "\nInfo:VIO Core Read LED Data Pass 2:_________${leds}_________\n"
if {$pass_1 == true && $pass_2 == true} {
    puts "\n[lindex $argv 1] TEST PASSED\n"
} else  {
    puts "\n[lindex $argv 1] TEST FAILED\n"
}
close_hw_target [current_hw_target [get_hw_targets */xilinx_tcf/*/*]]
disconnect_hw_server localhost:3121
close_hw
