// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.


`define RANDOMIZE_MEM_INIT
`define RANDOMIZE_REG_INIT
`define RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE_DELAY 2
//`define STOP_COND=!TestDriver.reset \
//`define MODEL=CoreIPSubsystemMemPortRAMTestHarness \
//`define INDICATOR=S76_TLTestIndicator \

module s76_core_fpga(
  // System Signals
  input  wire                                    ap_clk_p             ,
  input  wire                                    ap_clk_n             ,
  input  wire                                    ap_rst_n              
  
);

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////
  wire  system_clock;
  wire  system_reset;
  wire  system_debug_psd_test_mode;
  wire  system_debug_psd_test_mode_reset;
  wire  system_debug_systemjtag_jtag_TCK;
  wire  system_debug_systemjtag_jtag_TMS;
  wire  system_debug_systemjtag_jtag_TDI;
  wire  system_debug_systemjtag_jtag_TDO_data;
  wire  system_debug_systemjtag_jtag_TDO_driven;
  wire  system_debug_systemjtag_reset;
  wire [10:0] system_debug_systemjtag_mfr_id;
  wire  system_debug_ndreset;
  wire  system_debug_dmactive;
  wire  system_core_clock_0;
  wire [39:0] system_reset_vector_0;
  wire  system_rtc_toggle;
  wire [126:0] system_global_interrupts;
  wire  system_mem_port_axi4_0_aw_ready;
  wire  system_mem_port_axi4_0_aw_valid;
  wire [7:0] system_mem_port_axi4_0_aw_bits_id;
  wire [31:0] system_mem_port_axi4_0_aw_bits_addr;
  wire [7:0] system_mem_port_axi4_0_aw_bits_len;
  wire [2:0] system_mem_port_axi4_0_aw_bits_size;
  wire [1:0] system_mem_port_axi4_0_aw_bits_burst;
  wire  system_mem_port_axi4_0_aw_bits_lock;
  wire [3:0] system_mem_port_axi4_0_aw_bits_cache;
  wire [2:0] system_mem_port_axi4_0_aw_bits_prot;
  wire [3:0] system_mem_port_axi4_0_aw_bits_qos;
  wire  system_mem_port_axi4_0_w_ready;
  wire  system_mem_port_axi4_0_w_valid;
  wire [63:0] system_mem_port_axi4_0_w_bits_data;
  wire [7:0] system_mem_port_axi4_0_w_bits_strb;
  wire  system_mem_port_axi4_0_w_bits_last;
  wire  system_mem_port_axi4_0_w_bits_corrupt;
  wire  system_mem_port_axi4_0_b_ready;
  wire  system_mem_port_axi4_0_b_valid;
  wire [7:0] system_mem_port_axi4_0_b_bits_id;
  wire [1:0] system_mem_port_axi4_0_b_bits_resp;
  wire  system_mem_port_axi4_0_ar_ready;
  wire  system_mem_port_axi4_0_ar_valid;
  wire [7:0] system_mem_port_axi4_0_ar_bits_id;
  wire [31:0] system_mem_port_axi4_0_ar_bits_addr;
  wire [7:0] system_mem_port_axi4_0_ar_bits_len;
  wire [2:0] system_mem_port_axi4_0_ar_bits_size;
  wire [1:0] system_mem_port_axi4_0_ar_bits_burst;
  wire  system_mem_port_axi4_0_ar_bits_lock;
  wire [3:0] system_mem_port_axi4_0_ar_bits_cache;
  wire [2:0] system_mem_port_axi4_0_ar_bits_prot;
  wire [3:0] system_mem_port_axi4_0_ar_bits_qos;
  wire  system_mem_port_axi4_0_r_ready;
  wire  system_mem_port_axi4_0_r_valid;
  wire [7:0] system_mem_port_axi4_0_r_bits_id;
  wire [63:0] system_mem_port_axi4_0_r_bits_data;
  wire [1:0] system_mem_port_axi4_0_r_bits_resp;
  wire  system_mem_port_axi4_0_r_bits_last;
  wire  system_sys_port_axi4_0_aw_ready;
  wire  system_sys_port_axi4_0_aw_valid;
  wire [3:0] system_sys_port_axi4_0_aw_bits_id;
  wire [39:0] system_sys_port_axi4_0_aw_bits_addr;
  wire [7:0] system_sys_port_axi4_0_aw_bits_len;
  wire [2:0] system_sys_port_axi4_0_aw_bits_size;
  wire [1:0] system_sys_port_axi4_0_aw_bits_burst;
  wire  system_sys_port_axi4_0_aw_bits_lock;
  wire [3:0] system_sys_port_axi4_0_aw_bits_cache;
  wire [2:0] system_sys_port_axi4_0_aw_bits_prot;
  wire [3:0] system_sys_port_axi4_0_aw_bits_qos;
  wire  system_sys_port_axi4_0_w_ready;
  wire  system_sys_port_axi4_0_w_valid;
  wire [63:0] system_sys_port_axi4_0_w_bits_data;
  wire [7:0] system_sys_port_axi4_0_w_bits_strb;
  wire  system_sys_port_axi4_0_w_bits_last;
  wire  system_sys_port_axi4_0_b_ready;
  wire  system_sys_port_axi4_0_b_valid;
  wire [3:0] system_sys_port_axi4_0_b_bits_id;
  wire [1:0] system_sys_port_axi4_0_b_bits_resp;
  wire  system_sys_port_axi4_0_ar_ready;
  wire  system_sys_port_axi4_0_ar_valid;
  wire [3:0] system_sys_port_axi4_0_ar_bits_id;
  wire [39:0] system_sys_port_axi4_0_ar_bits_addr;
  wire [7:0] system_sys_port_axi4_0_ar_bits_len;
  wire [2:0] system_sys_port_axi4_0_ar_bits_size;
  wire [1:0] system_sys_port_axi4_0_ar_bits_burst;
  wire  system_sys_port_axi4_0_ar_bits_lock;
  wire [3:0] system_sys_port_axi4_0_ar_bits_cache;
  wire [2:0] system_sys_port_axi4_0_ar_bits_prot;
  wire [3:0] system_sys_port_axi4_0_ar_bits_qos;
  wire  system_sys_port_axi4_0_r_ready;
  wire  system_sys_port_axi4_0_r_valid;
  wire [3:0] system_sys_port_axi4_0_r_bits_id;
  wire [63:0] system_sys_port_axi4_0_r_bits_data;
  wire [1:0] system_sys_port_axi4_0_r_bits_resp;
  wire  system_sys_port_axi4_0_r_bits_last;
  wire  system_periph_port_axi4_0_aw_ready;
  wire  system_periph_port_axi4_0_aw_valid;
  wire  system_periph_port_axi4_0_aw_bits_id;
  wire [35:0] system_periph_port_axi4_0_aw_bits_addr;
  wire [7:0] system_periph_port_axi4_0_aw_bits_len;
  wire [2:0] system_periph_port_axi4_0_aw_bits_size;
  wire [1:0] system_periph_port_axi4_0_aw_bits_burst;
  wire  system_periph_port_axi4_0_aw_bits_lock;
  wire [3:0] system_periph_port_axi4_0_aw_bits_cache;
  wire [2:0] system_periph_port_axi4_0_aw_bits_prot;
  wire [3:0] system_periph_port_axi4_0_aw_bits_qos;
  wire  system_periph_port_axi4_0_w_ready;
  wire  system_periph_port_axi4_0_w_valid;
  wire [63:0] system_periph_port_axi4_0_w_bits_data;
  wire [7:0] system_periph_port_axi4_0_w_bits_strb;
  wire  system_periph_port_axi4_0_w_bits_last;
  wire  system_periph_port_axi4_0_b_ready;
  wire  system_periph_port_axi4_0_b_valid;
  wire  system_periph_port_axi4_0_b_bits_id;
  wire [1:0] system_periph_port_axi4_0_b_bits_resp;
  wire  system_periph_port_axi4_0_ar_ready;
  wire  system_periph_port_axi4_0_ar_valid;
  wire  system_periph_port_axi4_0_ar_bits_id;
  wire [35:0] system_periph_port_axi4_0_ar_bits_addr;
  wire [7:0] system_periph_port_axi4_0_ar_bits_len;
  wire [2:0] system_periph_port_axi4_0_ar_bits_size;
  wire [1:0] system_periph_port_axi4_0_ar_bits_burst;
  wire  system_periph_port_axi4_0_ar_bits_lock;
  wire [3:0] system_periph_port_axi4_0_ar_bits_cache;
  wire [2:0] system_periph_port_axi4_0_ar_bits_prot;
  wire [3:0] system_periph_port_axi4_0_ar_bits_qos;
  wire  system_periph_port_axi4_0_r_ready;
  wire  system_periph_port_axi4_0_r_valid;
  wire  system_periph_port_axi4_0_r_bits_id;
  wire [63:0] system_periph_port_axi4_0_r_bits_data;
  wire [1:0] system_periph_port_axi4_0_r_bits_resp;
  wire  system_periph_port_axi4_0_r_bits_last;
  wire  system_front_port_axi4_0_aw_ready;
  wire  system_front_port_axi4_0_aw_valid;
  wire [7:0] system_front_port_axi4_0_aw_bits_id;
  wire [39:0] system_front_port_axi4_0_aw_bits_addr;
  wire [7:0] system_front_port_axi4_0_aw_bits_len;
  wire [2:0] system_front_port_axi4_0_aw_bits_size;
  wire [1:0] system_front_port_axi4_0_aw_bits_burst;
  wire  system_front_port_axi4_0_aw_bits_lock;
  wire [3:0] system_front_port_axi4_0_aw_bits_cache;
  wire [2:0] system_front_port_axi4_0_aw_bits_prot;
  wire [3:0] system_front_port_axi4_0_aw_bits_qos;
  wire  system_front_port_axi4_0_w_ready;
  wire  system_front_port_axi4_0_w_valid;
  wire [63:0] system_front_port_axi4_0_w_bits_data;
  wire [7:0] system_front_port_axi4_0_w_bits_strb;
  wire  system_front_port_axi4_0_w_bits_last;
  wire  system_front_port_axi4_0_b_ready;
  wire  system_front_port_axi4_0_b_valid;
  wire [7:0] system_front_port_axi4_0_b_bits_id;
  wire [1:0] system_front_port_axi4_0_b_bits_resp;
  wire  system_front_port_axi4_0_ar_ready;
  wire  system_front_port_axi4_0_ar_valid;
  wire [7:0] system_front_port_axi4_0_ar_bits_id;
  wire [39:0] system_front_port_axi4_0_ar_bits_addr;
  wire [7:0] system_front_port_axi4_0_ar_bits_len;
  wire [2:0] system_front_port_axi4_0_ar_bits_size;
  wire [1:0] system_front_port_axi4_0_ar_bits_burst;
  wire  system_front_port_axi4_0_ar_bits_lock;
  wire [3:0] system_front_port_axi4_0_ar_bits_cache;
  wire [2:0] system_front_port_axi4_0_ar_bits_prot;
  wire [3:0] system_front_port_axi4_0_ar_bits_qos;
  wire  system_front_port_axi4_0_r_ready;
  wire  system_front_port_axi4_0_r_valid;
  wire [7:0] system_front_port_axi4_0_r_bits_id;
  wire [63:0] system_front_port_axi4_0_r_bits_data;
  wire [1:0] system_front_port_axi4_0_r_bits_resp;
  wire  system_front_port_axi4_0_r_bits_last;
