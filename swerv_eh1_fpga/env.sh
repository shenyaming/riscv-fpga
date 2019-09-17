export SWERV_EH1_FPGA_PATH=/home/shenyaming/work/riscv/swerv_eh1_fpga
export RV_ROOT=$SWERV_EH1_FPGA_PATH/hardware/swerv_eh1

cd $RV_ROOT/configs
./swerv.config -set reset_vec=0x0

cd $SWERV_EH1_FPGA_PATH/hardware/project/script
vivado -source nexys4ddr_refprj.tcl
