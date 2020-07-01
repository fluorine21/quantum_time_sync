puts [after 2000]
puts "catch { disconnect }"
puts [catch { disconnect }]
puts [after 2000]
puts "connect -url tcp:127.0.0.1:3121"
puts [connect -url tcp:127.0.0.1:3121]
puts "targets -set -filter {name =~\"*APU*\"}"
puts [targets -set -filter {name =~"*APU*"}]
rst -system
after 3000
targets -set -filter {name =~"*APU*"}
fpga -no-revision-check -file [pwd]/bitstream/boot_strap_loader.bit
targets -set -filter {name =~"*APU*"}
source [pwd]/tcl/bsl_psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
targets -set -filter {name =~"*A53*0"}
rst -processor
dow [pwd]/elf/boot_strap_loader.elf
con