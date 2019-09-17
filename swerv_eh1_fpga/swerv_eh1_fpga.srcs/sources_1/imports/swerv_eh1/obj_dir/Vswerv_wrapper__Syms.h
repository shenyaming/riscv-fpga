// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header

#ifndef _Vswerv_wrapper__Syms_H_
#define _Vswerv_wrapper__Syms_H_

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "Vswerv_wrapper.h"
#include "Vswerv_wrapper___024unit.h"
#include "Vswerv_wrapper_axi4_to_ahb__T3.h"

// SYMS CLASS
class Vswerv_wrapper__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vswerv_wrapper*                TOPp;
    Vswerv_wrapper_axi4_to_ahb__T3 TOP__swerv_wrapper__DOT__swerv__DOT__ifu_axi4_to_ahb;
    Vswerv_wrapper_axi4_to_ahb__T3 TOP__swerv_wrapper__DOT__swerv__DOT__lsu_axi4_to_ahb;
    
    // CREATORS
    Vswerv_wrapper__Syms(Vswerv_wrapper* topp, const char* namep);
    ~Vswerv_wrapper__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(64);

#endif // guard
