// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_top.h for the primary calling header

#ifndef _Vtb_top___024unit_H_
#define _Vtb_top___024unit_H_

#include "verilated_heavy.h"

class Vtb_top__Syms;
class VerilatedVcd;

//----------

VL_MODULE(Vtb_top___024unit) {
  public:
    
    // PORTS
    
    // LOCAL SIGNALS
    
    // LOCAL VARIABLES
    
    // INTERNAL VARIABLES
  private:
    Vtb_top__Syms* __VlSymsp;  // Symbol table
  public:
    
    // PARAMETERS
    
    // CONSTRUCTORS
  private:
    Vtb_top___024unit& operator= (const Vtb_top___024unit&);  ///< Copying not allowed
    Vtb_top___024unit(const Vtb_top___024unit&);  ///< Copying not allowed
  public:
    Vtb_top___024unit(const char* name="TOP");
    ~Vtb_top___024unit();
    void trace (VerilatedVcdC* tfp, int levels, int options=0);
    
    // API METHODS
    
    // INTERNAL METHODS
    void __Vconfigure(Vtb_top__Syms* symsp, bool first);
  private:
    void _ctor_var_reset();
  public:
    static void traceInit (VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull (VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg  (VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(128);

#endif // guard
