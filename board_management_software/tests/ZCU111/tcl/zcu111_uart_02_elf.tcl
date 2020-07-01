puts [after 2000]
puts "catch { disconnect }"
puts [catch { disconnect }]
puts [after 2000]
puts "connect -url tcp:127.0.0.1:3121"
puts [connect -url tcp:127.0.0.1:3121]
puts "targets -set -filter {name =~\"*APU*\"}"
puts [targets -set -filter {name =~"*APU*"}]
puts "rst -srst"
puts [rst -srst]
puts "fpga -state"
puts [fpga -state]
puts "after 2000"
puts [after 2000]
puts "fpga -no-revision-check -file {[pwd]/../bitstream/zcu111_ipi.bit}"
puts [fpga -no-revision-check -file {[pwd]/../bitstream/zcu111_ipi.bit}]
puts "after 2000"
puts [after 2000]
puts "fpga -state"
puts [fpga -state]
puts "after 2000"
puts [after 2000]
puts "fpga -ir-status"
puts [fpga -ir-status]
puts "after 2000"
puts [after 2000]
puts "targets -set -filter {name =~\"*APU*\"}"
puts [targets -set -filter {name =~"*APU*"}]
puts "source {[pwd]/../tcl/ipi_psu_init.tcl}"
puts [source {[pwd]/../tcl/ipi_psu_init.tcl}]
puts "psu_init"
puts [psu_init]
puts "after 1000"
puts [after 1000]
puts "psu_ps_pl_isolation_removal"
puts [psu_ps_pl_isolation_removal]
puts "after 1000"
puts [after 1000]
puts "psu_ps_pl_reset_config"
puts [psu_ps_pl_reset_config]
puts "catch { psu_protection }"
puts [catch { psu_protection }]
puts "targets -set -filter {name =~\"*A53*0\"}"
puts [targets -set -filter {name =~"*A53*0"}]
puts "rst -processor"
puts [rst -processor]
puts "dow {[pwd]/../elf/hello_uart_2.elf}"
puts [dow {[pwd]/../elf/hello_uart_2.elf}]
puts "targets -set -filter {name =~\"*A53*0\"}"
puts [targets -set -filter {name =~"*A53*0"}]
puts "con"
puts [con]
puts "after 2000"
puts [after 2000]
puts "disconnect"
puts [disconnect]
puts [exit]