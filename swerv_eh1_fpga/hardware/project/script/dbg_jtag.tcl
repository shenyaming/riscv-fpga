
run 10us

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dtm/jtag_tck} -radix hex {0 0ns} {1 50ns} -repeat_every 100ns
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/jtag_tck} -radix hex {0 0ns} {1 50ns} -repeat_every 100ns

run 10us

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_addr} -radix hex {10 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_data} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_intf} -radix hex {1 0ns} -cancel_after 100ns
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_enab} -radix hex {1 0ns} -cancel_after 100ns
run 1000ns


add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_addr} -radix hex {10 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_data} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_intf} -radix hex {1 0ns} -cancel_after 100ns
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_enab} -radix hex {0 0ns} -cancel_after 100ns
run 10000ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_addr} -radix hex {11 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_data} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_intf} -radix hex {1 0ns} -cancel_after 100ns
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_enab} -radix hex {0 0ns} -cancel_after 100ns
run 10000ns

add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_addr} -radix hex {38 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_data} -radix hex {1 0ns}
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_intf} -radix hex {1 0ns} -cancel_after 100ns
add_force {/testbench/dut/swerv_wrapper_inst/swerv/dmi_wrapper/dmi/wr_enab} -radix hex {0 0ns} -cancel_after 100ns
run 10000ns













