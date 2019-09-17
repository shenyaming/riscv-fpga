`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/14 11:23:37
// Design Name: 
// Module Name: jtag_user2
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


module jtag_dmi(
    
    input               jtag_trst_n,
    output              jtag_tck,

    output  [31:0]      wr_data,
    output  [31:0]      wr_addr,
    output              wr_intf,
    output              wr_enab,
    
    input   [31:0]      rd_data,
    input   [1:0]       rd_status
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
    parameter    USER_DR_LENGTH =66;

    BSCANE2 
    #(  .JTAG_CHAIN (3)   )
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
    reg [USER_DR_LENGTH-1:0] dr;// = 66'h0000;
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
            dr <= {USER_DR_LENGTH{1'b0}};
        end
        else if(jtag_update)
        begin
        //  dr <= {sr[USER_DR_LENGTH-1:2], com}; // sr[1:0] 01 -> 10, 10->11
            dr <= {sr[USER_DR_LENGTH-1:2], {|sr[1:0]}, ~sr[0]};
        end
        else begin
            dr <= {sr[USER_DR_LENGTH-1:2], 2'b0};       
        end
    end    
    ///////////////////////////////////////////////////////
    //  Custome Logic
    ///////////////////////////////////////////////////////       
    assign info =  {32'hAAAABBBB, rd_data, rd_status};
    assign {wr_addr, wr_data, wr_intf, wr_enab} = dr;

endmodule
 
