puts "connect -url tcp:127.0.0.1:3121"
puts [connect -url tcp:127.0.0.1:3121]
puts "targets -set -filter {name =~\"*APU*\"}"
puts [targets -set -filter {name =~"*APU*"}]
puts "rst -system"
puts [rst -system]
puts "fpga -file [pwd]/bitstream/level_shifters.bit"
puts [fpga -file [pwd]/bitstream/level_shifters.bit]
puts "source [pwd]/tcl/level_shifters_psu_init.tcl"
puts [source [pwd]/tcl/level_shifters_psu_init.tcl]
puts "psu_init"
puts [psu_init]
puts "psu_ps_pl_isolation_removal"
puts [psu_ps_pl_isolation_removal]
puts "psu_ps_pl_reset_config"
puts [psu_ps_pl_reset_config]
puts "targets -set -filter {name =~\"*A53*0\"}"
puts [targets -set -filter {name =~"*A53*0"}]
puts "rst -processor"
puts [rst -processor]
puts "dow [pwd]/elf/level_shifters.elf"
puts [dow [pwd]/elf/level_shifters.elf]
puts "con"
puts [con]
puts "after 1000"
puts [after 1000]
