/*********************************************************************************
Copyright (c) 2021 Wavious LLC

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

*********************************************************************************/

`ifdef SYNTHESIS
`else 
// AMS netlist generated by the AMS Unified netlister
// IC subversion:  IC6.1.8-64b.500.14 
// Xcelium version: 20.09-s001
// Copyright(C) 2005-2009, Cadence Design Systems, Inc
// User: shadzibabic Pid: 15762
// Design library name: wphy_gf12lp_ips_sim_lib
// Design cell name: wphy_clk_div_2ph_4g_lvt_tb
// Design view name: config_vlog
// Solver: Spectre



// Library - wphy_gf12lp_ips_lib, Cell - wphy_clk_div_2ph_4g_lvt_wphy_clk_div2_4g_core, View -
//schematic
// LAST TIME SAVED: Sep 17 20:50:14 2020
// NETLIST TIME: Oct 27 01:15:02 2020
`timescale 1ps / 1ps 




 

module wphy_clk_div_2ph_4g_lvt_wphy_clk_div2_4g_core (o_clk0, o_clk90, o_clk180, o_clk270, 
    vdda, vss, i_byp, i_clk0, i_clk180, i_rst);

output  o_clk0, o_clk90, o_clk180, o_clk270;

inout  vdda, vss;

input  i_byp, i_clk0, i_clk180, i_rst;


wphy_clk_div_2ph_4g_lvt_TIELO_D2_GL16_LVT I6 ( .tielo(tielo), .vss(vss), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_LATRES_D1_GL16_LVT LAT0 ( .tielo(tielo), .tiehi(tiehi), .vss(vss), 
    .vdd(vdda), .rstb(rst_or_byp_n), .d(net020), .clkb(i_clk0), 
    .clk(i_clk180), .q(net015));

wphy_clk_div_2ph_4g_lvt_LATRES_D1_GL16_LVT LAT1 ( .tielo(tielo), .tiehi(tiehi), .vss(vss), 
    .vdd(vdda), .rstb(rst_or_byp_n), .d(x180), .clkb(i_clk180), 
    .clk(i_clk0), .q(net020));

wphy_clk_div_2ph_4g_lvt_INVT_D2_GL16_LVT INVT9 ( .out(net028), .en(bypa), .enb(bypb), 
    .vss(vss), .in(i_clk180), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INVT_D2_GL16_LVT INVT3 ( .out(net021), .en(bypa), .enb(bypb), 
    .vss(vss), .in(i_clk0), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INVT_D2_GL16_LVT INVT2 ( .out(net021), .en(bypb), .enb(bypa), 
    .vss(vss), .in(x0), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INVT_D2_GL16_LVT INVT8 ( .out(net028), .en(bypb), .enb(bypa), 
    .vss(vss), .in(x90), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INVT_D2_GL16_LVT INVT1 ( .out(net030), .en(bypb), .enb(bypa), 
    .vss(vss), .in(x180), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INVT_D2_GL16_LVT INVT7 ( .out(net029), .en(bypb), .enb(bypa), 
    .vss(vss), .in(x270), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INVT_D2_GL16_LVT INVT0 ( .out(net030), .en(bypa), .enb(bypb), 
    .vss(vss), .in(i_clk180), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INVT_D2_GL16_LVT INVT10 ( .out(net029), .en(bypa), .enb(bypb), 
    .vss(vss), .in(i_clk0), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_NOR2_D1_GL16_LVT NOR0 ( .tielo(tielo), .tiehi(tiehi), .y(rst_or_byp_n), 
    .vss(vss), .vdd(vdda), .b(i_byp), .a(i_rst));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV16 ( .in(x90), .vss(vss), .out(x270), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV19 ( .in(net021), .vss(vss), .out(o_clk0), 
    .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV18 ( .in(net029), .vss(vss), .out(o_clk270), 
    .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV17 ( .in(net028), .vss(vss), .out(o_clk90), 
    .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV14 ( .in(x180), .vss(vss), .out(x0), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV20 ( .in(net030), .vss(vss), .out(o_clk180), 
    .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV1 ( .in(bypb), .vss(vss), .out(bypa), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV0 ( .in(i_byp), .vss(vss), .out(bypb), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV15 ( .in(net020), .vss(vss), .out(x90), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV2 ( .in(net015), .vss(vss), .out(x180), .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT INV9 ( .in(rst_or_byp_n), .vss(vss), .out(rst_or_byp), 
    .vdd(vdda));

wphy_clk_div_2ph_4g_lvt_TIEHI_D2_GL16_LVT I5 ( .tiehi(tiehi), .vss(vss), .vdd(vdda));

endmodule
// Library - wphy_gf12lp_ips_lib, Cell - wphy_clk_div_2ph_4g_lvt, View
//- schematic
// LAST TIME SAVED: Sep 17 20:51:24 2020
// NETLIST TIME: Oct 27 01:15:02 2020
`timescale 1ps / 1ps 




 

`endif //SYNTHESIS 
module wphy_clk_div_2ph_4g_lvt (o_clk0, o_clk180,   i_byp, 
    i_clk0, i_clk180, i_rst
`ifdef WLOGIC_NO_PG 
`else  
 ,vdda  
 ,vss 
`endif //WLOGIC_NO_PG 
);

