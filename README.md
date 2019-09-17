# RISCV core on FPGA

## Overview
Normally, the development boards of HiFive series have two JTAG chains, one for downloading FPGA bitstream, and another for RISCV debugging.
For other boards from third parties, it is hard to support bistream downloading and RISCV debugging at the same time.
Here we replace the DMI of RISCV core with the BSCAN primitive of Xilinx FPGA devices, so as that only one JTAG chain is need to download bitstream and debug RISCV.

