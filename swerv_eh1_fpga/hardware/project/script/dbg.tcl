##  
##  add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/user2/dmi_hard_reset} -radix hex {0 0ns} 
##  run 100ns
##  add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/user2/dmi_hard_reset} -radix hex {1 0ns}
##  run 100ns
##  add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/user2/dmi_hard_reset} -radix hex {0 0ns}
##  run 100ns
##  
##  
##  add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/reg_wr_addr} -radix hex {0 0ns}
##  add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/reg_en} -radix hex {1 0ns}
##  run 25.005ns
##  
##  add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/reg_en} -radix hex {0 0ns}
##  
##  run 2000ns
##  
add_force {/testbench/dut/swerv_wrapper_inst/ifu_axi_rdata} -radix hex {0001000100010001 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/mem/dccm_rd_data_lo} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/mem/dccm_rd_data_hi} -radix hex {0 0ns}

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_tck} -radix hex {0 0ns} {1 50ns} -repeat_every 100ns
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_tck} -radix hex {0 0ns} {1 50ns} -repeat_every 100ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_capture} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_drck}    -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_reset}   -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_runtest} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_sel}     -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_shift}   -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_tdi}     -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_tms}     -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_update}  -radix hex {0 0ns}

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_capture} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_drck}    -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_reset}   -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_runtest} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_sel}     -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_shift}   -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_tdi}     -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_tms}     -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_update}  -radix hex {0 0ns}

run 6000ns
##==============================================================================
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_reset} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_reset} -radix hex {1 0ns}
run 200ns
##==============================================================================
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_reset} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_reset} -radix hex {0 0ns}
run 200ns
##==============================================================================
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_data} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_addr} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmireset} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi_hard_reset} -radix hex {1 0ns}
run 100ns
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmireset} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi_hard_reset} -radix hex {0 0ns}
run 1000ns

##==============================================================================
##  dmactive = 0, pulse a reset to Debug Transport Module(DTM).
##==============================================================================
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_data} -radix hex {00000000 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_addr} -radix hex {00000010 0ns}
run 1000ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {1 0ns}
run 100ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {0 0ns}
run 100ns

run 5000ns
##==============================================================================
##  dmactive = 1, deassert to Debug Transport Module(DTM).
##==============================================================================
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_data} -radix hex {00000001 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_addr} -radix hex {00000010 0ns}
run 1000ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {1 0ns}
run 100ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {0 0ns}
run 100ns

run 5000ns
##==============================================================================
##  haltreq  = 1, Halt request to the system
##==============================================================================
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_data} -radix hex {80000001 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_addr} -radix hex {00000010 0ns}
run 1000ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {1 0ns}
run 100ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {0 0ns}
run 100ns

run 5000ns
##==============================================================================
##  Read Debug Module Control (dmcontrol)
##==============================================================================
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_data} -radix hex {00000000 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_addr} -radix hex {00000010 0ns}
run 1000ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {0 0ns}
run 100ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {0 0ns}
run 100ns

run 5000ns
##==============================================================================
##  Read Debug Module Status (dmstatus)
##==============================================================================
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_data} -radix hex {00000000 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_addr} -radix hex {00000011 0ns}
run 1000ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {0 0ns}
run 100ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {0 0ns}
run 100ns

run 5000ns
##==============================================================================
##  Read System Bus Access Control (sbcs)
##==============================================================================
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_data} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/j_wr_addr} -radix hex {0038 0ns}
run 1000ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {0 0ns}
run 100ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_intf} -radix hex {0 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/i_dmi_jtag_to_core_sync/wr_enab} -radix hex {0 0ns}
run 100ns

run 5000ns
##==============================================================================
