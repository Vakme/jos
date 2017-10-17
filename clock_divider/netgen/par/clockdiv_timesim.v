////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: clockdiv_timesim.v
// /___/   /\     Timestamp: Tue Oct 10 16:09:02 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf clockdiv.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim clockdiv.ncd clockdiv_timesim.v 
// Device	: 3s700anfgg484-4 (PRODUCTION 1.42 2013-10-13)
// Input file	: clockdiv.ncd
// Output file	: /home/lab_jos/bielabra/clock_divider/netgen/par/clockdiv_timesim.v
// # of Modules	: 1
// Design Name	: clockdiv
// Xilinx        : /opt/xilinx/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module clockdiv (
  clk, slow_clk, rst
);
  input clk;
  output slow_clk;
  input rst;
  wire slow_clk_OBUF_41;
  wire rst_IBUF_0;
  wire clk_BUFGP;
  wire \clk_BUFGP/IBUFG_55 ;
  wire \slow_clk/O ;
  wire rst_IBUF_70;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire comp;
  wire \cnt<2>/DYMUX_96 ;
  wire Mcount_cnt2;
  wire \cnt<2>/CLKINV_86 ;
  wire \cnt<0>/DXMUX_137 ;
  wire \cnt<0>/DYMUX_129 ;
  wire Mcount_cnt1;
  wire \cnt<0>/SRINV_120 ;
  wire \cnt<0>/CLKINV_119 ;
  wire \slow_clk_OBUF/DYMUX_153 ;
  wire \slow_clk_OBUF/CLKINV_150 ;
  wire \slow_clk_OBUF/CEINV_149 ;
  wire \cnt<2>/FFY/RSTAND_101 ;
  wire \slow_clk_OBUF/FFY/RSTAND_159 ;
  wire GND;
  wire VCC;
  wire [2 : 0] cnt;
  initial $sdf_annotate("netgen/par/clockdiv_timesim.sdf");
  X_IPAD #(
    .LOC ( "PAD247" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD247" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_55 )
  );
  X_OPAD #(
    .LOC ( "PAD131" ))
  \slow_clk/PAD  (
    .PAD(slow_clk)
  );
  X_OBUF #(
    .LOC ( "PAD131" ))
  slow_clk_OBUF (
    .I(\slow_clk/O ),
    .O(slow_clk)
  );
  X_IPAD #(
    .LOC ( "PAD105" ))
  \rst/PAD  (
    .PAD(rst)
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  rst_IBUF (
    .I(rst),
    .O(rst_IBUF_70)
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X1Y0" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X1Y0" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X1Y0" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk_BUFGP/IBUFG_55 ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y52" ))
  \cnt<2>/DYMUX  (
    .I(Mcount_cnt2),
    .O(\cnt<2>/DYMUX_96 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y52" ))
  \cnt<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\cnt<2>/CLKINV_86 )
  );
  X_LUT4 #(
    .INIT ( 16'h44AA ),
    .LOC ( "SLICE_X52Y52" ))
  \Mcount_cnt_xor<2>11  (
    .ADR0(cnt[2]),
    .ADR1(cnt[1]),
    .ADR2(VCC),
    .ADR3(cnt[0]),
    .O(Mcount_cnt2)
  );
  X_INV #(
    .LOC ( "SLICE_X53Y52" ))
  \cnt<0>/DXMUX  (
    .I(cnt[0]),
    .O(\cnt<0>/DXMUX_137 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y52" ))
  \cnt<0>/DYMUX  (
    .I(Mcount_cnt1),
    .O(\cnt<0>/DYMUX_129 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y52" ))
  \cnt<0>/SRINV  (
    .I(rst_IBUF_0),
    .O(\cnt<0>/SRINV_120 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y52" ))
  \cnt<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\cnt<0>/CLKINV_119 )
  );
  X_LUT4 #(
    .INIT ( 16'h505A ),
    .LOC ( "SLICE_X53Y52" ))
  \Mcount_cnt_xor<1>11  (
    .ADR0(cnt[0]),
    .ADR1(VCC),
    .ADR2(cnt[1]),
    .ADR3(cnt[2]),
    .O(Mcount_cnt1)
  );
  X_INV #(
    .LOC ( "SLICE_X54Y52" ))
  \slow_clk_OBUF/DYMUX  (
    .I(slow_clk_OBUF_41),
    .O(\slow_clk_OBUF/DYMUX_153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y52" ))
  \slow_clk_OBUF/CLKINV  (
    .I(clk_BUFGP),
    .O(\slow_clk_OBUF/CLKINV_150 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y52" ))
  \slow_clk_OBUF/CEINV  (
    .I(comp),
    .O(\slow_clk_OBUF/CEINV_149 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y52" ),
    .INIT ( 1'b0 ))
  cnt_2 (
    .I(\cnt<2>/DYMUX_96 ),
    .CE(VCC),
    .CLK(\cnt<2>/CLKINV_86 ),
    .SET(GND),
    .RST(\cnt<2>/FFY/RSTAND_101 ),
    .O(cnt[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y52" ))
  \cnt<2>/FFY/RSTAND  (
    .I(rst_IBUF_0),
    .O(\cnt<2>/FFY/RSTAND_101 )
  );
  X_LUT4 #(
    .INIT ( 16'h3000 ),
    .LOC ( "SLICE_X52Y52" ))
  comp1 (
    .ADR0(VCC),
    .ADR1(cnt[1]),
    .ADR2(cnt[2]),
    .ADR3(cnt[0]),
    .O(comp)
  );
  X_FF #(
    .LOC ( "SLICE_X53Y52" ),
    .INIT ( 1'b0 ))
  cnt_1 (
    .I(\cnt<0>/DYMUX_129 ),
    .CE(VCC),
    .CLK(\cnt<0>/CLKINV_119 ),
    .SET(GND),
    .RST(\cnt<0>/SRINV_120 ),
    .O(cnt[1])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y52" ),
    .INIT ( 1'b0 ))
  cnt_0 (
    .I(\cnt<0>/DXMUX_137 ),
    .CE(VCC),
    .CLK(\cnt<0>/CLKINV_119 ),
    .SET(GND),
    .RST(\cnt<0>/SRINV_120 ),
    .O(cnt[0])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y52" ),
    .INIT ( 1'b0 ))
  slow_clk_84 (
    .I(\slow_clk_OBUF/DYMUX_153 ),
    .CE(\slow_clk_OBUF/CEINV_149 ),
    .CLK(\slow_clk_OBUF/CLKINV_150 ),
    .SET(GND),
    .RST(\slow_clk_OBUF/FFY/RSTAND_159 ),
    .O(slow_clk_OBUF_41)
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y52" ))
  \slow_clk_OBUF/FFY/RSTAND  (
    .I(rst_IBUF_0),
    .O(\slow_clk_OBUF/FFY/RSTAND_159 )
  );
  X_BUF #(
    .LOC ( "PAD131" ))
  \slow_clk/OUTPUT/OFF/OMUX  (
    .I(slow_clk_OBUF_41),
    .O(\slow_clk/O )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \rst/IFF/IMUX  (
    .I(rst_IBUF_70),
    .O(rst_IBUF_0)
  );
  X_ZERO   NlwBlock_clockdiv_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_clockdiv_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

