// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_top.h for the primary calling header

#ifndef _Vtb_top_axi4_to_ahb__T3_H_
#define _Vtb_top_axi4_to_ahb__T3_H_

#include "verilated_heavy.h"

class Vtb_top__Syms;
class VerilatedVcd;

//----------

VL_MODULE(Vtb_top_axi4_to_ahb__T3) {
  public:
    
    // PORTS
    VL_IN8(clk,0,0);
    VL_IN8(rst_l,0,0);
    VL_IN8(scan_mode,0,0);
    VL_IN8(bus_clk_en,0,0);
    VL_IN8(clk_override,0,0);
    VL_IN8(axi_awvalid,0,0);
    VL_OUT8(axi_awready,0,0);
    VL_IN8(axi_awid,2,0);
    VL_IN8(axi_awsize,2,0);
    VL_IN8(axi_awprot,2,0);
    VL_IN8(axi_wvalid,0,0);
    VL_OUT8(axi_wready,0,0);
    VL_IN8(axi_wstrb,7,0);
    VL_IN8(axi_wlast,0,0);
    VL_OUT8(axi_bvalid,0,0);
    VL_IN8(axi_bready,0,0);
    VL_OUT8(axi_bresp,1,0);
    VL_OUT8(axi_bid,2,0);
    VL_IN8(axi_arvalid,0,0);
    VL_OUT8(axi_arready,0,0);
    VL_IN8(axi_arid,2,0);
    VL_IN8(axi_arsize,2,0);
    VL_IN8(axi_arprot,2,0);
    VL_OUT8(axi_rvalid,0,0);
    VL_IN8(axi_rready,0,0);
    VL_OUT8(axi_rid,2,0);
    VL_OUT8(axi_rresp,1,0);
    VL_OUT8(__PVT__axi_rlast,0,0);
    VL_OUT8(__PVT__ahb_hburst,2,0);
    VL_OUT8(__PVT__ahb_hmastlock,0,0);
    VL_OUT8(ahb_hprot,3,0);
    VL_OUT8(ahb_hsize,2,0);
    VL_OUT8(ahb_htrans,1,0);
    VL_OUT8(ahb_hwrite,0,0);
    VL_IN8(ahb_hready,0,0);
    VL_IN8(ahb_hresp,0,0);
    VL_IN(axi_awaddr,31,0);
    VL_IN(axi_araddr,31,0);
    VL_OUT(ahb_haddr,31,0);
    VL_IN64(axi_wdata,63,0);
    VL_OUT64(axi_rdata,63,0);
    VL_OUT64(ahb_hwdata,63,0);
    VL_IN64(ahb_hrdata,63,0);
    
    // LOCAL SIGNALS
    VL_SIG8(__PVT__bus_clk,0,0);
    VL_SIG8(__PVT__buf_clk,0,0);
    VL_SIG8(__PVT__ahbm_addr_clk,0,0);
    VL_SIG8(__PVT__ahbm_data_clk,0,0);
    VL_SIG8(__PVT__wrbuf_addrff__DOT__l1clk,0,0);
    VL_SIG8(__PVT__wrbuf_dataff__DOT__l1clk,0,0);
    VL_SIG8(__PVT__buf_addrff__DOT__l1clk,0,0);
    VL_SIG8(__PVT__buf_dataff__DOT__l1clk,0,0);
    VL_SIG8(__PVT__buf_nxtstate,2,0);
    VL_SIG8(__PVT__slave_opc,3,0);
    VL_SIG8(__PVT__wrbuf_en,0,0);
    VL_SIG8(__PVT__wrbuf_data_en,0,0);
    VL_SIG8(__PVT__wrbuf_cmd_sent,0,0);
    VL_SIG8(__PVT__wrbuf_rst,0,0);
    VL_SIG8(__PVT__wrbuf_vld,0,0);
    VL_SIG8(__PVT__wrbuf_data_vld,0,0);
    VL_SIG8(__PVT__wrbuf_tag,2,0);
    VL_SIG8(__PVT__wrbuf_size,2,0);
    VL_SIG8(__PVT__wrbuf_byteen,7,0);
    VL_SIG8(__PVT__master_valid,0,0);
    VL_SIG8(__PVT__master_ready,0,0);
    VL_SIG8(__PVT__master_size,2,0);
    VL_SIG8(__PVT__buf_size,1,0);
    VL_SIG8(__PVT__buf_write,0,0);
    VL_SIG8(__PVT__buf_byteen,7,0);
    VL_SIG8(__PVT__buf_aligned,0,0);
    VL_SIG8(__PVT__buf_tag,2,0);
    VL_SIG8(__PVT__buf_write_in,0,0);
    VL_SIG8(__PVT__buf_aligned_in,0,0);
    VL_SIG8(__PVT__buf_size_in,2,0);
    VL_SIG8(__PVT__buf_state_en,0,0);
    VL_SIG8(__PVT__buf_wr_en,0,0);
    VL_SIG8(__PVT__buf_data_wr_en,0,0);
    VL_SIG8(__PVT__slvbuf_error_en,0,0);
    VL_SIG8(__PVT__wr_cmd_vld,0,0);
    VL_SIG8(__PVT__cmd_done,0,0);
    VL_SIG8(__PVT__cmd_doneQ,0,0);
    VL_SIG8(__PVT__trxn_done,0,0);
    VL_SIG8(__PVT__buf_cmd_byte_ptr,2,0);
    VL_SIG8(__PVT__buf_cmd_byte_ptrQ,2,0);
    VL_SIG8(__PVT__buf_cmd_nxtbyte_ptr,2,0);
    VL_SIG8(__PVT__buf_cmd_byte_ptr_en,0,0);
    VL_SIG8(__PVT__found,0,0);
    VL_SIG8(__PVT__slave_valid_pre,0,0);
    VL_SIG8(__PVT__ahb_hready_q,0,0);
    VL_SIG8(__PVT__ahb_hresp_q,0,0);
    VL_SIG8(__PVT__ahb_htrans_q,1,0);
    VL_SIG8(__PVT__ahb_hwrite_q,0,0);
    VL_SIG8(__PVT__slvbuf_write,0,0);
    VL_SIG8(__PVT__slvbuf_error,0,0);
    VL_SIG8(__PVT__slvbuf_tag,2,0);
    VL_SIG8(__PVT__slvbuf_error_in,0,0);
    VL_SIG8(__PVT__slvbuf_wr_en,0,0);
    VL_SIG8(__PVT__bypass_en,0,0);
    VL_SIG8(__PVT__rd_bypass_idle,0,0);
    VL_SIG8(__PVT__slvbuf_clken,0,0);
    VL_SIG8(__PVT__slvbuf_clk,0,0);
    VL_SIG8(__PVT__bus_cgc__DOT__rvclkhdr__DOT__en_ff,0,0);
    VL_SIG8(__PVT__bus_write_cgc__DOT__rvclkhdr__DOT__en_ff,0,0);
    VL_SIG8(__PVT__wrbuf_vldff__DOT__din_new,0,0);
    VL_SIG8(__PVT__wrbuf_data_vldff__DOT__din_new,0,0);
    VL_SIG8(__PVT__wrbuf_addrff__DOT__genblock__DOT__clkhdr__DOT__rvclkhdr__DOT__en_ff,0,0);
    VL_SIG8(__PVT__wrbuf_dataff__DOT__genblock__DOT__clkhdr__DOT__rvclkhdr__DOT__en_ff,0,0);
    VL_SIG8(__PVT__buf_state_ff__DOT__din_new,2,0);
    VL_SIG8(__PVT__buf_addrff__DOT__genblock__DOT__clkhdr__DOT__rvclkhdr__DOT__en_ff,0,0);
    VL_SIG8(__PVT__buf_dataff__DOT__genblock__DOT__clkhdr__DOT__rvclkhdr__DOT__en_ff,0,0);
    VL_SIG8(__PVT__buf_cmd_doneff__DOT__din_new,0,0);
    VL_SIG8(__PVT__buf_cgc__DOT__rvclkhdr__DOT__en_ff,0,0);
    VL_SIG8(__PVT__ahbm_addr_cgc__DOT__rvclkhdr__DOT__en_ff,0,0);
    VL_SIG8(__PVT__ahbm_data_cgc__DOT__rvclkhdr__DOT__en_ff,0,0);
    VL_SIG(__PVT__wrbuf_addr,31,0);
    VL_SIG(__PVT__master_addr,31,0);
    VL_SIG(__PVT__buf_addr,31,0);
    VL_SIG(__PVT__last_bus_addr,31,0);
    VL_SIG64(__PVT__wrbuf_data,63,0);
    VL_SIG64(__PVT__buf_data,63,0);
    VL_SIG64(__PVT__ahb_hrdata_q,63,0);
    
    // LOCAL VARIABLES
    VL_SIG8(__Vcellout__buf_state_ff__dout,2,0);
    VL_SIG8(wrbuf_tagff__DOT____Vcellinp__dffs__din,2,0);
    VL_SIG8(wrbuf_sizeff__DOT____Vcellinp__dffs__din,2,0);
    VL_SIG8(wrbuf_byteenff__DOT____Vcellinp__dffs__din,7,0);
    VL_SIG8(buf_writeff__DOT____Vcellinp__dffs__din,0,0);
    VL_SIG8(buf_tagff__DOT____Vcellinp__dffs__din,2,0);
    VL_SIG8(buf_sizeff__DOT____Vcellinp__dffs__din,1,0);
    VL_SIG8(buf_alignedff__DOT____Vcellinp__dffs__din,0,0);
    VL_SIG8(buf_byteenff__DOT____Vcellinp__dffs__din,7,0);
    VL_SIG8(slvbuf_writeff__DOT____Vcellinp__dffs__din,0,0);
    VL_SIG8(slvbuf_tagff__DOT____Vcellinp__dffs__din,2,0);
    VL_SIG8(slvbuf_errorff__DOT____Vcellinp__dffs__din,0,0);
    VL_SIG8(buf_cmd_byte_ptrff__DOT____Vcellinp__dffs__din,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__0__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__0__current_byte_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__0__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__0__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__0__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__1__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__1__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__1__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__1__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__2__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__2__current_byte_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__2__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__2__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__2__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__3__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__3__current_byte_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__3__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__3__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__3__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__4__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__4__current_byte_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__4__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__4__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__4__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__5__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__5__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__5__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__5__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__6__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__6__current_byte_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__6__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__6__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__6__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__7__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__7__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__7__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__7__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__8__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__8__current_byte_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__8__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__8__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__8__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__9__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__9__current_byte_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__9__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__9__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__9__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__10__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__10__current_byte_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__10__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__10__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__10__found,0,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__11__Vfuncout,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__11__byteen,7,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__11__start_ptr,2,0);
    VL_SIG8(__Vfunc_get_nxtbyte_ptr__11__found,0,0);
    VL_SIG(last_bus_addrff__DOT____Vcellinp__dffs__din,31,0);
    
    // INTERNAL VARIABLES
  private:
    Vtb_top__Syms* __VlSymsp;  // Symbol table
  public:
    
    // PARAMETERS
    
    // CONSTRUCTORS
  private:
    Vtb_top_axi4_to_ahb__T3& operator= (const Vtb_top_axi4_to_ahb__T3&);  ///< Copying not allowed
    Vtb_top_axi4_to_ahb__T3(const Vtb_top_axi4_to_ahb__T3&);  ///< Copying not allowed
  public:
    Vtb_top_axi4_to_ahb__T3(const char* name="TOP");
    ~Vtb_top_axi4_to_ahb__T3();
    void trace (VerilatedVcdC* tfp, int levels, int options=0);
    
    // API METHODS
    
    // INTERNAL METHODS
    void __Vconfigure(Vtb_top__Syms* symsp, bool first);
    void _combo__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__21(Vtb_top__Syms* __restrict vlSymsp);
    void _combo__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__5(Vtb_top__Syms* __restrict vlSymsp);
    void _combo__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__22(Vtb_top__Syms* __restrict vlSymsp);
    void _combo__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__6(Vtb_top__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset();
  public:
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__29(Vtb_top__Syms* __restrict vlSymsp);
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__40(Vtb_top__Syms* __restrict vlSymsp);
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__41(Vtb_top__Syms* __restrict vlSymsp);
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__42(Vtb_top__Syms* __restrict vlSymsp);
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__23(Vtb_top__Syms* __restrict vlSymsp);
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__34(Vtb_top__Syms* __restrict vlSymsp);
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__35(Vtb_top__Syms* __restrict vlSymsp);
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__36(Vtb_top__Syms* __restrict vlSymsp);
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__37(Vtb_top__Syms* __restrict vlSymsp);
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__38(Vtb_top__Syms* __restrict vlSymsp);
    void _multiclk__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__39(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__10(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__13(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__24(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__27(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__3(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__31(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__32(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__33(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__9(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__14(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__15(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__16(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__17(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__18(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__19(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__20(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__25(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__26(Vtb_top__Syms* __restrict vlSymsp);
    void _sequent__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__4(Vtb_top__Syms* __restrict vlSymsp);
    void _settle__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb__2(Vtb_top__Syms* __restrict vlSymsp);
    void _settle__TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb__1(Vtb_top__Syms* __restrict vlSymsp);
    static void traceInit (VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull (VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg  (VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(128);

#endif // guard
