





.section .text
.global _start
_start:

    csrw minstret, zero
    csrw minstreth, zero

    li x1, 0
    csrw mtvec, x1
 
 
    li x1, 0x55555555
    csrw 0x7c0, x1
 
 
    li x3, 0
    la x4, hw_data
    
loop:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, loop

_finish:
    li x3, 0
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
