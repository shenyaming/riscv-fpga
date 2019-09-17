create_clock -period 3.333 -name sys_clk_p [get_ports sys_clk_p]

create_clock -period 25.000 -name sys_clk [get_pins clk_and_rst_wrapper_inst/clk_and_rst_i/clk_wiz_0/clk_out1]
create_clock -period 100.000 -name dtm_clk [get_pins swerv_wrapper_inst/swerv/dmi_wrapper/dtm/BSCANE2_inst/TCK]
create_clock -period 100.000 -name dmi_clk [get_pins swerv_wrapper_inst/swerv/dmi_wrapper/dmi/BSCANE2_inst/TCK]

set_max_delay -from [get_clocks sys_clk] -to [get_clocks dtm_clk] 10.0
set_max_delay -from [get_clocks dtm_clk] -to [get_clocks sys_clk] 10.0

set_max_delay -from [get_clocks sys_clk] -to [get_clocks dmi_clk] 10.0
set_max_delay -from [get_clocks dmi_clk] -to [get_clocks sys_clk] 10.0

set_max_delay -from [get_clocks dtm_clk] -to [get_clocks dmi_clk] 10.0
set_max_delay -from [get_clocks dmi_clk] -to [get_clocks dtm_clk] 10.0

set_clock_groups -asynchronous -group [get_clocks sys_clk_p] -group [get_clocks dtm_clk]
set_clock_groups -asynchronous -group [get_clocks sys_clk_p] -group [get_clocks dmi_clk]

set_property DIRECTION IN [get_ports sys_clk_n]
set_property DIRECTION IN [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_p]
set_property ODT RTT_NONE [get_ports sys_clk_n]
set_property ODT RTT_NONE [get_ports sys_clk_p]
set_property PACKAGE_PIN AW20 [get_ports sys_clk_p]
set_property PACKAGE_PIN AW19 [get_ports sys_clk_n]



set_property PACKAGE_PIN BD21 [get_ports sys_rst_n]
set_property DIRECTION IN [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS12 [get_ports sys_rst_n]

set_property PACKAGE_PIN BC21 [get_ports led_0]
set_property DIRECTION OUT [get_ports led_0]
set_property IOSTANDARD LVCMOS12 [get_ports led_0]
set_property DRIVE 4 [get_ports led_0]
set_property SLEW SLOW [get_ports led_0]


set_property DIRECTION IN [get_ports uart_rxd]
set_property DIRECTION OUT [get_ports uart_txd]
set_property DRIVE 4 [get_ports uart_txd]
set_property IOSTANDARD LVCMOS12 [get_ports uart_rxd]
set_property IOSTANDARD LVCMOS12 [get_ports uart_txd]
set_property PACKAGE_PIN BA19 [get_ports uart_rxd]
set_property PACKAGE_PIN BB19 [get_ports uart_txd]
set_property SLEW SLOW [get_ports uart_txd]

