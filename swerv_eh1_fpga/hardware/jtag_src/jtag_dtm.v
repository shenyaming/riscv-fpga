`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/14 11:23:37
// Design Name: 
// Module Name: jtag_dtm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module jtag_dtm(

    input   wire              jtag_trst_n,
    output  wire              jtag_tck,
    
    input   wire  [2:0]       idle,
    input   wire  [1:0]       dmi_stat,
    input   wire  [5:0]       abits,
    input   wire  [3:0]       version,
    
    output  reg               dmi_reset,
    output  reg               dmi_hard_reset

);
    
    
    //========================================================
    //====  Repalce JTAG_TAP of RISCV core from Western Digital
    //========================================================
    wire    jtag_capture  ;
    wire    jtag_drck     ;
    wire    jtag_reset    ;
    wire    jtag_runtest  ;
    wire    jtag_sel      ;
    wire    jtag_shift    ;
//  wire    jtag_tck ;
    wire    jtag_tdi ;
    wire    jtag_tms ;
    wire    jtag_update   ;
    wire    jtag_tdo ;
    parameter    USER_DR_LENGTH =32;
    
    BSCANE2 
    #(  .JTAG_CHAIN (2)   )
    BSCANE2_inst(
        .CAPTURE( jtag_capture  ),
        .DRCK   ( jtag_drck     ),
        .RESET  ( jtag_reset    ),
        .RUNTEST( jtag_runtest  ),
        .SEL    ( jtag_sel      ),
        .SHIFT  ( jtag_shift    ),
        .TCK    ( jtag_tck ),
        .TDI    ( jtag_tdi ),
        .TMS    ( jtag_tms ),
        .UPDATE ( jtag_update   ),

        .TDO    ( jtag_tdo )
    );   
 
    (* DONT_TOUCH = "true" *)
    reg [USER_DR_LENGTH-1:0] sr, nsr;
    reg [USER_DR_LENGTH-1:0] dr; // = 32'h0000;
    wire  [USER_DR_LENGTH-1:0] info;
    
    assign jtag_tdo = jtag_sel ? sr[0] : jtag_tdi;
    
    ///////////////////////////////////////////////////////    
    // SR next value
    ///////////////////////////////////////////////////////
    always @(*) begin
        nsr = sr;
        case(1)
        jtag_shift   : nsr = {jtag_tdi, sr[USER_DR_LENGTH-1:1]}; // bypass
        jtag_capture : nsr = info ;
        endcase
    end
    ///////////////////////////////////////////////////////
    //  Shift register
    ///////////////////////////////////////////////////////
    always @ (posedge jtag_tck or posedge jtag_trst_n) begin
        if(!jtag_trst_n)begin
            sr <= {{USER_DR_LENGTH{1'b0}}};
        end
        else begin
            sr <= nsr;
        end
    end
    ///////////////////////////////////////////////////////
    //  DR register
    ///////////////////////////////////////////////////////
    always @ (posedge jtag_tck or posedge jtag_trst_n) begin
        if(!jtag_trst_n) begin
            dr <= {{USER_DR_LENGTH}{1'b0}};
        end
        else if(jtag_update)
        begin
            dr <= sr;
        end
    end    
    ///////////////////////////////////////////////////////
    //  Custome Logic
    ///////////////////////////////////////////////////////       
    assign info = {14'h0, dmi_hard_reset, dmi_reset, 1'b0, idle, dmi_stat, abits, version};
    // DMI CS register
    always @ (posedge jtag_tck or posedge jtag_trst_n) begin
        if(!jtag_trst_n) begin
            dmi_hard_reset <= 1'b0;
            dmi_reset      <= 1'b0;
        end 
        else if (jtag_update) begin
            dmi_hard_reset <= sr[17];
            dmi_reset      <= sr[16];
        end 
        else begin
            dmi_hard_reset <= 1'b0;
            dmi_reset      <= 1'b0;
        end
    end   
//    always @ (posedge jtag_tck)
//    begin
//        dmi_hard_reset <= dr[17];
//        dmi_reset      <= dr[16];
//    end
//  assign dmi_hard_reset = dr[17];
//  assign dmi_reset      = dr[16];
    
endmodule
 
