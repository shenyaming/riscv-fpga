# 1 "hello_world2.s"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "hello_world2.s"
# 21 "hello_world2.s"
# 1 "/home/shenyaming/work/riscv/swerv_eh1/configs/snapshots/default/defines.h" 1
# 22 "hello_world2.s" 2





.section .text
.global _start
_start:


    csrw minstret, zero
    csrw minstreth, zero


    li x1, 0xee000000
    csrw mtvec, x1



    li x1, 0x55555555
    csrw 0x7c0, x1




    li x3, 0xd0580000
    la x4, hw_data

loop:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, loop


_finish:
    li x3, 0xd0580000
    addi x5, x0, 0xff
    sb x5, 0(x3)
    beq x0, x0, _finish
.rept 100
    nop
.endr

.data
hw_data:
.ascii "------------------------------\n"
.ascii "Hello World from SweRV @WDC !!\n"
.ascii "------------------------------"
.byte 0