///////////////////////////////////////////////////////////////////////////////
// Add kernel logic here.  Modify/remove example code as necessary.
///////////////////////////////////////////////////////////////////////////////
`ifdef SIMULATION
    //  initial $readmemh("mem.hex", s76_core_fpga.testRAM.sram.testharness.testharness_ext.ram);
      initial 
      begin
      #100;
    //$readmemh("/home/shenyaming/work/riscv/s76_core_fpga/program.hex", s76_core_fpga.testRAM.sram.testharness.testharness_ext.ram);
      $readmemh("mem.hex", s76_core_fpga.testRAM.sram.testharness.testharness_ext.ram);
      #500000;
      $writememh("out.hex",s76_core_fpga.testRAM.sram.testharness.testharness_ext.ram);
      $stop;
      end
`endif

//  wire          system_debug_psd_test_mode        ;
//  wire          system_debug_psd_test_mode_reset  ;
//  wire          system_debug_systemjtag_jtag_TCK  ;
//  wire          system_debug_systemjtag_jtag_TMS  ;
//  wire          system_debug_systemjtag_jtag_TDI  ;
//  wire          system_debug_systemjtag_reset     ;
//  wire  [10:0]  system_debug_systemjtag_mfr_id    ;

  assign        system_debug_psd_test_mode        = 1'b0;
  assign        system_debug_psd_test_mode_reset  = 1'b0;
//assign        system_debug_systemjtag_jtag_TCK  = 1'b0;
  assign        system_debug_systemjtag_jtag_TMS  = 1'b0;
  assign        system_debug_systemjtag_jtag_TDI  = 1'b0;
