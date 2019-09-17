// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header

#ifndef _Vtb_top__Syms_H_
#define _Vtb_top__Syms_H_

#include "verilated_heavy.h"

// INCLUDE MODULE CLASSES
#include "Vtb_top.h"
#include "Vtb_top___024unit.h"
#include "Vtb_top_axi4_to_ahb__T3.h"

// SYMS CLASS
class Vtb_top__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_activity;  ///< Used by trace routines to determine change occurred
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vtb_top*                       TOPp;
    Vtb_top_axi4_to_ahb__T3        TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__ifu_axi4_to_ahb;
    Vtb_top_axi4_to_ahb__T3        TOP__tb_top__DOT__rvtop__DOT__swerv__DOT__lsu_axi4_to_ahb;
    
    // CREATORS
    Vtb_top__Syms(Vtb_top* topp, const char* namep);
    ~Vtb_top__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    inline bool getClearActivity() { bool r=__Vm_activity; __Vm_activity=false; return r; }
    
} VL_ATTR_ALIGNED(64);

#endif // guard
