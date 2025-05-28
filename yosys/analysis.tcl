#utl::report "Init tech from Github PDK"
if {![info exists pdk_dir]} {
	set pdk_dir "../ihp13/pdk"
}
set pdk_cells_lib ${pdk_dir}/ihp-sg13g2/libs.ref/sg13g2_stdcell/lib
set pdk_cells_lef ${pdk_dir}/ihp-sg13g2/libs.ref/sg13g2_stdcell/lef
set pdk_sram_lib  ${pdk_dir}/ihp-sg13g2/libs.ref/sg13g2_sram/lib
set pdk_sram_lef  ${pdk_dir}/ihp-sg13g2/libs.ref/sg13g2_sram/lef
set pdk_io_lib    ${pdk_dir}/ihp-sg13g2/libs.ref/sg13g2_io/lib
set pdk_io_lef    ${pdk_dir}/ihp-sg13g2/libs.ref/sg13g2_io/lef

set pdk_pad_lef   ../ihp13/bondpad/lef


# LIB
#define_corners tt ff

puts "Init standard cells"
#read_liberty -corner tt ${pdk_cells_lib}/sg13g2_stdcell_typ_1p20V_25C.lib
#read_liberty -corner ff ${pdk_cells_lib}/sg13g2_stdcell_fast_1p32V_m40C.lib
read_liberty ${pdk_cells_lib}/sg13g2_stdcell_fast_1p32V_m40C.lib

puts "Init IO cells"
#read_liberty -corner tt ${pdk_io_lib}/sg13g2_io_typ_1p2V_3p3V_25C.lib
#read_liberty -corner ff ${pdk_io_lib}/sg13g2_io_fast_1p32V_3p6V_m40C.lib
read_liberty ${pdk_io_lib}/sg13g2_io_fast_1p32V_3p6V_m40C.lib

puts "Init SRAM macros"
#foreach file [glob -directory $pdk_sram_lib *_typ_1p20V_25C.lib] {
#	read_liberty -corner tt "$file"
#}

#foreach file [glob -directory $pdk_sram_lib *_fast_1p32V_m55C.lib] {
#	read_liberty -corner ff "$file"
#}
foreach file [glob -directory $pdk_sram_lib *_fast_1p32V_m55C.lib] {
	read_liberty "$file"
}
read_verilog out/cve2_multdiv_fast_yosys.v
link_design cve2_multdiv_fast
create_clock -name clk_i -period 5 {clk_i}

#report_checks -format json > dse.analysis.json
report_checks 
report_clock_min_period
report_power
