puts [after 2000]
puts "catch { disconnect }"
puts [catch { disconnect }]
puts [after 2000]
puts "connect -url tcp:127.0.0.1:3121"
puts [connect -url tcp:127.0.0.1:3121]
puts "targets -set -filter {name =~\"*APU*\"}"
puts [targets -set -filter {name =~"*APU*"}]
puts "fpga -state"
puts [fpga -state]
puts [after 2000]
puts "targets -set -filter {name =~\"*APU*\"}"
puts [targets -set -filter {name =~"*APU*"}]
puts "source {[pwd]/../tcl/psu_init.tcl}"
puts [source {[pwd]/../tcl/psu_init.tcl}]
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
puts "dow {[pwd]/../elf/pmod_loop.elf}"
puts [dow {[pwd]/../elf/pmod_loop.elf}]
puts "targets -set -filter {name =~\"*A53*0\"}"
puts [targets -set -filter {name =~"*A53*0"}]
puts "con"
puts [con]
puts "after 5000"
puts [after 5000]
puts "disconnect"
puts [disconnect]
puts [exit]
