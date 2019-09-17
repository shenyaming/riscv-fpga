
set_property DIRECTION IN [get_ports sys_clk_n]
set_property DIRECTION IN [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_p]
set_property ODT RTT_NONE [get_ports sys_clk_n]
set_property ODT RTT_NONE [get_ports sys_clk_p]
set_property PACKAGE_PIN AW19 [get_ports sys_clk_n]
set_property PACKAGE_PIN AW20 [get_ports sys_clk_p]



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
