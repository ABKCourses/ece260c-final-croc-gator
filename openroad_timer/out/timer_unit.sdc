###############################################################################
# Created by write_sdc
# Thu Jun 12 08:13:18 2025
###############################################################################
current_design timer_unit
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk_sys -period 12.5000 [get_ports {clk_i}]
set_clock_transition 0.2000 [get_clocks {clk_sys}]
set_clock_uncertainty 0.1000 clk_sys
set_propagated_clock [get_clocks {clk_sys}]
create_clock -name ref_clk -period 50.0000 [get_ports {ref_clk_i}]
set_clock_transition 0.2000 [get_clocks {ref_clk}]
set_clock_uncertainty 0.1000 ref_clk
set_propagated_clock [get_clocks {ref_clk}]
set_clock_groups -name group1 -asynchronous \
 -group [get_clocks {clk_sys}]\
 -group [get_clocks {ref_clk}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[0]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[10]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[10]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[11]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[11]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[12]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[12]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[13]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[13]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[14]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[14]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[15]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[15]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[16]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[16]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[17]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[17]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[18]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[18]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[19]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[19]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[1]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[20]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[20]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[21]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[21]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[22]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[22]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[23]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[23]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[24]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[24]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[25]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[25]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[26]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[26]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[27]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[27]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[28]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[28]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[29]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[29]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[2]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[30]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[30]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[31]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[31]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[3]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[4]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[5]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[6]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[7]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[7]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[8]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[8]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {addr_i[9]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {addr_i[9]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {be_i[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {be_i[0]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {be_i[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {be_i[1]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {be_i[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {be_i[2]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {be_i[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {be_i[3]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {event_hi_i}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {event_hi_i}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {event_lo_i}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {event_lo_i}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {id_i[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {id_i[0]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {id_i[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {id_i[1]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {id_i[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {id_i[2]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {id_i[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {id_i[3]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {id_i[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {id_i[4]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {req_i}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {req_i}]
set_input_delay 1.2500 -rise -max -add_delay [get_ports {rst_ni}]
set_input_delay 1.2500 -fall -max -add_delay [get_ports {rst_ni}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[0]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[10]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[10]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[11]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[11]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[12]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[12]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[13]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[13]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[14]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[14]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[15]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[15]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[16]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[16]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[17]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[17]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[18]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[18]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[19]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[19]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[1]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[20]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[20]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[21]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[21]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[22]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[22]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[23]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[23]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[24]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[24]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[25]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[25]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[26]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[26]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[27]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[27]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[28]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[28]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[29]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[29]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[2]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[30]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[30]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[31]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[31]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[3]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[4]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[5]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[6]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[7]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[7]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[8]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[8]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wdata_i[9]}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wdata_i[9]}]
set_input_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {wen_i}]
set_input_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {wen_i}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {busy_o}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {busy_o}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {gnt_o}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {gnt_o}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irq_hi_o}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irq_hi_o}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {irq_lo_o}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {irq_lo_o}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_id_o[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_id_o[0]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_id_o[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_id_o[1]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_id_o[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_id_o[2]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_id_o[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_id_o[3]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_id_o[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_id_o[4]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_opc_o}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_opc_o}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[0]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[10]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[10]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[11]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[11]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[12]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[12]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[13]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[13]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[14]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[14]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[15]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[15]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[16]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[16]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[17]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[17]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[18]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[18]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[19]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[19]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[1]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[20]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[20]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[21]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[21]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[22]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[22]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[23]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[23]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[24]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[24]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[25]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[25]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[26]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[26]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[27]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[27]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[28]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[28]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[29]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[29]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[2]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[30]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[30]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[31]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[31]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[3]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[4]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[5]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[6]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[7]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[8]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[8]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_rdata_o[9]}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_rdata_o[9]}]
set_output_delay 0.5000 -clock [get_clocks {clk_sys}] -min -add_delay [get_ports {r_valid_o}]
set_output_delay 2.0000 -clock [get_clocks {clk_sys}] -max -add_delay [get_ports {r_valid_o}]
set_max_delay\
    -from [get_ports {rst_ni}] 12.5000
set_max_delay\
    -from [list [get_ports {addr_i[0]}]\
           [get_ports {addr_i[10]}]\
           [get_ports {addr_i[11]}]\
           [get_ports {addr_i[12]}]\
           [get_ports {addr_i[13]}]\
           [get_ports {addr_i[14]}]\
           [get_ports {addr_i[15]}]\
           [get_ports {addr_i[16]}]\
           [get_ports {addr_i[17]}]\
           [get_ports {addr_i[18]}]\
           [get_ports {addr_i[19]}]\
           [get_ports {addr_i[1]}]\
           [get_ports {addr_i[20]}]\
           [get_ports {addr_i[21]}]\
           [get_ports {addr_i[22]}]\
           [get_ports {addr_i[23]}]\
           [get_ports {addr_i[24]}]\
           [get_ports {addr_i[25]}]\
           [get_ports {addr_i[26]}]\
           [get_ports {addr_i[27]}]\
           [get_ports {addr_i[28]}]\
           [get_ports {addr_i[29]}]\
           [get_ports {addr_i[2]}]\
           [get_ports {addr_i[30]}]\
           [get_ports {addr_i[31]}]\
           [get_ports {addr_i[3]}]\
           [get_ports {addr_i[4]}]\
           [get_ports {addr_i[5]}]\
           [get_ports {addr_i[6]}]\
           [get_ports {addr_i[7]}]\
           [get_ports {addr_i[8]}]\
           [get_ports {addr_i[9]}]\
           [get_ports {be_i[0]}]\
           [get_ports {be_i[1]}]\
           [get_ports {be_i[2]}]\
           [get_ports {be_i[3]}]\
           [get_ports {clk_i}]\
           [get_ports {event_hi_i}]\
           [get_ports {event_lo_i}]\
           [get_ports {id_i[0]}]\
           [get_ports {id_i[1]}]\
           [get_ports {id_i[2]}]\
           [get_ports {id_i[3]}]\
           [get_ports {id_i[4]}]\
           [get_ports {ref_clk_i}]\
           [get_ports {req_i}]\
           [get_ports {rst_ni}]\
           [get_ports {wdata_i[0]}]\
           [get_ports {wdata_i[10]}]\
           [get_ports {wdata_i[11]}]\
           [get_ports {wdata_i[12]}]\
           [get_ports {wdata_i[13]}]\
           [get_ports {wdata_i[14]}]\
           [get_ports {wdata_i[15]}]\
           [get_ports {wdata_i[16]}]\
           [get_ports {wdata_i[17]}]\
           [get_ports {wdata_i[18]}]\
           [get_ports {wdata_i[19]}]\
           [get_ports {wdata_i[1]}]\
           [get_ports {wdata_i[20]}]\
           [get_ports {wdata_i[21]}]\
           [get_ports {wdata_i[22]}]\
           [get_ports {wdata_i[23]}]\
           [get_ports {wdata_i[24]}]\
           [get_ports {wdata_i[25]}]\
           [get_ports {wdata_i[26]}]\
           [get_ports {wdata_i[27]}]\
           [get_ports {wdata_i[28]}]\
           [get_ports {wdata_i[29]}]\
           [get_ports {wdata_i[2]}]\
           [get_ports {wdata_i[30]}]\
           [get_ports {wdata_i[31]}]\
           [get_ports {wdata_i[3]}]\
           [get_ports {wdata_i[4]}]\
           [get_ports {wdata_i[5]}]\
           [get_ports {wdata_i[6]}]\
           [get_ports {wdata_i[7]}]\
           [get_ports {wdata_i[8]}]\
           [get_ports {wdata_i[9]}]\
           [get_ports {wen_i}]]\
    -to [list [get_pins {counter_hi_i.compare_value_i[0]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[0]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[10]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[10]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[11]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[11]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[12]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[12]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[13]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[13]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[14]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[14]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[15]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[15]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[16]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[16]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[17]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[17]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[18]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[18]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[19]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[19]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[1]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[1]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[20]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[20]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[21]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[21]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[22]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[22]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[23]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[23]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[24]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[24]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[25]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[25]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[26]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[26]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[27]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[27]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[28]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[28]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[29]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[29]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[2]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[2]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[30]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[30]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[31]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[31]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[3]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[3]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[4]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[4]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[5]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[5]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[6]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[6]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[7]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[7]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[8]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[8]_reg/RESET_B}]\
           [get_pins {counter_hi_i.compare_value_i[9]_reg/D}]\
           [get_pins {counter_hi_i.compare_value_i[9]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[0]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[0]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[10]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[10]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[11]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[11]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[12]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[12]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[13]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[13]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[14]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[14]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[15]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[15]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[16]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[16]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[17]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[17]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[18]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[18]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[19]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[19]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[1]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[1]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[20]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[20]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[21]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[21]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[22]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[22]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[23]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[23]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[24]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[24]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[25]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[25]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[26]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[26]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[27]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[27]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[28]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[28]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[29]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[29]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[2]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[2]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[30]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[30]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[31]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[31]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[3]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[3]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[4]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[4]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[5]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[5]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[6]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[6]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[7]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[7]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[8]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[8]_reg/RESET_B}]\
           [get_pins {counter_hi_i.counter_value_o[9]_reg/D}]\
           [get_pins {counter_hi_i.counter_value_o[9]_reg/RESET_B}]\
           [get_pins {counter_hi_i.target_reached_o_reg/D}]\
           [get_pins {counter_hi_i.target_reached_o_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[0]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[0]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[10]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[10]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[11]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[11]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[12]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[12]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[13]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[13]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[14]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[14]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[15]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[15]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[16]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[16]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[17]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[17]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[18]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[18]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[19]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[19]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[1]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[1]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[20]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[20]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[21]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[21]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[22]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[22]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[23]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[23]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[24]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[24]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[25]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[25]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[26]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[26]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[27]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[27]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[28]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[28]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[29]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[29]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[2]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[2]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[30]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[30]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[31]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[31]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[3]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[3]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[4]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[4]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[5]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[5]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[6]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[6]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[7]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[7]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[8]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[8]_reg/RESET_B}]\
           [get_pins {counter_lo_i.compare_value_i[9]_reg/D}]\
           [get_pins {counter_lo_i.compare_value_i[9]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[0]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[0]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[10]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[10]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[11]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[11]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[12]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[12]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[13]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[13]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[14]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[14]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[15]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[15]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[16]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[16]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[17]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[17]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[18]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[18]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[19]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[19]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[1]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[1]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[20]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[20]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[21]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[21]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[22]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[22]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[23]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[23]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[24]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[24]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[25]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[25]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[26]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[26]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[27]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[27]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[28]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[28]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[29]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[29]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[2]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[2]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[30]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[30]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[31]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[31]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[3]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[3]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[4]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[4]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[5]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[5]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[6]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[6]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[7]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[7]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[8]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[8]_reg/RESET_B}]\
           [get_pins {counter_lo_i.counter_value_o[9]_reg/D}]\
           [get_pins {counter_lo_i.counter_value_o[9]_reg/RESET_B}]\
           [get_pins {counter_lo_i.target_reached_o_reg/D}]\
           [get_pins {counter_lo_i.target_reached_o_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.compare_value_i[0]_reg/D}]\
           [get_pins {prescaler_hi_i.compare_value_i[0]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.compare_value_i[1]_reg/D}]\
           [get_pins {prescaler_hi_i.compare_value_i[1]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.compare_value_i[2]_reg/D}]\
           [get_pins {prescaler_hi_i.compare_value_i[2]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.compare_value_i[3]_reg/D}]\
           [get_pins {prescaler_hi_i.compare_value_i[3]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.compare_value_i[4]_reg/D}]\
           [get_pins {prescaler_hi_i.compare_value_i[4]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.compare_value_i[5]_reg/D}]\
           [get_pins {prescaler_hi_i.compare_value_i[5]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.compare_value_i[6]_reg/D}]\
           [get_pins {prescaler_hi_i.compare_value_i[6]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.compare_value_i[7]_reg/D}]\
           [get_pins {prescaler_hi_i.compare_value_i[7]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[0]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[0]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[10]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[10]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[11]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[11]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[12]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[12]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[13]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[13]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[14]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[14]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[15]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[15]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[16]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[16]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[17]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[17]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[18]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[18]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[19]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[19]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[1]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[1]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[20]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[20]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[21]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[21]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[22]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[22]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[23]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[23]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[24]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[24]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[25]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[25]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[26]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[26]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[27]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[27]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[28]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[28]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[29]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[29]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[2]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[2]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[30]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[30]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[31]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[31]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[3]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[3]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[4]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[4]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[5]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[5]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[6]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[6]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[7]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[7]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[8]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[8]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.counter_value_o[9]_reg/D}]\
           [get_pins {prescaler_hi_i.counter_value_o[9]_reg/RESET_B}]\
           [get_pins {prescaler_hi_i.target_reached_o_reg/D}]\
           [get_pins {prescaler_hi_i.target_reached_o_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.compare_value_i[0]_reg/D}]\
           [get_pins {prescaler_lo_i.compare_value_i[0]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.compare_value_i[1]_reg/D}]\
           [get_pins {prescaler_lo_i.compare_value_i[1]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.compare_value_i[2]_reg/D}]\
           [get_pins {prescaler_lo_i.compare_value_i[2]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.compare_value_i[3]_reg/D}]\
           [get_pins {prescaler_lo_i.compare_value_i[3]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.compare_value_i[4]_reg/D}]\
           [get_pins {prescaler_lo_i.compare_value_i[4]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.compare_value_i[5]_reg/D}]\
           [get_pins {prescaler_lo_i.compare_value_i[5]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.compare_value_i[6]_reg/D}]\
           [get_pins {prescaler_lo_i.compare_value_i[6]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.compare_value_i[7]_reg/D}]\
           [get_pins {prescaler_lo_i.compare_value_i[7]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[0]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[0]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[10]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[10]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[11]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[11]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[12]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[12]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[13]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[13]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[14]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[14]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[15]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[15]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[16]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[16]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[17]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[17]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[18]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[18]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[19]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[19]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[1]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[1]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[20]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[20]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[21]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[21]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[22]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[22]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[23]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[23]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[24]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[24]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[25]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[25]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[26]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[26]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[27]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[27]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[28]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[28]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[29]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[29]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[2]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[2]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[30]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[30]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[31]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[31]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[3]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[3]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[4]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[4]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[5]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[5]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[6]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[6]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[7]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[7]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[8]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[8]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.counter_value_o[9]_reg/D}]\
           [get_pins {prescaler_lo_i.counter_value_o[9]_reg/RESET_B}]\
           [get_pins {prescaler_lo_i.target_reached_o_reg/D}]\
           [get_pins {prescaler_lo_i.target_reached_o_reg/RESET_B}]\
           [get_pins {r_id_o[0]_reg/D}]\
           [get_pins {r_id_o[0]_reg/RESET_B}]\
           [get_pins {r_id_o[1]_reg/D}]\
           [get_pins {r_id_o[1]_reg/RESET_B}]\
           [get_pins {r_id_o[2]_reg/D}]\
           [get_pins {r_id_o[2]_reg/RESET_B}]\
           [get_pins {r_id_o[3]_reg/D}]\
           [get_pins {r_id_o[3]_reg/RESET_B}]\
           [get_pins {r_id_o[4]_reg/D}]\
           [get_pins {r_id_o[4]_reg/RESET_B}]\
           [get_pins {r_valid_o_reg/D}]\
           [get_pins {r_valid_o_reg/RESET_B}]\
           [get_pins {s_addr[0]_reg/D}]\
           [get_pins {s_addr[0]_reg/RESET_B}]\
           [get_pins {s_addr[1]_reg/D}]\
           [get_pins {s_addr[1]_reg/RESET_B}]\
           [get_pins {s_addr[2]_reg/D}]\
           [get_pins {s_addr[2]_reg/RESET_B}]\
           [get_pins {s_addr[3]_reg/D}]\
           [get_pins {s_addr[3]_reg/RESET_B}]\
           [get_pins {s_addr[4]_reg/D}]\
           [get_pins {s_addr[4]_reg/RESET_B}]\
           [get_pins {s_addr[5]_reg/D}]\
           [get_pins {s_addr[5]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[0]_reg/D}]\
           [get_pins {s_cfg_hi_reg[0]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[16]_reg/D}]\
           [get_pins {s_cfg_hi_reg[16]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[17]_reg/D}]\
           [get_pins {s_cfg_hi_reg[17]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[18]_reg/D}]\
           [get_pins {s_cfg_hi_reg[18]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[19]_reg/D}]\
           [get_pins {s_cfg_hi_reg[19]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[1]_reg/D}]\
           [get_pins {s_cfg_hi_reg[1]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[20]_reg/D}]\
           [get_pins {s_cfg_hi_reg[20]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[21]_reg/D}]\
           [get_pins {s_cfg_hi_reg[21]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[22]_reg/D}]\
           [get_pins {s_cfg_hi_reg[22]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[23]_reg/D}]\
           [get_pins {s_cfg_hi_reg[23]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[24]_reg/D}]\
           [get_pins {s_cfg_hi_reg[24]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[25]_reg/D}]\
           [get_pins {s_cfg_hi_reg[25]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[26]_reg/D}]\
           [get_pins {s_cfg_hi_reg[26]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[27]_reg/D}]\
           [get_pins {s_cfg_hi_reg[27]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[28]_reg/D}]\
           [get_pins {s_cfg_hi_reg[28]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[29]_reg/D}]\
           [get_pins {s_cfg_hi_reg[29]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[2]_reg/D}]\
           [get_pins {s_cfg_hi_reg[2]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[30]_reg/D}]\
           [get_pins {s_cfg_hi_reg[30]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[31]_reg/D}]\
           [get_pins {s_cfg_hi_reg[31]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[3]_reg/D}]\
           [get_pins {s_cfg_hi_reg[3]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[4]_reg/D}]\
           [get_pins {s_cfg_hi_reg[4]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[5]_reg/D}]\
           [get_pins {s_cfg_hi_reg[5]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[6]_reg/D}]\
           [get_pins {s_cfg_hi_reg[6]_reg/RESET_B}]\
           [get_pins {s_cfg_hi_reg[7]_reg/D}]\
           [get_pins {s_cfg_hi_reg[7]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[0]_reg/D}]\
           [get_pins {s_cfg_lo_reg[0]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[16]_reg/D}]\
           [get_pins {s_cfg_lo_reg[16]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[17]_reg/D}]\
           [get_pins {s_cfg_lo_reg[17]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[18]_reg/D}]\
           [get_pins {s_cfg_lo_reg[18]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[19]_reg/D}]\
           [get_pins {s_cfg_lo_reg[19]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[1]_reg/D}]\
           [get_pins {s_cfg_lo_reg[1]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[20]_reg/D}]\
           [get_pins {s_cfg_lo_reg[20]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[21]_reg/D}]\
           [get_pins {s_cfg_lo_reg[21]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[22]_reg/D}]\
           [get_pins {s_cfg_lo_reg[22]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[23]_reg/D}]\
           [get_pins {s_cfg_lo_reg[23]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[24]_reg/D}]\
           [get_pins {s_cfg_lo_reg[24]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[25]_reg/D}]\
           [get_pins {s_cfg_lo_reg[25]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[26]_reg/D}]\
           [get_pins {s_cfg_lo_reg[26]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[27]_reg/D}]\
           [get_pins {s_cfg_lo_reg[27]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[28]_reg/D}]\
           [get_pins {s_cfg_lo_reg[28]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[29]_reg/D}]\
           [get_pins {s_cfg_lo_reg[29]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[2]_reg/D}]\
           [get_pins {s_cfg_lo_reg[2]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[30]_reg/D}]\
           [get_pins {s_cfg_lo_reg[30]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[31]_reg/D}]\
           [get_pins {s_cfg_lo_reg[31]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[3]_reg/D}]\
           [get_pins {s_cfg_lo_reg[3]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[4]_reg/D}]\
           [get_pins {s_cfg_lo_reg[4]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[5]_reg/D}]\
           [get_pins {s_cfg_lo_reg[5]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[6]_reg/D}]\
           [get_pins {s_cfg_lo_reg[6]_reg/RESET_B}]\
           [get_pins {s_cfg_lo_reg[7]_reg/D}]\
           [get_pins {s_cfg_lo_reg[7]_reg/RESET_B}]\
           [get_pins {s_ref_clk0_reg/D}]\
           [get_pins {s_ref_clk0_reg/RESET_B}]\
           [get_pins {s_ref_clk1_reg/D}]\
           [get_pins {s_ref_clk1_reg/RESET_B}]\
           [get_pins {s_ref_clk2_reg/D}]\
           [get_pins {s_ref_clk2_reg/RESET_B}]\
           [get_pins {s_ref_clk3_reg/D}]\
           [get_pins {s_ref_clk3_reg/RESET_B}]\
           [get_pins {s_wen_reg/D}]\
           [get_pins {s_wen_reg/RESET_B}]] 10.0000
set_max_delay\
    -from [list [get_pins {counter_hi_i.compare_value_i[0]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[10]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[11]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[12]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[13]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[14]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[15]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[16]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[17]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[18]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[19]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[1]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[20]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[21]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[22]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[23]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[24]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[25]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[26]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[27]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[28]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[29]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[2]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[30]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[31]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[3]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[4]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[5]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[6]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[7]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[8]_reg/CLK}]\
           [get_pins {counter_hi_i.compare_value_i[9]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[0]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[10]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[11]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[12]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[13]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[14]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[15]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[16]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[17]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[18]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[19]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[1]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[20]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[21]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[22]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[23]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[24]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[25]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[26]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[27]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[28]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[29]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[2]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[30]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[31]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[3]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[4]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[5]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[6]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[7]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[8]_reg/CLK}]\
           [get_pins {counter_hi_i.counter_value_o[9]_reg/CLK}]\
           [get_pins {counter_hi_i.target_reached_o_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[0]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[10]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[11]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[12]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[13]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[14]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[15]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[16]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[17]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[18]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[19]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[1]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[20]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[21]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[22]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[23]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[24]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[25]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[26]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[27]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[28]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[29]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[2]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[30]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[31]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[3]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[4]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[5]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[6]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[7]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[8]_reg/CLK}]\
           [get_pins {counter_lo_i.compare_value_i[9]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[0]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[10]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[11]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[12]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[13]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[14]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[15]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[16]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[17]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[18]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[19]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[1]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[20]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[21]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[22]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[23]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[24]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[25]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[26]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[27]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[28]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[29]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[2]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[30]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[31]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[3]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[4]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[5]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[6]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[7]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[8]_reg/CLK}]\
           [get_pins {counter_lo_i.counter_value_o[9]_reg/CLK}]\
           [get_pins {counter_lo_i.target_reached_o_reg/CLK}]\
           [get_pins {prescaler_hi_i.compare_value_i[0]_reg/CLK}]\
           [get_pins {prescaler_hi_i.compare_value_i[1]_reg/CLK}]\
           [get_pins {prescaler_hi_i.compare_value_i[2]_reg/CLK}]\
           [get_pins {prescaler_hi_i.compare_value_i[3]_reg/CLK}]\
           [get_pins {prescaler_hi_i.compare_value_i[4]_reg/CLK}]\
           [get_pins {prescaler_hi_i.compare_value_i[5]_reg/CLK}]\
           [get_pins {prescaler_hi_i.compare_value_i[6]_reg/CLK}]\
           [get_pins {prescaler_hi_i.compare_value_i[7]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[0]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[10]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[11]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[12]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[13]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[14]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[15]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[16]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[17]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[18]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[19]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[1]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[20]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[21]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[22]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[23]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[24]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[25]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[26]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[27]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[28]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[29]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[2]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[30]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[31]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[3]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[4]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[5]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[6]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[7]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[8]_reg/CLK}]\
           [get_pins {prescaler_hi_i.counter_value_o[9]_reg/CLK}]\
           [get_pins {prescaler_hi_i.target_reached_o_reg/CLK}]\
           [get_pins {prescaler_lo_i.compare_value_i[0]_reg/CLK}]\
           [get_pins {prescaler_lo_i.compare_value_i[1]_reg/CLK}]\
           [get_pins {prescaler_lo_i.compare_value_i[2]_reg/CLK}]\
           [get_pins {prescaler_lo_i.compare_value_i[3]_reg/CLK}]\
           [get_pins {prescaler_lo_i.compare_value_i[4]_reg/CLK}]\
           [get_pins {prescaler_lo_i.compare_value_i[5]_reg/CLK}]\
           [get_pins {prescaler_lo_i.compare_value_i[6]_reg/CLK}]\
           [get_pins {prescaler_lo_i.compare_value_i[7]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[0]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[10]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[11]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[12]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[13]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[14]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[15]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[16]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[17]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[18]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[19]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[1]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[20]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[21]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[22]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[23]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[24]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[25]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[26]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[27]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[28]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[29]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[2]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[30]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[31]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[3]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[4]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[5]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[6]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[7]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[8]_reg/CLK}]\
           [get_pins {prescaler_lo_i.counter_value_o[9]_reg/CLK}]\
           [get_pins {prescaler_lo_i.target_reached_o_reg/CLK}]\
           [get_pins {r_id_o[0]_reg/CLK}]\
           [get_pins {r_id_o[1]_reg/CLK}]\
           [get_pins {r_id_o[2]_reg/CLK}]\
           [get_pins {r_id_o[3]_reg/CLK}]\
           [get_pins {r_id_o[4]_reg/CLK}]\
           [get_pins {r_valid_o_reg/CLK}]\
           [get_pins {s_addr[0]_reg/CLK}]\
           [get_pins {s_addr[1]_reg/CLK}]\
           [get_pins {s_addr[2]_reg/CLK}]\
           [get_pins {s_addr[3]_reg/CLK}]\
           [get_pins {s_addr[4]_reg/CLK}]\
           [get_pins {s_addr[5]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[0]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[16]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[17]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[18]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[19]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[1]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[20]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[21]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[22]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[23]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[24]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[25]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[26]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[27]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[28]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[29]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[2]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[30]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[31]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[3]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[4]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[5]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[6]_reg/CLK}]\
           [get_pins {s_cfg_hi_reg[7]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[0]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[16]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[17]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[18]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[19]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[1]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[20]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[21]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[22]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[23]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[24]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[25]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[26]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[27]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[28]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[29]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[2]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[30]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[31]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[3]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[4]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[5]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[6]_reg/CLK}]\
           [get_pins {s_cfg_lo_reg[7]_reg/CLK}]\
           [get_pins {s_ref_clk0_reg/CLK}]\
           [get_pins {s_ref_clk1_reg/CLK}]\
           [get_pins {s_ref_clk2_reg/CLK}]\
           [get_pins {s_ref_clk3_reg/CLK}]\
           [get_pins {s_wen_reg/CLK}]]\
    -to [list [get_ports {busy_o}]\
           [get_ports {gnt_o}]\
           [get_ports {irq_hi_o}]\
           [get_ports {irq_lo_o}]\
           [get_ports {r_id_o[0]}]\
           [get_ports {r_id_o[1]}]\
           [get_ports {r_id_o[2]}]\
           [get_ports {r_id_o[3]}]\
           [get_ports {r_id_o[4]}]\
           [get_ports {r_opc_o}]\
           [get_ports {r_rdata_o[0]}]\
           [get_ports {r_rdata_o[10]}]\
           [get_ports {r_rdata_o[11]}]\
           [get_ports {r_rdata_o[12]}]\
           [get_ports {r_rdata_o[13]}]\
           [get_ports {r_rdata_o[14]}]\
           [get_ports {r_rdata_o[15]}]\
           [get_ports {r_rdata_o[16]}]\
           [get_ports {r_rdata_o[17]}]\
           [get_ports {r_rdata_o[18]}]\
           [get_ports {r_rdata_o[19]}]\
           [get_ports {r_rdata_o[1]}]\
           [get_ports {r_rdata_o[20]}]\
           [get_ports {r_rdata_o[21]}]\
           [get_ports {r_rdata_o[22]}]\
           [get_ports {r_rdata_o[23]}]\
           [get_ports {r_rdata_o[24]}]\
           [get_ports {r_rdata_o[25]}]\
           [get_ports {r_rdata_o[26]}]\
           [get_ports {r_rdata_o[27]}]\
           [get_ports {r_rdata_o[28]}]\
           [get_ports {r_rdata_o[29]}]\
           [get_ports {r_rdata_o[2]}]\
           [get_ports {r_rdata_o[30]}]\
           [get_ports {r_rdata_o[31]}]\
           [get_ports {r_rdata_o[3]}]\
           [get_ports {r_rdata_o[4]}]\
           [get_ports {r_rdata_o[5]}]\
           [get_ports {r_rdata_o[6]}]\
           [get_ports {r_rdata_o[7]}]\
           [get_ports {r_rdata_o[8]}]\
           [get_ports {r_rdata_o[9]}]\
           [get_ports {r_valid_o}]] 10.0000
set_false_path -hold\
    -from [get_ports {rst_ni}]
set_false_path\
    -from [get_clocks {ref_clk}]\
    -to [get_clocks {clk_sys}]
set_false_path\
    -from [list [get_ports {event_hi_i}]\
           [get_ports {event_lo_i}]]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.5000 [get_ports {gnt_o}]
set_load -pin_load 0.5000 [get_ports {r_opc_o}]
set_load -pin_load 0.5000 [get_ports {busy_o}]
set_load -pin_load 0.5000 [get_ports {irq_hi_o}]
set_load -pin_load 0.5000 [get_ports {irq_lo_o}]
set_load -pin_load 0.5000 [get_ports {r_valid_o}]
set_load -pin_load 0.5000 [get_ports {r_id_o[4]}]
set_load -pin_load 0.5000 [get_ports {r_id_o[3]}]
set_load -pin_load 0.5000 [get_ports {r_id_o[2]}]
set_load -pin_load 0.5000 [get_ports {r_id_o[1]}]
set_load -pin_load 0.5000 [get_ports {r_id_o[0]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[31]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[30]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[29]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[28]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[27]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[26]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[25]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[24]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[23]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[22]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[21]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[20]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[19]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[18]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[17]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[16]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[15]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[14]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[13]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[12]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[11]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[10]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[9]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[8]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[7]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[6]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[5]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[4]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[3]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[2]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[1]}]
set_load -pin_load 0.5000 [get_ports {r_rdata_o[0]}]
###############################################################################
# Design Rules
###############################################################################
