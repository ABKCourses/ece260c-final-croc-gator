# Copyright 2023 ETH Zurich and University of Bologna.
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51

# Authors:
# - Tobias Senti <tsenti@ethz.ch>
# - Jannis Schönleber <janniss@iis.ee.ethz.ch>
# - Philippe Sauter   <phsauter@iis.ee.ethz.ch>

source scripts/floorplan_util.tcl

##########################################################################
# Reset (mark everything as unplaced)
##########################################################################
set block [ord::get_db_block]
set insts [odb::dbBlock_getInsts $block]
foreach inst $insts {
  set master [[$inst getMaster] getName]
  # delete IO filler and unplace the rest
  if {[lsearch -exact $iofill $master] != -1 || $master eq $iocorner} {
    odb::dbInst_destroy $inst
    continue
  } else {
    odb::dbInst_setPlacementStatus $inst "none"
  }
}


##########################################################################
# Chip and Core Area
##########################################################################

set block [ord::get_db_block]
set die_area [$block getDieArea]
set macro_leftX    [ord::dbu_to_microns [$die_area xMin]]
set macro_bottomY  [ord::dbu_to_microns [$die_area yMin]]
set macro_rightX   [ord::dbu_to_microns [$die_area xMax]]
set macro_topY     [ord::dbu_to_microns [$die_area yMax]]


##########################################################################
# Tracks 
##########################################################################
# We need to define the metal tracks 
# (where the wires on each metal should go)
# this function is defined in init_tech.tcl
makeTracks

# the height of a standard cell, useful to align things
set siteHeight        [ord::dbu_to_microns [[dpl::get_row_site] getHeight]]


##########################################################################
# Paths to the instances of macros
##########################################################################
#utl::report "Macro Names"
source src/instances.tcl

##########################################################################
# Placing 
##########################################################################
# use these for macro placement
#set floorPaddingX      20.0
#set floorPaddingY      20.0
#set floor_leftX       [expr $core_leftX + $floorPaddingX]
#set floor_bottomY     [expr $core_bottomY + $floorPaddingY]
#set floor_rightX      [expr $core_rightX - $floorPaddingX]
#set floor_topY        [expr $core_topY - $floorPaddingY]
#set floor_midpointX   [expr $floor_leftX + ($floor_rightX - $floor_leftX)/2]
#set floor_midpointY   [expr $floor_bottomY + ($floor_topY - $floor_bottomY)/2]


utl::report "Place Macros using MPL"

rtl_macro_placer -halo_width 5 -halo_height 5 -target_util 0.7 -min_ar 0.3

# Bank0
#set X [expr $floor_midpointX - $RamSize256x64_W/2]
#set Y [expr $floor_topY - $RamSize256x64_H]
#placeInstance $bank0_sram0 $X $Y R0

# Bank1
#set X [expr $X]
#set Y [expr $Y - $RamSize256x64_H - 15]
#placeInstance $bank1_sram0 $X $Y R0