//assign        system_debug_systemjtag_reset     = ~ap_rst_n;
  assign        system_debug_systemjtag_mfr_id    = 11'h0;
  
  assign system_reset_vector_0 = 40'h80000000;
  assign system_global_interrupts = 127'h0;

    wire    ap_clk;
    wire    ap_clk_bufg;
    wire    locked;
    // IBUFDS instantiation for differential clock 
    IBUFDS bufds_inst
    (
        .O(ap_clk_bufg),
        .I(ap_clk_p),
        .IB(ap_clk_n)
    );

    //----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
    
    clk_wiz_0 instance_name
    (
        // Clock out ports
        .clk_out1   ( ap_clk    ),     // output clk_out1
        // Status and control signals
        .reset      (~ap_rst_n  ), // input reset
        .locked     ( locked    ),       // output locked
        // Clock in ports
        .clk_in1    ( ap_clk_bufg )
    );  // input clk_in1
    // INST_TAG_END ------ End INSTANTIATION Template ---------

    assign system_core_clock_0 = ap_clk;
    //  system_clock
    //  system_reset
    BUFGCE_DIV #(
        .BUFGCE_DIVIDE(2),      // 1-8
        // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
        .IS_CE_INVERTED(1'b0),  // Optional inversion for CE
        .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
        .IS_I_INVERTED(1'b0)    // Optional inversion for I
    )
    bufg_clock_inst (
        .O    ( system_clock  ), // 1-bit output: Buffer
        .CE   ( 1'b1          ), // 1-bit input: Buffer enable
        .CLR  ( 1'b0          ), // 1-bit input: Asynchronous clear
        .I    ( ap_clk        )  // 1-bit input: Buffer
    );
    assign system_reset = ~locked | system_debug_ndreset;

    //  rtc_toggle
//    BUFGCE_DIV #(
//        .BUFGCE_DIVIDE(8),      // 1-8
//        // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
//        .IS_CE_INVERTED(1'b0),  // Optional inversion for CE
//        .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
//        .IS_I_INVERTED(1'b0)    // Optional inversion for I
//    )
//    bufg_rtc_inst (
//        .O    ( system_rtc_toggle), // 1-bit output: Buffer
//        .CE   ( 1'b1          ), // 1-bit input: Buffer enable
//        .CLR  ( 1'b0          ), // 1-bit input: Asynchronous clear
//        .I    ( ap_clk        )  // 1-bit input: Buffer
//    );

    assign system_rtc_toggle=1'b0;
    //========================================================
    //====  Repalce JTAG_TAP of RISCV core from Western Digital
    //========================================================
    wire    [127:0]  jtag_capture_info;
    wire    [127:0]  jtag_update_info;
    xilinx_jtag#
    (
        .JTAG_TAP       ( 1    ),
        .USER_DR_LENGTH ( 128   )
    )xilinx_jtag_inst1
    (   
        .jtag_tck          ( system_debug_systemjtag_jtag_TCK     ),
        .jtag_reset        ( system_debug_systemjtag_reset        ),
        .jtag_runtest      (                       ),                       
        .jtag_capture_info ( jtag_capture_info     ),
        .jtag_update_info  ( jtag_update_info      )
    );
    
    
    assign jtag_capture_info={
    jtag_update_info,
    system_reset_vector_0,
    3'b0,locked,
    3'b0,ap_rst_n,
    3'b0,system_debug_ndreset,
    3'b0,system_debug_dmactive
    };
    

    
  S76_CoreIPSubsystem system (
    .clock                           ( system_clock                             ),
    .reset                           ( system_reset                             ),
    .debug_psd_test_mode             ( system_debug_psd_test_mode               ),
    .debug_psd_test_mode_reset       ( system_debug_psd_test_mode_reset         ),
    .debug_systemjtag_jtag_TCK       ( system_debug_systemjtag_jtag_TCK         ),
    .debug_systemjtag_jtag_TMS       ( system_debug_systemjtag_jtag_TMS         ),
    .debug_systemjtag_jtag_TDI       ( system_debug_systemjtag_jtag_TDI         ),
    .debug_systemjtag_jtag_TDO_data  ( system_debug_systemjtag_jtag_TDO_data    ),
    .debug_systemjtag_jtag_TDO_driven( system_debug_systemjtag_jtag_TDO_driven  ),
    .debug_systemjtag_reset          ( system_debug_systemjtag_reset            ),
    .debug_systemjtag_mfr_id         ( system_debug_systemjtag_mfr_id           ),
    .debug_ndreset                   ( system_debug_ndreset                     ),
    .debug_dmactive                  ( system_debug_dmactive                    ),
    .core_clock_0                    ( system_core_clock_0                      ),
    .reset_vector_0                  ( system_reset_vector_0                    ),
    .rtc_toggle                      ( system_rtc_toggle                        ),
    .global_interrupts               ( system_global_interrupts                 ),
    .mem_port_axi4_0_aw_ready        ( system_mem_port_axi4_0_aw_ready        ),
    .mem_port_axi4_0_aw_valid        ( system_mem_port_axi4_0_aw_valid        ),
    .mem_port_axi4_0_aw_bits_id      ( system_mem_port_axi4_0_aw_bits_id      ),
    .mem_port_axi4_0_aw_bits_addr    ( system_mem_port_axi4_0_aw_bits_addr    ),
    .mem_port_axi4_0_aw_bits_len     ( system_mem_port_axi4_0_aw_bits_len     ),
    .mem_port_axi4_0_aw_bits_size    ( system_mem_port_axi4_0_aw_bits_size    ),
    .mem_port_axi4_0_aw_bits_burst   ( system_mem_port_axi4_0_aw_bits_burst   ),
    .mem_port_axi4_0_aw_bits_lock    ( system_mem_port_axi4_0_aw_bits_lock    ),
    .mem_port_axi4_0_aw_bits_cache   ( system_mem_port_axi4_0_aw_bits_cache   ),
    .mem_port_axi4_0_aw_bits_prot    ( system_mem_port_axi4_0_aw_bits_prot    ),
    .mem_port_axi4_0_aw_bits_qos     ( system_mem_port_axi4_0_aw_bits_qos     ),
    .mem_port_axi4_0_w_ready         ( system_mem_port_axi4_0_w_ready           ),
    .mem_port_axi4_0_w_valid         ( system_mem_port_axi4_0_w_valid           ),
    .mem_port_axi4_0_w_bits_data     ( system_mem_port_axi4_0_w_bits_data       ),
    .mem_port_axi4_0_w_bits_strb     ( system_mem_port_axi4_0_w_bits_strb       ),
    .mem_port_axi4_0_w_bits_last     ( system_mem_port_axi4_0_w_bits_last       ),
    .mem_port_axi4_0_w_bits_corrupt  ( system_mem_port_axi4_0_w_bits_corrupt    ),
    .mem_port_axi4_0_b_ready         ( system_mem_port_axi4_0_b_ready           ),
    .mem_port_axi4_0_b_valid         ( system_mem_port_axi4_0_b_valid           ),
    .mem_port_axi4_0_b_bits_id       ( system_mem_port_axi4_0_b_bits_id         ),
    .mem_port_axi4_0_b_bits_resp     ( system_mem_port_axi4_0_b_bits_resp       ),
    .mem_port_axi4_0_ar_ready        ( system_mem_port_axi4_0_ar_ready          ),
    .mem_port_axi4_0_ar_valid        ( system_mem_port_axi4_0_ar_valid          ),
    .mem_port_axi4_0_ar_bits_id      ( system_mem_port_axi4_0_ar_bits_id        ),
    .mem_port_axi4_0_ar_bits_addr    ( system_mem_port_axi4_0_ar_bits_addr      ),
    .mem_port_axi4_0_ar_bits_len     ( system_mem_port_axi4_0_ar_bits_len       ),
    .mem_port_axi4_0_ar_bits_size    ( system_mem_port_axi4_0_ar_bits_size      ),
    .mem_port_axi4_0_ar_bits_burst   ( system_mem_port_axi4_0_ar_bits_burst     ),
    .mem_port_axi4_0_ar_bits_lock    ( system_mem_port_axi4_0_ar_bits_lock      ),
    .mem_port_axi4_0_ar_bits_cache   ( system_mem_port_axi4_0_ar_bits_cache     ),
    .mem_port_axi4_0_ar_bits_prot    ( system_mem_port_axi4_0_ar_bits_prot      ),
    .mem_port_axi4_0_ar_bits_qos     ( system_mem_port_axi4_0_ar_bits_qos       ),
    .mem_port_axi4_0_r_ready         ( system_mem_port_axi4_0_r_ready           ),
    .mem_port_axi4_0_r_valid         ( system_mem_port_axi4_0_r_valid           ),
    .mem_port_axi4_0_r_bits_id       ( system_mem_port_axi4_0_r_bits_id         ),
    .mem_port_axi4_0_r_bits_data     ( system_mem_port_axi4_0_r_bits_data       ),
    .mem_port_axi4_0_r_bits_resp     ( system_mem_port_axi4_0_r_bits_resp       ),
    .mem_port_axi4_0_r_bits_last     ( system_mem_port_axi4_0_r_bits_last       ),
    .sys_port_axi4_0_aw_ready        ( system_sys_port_axi4_0_aw_ready          ),
    .sys_port_axi4_0_aw_valid        ( system_sys_port_axi4_0_aw_valid          ),
    .sys_port_axi4_0_aw_bits_id      ( system_sys_port_axi4_0_aw_bits_id        ),
    .sys_port_axi4_0_aw_bits_addr    ( system_sys_port_axi4_0_aw_bits_addr      ),
    .sys_port_axi4_0_aw_bits_len     ( system_sys_port_axi4_0_aw_bits_len       ),
    .sys_port_axi4_0_aw_bits_size    ( system_sys_port_axi4_0_aw_bits_size      ),
    .sys_port_axi4_0_aw_bits_burst   ( system_sys_port_axi4_0_aw_bits_burst     ),
    .sys_port_axi4_0_aw_bits_lock    ( system_sys_port_axi4_0_aw_bits_lock      ),
    .sys_port_axi4_0_aw_bits_cache   ( system_sys_port_axi4_0_aw_bits_cache     ),
    .sys_port_axi4_0_aw_bits_prot    ( system_sys_port_axi4_0_aw_bits_prot      ),
    .sys_port_axi4_0_aw_bits_qos     ( system_sys_port_axi4_0_aw_bits_qos       ),
    .sys_port_axi4_0_w_ready         ( system_sys_port_axi4_0_w_ready           ),
    .sys_port_axi4_0_w_valid         ( system_sys_port_axi4_0_w_valid           ),
    .sys_port_axi4_0_w_bits_data     ( system_sys_port_axi4_0_w_bits_data       ),
    .sys_port_axi4_0_w_bits_strb     ( system_sys_port_axi4_0_w_bits_strb       ),
    .sys_port_axi4_0_w_bits_last     ( system_sys_port_axi4_0_w_bits_last       ),
    .sys_port_axi4_0_b_ready         ( system_sys_port_axi4_0_b_ready           ),
    .sys_port_axi4_0_b_valid         ( system_sys_port_axi4_0_b_valid           ),
    .sys_port_axi4_0_b_bits_id       ( system_sys_port_axi4_0_b_bits_id         ),
    .sys_port_axi4_0_b_bits_resp     ( system_sys_port_axi4_0_b_bits_resp       ),
    .sys_port_axi4_0_ar_ready        ( system_sys_port_axi4_0_ar_ready          ),
    .sys_port_axi4_0_ar_valid        ( system_sys_port_axi4_0_ar_valid          ),
    .sys_port_axi4_0_ar_bits_id      ( system_sys_port_axi4_0_ar_bits_id        ),
    .sys_port_axi4_0_ar_bits_addr    ( system_sys_port_axi4_0_ar_bits_addr      ),
    .sys_port_axi4_0_ar_bits_len     ( system_sys_port_axi4_0_ar_bits_len       ),
    .sys_port_axi4_0_ar_bits_size    ( system_sys_port_axi4_0_ar_bits_size      ),
    .sys_port_axi4_0_ar_bits_burst   ( system_sys_port_axi4_0_ar_bits_burst     ),
    .sys_port_axi4_0_ar_bits_lock    ( system_sys_port_axi4_0_ar_bits_lock      ),
    .sys_port_axi4_0_ar_bits_cache   ( system_sys_port_axi4_0_ar_bits_cache     ),
    .sys_port_axi4_0_ar_bits_prot    ( system_sys_port_axi4_0_ar_bits_prot      ),
    .sys_port_axi4_0_ar_bits_qos     ( system_sys_port_axi4_0_ar_bits_qos       ),
    .sys_port_axi4_0_r_ready         ( system_sys_port_axi4_0_r_ready           ),
    .sys_port_axi4_0_r_valid         ( system_sys_port_axi4_0_r_valid           ),
    .sys_port_axi4_0_r_bits_id       ( system_sys_port_axi4_0_r_bits_id         ),
    .sys_port_axi4_0_r_bits_data     ( system_sys_port_axi4_0_r_bits_data       ),
    .sys_port_axi4_0_r_bits_resp     ( system_sys_port_axi4_0_r_bits_resp       ),
    .sys_port_axi4_0_r_bits_last     ( system_sys_port_axi4_0_r_bits_last       ),
    .periph_port_axi4_0_aw_ready     ( system_periph_port_axi4_0_aw_ready       ),
    .periph_port_axi4_0_aw_valid     ( system_periph_port_axi4_0_aw_valid       ),
    .periph_port_axi4_0_aw_bits_id   ( system_periph_port_axi4_0_aw_bits_id     ),
    .periph_port_axi4_0_aw_bits_addr ( system_periph_port_axi4_0_aw_bits_addr   ),
    .periph_port_axi4_0_aw_bits_len  ( system_periph_port_axi4_0_aw_bits_len    ),
    .periph_port_axi4_0_aw_bits_size ( system_periph_port_axi4_0_aw_bits_size   ),
    .periph_port_axi4_0_aw_bits_burst( system_periph_port_axi4_0_aw_bits_burst  ),
    .periph_port_axi4_0_aw_bits_lock ( system_periph_port_axi4_0_aw_bits_lock   ),
    .periph_port_axi4_0_aw_bits_cache( system_periph_port_axi4_0_aw_bits_cache  ),
    .periph_port_axi4_0_aw_bits_prot ( system_periph_port_axi4_0_aw_bits_prot   ),
    .periph_port_axi4_0_aw_bits_qos  ( system_periph_port_axi4_0_aw_bits_qos    ),
    .periph_port_axi4_0_w_ready      ( system_periph_port_axi4_0_w_ready        ),
    .periph_port_axi4_0_w_valid      ( system_periph_port_axi4_0_w_valid        ),
    .periph_port_axi4_0_w_bits_data  ( system_periph_port_axi4_0_w_bits_data    ),
    .periph_port_axi4_0_w_bits_strb  ( system_periph_port_axi4_0_w_bits_strb    ),
    .periph_port_axi4_0_w_bits_last  ( system_periph_port_axi4_0_w_bits_last    ),
    .periph_port_axi4_0_b_ready      ( system_periph_port_axi4_0_b_ready        ),
    .periph_port_axi4_0_b_valid      ( system_periph_port_axi4_0_b_valid        ),
    .periph_port_axi4_0_b_bits_id    ( system_periph_port_axi4_0_b_bits_id      ),
    .periph_port_axi4_0_b_bits_resp  ( system_periph_port_axi4_0_b_bits_resp    ),
    .periph_port_axi4_0_ar_ready     ( system_periph_port_axi4_0_ar_ready       ),
    .periph_port_axi4_0_ar_valid     ( system_periph_port_axi4_0_ar_valid       ),
    .periph_port_axi4_0_ar_bits_id   ( system_periph_port_axi4_0_ar_bits_id     ),
    .periph_port_axi4_0_ar_bits_addr ( system_periph_port_axi4_0_ar_bits_addr   ),
    .periph_port_axi4_0_ar_bits_len  ( system_periph_port_axi4_0_ar_bits_len    ),
    .periph_port_axi4_0_ar_bits_size ( system_periph_port_axi4_0_ar_bits_size   ),
    .periph_port_axi4_0_ar_bits_burst( system_periph_port_axi4_0_ar_bits_burst  ),
    .periph_port_axi4_0_ar_bits_lock ( system_periph_port_axi4_0_ar_bits_lock   ),
    .periph_port_axi4_0_ar_bits_cache( system_periph_port_axi4_0_ar_bits_cache  ),
    .periph_port_axi4_0_ar_bits_prot ( system_periph_port_axi4_0_ar_bits_prot   ),
    .periph_port_axi4_0_ar_bits_qos  ( system_periph_port_axi4_0_ar_bits_qos    ),
    .periph_port_axi4_0_r_ready      ( system_periph_port_axi4_0_r_ready        ),
    .periph_port_axi4_0_r_valid      ( system_periph_port_axi4_0_r_valid        ),
    .periph_port_axi4_0_r_bits_id    ( system_periph_port_axi4_0_r_bits_id      ),
    .periph_port_axi4_0_r_bits_data  ( system_periph_port_axi4_0_r_bits_data    ),
    .periph_port_axi4_0_r_bits_resp  ( system_periph_port_axi4_0_r_bits_resp    ),
    .periph_port_axi4_0_r_bits_last  ( system_periph_port_axi4_0_r_bits_last    ),
    .front_port_axi4_0_aw_ready      ( system_front_port_axi4_0_aw_ready        ),
    .front_port_axi4_0_aw_valid      ( system_front_port_axi4_0_aw_valid        ),
    .front_port_axi4_0_aw_bits_id    ( system_front_port_axi4_0_aw_bits_id      ),
    .front_port_axi4_0_aw_bits_addr  ( system_front_port_axi4_0_aw_bits_addr    ),
    .front_port_axi4_0_aw_bits_len   ( system_front_port_axi4_0_aw_bits_len     ),
    .front_port_axi4_0_aw_bits_size  ( system_front_port_axi4_0_aw_bits_size    ),
    .front_port_axi4_0_aw_bits_burst ( system_front_port_axi4_0_aw_bits_burst   ),
    .front_port_axi4_0_aw_bits_lock  ( system_front_port_axi4_0_aw_bits_lock    ),
    .front_port_axi4_0_aw_bits_cache ( system_front_port_axi4_0_aw_bits_cache   ),
    .front_port_axi4_0_aw_bits_prot  ( system_front_port_axi4_0_aw_bits_prot    ),
    .front_port_axi4_0_aw_bits_qos   ( system_front_port_axi4_0_aw_bits_qos     ),
    .front_port_axi4_0_w_ready       ( system_front_port_axi4_0_w_ready         ),
    .front_port_axi4_0_w_valid       ( system_front_port_axi4_0_w_valid         ),
    .front_port_axi4_0_w_bits_data   ( system_front_port_axi4_0_w_bits_data     ),
    .front_port_axi4_0_w_bits_strb   ( system_front_port_axi4_0_w_bits_strb     ),
    .front_port_axi4_0_w_bits_last   ( system_front_port_axi4_0_w_bits_last     ),
    .front_port_axi4_0_b_ready       ( system_front_port_axi4_0_b_ready         ),
    .front_port_axi4_0_b_valid       ( system_front_port_axi4_0_b_valid         ),
    .front_port_axi4_0_b_bits_id     ( system_front_port_axi4_0_b_bits_id       ),
    .front_port_axi4_0_b_bits_resp   ( system_front_port_axi4_0_b_bits_resp     ),
    .front_port_axi4_0_ar_ready      ( system_front_port_axi4_0_ar_ready        ),
    .front_port_axi4_0_ar_valid      ( system_front_port_axi4_0_ar_valid        ),
    .front_port_axi4_0_ar_bits_id    ( system_front_port_axi4_0_ar_bits_id      ),
    .front_port_axi4_0_ar_bits_addr  ( system_front_port_axi4_0_ar_bits_addr    ),
    .front_port_axi4_0_ar_bits_len   ( system_front_port_axi4_0_ar_bits_len     ),
    .front_port_axi4_0_ar_bits_size  ( system_front_port_axi4_0_ar_bits_size    ),
    .front_port_axi4_0_ar_bits_burst ( system_front_port_axi4_0_ar_bits_burst   ),
    .front_port_axi4_0_ar_bits_lock  ( system_front_port_axi4_0_ar_bits_lock    ),
    .front_port_axi4_0_ar_bits_cache ( system_front_port_axi4_0_ar_bits_cache   ),
    .front_port_axi4_0_ar_bits_prot  ( system_front_port_axi4_0_ar_bits_prot    ),
    .front_port_axi4_0_ar_bits_qos   ( system_front_port_axi4_0_ar_bits_qos     ),
    .front_port_axi4_0_r_ready       ( system_front_port_axi4_0_r_ready         ),
    .front_port_axi4_0_r_valid       ( system_front_port_axi4_0_r_valid         ),
    .front_port_axi4_0_r_bits_id     ( system_front_port_axi4_0_r_bits_id       ),
    .front_port_axi4_0_r_bits_data   ( system_front_port_axi4_0_r_bits_data     ),
    .front_port_axi4_0_r_bits_resp   ( system_front_port_axi4_0_r_bits_resp     ),
    .front_port_axi4_0_r_bits_last   ( system_front_port_axi4_0_r_bits_last     )
  );
  
  wire  testRAM_clock;
  wire  testRAM_reset;
  wire  testRAM_io_axi4_0_aw_ready;
  wire  testRAM_io_axi4_0_aw_valid;
  wire [7:0] testRAM_io_axi4_0_aw_bits_id;
  wire [31:0] testRAM_io_axi4_0_aw_bits_addr;
  wire [7:0] testRAM_io_axi4_0_aw_bits_len;
  wire [2:0] testRAM_io_axi4_0_aw_bits_size;
  wire [1:0] testRAM_io_axi4_0_aw_bits_burst;
  wire  testRAM_io_axi4_0_aw_bits_lock;
  wire [3:0] testRAM_io_axi4_0_aw_bits_cache;
  wire [2:0] testRAM_io_axi4_0_aw_bits_prot;
  wire [3:0] testRAM_io_axi4_0_aw_bits_qos;
  wire  testRAM_io_axi4_0_w_ready;
  wire  testRAM_io_axi4_0_w_valid;
  wire [63:0] testRAM_io_axi4_0_w_bits_data;
  wire [7:0] testRAM_io_axi4_0_w_bits_strb;
  wire  testRAM_io_axi4_0_w_bits_last;
  wire  testRAM_io_axi4_0_b_ready;
  wire  testRAM_io_axi4_0_b_valid;
  wire [7:0] testRAM_io_axi4_0_b_bits_id;
  wire [1:0] testRAM_io_axi4_0_b_bits_resp;
  wire  testRAM_io_axi4_0_ar_ready;
  wire  testRAM_io_axi4_0_ar_valid;
  wire [7:0] testRAM_io_axi4_0_ar_bits_id;
  wire [31:0] testRAM_io_axi4_0_ar_bits_addr;
  wire [7:0] testRAM_io_axi4_0_ar_bits_len;
  wire [2:0] testRAM_io_axi4_0_ar_bits_size;
  wire [1:0] testRAM_io_axi4_0_ar_bits_burst;
  wire  testRAM_io_axi4_0_ar_bits_lock;
  wire [3:0] testRAM_io_axi4_0_ar_bits_cache;
  wire [2:0] testRAM_io_axi4_0_ar_bits_prot;
  wire [3:0] testRAM_io_axi4_0_ar_bits_qos;
  wire  testRAM_io_axi4_0_r_ready;
  wire  testRAM_io_axi4_0_r_valid;
  wire [7:0] testRAM_io_axi4_0_r_bits_id;
  wire [63:0] testRAM_io_axi4_0_r_bits_data;
  wire [1:0] testRAM_io_axi4_0_r_bits_resp;
  wire  testRAM_io_axi4_0_r_bits_last;


AXI4PortRAMSlave testRAM (
    .clock(testRAM_clock),
    .reset(testRAM_reset),
    .io_axi4_0_aw_ready(testRAM_io_axi4_0_aw_ready),
    .io_axi4_0_aw_valid(testRAM_io_axi4_0_aw_valid),
    .io_axi4_0_aw_bits_id(testRAM_io_axi4_0_aw_bits_id),
    .io_axi4_0_aw_bits_addr(testRAM_io_axi4_0_aw_bits_addr),
    .io_axi4_0_aw_bits_len(testRAM_io_axi4_0_aw_bits_len),
    .io_axi4_0_aw_bits_size(testRAM_io_axi4_0_aw_bits_size),
    .io_axi4_0_aw_bits_burst(testRAM_io_axi4_0_aw_bits_burst),
    .io_axi4_0_aw_bits_lock(testRAM_io_axi4_0_aw_bits_lock),
    .io_axi4_0_aw_bits_cache(testRAM_io_axi4_0_aw_bits_cache),
    .io_axi4_0_aw_bits_prot(testRAM_io_axi4_0_aw_bits_prot),
    .io_axi4_0_aw_bits_qos(testRAM_io_axi4_0_aw_bits_qos),
    .io_axi4_0_w_ready(testRAM_io_axi4_0_w_ready),
    .io_axi4_0_w_valid(testRAM_io_axi4_0_w_valid),
    .io_axi4_0_w_bits_data(testRAM_io_axi4_0_w_bits_data),
    .io_axi4_0_w_bits_strb(testRAM_io_axi4_0_w_bits_strb),
    .io_axi4_0_w_bits_last(testRAM_io_axi4_0_w_bits_last),
    .io_axi4_0_b_ready(testRAM_io_axi4_0_b_ready),
    .io_axi4_0_b_valid(testRAM_io_axi4_0_b_valid),
    .io_axi4_0_b_bits_id(testRAM_io_axi4_0_b_bits_id),
    .io_axi4_0_b_bits_resp(testRAM_io_axi4_0_b_bits_resp),
    .io_axi4_0_ar_ready(testRAM_io_axi4_0_ar_ready),
    .io_axi4_0_ar_valid(testRAM_io_axi4_0_ar_valid),
    .io_axi4_0_ar_bits_id(testRAM_io_axi4_0_ar_bits_id),
    .io_axi4_0_ar_bits_addr(testRAM_io_axi4_0_ar_bits_addr),
    .io_axi4_0_ar_bits_len(testRAM_io_axi4_0_ar_bits_len),
    .io_axi4_0_ar_bits_size(testRAM_io_axi4_0_ar_bits_size),
    .io_axi4_0_ar_bits_burst(testRAM_io_axi4_0_ar_bits_burst),
    .io_axi4_0_ar_bits_lock(testRAM_io_axi4_0_ar_bits_lock),
    .io_axi4_0_ar_bits_cache(testRAM_io_axi4_0_ar_bits_cache),
    .io_axi4_0_ar_bits_prot(testRAM_io_axi4_0_ar_bits_prot),
    .io_axi4_0_ar_bits_qos(testRAM_io_axi4_0_ar_bits_qos),
    .io_axi4_0_r_ready(testRAM_io_axi4_0_r_ready),
    .io_axi4_0_r_valid(testRAM_io_axi4_0_r_valid),
    .io_axi4_0_r_bits_id(testRAM_io_axi4_0_r_bits_id),
    .io_axi4_0_r_bits_data(testRAM_io_axi4_0_r_bits_data),
    .io_axi4_0_r_bits_resp(testRAM_io_axi4_0_r_bits_resp),
    .io_axi4_0_r_bits_last(testRAM_io_axi4_0_r_bits_last)
  );
  assign testRAM_clock = system_clock;
  assign testRAM_reset = system_reset;
  assign testRAM_io_axi4_0_aw_valid = system_mem_port_axi4_0_aw_valid;
  assign testRAM_io_axi4_0_aw_bits_id = system_mem_port_axi4_0_aw_bits_id;
  assign testRAM_io_axi4_0_aw_bits_addr = system_mem_port_axi4_0_aw_bits_addr;
  assign testRAM_io_axi4_0_aw_bits_len = system_mem_port_axi4_0_aw_bits_len;
  assign testRAM_io_axi4_0_aw_bits_size = system_mem_port_axi4_0_aw_bits_size;
  assign testRAM_io_axi4_0_aw_bits_burst = system_mem_port_axi4_0_aw_bits_burst;
  assign testRAM_io_axi4_0_aw_bits_lock = system_mem_port_axi4_0_aw_bits_lock;
  assign testRAM_io_axi4_0_aw_bits_cache = system_mem_port_axi4_0_aw_bits_cache;
  assign testRAM_io_axi4_0_aw_bits_prot = system_mem_port_axi4_0_aw_bits_prot;
  assign testRAM_io_axi4_0_aw_bits_qos = system_mem_port_axi4_0_aw_bits_qos;
  assign testRAM_io_axi4_0_w_valid = system_mem_port_axi4_0_w_valid;
  assign testRAM_io_axi4_0_w_bits_data = system_mem_port_axi4_0_w_bits_data;
  assign testRAM_io_axi4_0_w_bits_strb = system_mem_port_axi4_0_w_bits_strb;
  assign testRAM_io_axi4_0_w_bits_last = system_mem_port_axi4_0_w_bits_last;
  assign testRAM_io_axi4_0_b_ready = system_mem_port_axi4_0_b_ready;
  assign testRAM_io_axi4_0_ar_valid = system_mem_port_axi4_0_ar_valid;
  assign testRAM_io_axi4_0_ar_bits_id = system_mem_port_axi4_0_ar_bits_id;
  assign testRAM_io_axi4_0_ar_bits_addr = system_mem_port_axi4_0_ar_bits_addr;
  assign testRAM_io_axi4_0_ar_bits_len = system_mem_port_axi4_0_ar_bits_len;
  assign testRAM_io_axi4_0_ar_bits_size = system_mem_port_axi4_0_ar_bits_size;
  assign testRAM_io_axi4_0_ar_bits_burst = system_mem_port_axi4_0_ar_bits_burst;
  assign testRAM_io_axi4_0_ar_bits_lock = system_mem_port_axi4_0_ar_bits_lock;
  assign testRAM_io_axi4_0_ar_bits_cache = system_mem_port_axi4_0_ar_bits_cache;
  assign testRAM_io_axi4_0_ar_bits_prot = system_mem_port_axi4_0_ar_bits_prot;
  assign testRAM_io_axi4_0_ar_bits_qos = system_mem_port_axi4_0_ar_bits_qos;
  assign testRAM_io_axi4_0_r_ready = system_mem_port_axi4_0_r_ready;
  assign system_mem_port_axi4_0_aw_ready = testRAM_io_axi4_0_aw_ready;
  assign system_mem_port_axi4_0_w_ready = testRAM_io_axi4_0_w_ready;
  assign system_mem_port_axi4_0_b_valid = testRAM_io_axi4_0_b_valid;
  assign system_mem_port_axi4_0_b_bits_id = testRAM_io_axi4_0_b_bits_id;
  assign system_mem_port_axi4_0_b_bits_resp = testRAM_io_axi4_0_b_bits_resp;
  assign system_mem_port_axi4_0_ar_ready = testRAM_io_axi4_0_ar_ready;
  assign system_mem_port_axi4_0_r_valid = testRAM_io_axi4_0_r_valid;
  assign system_mem_port_axi4_0_r_bits_id = testRAM_io_axi4_0_r_bits_id;
  assign system_mem_port_axi4_0_r_bits_data = testRAM_io_axi4_0_r_bits_data;
  assign system_mem_port_axi4_0_r_bits_resp = testRAM_io_axi4_0_r_bits_resp;
  assign system_mem_port_axi4_0_r_bits_last = testRAM_io_axi4_0_r_bits_last;

//====
//====// sys_port
//====  assign m00_axi_awvalid = system_mem_port_axi4_0_aw_valid;
//====//assign m00_axi_awid = system_mem_port_axi4_0_aw_bits_id;
//====  assign m00_axi_awaddr = system_mem_port_axi4_0_aw_bits_addr;
//====  assign m00_axi_awlen = system_mem_port_axi4_0_aw_bits_len;
//====//assign m00_axi_awsize = system_mem_port_axi4_0_aw_bits_size;
//====//assign m00_axi_awburst = system_mem_port_axi4_0_aw_bits_burst;
//====//assign m00_axi_awlock = system_mem_port_axi4_0_aw_bits_lock;
//====//assign m00_axi_awcache = system_mem_port_axi4_0_aw_bits_cache;
//====//assign m00_axi_awprot = system_mem_port_axi4_0_aw_bits_prot;
//====//assign m00_axi_awqos = system_mem_port_axi4_0_aw_bits_qos;
//====  assign m00_axi_wvalid = system_mem_port_axi4_0_w_valid;
//====  assign m00_axi_wdata = system_mem_port_axi4_0_w_bits_data;
//====  assign m00_axi_wstrb = system_mem_port_axi4_0_w_bits_strb;
//====  assign m00_axi_wlast = system_mem_port_axi4_0_w_bits_last;
//====  assign m00_axi_bready = system_mem_port_axi4_0_b_ready;
//====  assign m00_axi_arvalid = system_mem_port_axi4_0_ar_valid;
//====//assign m00_axi_arid = system_mem_port_axi4_0_ar_bits_id;
//====  assign m00_axi_araddr = system_mem_port_axi4_0_ar_bits_addr;
//====  assign m00_axi_arlen = system_mem_port_axi4_0_ar_bits_len;
//====//assign m00_axi_arsize = system_mem_port_axi4_0_ar_bits_size;
//====//assign m00_axi_arburst = system_mem_port_axi4_0_ar_bits_burst;
//====//assign m00_axi_arlock = system_mem_port_axi4_0_ar_bits_lock;
//====//assign m00_axi_arcache = system_mem_port_axi4_0_ar_bits_cache;
//====//assign m00_axi_arprot = system_mem_port_axi4_0_ar_bits_prot;
//====//assign m00_axi_arqos = system_mem_port_axi4_0_ar_bits_qos;
//====  assign m00_axi_rready = system_mem_port_axi4_0_r_ready;
//====  assign system_mem_port_axi4_0_aw_ready = m00_axi_awready;
//====  assign system_mem_port_axi4_0_w_ready = m00_axi_wready;
//====  assign system_mem_port_axi4_0_b_valid = m00_axi_bvalid;
//====  assign system_mem_port_axi4_0_b_bits_id = 8'h00;//m00_axi_bid;
//====  assign system_mem_port_axi4_0_b_bits_resp = 2'h0;//m00_axi_bresp;
//====  assign system_mem_port_axi4_0_ar_ready = m00_axi_arready;
//====  assign system_mem_port_axi4_0_r_valid = m00_axi_rvalid;
//====  assign system_mem_port_axi4_0_r_bits_id = 8'h00;//m00_axi_rid;
//====  assign system_mem_port_axi4_0_r_bits_data = m00_axi_rdata;
//====  assign system_mem_port_axi4_0_r_bits_resp = 2'h0;//m00_axi_rresp;
//====  assign system_mem_port_axi4_0_r_bits_last = m00_axi_rlast;
//====
//====// periph_port
//====  assign m01_axi_awvalid = system_periph_port_axi4_0_aw_valid;
//====//assign m01_axi_awid = system_periph_port_axi4_0_aw_bits_id;
//====  assign m01_axi_awaddr = system_periph_port_axi4_0_aw_bits_addr;
//====  assign m01_axi_awlen = system_periph_port_axi4_0_aw_bits_len;
//====//assign m01_axi_awsize = system_periph_port_axi4_0_aw_bits_size;
//====//assign m01_axi_awburst = system_periph_port_axi4_0_aw_bits_burst;
//====//assign m01_axi_awlock = system_periph_port_axi4_0_aw_bits_lock;
//====//assign m01_axi_awcache = system_periph_port_axi4_0_aw_bits_cache;
//====//assign m01_axi_awprot = system_periph_port_axi4_0_aw_bits_prot;
//====//assign m01_axi_awqos = system_periph_port_axi4_0_aw_bits_qos;
//====  assign m01_axi_wvalid = system_periph_port_axi4_0_w_valid;
//====  assign m01_axi_wdata = system_periph_port_axi4_0_w_bits_data;
//====  assign m01_axi_wstrb = system_periph_port_axi4_0_w_bits_strb;
//====  assign m01_axi_wlast = system_periph_port_axi4_0_w_bits_last;
//====  assign m01_axi_bready = system_periph_port_axi4_0_b_ready;
//====  assign m01_axi_arvalid = system_periph_port_axi4_0_ar_valid;
//====//assign m01_axi_arid = system_periph_port_axi4_0_ar_bits_id;
//====  assign m01_axi_araddr = system_periph_port_axi4_0_ar_bits_addr;
//====  assign m01_axi_arlen = system_periph_port_axi4_0_ar_bits_len;
//====//assign m01_axi_arsize = system_periph_port_axi4_0_ar_bits_size;
//====//assign m01_axi_arburst = system_periph_port_axi4_0_ar_bits_burst;
//====//assign m01_axi_arlock = system_periph_port_axi4_0_ar_bits_lock;
//====//assign m01_axi_arcache = system_periph_port_axi4_0_ar_bits_cache;
//====//assign m01_axi_arprot = system_periph_port_axi4_0_ar_bits_prot;
//====//assign m01_axi_arqos = system_periph_port_axi4_0_ar_bits_qos;
//====  assign m01_axi_rready = system_periph_port_axi4_0_r_ready;
//====  assign system_periph_port_axi4_0_aw_ready = m01_axi_awready;
//====  assign system_periph_port_axi4_0_w_ready = m01_axi_wready;
//====  assign system_periph_port_axi4_0_b_valid = m01_axi_bvalid;
//====  assign system_periph_port_axi4_0_b_bits_id = 8'h00;//m01_axi_bid;
//====  assign system_periph_port_axi4_0_b_bits_resp = 2'h0;//m01_axi_bresp;
//====  assign system_periph_port_axi4_0_ar_ready = m01_axi_arready;
//====  assign system_periph_port_axi4_0_r_valid = m01_axi_rvalid;
//====  assign system_periph_port_axi4_0_r_bits_id = 8'h00;//m01_axi_rid;
//====  assign system_periph_port_axi4_0_r_bits_data = m01_axi_rdata;
//====  assign system_periph_port_axi4_0_r_bits_resp = 2'h0;//m01_axi_rresp;
//====  assign system_periph_port_axi4_0_r_bits_last = m01_axi_rlast;
//====


  assign system_sys_port_axi4_0_aw_ready = 1'h0;
  assign system_sys_port_axi4_0_w_ready = 1'h0;
  assign system_sys_port_axi4_0_b_valid = 1'h0;
  assign system_sys_port_axi4_0_b_bits_id = 4'h0;
  assign system_sys_port_axi4_0_b_bits_resp = 2'h0;
  assign system_sys_port_axi4_0_ar_ready = 1'h0;
  assign system_sys_port_axi4_0_r_valid = 1'h0;
  assign system_sys_port_axi4_0_r_bits_id = 4'h0;
  assign system_sys_port_axi4_0_r_bits_data = 64'h0;
  assign system_sys_port_axi4_0_r_bits_resp = 2'h0;
  assign system_sys_port_axi4_0_r_bits_last = 1'h0;

  assign system_periph_port_axi4_0_aw_ready = 1'h0;
  assign system_periph_port_axi4_0_w_ready = 1'h0;
  assign system_periph_port_axi4_0_b_valid = 1'h0;
  assign system_periph_port_axi4_0_b_bits_id = 1'h0;
  assign system_periph_port_axi4_0_b_bits_resp = 2'h0;
  assign system_periph_port_axi4_0_ar_ready = 1'h0;
  assign system_periph_port_axi4_0_r_valid = 1'h0;
  assign system_periph_port_axi4_0_r_bits_id = 1'h0;
  assign system_periph_port_axi4_0_r_bits_data = 64'h0;
  assign system_periph_port_axi4_0_r_bits_resp = 2'h0;
  assign system_periph_port_axi4_0_r_bits_last = 1'h0;

  assign system_front_port_axi4_0_aw_valid = 1'h0;
  assign system_front_port_axi4_0_aw_bits_id = 8'h0;
  assign system_front_port_axi4_0_aw_bits_addr = 40'h0;
  assign system_front_port_axi4_0_aw_bits_len = 8'h0;
  assign system_front_port_axi4_0_aw_bits_size = 3'h0;
  assign system_front_port_axi4_0_aw_bits_burst = 2'h0;
  assign system_front_port_axi4_0_aw_bits_lock = 1'h0;
  assign system_front_port_axi4_0_aw_bits_cache = 4'h0;
  assign system_front_port_axi4_0_aw_bits_prot = 3'h0;
  assign system_front_port_axi4_0_aw_bits_qos = 4'h0;
  assign system_front_port_axi4_0_w_valid = 1'h0;
  assign system_front_port_axi4_0_w_bits_data = 64'h0;
  assign system_front_port_axi4_0_w_bits_strb = 8'h0;
  assign system_front_port_axi4_0_w_bits_last = 1'h0;
  assign system_front_port_axi4_0_b_ready = 1'h0;
  assign system_front_port_axi4_0_ar_valid = 1'h0;
  assign system_front_port_axi4_0_ar_bits_id = 8'h0;
  assign system_front_port_axi4_0_ar_bits_addr = 40'h0;
  assign system_front_port_axi4_0_ar_bits_len = 8'h0;
  assign system_front_port_axi4_0_ar_bits_size = 3'h0;
  assign system_front_port_axi4_0_ar_bits_burst = 2'h0;
  assign system_front_port_axi4_0_ar_bits_lock = 1'h0;
  assign system_front_port_axi4_0_ar_bits_cache = 4'h0;
  assign system_front_port_axi4_0_ar_bits_prot = 3'h0;
  assign system_front_port_axi4_0_ar_bits_qos = 4'h0;
  assign system_front_port_axi4_0_r_ready = 1'h0;


endmodule
`default_nettype wire
