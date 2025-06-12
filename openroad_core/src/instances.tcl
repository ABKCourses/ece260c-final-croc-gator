# Copyright 2024 ETH Zurich and University of Bologna.
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51

# Authors:
# - Philippe Sauter <phsauter@iis.ee.ethz.ch>

# Automatic collection of SRAMs and delay-line macros
# Used for automatic macro placement
set macros [list]

# set srams [get_cells *RM_IHP*]
# foreach inst $srams {
#     lappend macros $inst
# }


# Macro names as produced by the yosys synthesis
# Used for manual macro placement

#set CROC            i_croc_soc/i_croc
#set USER            i_croc_soc/i_user
#set IBEX            $CROC/i_core_wrap.i_ibex
#set SRAM            $CROC/gen_sram_bank
#set JTAG            $CROC/i_dmi_jtag
#set SRAM_512x32     gen_512x32xBx1.i_cut



set REGFILE_CORE i_ibex.register_file_i
puts "Found cells: $REGFILE_CORE"

# Then add them to macros
if {[llength $REGFILE_CORE] > 0} {
    foreach cell $REGFILE_CORE {
        lappend macros $cell
    }
} else {
    puts "Warning: No cve2_register_file_ff instances found"
}

# Debug the macro collection (OpenROAD version)
puts "REGFILE_CORE instances found:"
foreach cell $REGFILE_CORE {
    puts "  $cell"
    # Check if instance actually exists using OpenROAD commands
    if {[catch {get_cells $cell} inst]} {
        puts "    WARNING: Instance $cell not found in database!"
    } else {
        puts "    OK: Instance exists"
    }
}

puts "Total macros to place: [llength $macros]"

# memory banks
#set sram {\[0\].i_sram/}
#set bank0_sram0 $SRAM$sram$SRAM_512x32
#set sram {\[1\].i_sram/}
#set bank1_sram0 $SRAM$sram$SRAM_512x32

#set JTAG_ASYNC_REQ [get_nets $JTAG/i_dmi_cdc.i_cdc_req/*async_*]
#set JTAG_ASYNC_RSP [get_nets $JTAG/i_dmi_cdc.i_cdc_resp/*async_*]