`ifdef WLOGIC_NO_PG
wire vdda;
assign vdda=1'b1;
wire vss;
assign vss=1'b0;
`else
inout vdda;
inout vss;
`endif


output  o_clk0, o_clk180;



input  i_byp, i_clk0, i_clk180, i_rst;

`ifdef SYNTHESIS
`else 

wphy_clk_div_2ph_4g_lvt_wphy_clk_div2_4g_core IDIV2 ( .o_clk90(o_clk90), .o_clk270(o_clk270), 
    .o_clk0(o_clk0), .o_clk180(o_clk180), .i_byp(i_byp), 
    .i_clk0(i_clk0), .i_clk180(i_clk180), .i_rst(i_rst), .vdda(vdda), 
    .vss(vss));

`endif //SYNTHESIS 
endmodule
`ifdef SYNTHESIS
`else
// Library - wphy_gf12lp_ips_sim_lib, Cell -
//wphy_clk_div_2ph_4g_lvt_tb, View - schematic
// LAST TIME SAVED: Oct 26 22:01:48 2020
// NETLIST TIME: Oct 27 01:15:02 2020
`timescale 1ps / 1ps 




 




 // END AMS-UNL Netlist

//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "wphy_clk_div_2ph_4g_lvt_TIEHI_D2_GL16_LVT" "systemVerilog"


module wphy_clk_div_2ph_4g_lvt_TIEHI_D2_GL16_LVT ( tiehi
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd 
`endif //WLOGIC_MODEL_NO_PG
);

  output tiehi;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;
  
  assign tiehi = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

  assign tiehi =  1'b1 ;

endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT" "systemVerilog"

`timescale 1ps/1ps

module wphy_clk_div_2ph_4g_lvt_INV_D2_GL16_LVT( in, out
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PG
);

  input in;
  output out;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;
  
  assign out = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

    assign  out = ~in;

endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_2ph_4g_lvt_NOR2_D1_GL16_LVT" "systemVerilog"


module wphy_clk_div_2ph_4g_lvt_NOR2_D1_GL16_LVT ( y, a, b
`ifdef WLOGIC_MODEL_NO_TIE
`else
,tielo, tiehi
`endif //WLOGIC_MODEL_NO_TIE
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd 
`endif //WLOGIC_MODEL_NO_PG
); 

  input b;
  input a;
  output y;
`ifdef WLOGIC_MODEL_NO_TIE
`else
  input tiehi;
  input tielo;
`endif //WLOGIC_MODEL_NO_TIE
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_TIE
`else

`ifdef WLOGIC_MODEL_TIE_CHECK
  wire   signals_ok;
  assign signals_ok = tiehi & ~tielo;
  
  assign y = (signals_ok) ? 1'bz : 1'bx;
`endif // WLOGIC_MODEL_TIE_CHECK

`endif //WLOGIC_MODEL_NO_TIE

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;
  
  assign y = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG


  assign y=~(a|b);


endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_2ph_4g_lvt_INVT_D2_GL16_LVT" "systemVerilog"

module wphy_clk_div_2ph_4g_lvt_INVT_D2_GL16_LVT( in, out, en, enb 
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PG
);

  input in;
  input en, enb;
  output out;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

  wire out;

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;
  
  assign out = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG



assign out = (en) ? ~in:1'bz;


endmodule
//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "wphy_clk_div_2ph_4g_lvt_LATRES_D1_GL16_LVT" "systemVerilog"


`timescale 1ps/1ps
module wphy_clk_div_2ph_4g_lvt_LATRES_D1_GL16_LVT( q, clk, clkb, d, rstb
`ifdef WLOGIC_MODEL_NO_TIE
`else
, tiehi, tielo 
`endif //WLOGIC_MODEL_NO_TIE
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PGL
);

  input clk;
  output q;
  input d;
  input clkb;
  input rstb;
`ifdef WLOGIC_MODEL_NO_TIE
`else
  input tiehi;
  input tielo;
`endif //WLOGIC_MODEL_NO_TIE
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

  wire #0 polarity_ok = clk^clkb;

`ifdef WLOGIC_MODEL_NO_TIE
`else

`ifdef WLOGIC_MODEL_TIE_CHECK
  wire signals_ok;
  assign signals_ok = tiehi & ~tielo ;

  assign q = (signals_ok) ? 1'bz : 1'bx;
`endif // WLOGIC_MODEL_TIE_CHECK

`endif //WLOGIC_MODEL_NO_TIE

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd ;

  assign q = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG


assign #1  q = polarity_ok ? 
                           (~rstb) ? 
                                 1'b0 
                                 : (clkb) ? 
                                          (d===1'bx) ? $random : d&rstb
                                          : q 
                           : 1'bx;

endmodule

//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "wphy_clk_div_2ph_4g_lvt_TIELO_D2_GL16_LVT" "systemVerilog"


module wphy_clk_div_2ph_4g_lvt_TIELO_D2_GL16_LVT ( tielo
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd
`endif //WLOGIC_MODEL_NO_PG
);

  output tielo;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;

  assign tielo = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

  assign tielo =  1'b0 ;


endmodule
`endif //SYNTHESIS