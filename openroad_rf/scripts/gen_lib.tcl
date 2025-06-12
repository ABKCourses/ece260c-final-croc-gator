# Read LEFs
read_lef ../../ihp13/pdk/ihp-sg13g2/libs.ref/sg13g2_stdcell/lef/sg13g2_tech.lef
read_lef ../../ihp13/pdk/ihp-sg13g2/libs.ref/sg13g2_stdcell/lef/sg13g2_stdcell.lef
read_lef ../../ihp13/pdk/ihp-sg13g2/libs.ref/sg13g2_io/lef/sg13g2_io.lef

# Read Liberty files for typical corner
#read_liberty ../../ihp13/pdk/ihp-sg13g2/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_typ_1p20V_25C.lib
#read_liberty ../../ihp13/pdk/ihp-sg13g2/libs.ref/sg13g2_io/lib/sg13g2_io_typ_1p2V_3p3V_25C.lib

# Read Liberty files for fast corner
read_liberty ../../ihp13/pdk/ihp-sg13g2/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_fast_1p32V_m40C.lib
read_liberty ../../ihp13/pdk/ihp-sg13g2/libs.ref/sg13g2_io/lib/sg13g2_io_fast_1p32V_3p6V_m40C.lib

# Read netlist
read_verilog ../out/cve2_register_file_ff.v

# Link the design
link_design cve2_register_file_ff

# Read constraints
read_sdc ../src/constraints.sdc

# Read parasitics if available
if {[file exists ../out/cve2_register_file_ff.spef]} {
    read_spef ../out/cve2_register_file_ff.spef
}

# Run timing analysis
report_checks -path_delay min_max -fields {slew cap input_pins} -format full_clock_expanded

# Generate timing model (liberty format)
write_timing_model cve2_register_file_ff_ff.lib

# Optional: Generate additional reports
report_tns
report_wns
report_power