# Copyright 2023 ETH Zurich and University of Bologna.
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51

# Authors:
# - Tobias Senti <tsenti@ethz.ch>
# - Jannis Schönleber <janniss@iis.ee.ethz.ch>
# - Philippe Sauter <phsauter@iis.ee.ethz.ch>

# Some useful functions for floorplaning

# place_macro only allows R0, R180, MX, MY
# Example: placeInstance $sram 25 50 R90
proc placeInstance { name x y orient } {
  puts "placing $name at {$x $y} $orient"

  set block [ord::get_db_block]
  set inst [$block findInst $name]
  if {$inst == "NULL"} {
    error "Cannot find instance $name"
  }

  $inst setLocationOrient $orient
  $inst setLocation [ord::microns_to_dbu $x] [ord::microns_to_dbu $y]
  $inst setPlacementStatus FIRM
}

# floorplan - minimal setup
utl::report "Setting up SOC floorplan"

# Check if we have any hard macros to place
set macros [get_cells -hier -filter "is_hierarchical==true"]
if {[llength $macros] > 0} {
    utl::report "Found macros: $macros"
    rtl_macro_placer -halo_width 2 -halo_height 2
} else {
    utl::report "No hard macros - standard cell design"
}

# Skip pin placement - handled elsewhere
utl::report "floorplan complete"