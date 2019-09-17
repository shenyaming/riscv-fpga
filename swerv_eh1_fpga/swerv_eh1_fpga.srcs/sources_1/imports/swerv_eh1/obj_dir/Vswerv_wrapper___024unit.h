// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vswerv_wrapper.h for the primary calling header

#ifndef _Vswerv_wrapper___024unit_H_
#define _Vswerv_wrapper___024unit_H_

#include "verilated.h"

class Vswerv_wrapper__Syms;

//----------

VL_MODULE(Vswerv_wrapper___024unit) {
  public:
    
    // PORTS
    
    // LOCAL SIGNALS
    
    // LOCAL VARIABLES
    
    // INTERNAL VARIABLES
  private:
    Vswerv_wrapper__Syms* __VlSymsp;  // Symbol table
  public:
    
    // PARAMETERS
    
    // CONSTRUCTORS
  private:
    Vswerv_wrapper___024unit& operator= (const Vswerv_wrapper___024unit&);  ///< Copying not allowed
    Vswerv_wrapper___024unit(const Vswerv_wrapper___024unit&);  ///< Copying not allowed
  public:
    Vswerv_wrapper___024unit(const char* name="TOP");
    ~Vswerv_wrapper___024unit();
    
    // API METHODS
    
    // INTERNAL METHODS
    void __Vconfigure(Vswerv_wrapper__Syms* symsp, bool first);
  private:
    void _ctor_var_reset();
} VL_ATTR_ALIGNED(128);

#endif // guard
