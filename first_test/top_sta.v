////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_sta.v
// /___/   /\     Timestamp: Tue Oct 17 12:43:06 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -sta -w top.ncd top_sta.v 
// Device	: 3s700anfgg484-4 (PRODUCTION 1.42 2013-10-13)
// Input file	: top.ncd
// Output file	: top_sta.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses library 
//     primitives which may not represent the true implementation of 
//     the device, however the netlist is functionally correct and 
//     should not be modified. This file cannot be synthesized and 
//     should only be used with supported static timing analysis tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  vga_horizontal_sync, clk_50m, vga_vertical_sync, led, vga_b, vga_g, vga_r
);
  output vga_horizontal_sync;
  input clk_50m;
  output vga_vertical_sync;
  output led;
  output [3 : 0] vga_b;
  output [3 : 0] vga_g;
  output [3 : 0] vga_r;
  wire \vga_inst/Mcompar_h_reset_lut<0>_0 ;
  wire \vga_inst/h_reset ;
  wire \vga_inst/out_visible_area20_0 ;
  wire \vga_inst/v_visibile_area_cmp_ge0000 ;
  wire \vga_inst/h_at_max8_0 ;
  wire \Mcompar_test_h_cy[5] ;
  wire \vga_inst/Mcompar_h_reset_cy[5] ;
  wire clk_p;
  wire \vga_inst/out_visible_area_inv_0 ;
  wire \vga_inst/v_sync_cmp_le0000 ;
  wire \vga_inst/Madd_out_v_position_addsub0000_cy[1] ;
  wire \vga_inst/Madd_out_v_position_addsub0000_cy[3] ;
  wire \vga_inst/Madd_out_v_position_addsub0000_cy[5] ;
  wire \vga_inst/Madd_out_v_position_addsub0000_cy[7] ;
  wire \vga_inst/Mcount_out_h_position_cy[1] ;
  wire \vga_inst/Mcount_out_h_position_cy[3] ;
  wire \vga_inst/Mcount_out_h_position_cy[5] ;
  wire \vga_inst/Mcount_out_h_position_cy[7] ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>_0 ;
  wire \vga_inst/h_sync_cmp_le0000 ;
  wire \vga_inst/v_reset2_0 ;
  wire \vga_inst/h_at_max_0 ;
  wire \vga_inst/v_sync_cmp_ge0000 ;
  wire vga_g_0_OBUF_928;
  wire \vga_inst/out_vga_vertical_sync_929 ;
  wire \vga_inst/out_vga_horizontal_sync_930 ;
  wire clk_p1;
  wire DCM_SP_inst_ML_NEW_OUT_0;
  wire DCM_SP_inst_ML_NEW_I1;
  wire DCM_SP_inst_ML_NEW_I2;
  wire \vga_inst/out_visible_area15_0 ;
  wire N2;
  wire \vga_inst/v_reset15/O ;
  wire \vga_inst/v_reset10_0 ;
  wire \vga_inst/h_sync_SW0/O ;
  wire \vga_inst/out_visible_area73_SW1/O ;
  wire \vga_inst/out_visible_area25_0 ;
  wire \vga_inst/Msub_out_h_active_position_sub0000_cy[6] ;
  wire \vga_inst/N11 ;
  wire \vga_inst/N0 ;
  wire \vga_inst/h_at_max25/O ;
  wire \vga_inst/Msub_out_h_active_position_sub0000_cy[9] ;
  wire \vga_inst/Mcompar_h_reset_lut<0>/CYINIT_980 ;
  wire \vga_inst/Mcompar_h_reset_lut<0>/CYSELF_974 ;
  wire \vga_inst/Mcompar_h_reset_lut<0>/BXINV_972 ;
  wire \vga_inst/Mcompar_h_reset_lut<0>/CYMUXG_971 ;
  wire \vga_inst/Mcompar_h_reset_cy[0] ;
  wire \vga_inst/Mcompar_h_reset_lut<0>/LOGIC_ZERO_969 ;
  wire \vga_inst/Mcompar_h_reset_lut<0>/CYSELG_960 ;
  wire \vga_inst/out_h_position<4>_rt_959 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>/LOGIC_ONE_1012 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>/CYSELF_1004 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>/CYMUXFAST_1003 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>/CYAND_1002 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>/FASTCARRY_1001 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>/CYMUXG2_1000 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>/CYMUXF2_999 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>/LOGIC_ZERO_998 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>/CYSELG_990 ;
  wire \vga_inst/out_visible_area20/LOGIC_ONE_1039 ;
  wire \vga_inst/out_visible_area20/CYINIT_1038 ;
  wire \vga_inst/out_visible_area20/CYSELF_1030 ;
  wire \vga_inst/out_visible_area20_1026 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>1/LOGIC_ZERO_1069 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>1/CYINIT_1068 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>1/CYSELF_1059 ;
  wire \vga_inst/out_h_position<1>_rt_1058 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>1/BXINV_1057 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>1/CYMUXG_1056 ;
  wire \vga_inst/Mcompar_h_reset_cy<0>1 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>1/LOGIC_ONE_1054 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>1/CYSELG_1045 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>1/LOGIC_ZERO_1100 ;
  wire \vga_inst/out_h_position<3>_rt_1091 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>1/CYSELF_1090 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>1/CYMUXFAST_1089 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>1/CYAND_1088 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>1/FASTCARRY_1087 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>1/CYMUXG2_1086 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>1/CYMUXF2_1085 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>1/LOGIC_ONE_1084 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>1/CYSELG_1078 ;
  wire \vga_inst/Mcompar_h_reset_lut<3>1_1077 ;
  wire \vga_inst/h_at_max8/LOGIC_ONE_1127 ;
  wire \vga_inst/h_at_max8/CYINIT_1126 ;
  wire \vga_inst/h_at_max8/CYSELF_1120 ;
  wire \vga_inst/Mcompar_h_reset_lut<4>1_1119 ;
  wire \vga_inst/h_at_max8_1116 ;
  wire \Mcompar_test_h_cy<1>/CYINIT_1156 ;
  wire \Mcompar_test_h_cy<1>/CYSELF_1150 ;
  wire \Mcompar_test_h_lut[0] ;
  wire \Mcompar_test_h_cy<1>/BXINV_1148 ;
  wire \Mcompar_test_h_cy<1>/CYMUXG_1147 ;
  wire \Mcompar_test_h_cy[0] ;
  wire \Mcompar_test_h_cy<1>/LOGIC_ZERO_1145 ;
  wire \Mcompar_test_h_cy<1>/CYSELG_1137 ;
  wire \Mcompar_test_h_lut[1] ;
  wire \Mcompar_test_h_cy<3>/LOGIC_ONE_1187 ;
  wire \vga_inst/out_h_active_position<6>_rt_1178 ;
  wire \Mcompar_test_h_cy<3>/CYSELF_1177 ;
  wire \Mcompar_test_h_cy<3>/CYMUXFAST_1176 ;
  wire \Mcompar_test_h_cy<3>/CYAND_1175 ;
  wire \Mcompar_test_h_cy<3>/FASTCARRY_1174 ;
  wire \Mcompar_test_h_cy<3>/CYMUXG2_1173 ;
  wire \Mcompar_test_h_cy<3>/CYMUXF2_1172 ;
  wire \Mcompar_test_h_cy<3>/LOGIC_ZERO_1171 ;
  wire \Mcompar_test_h_cy<3>/CYSELG_1162 ;
  wire \Mcompar_test_h_lut[3] ;
  wire \Mcompar_test_h_cy<5>/LOGIC_ONE_1218 ;
  wire \vga_inst/out_h_active_position<8>_rt_1209 ;
  wire \Mcompar_test_h_cy<5>/CYSELF_1208 ;
  wire \Mcompar_test_h_cy<5>/CYMUXFAST_1207 ;
  wire \Mcompar_test_h_cy<5>/CYAND_1206 ;
  wire \Mcompar_test_h_cy<5>/FASTCARRY_1205 ;
  wire \Mcompar_test_h_cy<5>/CYMUXG2_1204 ;
  wire \Mcompar_test_h_cy<5>/CYMUXF2_1203 ;
  wire \Mcompar_test_h_cy<5>/LOGIC_ZERO_1202 ;
  wire \Mcompar_test_h_cy<5>/CYSELG_1195 ;
  wire \Mcompar_test_h_lut[5] ;
  wire \vga_inst/Mcompar_h_reset_cy<1>2/LOGIC_ZERO_1248 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>2/CYINIT_1247 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>2/CYSELF_1238 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>2/F ;
  wire \vga_inst/Mcompar_h_reset_cy<1>2/BXINV_1236 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>2/CYMUXG_1235 ;
  wire \vga_inst/Mcompar_h_reset_cy<0>2 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>2/LOGIC_ONE_1233 ;
  wire \vga_inst/Mcompar_h_reset_cy<1>2/CYSELG_1224 ;
  wire \vga_inst/Mcompar_h_reset_lut<1>1 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>2/LOGIC_ZERO_1279 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>2/F ;
  wire \vga_inst/Mcompar_h_reset_cy<3>2/CYSELF_1269 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>2/CYMUXFAST_1268 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>2/CYAND_1267 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>2/FASTCARRY_1266 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>2/CYMUXG2_1265 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>2/CYMUXF2_1264 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>2/LOGIC_ONE_1263 ;
  wire \vga_inst/Mcompar_h_reset_cy<3>2/CYSELG_1254 ;
  wire \vga_inst/Mcompar_h_reset_lut<3>2 ;
  wire \vga_inst/Mcompar_h_reset_cy<5>/LOGIC_ZERO_1310 ;
  wire \vga_inst/Mcompar_h_reset_lut<4>2_1304 ;
  wire \vga_inst/Mcompar_h_reset_cy<5>/CYSELF_1303 ;
  wire \vga_inst/Mcompar_h_reset_cy<5>/CYMUXFAST_1302 ;
  wire \vga_inst/Mcompar_h_reset_cy<5>/CYAND_1301 ;
  wire \vga_inst/Mcompar_h_reset_cy<5>/FASTCARRY_1300 ;
  wire \vga_inst/Mcompar_h_reset_cy<5>/CYMUXG2_1299 ;
  wire \vga_inst/Mcompar_h_reset_cy<5>/CYMUXF2_1298 ;
  wire \vga_inst/Mcompar_h_reset_cy<5>/LOGIC_ONE_1297 ;
  wire \vga_inst/Mcompar_h_reset_cy<5>/CYSELG_1290 ;
  wire \Mcompar_led_cy<1>/CYINIT_1339 ;
  wire \Mcompar_led_cy<1>/CYSELF_1333 ;
  wire \Mcompar_led_cy<1>/BXINV_1331 ;
  wire \Mcompar_led_cy<1>/CYMUXG_1330 ;
  wire \Mcompar_led_cy<1>/LOGIC_ZERO_1328 ;
  wire \Mcompar_led_cy<1>/CYSELG_1322 ;
  wire \Mcompar_led_cy<3>/CYSELF_1363 ;
  wire \Mcompar_led_cy<3>/CYMUXFAST_1362 ;
  wire \Mcompar_led_cy<3>/CYAND_1361 ;
  wire \Mcompar_led_cy<3>/FASTCARRY_1360 ;
  wire \Mcompar_led_cy<3>/CYMUXG2_1359 ;
  wire \Mcompar_led_cy<3>/CYMUXF2_1358 ;
  wire \Mcompar_led_cy<3>/LOGIC_ZERO_1357 ;
  wire \Mcompar_led_cy<3>/CYSELG_1351 ;
  wire \led_OBUF/CYSELF_1393 ;
  wire \led_OBUF/CYMUXFAST_1392 ;
  wire \led_OBUF/CYAND_1391 ;
  wire \led_OBUF/FASTCARRY_1390 ;
  wire \led_OBUF/CYMUXG2_1389 ;
  wire \led_OBUF/CYMUXF2_1388 ;
  wire \led_OBUF/LOGIC_ZERO_1387 ;
  wire \led_OBUF/CYSELG_1381 ;
  wire \vga_inst/out_v_active_position<1>/DXMUX_1445 ;
  wire \vga_inst/out_v_active_position<1>/XORF_1443 ;
  wire \vga_inst/out_v_active_position<1>/LOGIC_ZERO_1442 ;
  wire \vga_inst/out_v_active_position<1>/CYINIT_1441 ;
  wire \vga_inst/out_v_active_position<1>/CYSELF_1432 ;
  wire \vga_inst/out_v_active_position<1>/F ;
  wire \vga_inst/out_v_active_position<1>/BXINV_1430 ;
  wire \vga_inst/out_v_active_position<1>/DYMUX_1425 ;
  wire \vga_inst/out_v_active_position<1>/XORG_1423 ;
  wire \vga_inst/out_v_active_position<1>/CYMUXG_1422 ;
  wire \vga_inst/out_v_active_position<1>/LOGIC_ONE_1420 ;
  wire \vga_inst/out_v_active_position<1>/CYSELG_1411 ;
  wire \vga_inst/Msub_out_v_active_position_sub0000_lut[2] ;
  wire \vga_inst/out_v_active_position<1>/SRINV_1409 ;
  wire \vga_inst/out_v_active_position<1>/CLKINV_1408 ;
  wire \vga_inst/out_v_active_position<3>/DXMUX_1498 ;
  wire \vga_inst/out_v_active_position<3>/XORF_1496 ;
  wire \vga_inst/out_v_active_position<3>/LOGIC_ZERO_1495 ;
  wire \vga_inst/out_v_active_position<3>/CYINIT_1494 ;
  wire \vga_inst/out_v_active_position<3>/F ;
  wire \vga_inst/out_v_active_position<3>/DYMUX_1480 ;
  wire \vga_inst/out_v_active_position<3>/XORG_1478 ;
  wire \vga_inst/out_v_active_position<3>/CYSELF_1476 ;
  wire \vga_inst/out_v_active_position<3>/CYMUXFAST_1475 ;
  wire \vga_inst/out_v_active_position<3>/CYAND_1474 ;
  wire \vga_inst/out_v_active_position<3>/FASTCARRY_1473 ;
  wire \vga_inst/out_v_active_position<3>/CYMUXG2_1472 ;
  wire \vga_inst/out_v_active_position<3>/CYMUXF2_1471 ;
  wire \vga_inst/out_v_active_position<3>/LOGIC_ONE_1470 ;
  wire \vga_inst/out_v_active_position<3>/CYSELG_1461 ;
  wire \vga_inst/Msub_out_v_active_position_sub0000_lut[4] ;
  wire \vga_inst/out_v_active_position<3>/SRINV_1459 ;
  wire \vga_inst/out_v_active_position<3>/CLKINV_1458 ;
  wire \vga_inst/out_v_active_position<5>/DXMUX_1550 ;
  wire \vga_inst/out_v_active_position<5>/XORF_1548 ;
  wire \vga_inst/out_v_active_position<5>/CYINIT_1547 ;
  wire \vga_inst/Msub_out_v_active_position_sub0000_lut[5] ;
  wire \vga_inst/out_v_active_position<5>/DYMUX_1533 ;
  wire \vga_inst/out_v_active_position<5>/XORG_1531 ;
  wire \vga_inst/out_v_active_position<5>/CYSELF_1529 ;
  wire \vga_inst/out_v_active_position<5>/CYMUXFAST_1528 ;
  wire \vga_inst/out_v_active_position<5>/CYAND_1527 ;
  wire \vga_inst/out_v_active_position<5>/FASTCARRY_1526 ;
  wire \vga_inst/out_v_active_position<5>/CYMUXG2_1525 ;
  wire \vga_inst/out_v_active_position<5>/CYMUXF2_1524 ;
  wire \vga_inst/out_v_active_position<5>/LOGIC_ONE_1523 ;
  wire \vga_inst/out_v_active_position<5>/CYSELG_1514 ;
  wire \vga_inst/Msub_out_v_active_position_sub0000_lut[6] ;
  wire \vga_inst/out_v_active_position<5>/SRINV_1512 ;
  wire \vga_inst/out_v_active_position<5>/CLKINV_1511 ;
  wire \vga_inst/out_v_active_position<7>/DXMUX_1602 ;
  wire \vga_inst/out_v_active_position<7>/XORF_1600 ;
  wire \vga_inst/out_v_active_position<7>/CYINIT_1599 ;
  wire \vga_inst/Msub_out_v_active_position_sub0000_lut[7] ;
  wire \vga_inst/out_v_active_position<7>/DYMUX_1585 ;
  wire \vga_inst/out_v_active_position<7>/XORG_1583 ;
  wire \vga_inst/out_v_active_position<7>/CYSELF_1581 ;
  wire \vga_inst/out_v_active_position<7>/CYMUXFAST_1580 ;
  wire \vga_inst/out_v_active_position<7>/CYAND_1579 ;
  wire \vga_inst/out_v_active_position<7>/FASTCARRY_1578 ;
  wire \vga_inst/out_v_active_position<7>/CYMUXG2_1577 ;
  wire \vga_inst/out_v_active_position<7>/CYMUXF2_1576 ;
  wire \vga_inst/out_v_active_position<7>/LOGIC_ONE_1575 ;
  wire \vga_inst/out_v_active_position<7>/CYSELG_1566 ;
  wire \vga_inst/Msub_out_v_active_position_sub0000_lut[8] ;
  wire \vga_inst/out_v_active_position<7>/SRINV_1564 ;
  wire \vga_inst/out_v_active_position<7>/CLKINV_1563 ;
  wire \vga_inst/out_v_active_position<9>/DXMUX_1654 ;
  wire \vga_inst/out_v_active_position<9>/XORF_1652 ;
  wire \vga_inst/out_v_active_position<9>/CYINIT_1651 ;
  wire \vga_inst/Msub_out_v_active_position_sub0000_lut[9] ;
  wire \vga_inst/out_v_active_position<9>/DYMUX_1637 ;
  wire \vga_inst/out_v_active_position<9>/XORG_1635 ;
  wire \vga_inst/out_v_active_position<9>/CYSELF_1633 ;
  wire \vga_inst/out_v_active_position<9>/CYMUXFAST_1632 ;
  wire \vga_inst/out_v_active_position<9>/CYAND_1631 ;
  wire \vga_inst/out_v_active_position<9>/FASTCARRY_1630 ;
  wire \vga_inst/out_v_active_position<9>/CYMUXG2_1629 ;
  wire \vga_inst/out_v_active_position<9>/CYMUXF2_1628 ;
  wire \vga_inst/out_v_active_position<9>/LOGIC_ONE_1627 ;
  wire \vga_inst/out_v_active_position<9>/CYSELG_1618 ;
  wire \vga_inst/Msub_out_v_active_position_sub0000_lut[10] ;
  wire \vga_inst/out_v_active_position<9>/SRINV_1616 ;
  wire \vga_inst/out_v_active_position<9>/CLKINV_1615 ;
  wire \vga_inst/out_v_active_position<11>/DXMUX_1678 ;
  wire \vga_inst/out_v_active_position<11>/XORF_1676 ;
  wire \vga_inst/out_v_active_position<11>/CYINIT_1675 ;
  wire \vga_inst/Msub_out_v_active_position_sub0000_lut[11] ;
  wire \vga_inst/out_v_active_position<11>/SRINV_1665 ;
  wire \vga_inst/out_v_active_position<11>/CLKINV_1664 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/LOGIC_ZERO_1712 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYINIT_1711 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYSELF_1703 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_lut[0] ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/BXINV_1701 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYMUXG_1700 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/LOGIC_ONE_1698 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYSELG_1689 ;
  wire \vga_inst/out_v_position<3>_rt ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_lut[2] ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYSELF_1736 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXFAST_1735 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYAND_1734 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/FASTCARRY_1733 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXG2_1732 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXF2_1731 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/LOGIC_ZERO_1730 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYSELG_1721 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_lut[3] ;
  wire \vga_inst/v_sync_cmp_le0000/LOGIC_ONE_1773 ;
  wire \vga_inst/out_v_position<9>_rt_1764 ;
  wire \vga_inst/v_sync_cmp_le0000/CYSELF_1763 ;
  wire \vga_inst/v_sync_cmp_le0000/CYMUXFAST_1762 ;
  wire \vga_inst/v_sync_cmp_le0000/CYAND_1761 ;
  wire \vga_inst/v_sync_cmp_le0000/FASTCARRY_1760 ;
  wire \vga_inst/v_sync_cmp_le0000/CYMUXG2_1759 ;
  wire \vga_inst/v_sync_cmp_le0000/CYMUXF2_1758 ;
  wire \vga_inst/v_sync_cmp_le0000/LOGIC_ZERO_1757 ;
  wire \vga_inst/v_sync_cmp_le0000/CYSELG_1749 ;
  wire \vga_inst/Mcompar_v_sync_cmp_le0000_lut[5] ;
  wire \vga_inst/out_v_position_addsub0000<0>/XORF_1808 ;
  wire \vga_inst/out_v_position_addsub0000<0>/LOGIC_ONE_1807 ;
  wire \vga_inst/out_v_position_addsub0000<0>/CYINIT_1806 ;
  wire \vga_inst/out_v_position_addsub0000<0>/CYSELF_1797 ;
  wire \vga_inst/out_v_position_addsub0000<0>/BXINV_1795 ;
  wire \vga_inst/out_v_position_addsub0000<0>/XORG_1793 ;
  wire \vga_inst/out_v_position_addsub0000<0>/CYMUXG_1792 ;
  wire \vga_inst/Madd_out_v_position_addsub0000_cy[0] ;
  wire \vga_inst/out_v_position_addsub0000<0>/LOGIC_ZERO_1790 ;
  wire \vga_inst/out_v_position_addsub0000<0>/CYSELG_1781 ;
  wire \vga_inst/out_v_position_addsub0000<0>/G ;
  wire \vga_inst/out_v_position_addsub0000<2>/XORF_1846 ;
  wire \vga_inst/out_v_position_addsub0000<2>/CYINIT_1845 ;
  wire \vga_inst/out_v_position_addsub0000<2>/F ;
  wire \vga_inst/out_v_position_addsub0000<2>/XORG_1834 ;
  wire \vga_inst/Madd_out_v_position_addsub0000_cy[2] ;
  wire \vga_inst/out_v_position_addsub0000<2>/CYSELF_1832 ;
  wire \vga_inst/out_v_position_addsub0000<2>/CYMUXFAST_1831 ;
  wire \vga_inst/out_v_position_addsub0000<2>/CYAND_1830 ;
  wire \vga_inst/out_v_position_addsub0000<2>/FASTCARRY_1829 ;
  wire \vga_inst/out_v_position_addsub0000<2>/CYMUXG2_1828 ;
  wire \vga_inst/out_v_position_addsub0000<2>/CYMUXF2_1827 ;
  wire \vga_inst/out_v_position_addsub0000<2>/LOGIC_ZERO_1826 ;
  wire \vga_inst/out_v_position_addsub0000<2>/CYSELG_1817 ;
  wire \vga_inst/out_v_position_addsub0000<2>/G ;
  wire \vga_inst/out_v_position_addsub0000<4>/XORF_1884 ;
  wire \vga_inst/out_v_position_addsub0000<4>/CYINIT_1883 ;
  wire \vga_inst/out_v_position_addsub0000<4>/F ;
  wire \vga_inst/out_v_position_addsub0000<4>/XORG_1872 ;
  wire \vga_inst/Madd_out_v_position_addsub0000_cy[4] ;
  wire \vga_inst/out_v_position_addsub0000<4>/CYSELF_1870 ;
  wire \vga_inst/out_v_position_addsub0000<4>/CYMUXFAST_1869 ;
  wire \vga_inst/out_v_position_addsub0000<4>/CYAND_1868 ;
  wire \vga_inst/out_v_position_addsub0000<4>/FASTCARRY_1867 ;
  wire \vga_inst/out_v_position_addsub0000<4>/CYMUXG2_1866 ;
  wire \vga_inst/out_v_position_addsub0000<4>/CYMUXF2_1865 ;
  wire \vga_inst/out_v_position_addsub0000<4>/LOGIC_ZERO_1864 ;
  wire \vga_inst/out_v_position_addsub0000<4>/CYSELG_1855 ;
  wire \vga_inst/out_v_position_addsub0000<4>/G ;
  wire \vga_inst/out_v_position_addsub0000<6>/XORF_1922 ;
  wire \vga_inst/out_v_position_addsub0000<6>/CYINIT_1921 ;
  wire \vga_inst/out_v_position_addsub0000<6>/F ;
  wire \vga_inst/out_v_position_addsub0000<6>/XORG_1910 ;
  wire \vga_inst/Madd_out_v_position_addsub0000_cy[6] ;
  wire \vga_inst/out_v_position_addsub0000<6>/CYSELF_1908 ;
  wire \vga_inst/out_v_position_addsub0000<6>/CYMUXFAST_1907 ;
  wire \vga_inst/out_v_position_addsub0000<6>/CYAND_1906 ;
  wire \vga_inst/out_v_position_addsub0000<6>/FASTCARRY_1905 ;
  wire \vga_inst/out_v_position_addsub0000<6>/CYMUXG2_1904 ;
  wire \vga_inst/out_v_position_addsub0000<6>/CYMUXF2_1903 ;
  wire \vga_inst/out_v_position_addsub0000<6>/LOGIC_ZERO_1902 ;
  wire \vga_inst/out_v_position_addsub0000<6>/CYSELG_1893 ;
  wire \vga_inst/out_v_position_addsub0000<6>/G ;
  wire \vga_inst/out_v_position_addsub0000<8>/XORF_1960 ;
  wire \vga_inst/out_v_position_addsub0000<8>/CYINIT_1959 ;
  wire \vga_inst/out_v_position_addsub0000<8>/F ;
  wire \vga_inst/out_v_position_addsub0000<8>/XORG_1948 ;
  wire \vga_inst/Madd_out_v_position_addsub0000_cy[8] ;
  wire \vga_inst/out_v_position_addsub0000<8>/CYSELF_1946 ;
  wire \vga_inst/out_v_position_addsub0000<8>/CYMUXFAST_1945 ;
  wire \vga_inst/out_v_position_addsub0000<8>/CYAND_1944 ;
  wire \vga_inst/out_v_position_addsub0000<8>/FASTCARRY_1943 ;
  wire \vga_inst/out_v_position_addsub0000<8>/CYMUXG2_1942 ;
  wire \vga_inst/out_v_position_addsub0000<8>/CYMUXF2_1941 ;
  wire \vga_inst/out_v_position_addsub0000<8>/LOGIC_ZERO_1940 ;
  wire \vga_inst/out_v_position_addsub0000<8>/CYSELG_1931 ;
  wire \vga_inst/out_v_position_addsub0000<8>/G ;
  wire \vga_inst/out_v_position_addsub0000<10>/XORF_1991 ;
  wire \vga_inst/out_v_position_addsub0000<10>/LOGIC_ZERO_1990 ;
  wire \vga_inst/out_v_position_addsub0000<10>/CYINIT_1989 ;
  wire \vga_inst/out_v_position_addsub0000<10>/CYSELF_1980 ;
  wire \vga_inst/out_v_position_addsub0000<10>/F ;
  wire \vga_inst/out_v_position_addsub0000<10>/XORG_1977 ;
  wire \vga_inst/Madd_out_v_position_addsub0000_cy[10] ;
  wire \vga_inst/out_v_position<11>_rt_1974 ;
  wire \vga_inst/out_h_position<0>/DXMUX_2038 ;
  wire \vga_inst/out_h_position<0>/XORF_2036 ;
  wire \vga_inst/out_h_position<0>/LOGIC_ONE_2035 ;
  wire \vga_inst/out_h_position<0>/CYINIT_2034 ;
  wire \vga_inst/out_h_position<0>/CYSELF_2025 ;
  wire \vga_inst/out_h_position<0>/BXINV_2023 ;
  wire \vga_inst/out_h_position<0>/DYMUX_2018 ;
  wire \vga_inst/out_h_position<0>/XORG_2016 ;
  wire \vga_inst/out_h_position<0>/CYMUXG_2015 ;
  wire \vga_inst/Mcount_out_h_position_cy[0] ;
  wire \vga_inst/out_h_position<0>/LOGIC_ZERO_2013 ;
  wire \vga_inst/out_h_position<0>/CYSELG_2004 ;
  wire \vga_inst/out_h_position<0>/G ;
  wire \vga_inst/out_h_position<0>/SRINV_2002 ;
  wire \vga_inst/out_h_position<0>/CLKINV_2001 ;
  wire \vga_inst/out_h_position<2>/DXMUX_2090 ;
  wire \vga_inst/out_h_position<2>/XORF_2088 ;
  wire \vga_inst/out_h_position<2>/CYINIT_2087 ;
  wire \vga_inst/out_h_position<2>/F ;
  wire \vga_inst/out_h_position<2>/DYMUX_2073 ;
  wire \vga_inst/out_h_position<2>/XORG_2071 ;
  wire \vga_inst/Mcount_out_h_position_cy[2] ;
  wire \vga_inst/out_h_position<2>/CYSELF_2069 ;
  wire \vga_inst/out_h_position<2>/CYMUXFAST_2068 ;
  wire \vga_inst/out_h_position<2>/CYAND_2067 ;
  wire \vga_inst/out_h_position<2>/FASTCARRY_2066 ;
  wire \vga_inst/out_h_position<2>/CYMUXG2_2065 ;
  wire \vga_inst/out_h_position<2>/CYMUXF2_2064 ;
  wire \vga_inst/out_h_position<2>/LOGIC_ZERO_2063 ;
  wire \vga_inst/out_h_position<2>/CYSELG_2054 ;
  wire \vga_inst/out_h_position<2>/G ;
  wire \vga_inst/out_h_position<2>/SRINV_2052 ;
  wire \vga_inst/out_h_position<2>/CLKINV_2051 ;
  wire \vga_inst/out_h_position<4>/DXMUX_2142 ;
  wire \vga_inst/out_h_position<4>/XORF_2140 ;
  wire \vga_inst/out_h_position<4>/CYINIT_2139 ;
  wire \vga_inst/out_h_position<4>/F ;
  wire \vga_inst/out_h_position<4>/DYMUX_2125 ;
  wire \vga_inst/out_h_position<4>/XORG_2123 ;
  wire \vga_inst/Mcount_out_h_position_cy[4] ;
  wire \vga_inst/out_h_position<4>/CYSELF_2121 ;
  wire \vga_inst/out_h_position<4>/CYMUXFAST_2120 ;
  wire \vga_inst/out_h_position<4>/CYAND_2119 ;
  wire \vga_inst/out_h_position<4>/FASTCARRY_2118 ;
  wire \vga_inst/out_h_position<4>/CYMUXG2_2117 ;
  wire \vga_inst/out_h_position<4>/CYMUXF2_2116 ;
  wire \vga_inst/out_h_position<4>/LOGIC_ZERO_2115 ;
  wire \vga_inst/out_h_position<4>/CYSELG_2106 ;
  wire \vga_inst/out_h_position<4>/G ;
  wire \vga_inst/out_h_position<4>/SRINV_2104 ;
  wire \vga_inst/out_h_position<4>/CLKINV_2103 ;
  wire \vga_inst/out_h_position<6>/DXMUX_2194 ;
  wire \vga_inst/out_h_position<6>/XORF_2192 ;
  wire \vga_inst/out_h_position<6>/CYINIT_2191 ;
  wire \vga_inst/out_h_position<6>/F ;
  wire \vga_inst/out_h_position<6>/DYMUX_2177 ;
  wire \vga_inst/out_h_position<6>/XORG_2175 ;
  wire \vga_inst/Mcount_out_h_position_cy[6] ;
  wire \vga_inst/out_h_position<6>/CYSELF_2173 ;
  wire \vga_inst/out_h_position<6>/CYMUXFAST_2172 ;
  wire \vga_inst/out_h_position<6>/CYAND_2171 ;
  wire \vga_inst/out_h_position<6>/FASTCARRY_2170 ;
  wire \vga_inst/out_h_position<6>/CYMUXG2_2169 ;
  wire \vga_inst/out_h_position<6>/CYMUXF2_2168 ;
  wire \vga_inst/out_h_position<6>/LOGIC_ZERO_2167 ;
  wire \vga_inst/out_h_position<6>/CYSELG_2158 ;
  wire \vga_inst/out_h_position<6>/G ;
  wire \vga_inst/out_h_position<6>/SRINV_2156 ;
  wire \vga_inst/out_h_position<6>/CLKINV_2155 ;
  wire \vga_inst/out_h_position<8>/DXMUX_2246 ;
  wire \vga_inst/out_h_position<8>/XORF_2244 ;
  wire \vga_inst/out_h_position<8>/CYINIT_2243 ;
  wire \vga_inst/out_h_position<8>/F ;
  wire \vga_inst/out_h_position<8>/DYMUX_2229 ;
  wire \vga_inst/out_h_position<8>/XORG_2227 ;
  wire \vga_inst/Mcount_out_h_position_cy[8] ;
  wire \vga_inst/out_h_position<8>/CYSELF_2225 ;
  wire \vga_inst/out_h_position<8>/CYMUXFAST_2224 ;
  wire \vga_inst/out_h_position<8>/CYAND_2223 ;
  wire \vga_inst/out_h_position<8>/FASTCARRY_2222 ;
  wire \vga_inst/out_h_position<8>/CYMUXG2_2221 ;
  wire \vga_inst/out_h_position<8>/CYMUXF2_2220 ;
  wire \vga_inst/out_h_position<8>/LOGIC_ZERO_2219 ;
  wire \vga_inst/out_h_position<8>/CYSELG_2210 ;
  wire \vga_inst/out_h_position<8>/G ;
  wire \vga_inst/out_h_position<8>/SRINV_2208 ;
  wire \vga_inst/out_h_position<8>/CLKINV_2207 ;
  wire \vga_inst/out_h_position<10>/DXMUX_2291 ;
  wire \vga_inst/out_h_position<10>/XORF_2289 ;
  wire \vga_inst/out_h_position<10>/LOGIC_ZERO_2288 ;
  wire \vga_inst/out_h_position<10>/CYINIT_2287 ;
  wire \vga_inst/out_h_position<10>/CYSELF_2278 ;
  wire \vga_inst/out_h_position<10>/F ;
  wire \vga_inst/out_h_position<10>/DYMUX_2272 ;
  wire \vga_inst/out_h_position<10>/XORG_2270 ;
  wire \vga_inst/Mcount_out_h_position_cy[10] ;
  wire \vga_inst/out_h_position<11>_rt_2267 ;
  wire \vga_inst/out_h_position<10>/SRINV_2259 ;
  wire \vga_inst/out_h_position<10>/CLKINV_2258 ;
  wire \vga_inst/out_h_active_position<4>/CYINIT_2335 ;
  wire \vga_inst/out_h_active_position<4>/CYSELF_2329 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut[0] ;
  wire \vga_inst/out_h_active_position<4>/BXINV_2327 ;
  wire \vga_inst/out_h_active_position<4>/DYMUX_2322 ;
  wire \vga_inst/out_h_active_position<4>/CYMUXG_2320 ;
  wire \vga_inst/out_h_active_position<4>/LOGIC_ZERO_2318 ;
  wire \vga_inst/out_h_active_position<4>/CYSELG_2309 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut[1] ;
  wire \vga_inst/out_h_active_position<4>/SRINV_2307 ;
  wire \vga_inst/out_h_active_position<4>/CLKINV_2306 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/LOGIC_ONE_2366 ;
  wire \vga_inst/out_h_position<5>_rt ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYSELF_2356 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXFAST_2355 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYAND_2354 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/FASTCARRY_2353 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXG2_2352 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXF2_2351 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/LOGIC_ZERO_2350 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYSELG_2342 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut[3] ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/LOGIC_ONE_2399 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut[4] ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYSELF_2389 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXFAST_2388 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYAND_2387 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/FASTCARRY_2386 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXG2_2385 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXF2_2384 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/LOGIC_ZERO_2383 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYSELG_2375 ;
  wire \vga_inst/Mcompar_h_sync_cmp_le0000_lut[5] ;
  wire \vga_inst/Mcompar_v_reset_cy<1>/LOGIC_ZERO_2429 ;
  wire \vga_inst/Mcompar_v_reset_cy<1>/CYINIT_2428 ;
  wire \vga_inst/Mcompar_v_reset_cy<1>/CYSELF_2421 ;
  wire \vga_inst/Mcompar_v_reset_lut[0] ;
  wire \vga_inst/Mcompar_v_reset_cy<1>/BXINV_2419 ;
  wire \vga_inst/Mcompar_v_reset_cy<1>/CYMUXG_2418 ;
  wire \vga_inst/Mcompar_v_reset_cy<1>/LOGIC_ONE_2416 ;
  wire \vga_inst/Mcompar_v_reset_cy<1>/CYSELG_2410 ;
  wire \vga_inst/Mcompar_v_reset_lut[1] ;
  wire \vga_inst/Mcompar_v_reset_cy<3>/LOGIC_ONE_2460 ;
  wire \vga_inst/Mcompar_v_reset_lut[2] ;
  wire \vga_inst/Mcompar_v_reset_cy<3>/CYSELF_2451 ;
  wire \vga_inst/Mcompar_v_reset_cy<3>/CYMUXFAST_2450 ;
  wire \vga_inst/Mcompar_v_reset_cy<3>/CYAND_2449 ;
  wire \vga_inst/Mcompar_v_reset_cy<3>/FASTCARRY_2448 ;
  wire \vga_inst/Mcompar_v_reset_cy<3>/CYMUXG2_2447 ;
  wire \vga_inst/Mcompar_v_reset_cy<3>/CYMUXF2_2446 ;
  wire \vga_inst/Mcompar_v_reset_cy<3>/LOGIC_ZERO_2445 ;
  wire \vga_inst/Mcompar_v_reset_cy<3>/CYSELG_2436 ;
  wire \vga_inst/Mcompar_v_reset_cy<3>/G ;
  wire \vga_inst/out_v_position<11>/LOGIC_ONE_2496 ;
  wire \vga_inst/out_v_position<11>/CYINIT_2495 ;
  wire \vga_inst/out_v_position<11>/CYSELF_2487 ;
  wire \vga_inst/Mcompar_v_reset_lut[4] ;
  wire \vga_inst/out_v_position<11>/DYMUX_2481 ;
  wire \vga_inst/out_v_position_mux0000<0>1 ;
  wire \vga_inst/out_v_position<11>/SRINV_2472 ;
  wire \vga_inst/out_v_position<11>/CLKINV_2471 ;
  wire \led/O ;
  wire \vga_b<0>/O ;
  wire \vga_b<1>/O ;
  wire \vga_b<2>/O ;
  wire \vga_b<3>/O ;
  wire clk_50m_IBUFG_2543;
  wire \vga_r<0>/O ;
  wire \vga_r<1>/O ;
  wire \vga_r<2>/O ;
  wire \vga_r<3>/O ;
  wire \vga_g<0>/O ;
  wire \vga_g<1>/O ;
  wire \vga_g<2>/O ;
  wire \vga_g<3>/O ;
  wire \vga_vertical_sync/O ;
  wire \vga_horizontal_sync/O ;
  wire \clk_p_BUFG/S_INVNOT ;
  wire \clk_p_BUFG/I0_INV ;
  wire \DCM_SP_inst/CLK0 ;
  wire \DCM_SP_inst/CLK90 ;
  wire \DCM_SP_inst/CLK180 ;
  wire \DCM_SP_inst/CLK270 ;
  wire \DCM_SP_inst/CLK2X ;
  wire \DCM_SP_inst/CLK2X180 ;
  wire \DCM_SP_inst/CLKDV ;
  wire \DCM_SP_inst/CLKFX180 ;
  wire \DCM_SP_inst/STATUS7 ;
  wire \DCM_SP_inst/STATUS6 ;
  wire \DCM_SP_inst/STATUS5 ;
  wire \DCM_SP_inst/STATUS4 ;
  wire \DCM_SP_inst/STATUS3 ;
  wire \DCM_SP_inst/STATUS1 ;
  wire \DCM_SP_inst/STATUS0 ;
  wire \DCM_SP_inst/PSDONE ;
  wire \DCM_SP_inst/PSCLKINVNOT ;
  wire \DCM_SP_inst/PSENINVNOT ;
  wire \DCM_SP_inst/PSINCDECINVNOT ;
  wire \DCM_SP_inst/CLKFB_BUF_2639 ;
  wire \DCM_SP_inst/CLKFB ;
  wire \DCM_SP_inst/CLKIN_BUF_2637 ;
  wire \vga_g_0_OBUF/F5MUX_2682 ;
  wire \vga_inst/out_vga_g<1>1 ;
  wire \vga_g_0_OBUF/BXINV_2675 ;
  wire \vga_g_0_OBUF/G ;
  wire \vga_inst/v_reset2 ;
  wire \vga_inst/v_reset15/O_pack_1 ;
  wire \vga_inst/h_sync_2729 ;
  wire \vga_inst/h_sync_SW0/O_pack_1 ;
  wire g_and0000_inv;
  wire \vga_inst/out_visible_area73_SW1/O_pack_1 ;
  wire \vga_inst/out_visible_area15_2777 ;
  wire \vga_inst/Msub_out_h_active_position_sub0000_cy<6>_pack_1 ;
  wire \vga_inst/out_v_position<3>/DXMUX_2806 ;
  wire \vga_inst/N11_pack_2 ;
  wire \vga_inst/out_v_position<3>/CLKINV_2790 ;
  wire \vga_inst/h_at_max ;
  wire \vga_inst/h_at_max25/O_pack_1 ;
  wire \vga_inst/out_v_position<2>/DXMUX_2860 ;
  wire \vga_inst/N0_pack_2 ;
  wire \vga_inst/out_v_position<2>/CLKINV_2844 ;
  wire \vga_inst/out_h_active_position<10>/DXMUX_2892 ;
  wire \vga_inst/Msub_out_h_active_position_sub0000_cy<9>_pack_1 ;
  wire \vga_inst/out_h_active_position<10>/SRINV_2875 ;
  wire \vga_inst/out_h_active_position<10>/CLKINV_2874 ;
  wire \vga_inst/out_visible_area_inv ;
  wire N2_pack_1;
  wire \vga_inst/out_visible_area25_2951 ;
  wire \vga_inst/out_h_active_position<5>/DYMUX_2942 ;
  wire \vga_inst/out_h_active_position<5>/SRINV_2932 ;
  wire \vga_inst/out_h_active_position<5>/CLKINV_2931 ;
  wire \vga_inst/out_h_active_position<7>/DXMUX_2987 ;
  wire \vga_inst/out_h_active_position<7>/DYMUX_2975 ;
  wire \vga_inst/out_h_active_position<7>/SRINV_2966 ;
  wire \vga_inst/out_h_active_position<7>/CLKINV_2965 ;
  wire \vga_inst/out_h_active_position<9>/DXMUX_3025 ;
  wire \vga_inst/out_h_active_position<9>/DYMUX_3013 ;
  wire \vga_inst/out_h_active_position<9>/SRINV_3004 ;
  wire \vga_inst/out_h_active_position<9>/CLKINV_3003 ;
  wire \vga_inst/out_v_position<1>/DXMUX_3060 ;
  wire \vga_inst/out_v_position<1>/DYMUX_3049 ;
  wire \vga_inst/out_v_position<1>/CLKINV_3041 ;
  wire \vga_inst/out_v_position<5>/DXMUX_3094 ;
  wire \vga_inst/out_v_position<5>/DYMUX_3083 ;
  wire \vga_inst/out_v_position<5>/CLKINV_3075 ;
  wire \vga_inst/out_v_position<7>/DXMUX_3128 ;
  wire \vga_inst/out_v_position<7>/DYMUX_3117 ;
  wire \vga_inst/out_v_position<7>/CLKINV_3109 ;
  wire \vga_inst/out_v_position<10>/DYMUX_3146 ;
  wire \vga_inst/out_v_position<10>/CLKINV_3138 ;
  wire \vga_inst/out_v_position<9>/DXMUX_3180 ;
  wire \vga_inst/out_v_position<9>/DYMUX_3169 ;
  wire \vga_inst/out_v_position<9>/CLKINV_3161 ;
  wire \vga_inst/out_h_active_position<11>/DYMUX_3200 ;
  wire \vga_inst/out_h_active_position<11>/SRINV_3191 ;
  wire \vga_inst/out_h_active_position<11>/CLKINV_3190 ;
  wire \vga_inst/out_vga_vertical_sync/DYMUX_3212 ;
  wire \vga_inst/out_vga_vertical_sync/BYINV_3211 ;
  wire \vga_inst/out_vga_vertical_sync/SRINV_3210 ;
  wire \vga_inst/out_vga_vertical_sync/CLKINV_3209 ;
  wire \g<0>/DYMUX_3224 ;
  wire \g<0>/BYINV_3223 ;
  wire \g<0>/SRINV_3222 ;
  wire \g<0>/CLKINV_3221 ;
  wire DCM_SP_inst_ML_NEW_OUT;
  wire \vga_inst/v_sync ;
  wire \vga_inst/out_vga_horizontal_sync/DYMUX_3260 ;
  wire \vga_inst/out_vga_horizontal_sync/BYINV_3259 ;
  wire \vga_inst/out_vga_horizontal_sync/SRINV_3258 ;
  wire \vga_inst/out_vga_horizontal_sync/CLKINV_3257 ;
  wire \vga_inst/out_v_active_position<0>/DYMUX_3272 ;
  wire \vga_inst/out_v_active_position<0>/SRINV_3270 ;
  wire \vga_inst/out_v_active_position<0>/CLKINV_3269 ;
  wire \vga_inst/v_reset10_3286 ;
  wire \vga_inst/out_h_active_position<1>/DXMUX_3304 ;
  wire \vga_inst/out_h_active_position<1>/DYMUX_3298 ;
  wire \vga_inst/out_h_active_position<1>/SRINV_3296 ;
  wire \vga_inst/out_h_active_position<1>/CLKINV_3295 ;
  wire \vga_inst/out_h_active_position<3>/DXMUX_3324 ;
  wire \vga_inst/out_h_active_position<3>/DYMUX_3318 ;
  wire \vga_inst/out_h_active_position<3>/SRINV_3316 ;
  wire \vga_inst/out_h_active_position<3>/CLKINV_3315 ;
  wire \vga_b<0>/OUTPUT/OFF/O1INV_2512 ;
  wire \vga_b<1>/OUTPUT/OFF/O1INV_2520 ;
  wire \vga_b<2>/OUTPUT/OFF/O1INV_2528 ;
  wire \vga_b<3>/OUTPUT/OFF/O1INV_2536 ;
  wire \vga_r<0>/OUTPUT/OFF/O1INV_2551 ;
  wire \vga_r<1>/OUTPUT/OFF/O1INV_2559 ;
  wire \vga_r<2>/OUTPUT/OFF/O1INV_2567 ;
  wire \vga_r<3>/OUTPUT/OFF/O1INV_2575 ;
  wire VCC;
  wire GND;
  wire NLW_DCM_SP_inst_DSSEN_UNCONNECTED;
  wire [11 : 0] \vga_inst/out_h_position ;
  wire [11 : 0] \vga_inst/out_h_active_position ;
  wire [11 : 0] \vga_inst/out_v_active_position ;
  wire [11 : 0] \vga_inst/out_v_position ;
  wire [9 : 1] \vga_inst/Msub_out_v_active_position_sub0000_cy ;
  wire [11 : 0] \vga_inst/out_v_position_addsub0000 ;
  wire [0 : 0] g;
  wire [5 : 0] \vga_inst/Mcompar_h_reset_lut ;
  wire [5 : 0] Mcompar_led_lut;
  wire [0 : 0] Mcompar_led_cy;
  wire [0 : 0] \vga_inst/Mcompar_v_sync_cmp_le0000_cy ;
  wire [0 : 0] \vga_inst/Madd_out_v_position_addsub0000_lut ;
  wire [0 : 0] \vga_inst/Mcount_out_h_position_lut ;
  wire [0 : 0] \vga_inst/Mcompar_h_sync_cmp_le0000_cy ;
  wire [0 : 0] \vga_inst/Mcompar_v_reset_cy ;
  wire [11 : 1] \vga_inst/out_v_position_mux0000 ;
  wire [11 : 5] \vga_inst/out_h_active_position_sub0000 ;
  X_ZERO   \vga_inst/Mcompar_h_reset_lut<0>/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_h_reset_lut<0>/LOGIC_ZERO_969 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_lut<0>/XUSED  (
    .I(\vga_inst/Mcompar_h_reset_lut [0]),
    .O(\vga_inst/Mcompar_h_reset_lut<0>_0 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_lut<0>/CYMUXF  (
    .IA(\vga_inst/Mcompar_h_reset_lut<0>/LOGIC_ZERO_969 ),
    .IB(\vga_inst/Mcompar_h_reset_lut<0>/CYINIT_980 ),
    .SEL(\vga_inst/Mcompar_h_reset_lut<0>/CYSELF_974 ),
    .O(\vga_inst/Mcompar_h_reset_cy[0] )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_lut<0>/CYINIT  (
    .I(\vga_inst/Mcompar_h_reset_lut<0>/BXINV_972 ),
    .O(\vga_inst/Mcompar_h_reset_lut<0>/CYINIT_980 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_lut<0>/CYSELF  (
    .I(\vga_inst/Mcompar_h_reset_lut [0]),
    .O(\vga_inst/Mcompar_h_reset_lut<0>/CYSELF_974 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_lut<0>/BXINV  (
    .I(1'b1),
    .O(\vga_inst/Mcompar_h_reset_lut<0>/BXINV_972 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_lut<0>/CYMUXG  (
    .IA(\vga_inst/Mcompar_h_reset_lut<0>/LOGIC_ZERO_969 ),
    .IB(\vga_inst/Mcompar_h_reset_cy[0] ),
    .SEL(\vga_inst/Mcompar_h_reset_lut<0>/CYSELG_960 ),
    .O(\vga_inst/Mcompar_h_reset_lut<0>/CYMUXG_971 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_lut<0>/CYSELG  (
    .I(\vga_inst/out_h_position<4>_rt_959 ),
    .O(\vga_inst/Mcompar_h_reset_lut<0>/CYSELG_960 )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<4>_rt  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_h_position [4]),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<4>_rt_959 )
  );
  X_ZERO   \vga_inst/Mcompar_h_reset_cy<3>/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_h_reset_cy<3>/LOGIC_ZERO_998 )
  );
  X_ONE   \vga_inst/Mcompar_h_reset_cy<3>/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_h_reset_cy<3>/LOGIC_ONE_1012 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<3>/CYMUXF2  (
    .IA(\vga_inst/Mcompar_h_reset_cy<3>/LOGIC_ONE_1012 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<3>/LOGIC_ONE_1012 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<3>/CYSELF_1004 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>/CYMUXF2_999 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<3>/CYSELF  (
    .I(\vga_inst/Mcompar_h_reset_lut [2]),
    .O(\vga_inst/Mcompar_h_reset_cy<3>/CYSELF_1004 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<3>/FASTCARRY  (
    .I(\vga_inst/Mcompar_h_reset_lut<0>/CYMUXG_971 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>/FASTCARRY_1001 )
  );
  X_AND2   \vga_inst/Mcompar_h_reset_cy<3>/CYAND  (
    .I0(\vga_inst/Mcompar_h_reset_cy<3>/CYSELG_990 ),
    .I1(\vga_inst/Mcompar_h_reset_cy<3>/CYSELF_1004 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>/CYAND_1002 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<3>/CYMUXFAST  (
    .IA(\vga_inst/Mcompar_h_reset_cy<3>/CYMUXG2_1000 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<3>/FASTCARRY_1001 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<3>/CYAND_1002 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>/CYMUXFAST_1003 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<3>/CYMUXG2  (
    .IA(\vga_inst/Mcompar_h_reset_cy<3>/LOGIC_ZERO_998 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<3>/CYMUXF2_999 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<3>/CYSELG_990 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>/CYMUXG2_1000 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<3>/CYSELG  (
    .I(\vga_inst/Mcompar_h_reset_lut [3]),
    .O(\vga_inst/Mcompar_h_reset_cy<3>/CYSELG_990 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<3>  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_h_position [9]),
    .ADR2(\vga_inst/out_h_position [8]),
    .ADR3(VCC),
    .O(\vga_inst/Mcompar_h_reset_lut [3])
  );
  X_ONE   \vga_inst/out_visible_area20/LOGIC_ONE  (
    .O(\vga_inst/out_visible_area20/LOGIC_ONE_1039 )
  );
  X_MUX2   \vga_inst/out_visible_area20/CYMUXF  (
    .IA(\vga_inst/out_visible_area20/LOGIC_ONE_1039 ),
    .IB(\vga_inst/out_visible_area20/CYINIT_1038 ),
    .SEL(\vga_inst/out_visible_area20/CYSELF_1030 ),
    .O(\vga_inst/h_reset )
  );
  X_BUF   \vga_inst/out_visible_area20/CYINIT  (
    .I(\vga_inst/Mcompar_h_reset_cy<3>/CYMUXFAST_1003 ),
    .O(\vga_inst/out_visible_area20/CYINIT_1038 )
  );
  X_BUF   \vga_inst/out_visible_area20/CYSELF  (
    .I(\vga_inst/Mcompar_h_reset_lut [4]),
    .O(\vga_inst/out_visible_area20/CYSELF_1030 )
  );
  X_BUF   \vga_inst/out_visible_area20/YUSED  (
    .I(\vga_inst/out_visible_area20_1026 ),
    .O(\vga_inst/out_visible_area20_0 )
  );
  X_LUT4MUX16   \vga_inst/out_visible_area20  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [11]),
    .ADR1(\vga_inst/out_h_position [8]),
    .ADR2(\vga_inst/out_h_position [10]),
    .ADR3(\vga_inst/out_h_position [9]),
    .O(\vga_inst/out_visible_area20_1026 )
  );
  X_ONE   \vga_inst/Mcompar_h_reset_cy<1>1/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_h_reset_cy<1>1/LOGIC_ONE_1054 )
  );
  X_ZERO   \vga_inst/Mcompar_h_reset_cy<1>1/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_h_reset_cy<1>1/LOGIC_ZERO_1069 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<1>1/CYMUXF  (
    .IA(\vga_inst/Mcompar_h_reset_cy<1>1/LOGIC_ZERO_1069 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<1>1/CYINIT_1068 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<1>1/CYSELF_1059 ),
    .O(\vga_inst/Mcompar_h_reset_cy<0>1 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<1>1/CYINIT  (
    .I(\vga_inst/Mcompar_h_reset_cy<1>1/BXINV_1057 ),
    .O(\vga_inst/Mcompar_h_reset_cy<1>1/CYINIT_1068 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<1>1/CYSELF  (
    .I(\vga_inst/out_h_position<1>_rt_1058 ),
    .O(\vga_inst/Mcompar_h_reset_cy<1>1/CYSELF_1059 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<1>1/BXINV  (
    .I(1'b1),
    .O(\vga_inst/Mcompar_h_reset_cy<1>1/BXINV_1057 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<1>1/CYMUXG  (
    .IA(\vga_inst/Mcompar_h_reset_cy<1>1/LOGIC_ONE_1054 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<0>1 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<1>1/CYSELG_1045 ),
    .O(\vga_inst/Mcompar_h_reset_cy<1>1/CYMUXG_1056 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<1>1/CYSELG  (
    .I(\vga_inst/Mcompar_h_reset_lut [1]),
    .O(\vga_inst/Mcompar_h_reset_cy<1>1/CYSELG_1045 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<1>_INV_0  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/Mcompar_h_reset_lut [1])
  );
  X_ONE   \vga_inst/Mcompar_h_reset_cy<3>1/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_h_reset_cy<3>1/LOGIC_ONE_1084 )
  );
  X_ZERO   \vga_inst/Mcompar_h_reset_cy<3>1/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_h_reset_cy<3>1/LOGIC_ZERO_1100 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<3>1/CYMUXF2  (
    .IA(\vga_inst/Mcompar_h_reset_cy<3>1/LOGIC_ZERO_1100 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<3>1/LOGIC_ZERO_1100 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<3>1/CYSELF_1090 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>1/CYMUXF2_1085 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<3>1/CYSELF  (
    .I(\vga_inst/out_h_position<3>_rt_1091 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>1/CYSELF_1090 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<3>1/FASTCARRY  (
    .I(\vga_inst/Mcompar_h_reset_cy<1>1/CYMUXG_1056 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>1/FASTCARRY_1087 )
  );
  X_AND2   \vga_inst/Mcompar_h_reset_cy<3>1/CYAND  (
    .I0(\vga_inst/Mcompar_h_reset_cy<3>1/CYSELG_1078 ),
    .I1(\vga_inst/Mcompar_h_reset_cy<3>1/CYSELF_1090 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>1/CYAND_1088 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<3>1/CYMUXFAST  (
    .IA(\vga_inst/Mcompar_h_reset_cy<3>1/CYMUXG2_1086 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<3>1/FASTCARRY_1087 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<3>1/CYAND_1088 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>1/CYMUXFAST_1089 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<3>1/CYMUXG2  (
    .IA(\vga_inst/Mcompar_h_reset_cy<3>1/LOGIC_ONE_1084 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<3>1/CYMUXF2_1085 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<3>1/CYSELG_1078 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>1/CYMUXG2_1086 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<3>1/CYSELG  (
    .I(\vga_inst/Mcompar_h_reset_lut<3>1_1077 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>1/CYSELG_1078 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<3>1  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [5]),
    .ADR1(\vga_inst/out_h_position [6]),
    .ADR2(\vga_inst/out_h_position [4]),
    .ADR3(\vga_inst/out_h_position [7]),
    .O(\vga_inst/Mcompar_h_reset_lut<3>1_1077 )
  );
  X_ONE   \vga_inst/h_at_max8/LOGIC_ONE  (
    .O(\vga_inst/h_at_max8/LOGIC_ONE_1127 )
  );
  X_MUX2   \vga_inst/h_at_max8/CYMUXF  (
    .IA(\vga_inst/h_at_max8/LOGIC_ONE_1127 ),
    .IB(\vga_inst/h_at_max8/CYINIT_1126 ),
    .SEL(\vga_inst/h_at_max8/CYSELF_1120 ),
    .O(\vga_inst/v_visibile_area_cmp_ge0000 )
  );
  X_BUF   \vga_inst/h_at_max8/CYINIT  (
    .I(\vga_inst/Mcompar_h_reset_cy<3>1/CYMUXFAST_1089 ),
    .O(\vga_inst/h_at_max8/CYINIT_1126 )
  );
  X_BUF   \vga_inst/h_at_max8/CYSELF  (
    .I(\vga_inst/Mcompar_h_reset_lut<4>1_1119 ),
    .O(\vga_inst/h_at_max8/CYSELF_1120 )
  );
  X_BUF   \vga_inst/h_at_max8/YUSED  (
    .I(\vga_inst/h_at_max8_1116 ),
    .O(\vga_inst/h_at_max8_0 )
  );
  X_LUT4MUX16   \vga_inst/h_at_max8  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [8]),
    .ADR1(\vga_inst/out_h_position [11]),
    .ADR2(\vga_inst/out_h_position [9]),
    .ADR3(\vga_inst/out_h_position [10]),
    .O(\vga_inst/h_at_max8_1116 )
  );
  X_ZERO   \Mcompar_test_h_cy<1>/LOGIC_ZERO  (
    .O(\Mcompar_test_h_cy<1>/LOGIC_ZERO_1145 )
  );
  X_MUX2   \Mcompar_test_h_cy<1>/CYMUXF  (
    .IA(\Mcompar_test_h_cy<1>/LOGIC_ZERO_1145 ),
    .IB(\Mcompar_test_h_cy<1>/CYINIT_1156 ),
    .SEL(\Mcompar_test_h_cy<1>/CYSELF_1150 ),
    .O(\Mcompar_test_h_cy[0] )
  );
  X_BUF   \Mcompar_test_h_cy<1>/CYINIT  (
    .I(\Mcompar_test_h_cy<1>/BXINV_1148 ),
    .O(\Mcompar_test_h_cy<1>/CYINIT_1156 )
  );
  X_BUF   \Mcompar_test_h_cy<1>/CYSELF  (
    .I(\Mcompar_test_h_lut[0] ),
    .O(\Mcompar_test_h_cy<1>/CYSELF_1150 )
  );
  X_BUF   \Mcompar_test_h_cy<1>/BXINV  (
    .I(1'b1),
    .O(\Mcompar_test_h_cy<1>/BXINV_1148 )
  );
  X_MUX2   \Mcompar_test_h_cy<1>/CYMUXG  (
    .IA(\Mcompar_test_h_cy<1>/LOGIC_ZERO_1145 ),
    .IB(\Mcompar_test_h_cy[0] ),
    .SEL(\Mcompar_test_h_cy<1>/CYSELG_1137 ),
    .O(\Mcompar_test_h_cy<1>/CYMUXG_1147 )
  );
  X_BUF   \Mcompar_test_h_cy<1>/CYSELG  (
    .I(\Mcompar_test_h_lut[1] ),
    .O(\Mcompar_test_h_cy<1>/CYSELG_1137 )
  );
  X_LUT4MUX16   \Mcompar_test_h_lut<1>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_active_position [4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_h_active_position [5]),
    .O(\Mcompar_test_h_lut[1] )
  );
  X_ZERO   \Mcompar_test_h_cy<3>/LOGIC_ZERO  (
    .O(\Mcompar_test_h_cy<3>/LOGIC_ZERO_1171 )
  );
  X_ONE   \Mcompar_test_h_cy<3>/LOGIC_ONE  (
    .O(\Mcompar_test_h_cy<3>/LOGIC_ONE_1187 )
  );
  X_MUX2   \Mcompar_test_h_cy<3>/CYMUXF2  (
    .IA(\Mcompar_test_h_cy<3>/LOGIC_ONE_1187 ),
    .IB(\Mcompar_test_h_cy<3>/LOGIC_ONE_1187 ),
    .SEL(\Mcompar_test_h_cy<3>/CYSELF_1177 ),
    .O(\Mcompar_test_h_cy<3>/CYMUXF2_1172 )
  );
  X_BUF   \Mcompar_test_h_cy<3>/CYSELF  (
    .I(\vga_inst/out_h_active_position<6>_rt_1178 ),
    .O(\Mcompar_test_h_cy<3>/CYSELF_1177 )
  );
  X_BUF   \Mcompar_test_h_cy<3>/FASTCARRY  (
    .I(\Mcompar_test_h_cy<1>/CYMUXG_1147 ),
    .O(\Mcompar_test_h_cy<3>/FASTCARRY_1174 )
  );
  X_AND2   \Mcompar_test_h_cy<3>/CYAND  (
    .I0(\Mcompar_test_h_cy<3>/CYSELG_1162 ),
    .I1(\Mcompar_test_h_cy<3>/CYSELF_1177 ),
    .O(\Mcompar_test_h_cy<3>/CYAND_1175 )
  );
  X_MUX2   \Mcompar_test_h_cy<3>/CYMUXFAST  (
    .IA(\Mcompar_test_h_cy<3>/CYMUXG2_1173 ),
    .IB(\Mcompar_test_h_cy<3>/FASTCARRY_1174 ),
    .SEL(\Mcompar_test_h_cy<3>/CYAND_1175 ),
    .O(\Mcompar_test_h_cy<3>/CYMUXFAST_1176 )
  );
  X_MUX2   \Mcompar_test_h_cy<3>/CYMUXG2  (
    .IA(\Mcompar_test_h_cy<3>/LOGIC_ZERO_1171 ),
    .IB(\Mcompar_test_h_cy<3>/CYMUXF2_1172 ),
    .SEL(\Mcompar_test_h_cy<3>/CYSELG_1162 ),
    .O(\Mcompar_test_h_cy<3>/CYMUXG2_1173 )
  );
  X_BUF   \Mcompar_test_h_cy<3>/CYSELG  (
    .I(\Mcompar_test_h_lut[3] ),
    .O(\Mcompar_test_h_cy<3>/CYSELG_1162 )
  );
  X_LUT4MUX16   \Mcompar_test_h_lut<3>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_h_active_position [7]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Mcompar_test_h_lut[3] )
  );
  X_ZERO   \Mcompar_test_h_cy<5>/LOGIC_ZERO  (
    .O(\Mcompar_test_h_cy<5>/LOGIC_ZERO_1202 )
  );
  X_ONE   \Mcompar_test_h_cy<5>/LOGIC_ONE  (
    .O(\Mcompar_test_h_cy<5>/LOGIC_ONE_1218 )
  );
  X_MUX2   \Mcompar_test_h_cy<5>/CYMUXF2  (
    .IA(\Mcompar_test_h_cy<5>/LOGIC_ONE_1218 ),
    .IB(\Mcompar_test_h_cy<5>/LOGIC_ONE_1218 ),
    .SEL(\Mcompar_test_h_cy<5>/CYSELF_1208 ),
    .O(\Mcompar_test_h_cy<5>/CYMUXF2_1203 )
  );
  X_BUF   \Mcompar_test_h_cy<5>/CYSELF  (
    .I(\vga_inst/out_h_active_position<8>_rt_1209 ),
    .O(\Mcompar_test_h_cy<5>/CYSELF_1208 )
  );
  X_BUF   \Mcompar_test_h_cy<5>/COUTUSED  (
    .I(\Mcompar_test_h_cy<5>/CYMUXFAST_1207 ),
    .O(\Mcompar_test_h_cy[5] )
  );
  X_BUF   \Mcompar_test_h_cy<5>/FASTCARRY  (
    .I(\Mcompar_test_h_cy<3>/CYMUXFAST_1176 ),
    .O(\Mcompar_test_h_cy<5>/FASTCARRY_1205 )
  );
  X_AND2   \Mcompar_test_h_cy<5>/CYAND  (
    .I0(\Mcompar_test_h_cy<5>/CYSELG_1195 ),
    .I1(\Mcompar_test_h_cy<5>/CYSELF_1208 ),
    .O(\Mcompar_test_h_cy<5>/CYAND_1206 )
  );
  X_MUX2   \Mcompar_test_h_cy<5>/CYMUXFAST  (
    .IA(\Mcompar_test_h_cy<5>/CYMUXG2_1204 ),
    .IB(\Mcompar_test_h_cy<5>/FASTCARRY_1205 ),
    .SEL(\Mcompar_test_h_cy<5>/CYAND_1206 ),
    .O(\Mcompar_test_h_cy<5>/CYMUXFAST_1207 )
  );
  X_MUX2   \Mcompar_test_h_cy<5>/CYMUXG2  (
    .IA(\Mcompar_test_h_cy<5>/LOGIC_ZERO_1202 ),
    .IB(\Mcompar_test_h_cy<5>/CYMUXF2_1203 ),
    .SEL(\Mcompar_test_h_cy<5>/CYSELG_1195 ),
    .O(\Mcompar_test_h_cy<5>/CYMUXG2_1204 )
  );
  X_BUF   \Mcompar_test_h_cy<5>/CYSELG  (
    .I(\Mcompar_test_h_lut[5] ),
    .O(\Mcompar_test_h_cy<5>/CYSELG_1195 )
  );
  X_LUT4MUX16   \Mcompar_test_h_lut<5>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_active_position [9]),
    .ADR1(\vga_inst/out_h_active_position [11]),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_h_active_position [10]),
    .O(\Mcompar_test_h_lut[5] )
  );
  X_ONE   \vga_inst/Mcompar_h_reset_cy<1>2/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_h_reset_cy<1>2/LOGIC_ONE_1233 )
  );
  X_ZERO   \vga_inst/Mcompar_h_reset_cy<1>2/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_h_reset_cy<1>2/LOGIC_ZERO_1248 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<1>2/CYMUXF  (
    .IA(\vga_inst/Mcompar_h_reset_cy<1>2/LOGIC_ZERO_1248 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<1>2/CYINIT_1247 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<1>2/CYSELF_1238 ),
    .O(\vga_inst/Mcompar_h_reset_cy<0>2 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<1>2/CYINIT  (
    .I(\vga_inst/Mcompar_h_reset_cy<1>2/BXINV_1236 ),
    .O(\vga_inst/Mcompar_h_reset_cy<1>2/CYINIT_1247 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<1>2/CYSELF  (
    .I(\vga_inst/Mcompar_h_reset_cy<1>2/F ),
    .O(\vga_inst/Mcompar_h_reset_cy<1>2/CYSELF_1238 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<1>2/BXINV  (
    .I(1'b1),
    .O(\vga_inst/Mcompar_h_reset_cy<1>2/BXINV_1236 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<1>2/CYMUXG  (
    .IA(\vga_inst/Mcompar_h_reset_cy<1>2/LOGIC_ONE_1233 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<0>2 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<1>2/CYSELG_1224 ),
    .O(\vga_inst/Mcompar_h_reset_cy<1>2/CYMUXG_1235 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<1>2/CYSELG  (
    .I(\vga_inst/Mcompar_h_reset_lut<1>1 ),
    .O(\vga_inst/Mcompar_h_reset_cy<1>2/CYSELG_1224 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<1>1_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_h_position [2]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/Mcompar_h_reset_lut<1>1 )
  );
  X_ONE   \vga_inst/Mcompar_h_reset_cy<3>2/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_h_reset_cy<3>2/LOGIC_ONE_1263 )
  );
  X_ZERO   \vga_inst/Mcompar_h_reset_cy<3>2/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_h_reset_cy<3>2/LOGIC_ZERO_1279 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<3>2/CYMUXF2  (
    .IA(\vga_inst/Mcompar_h_reset_cy<3>2/LOGIC_ZERO_1279 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<3>2/LOGIC_ZERO_1279 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<3>2/CYSELF_1269 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>2/CYMUXF2_1264 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<3>2/CYSELF  (
    .I(\vga_inst/Mcompar_h_reset_cy<3>2/F ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>2/CYSELF_1269 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<3>2/FASTCARRY  (
    .I(\vga_inst/Mcompar_h_reset_cy<1>2/CYMUXG_1235 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>2/FASTCARRY_1266 )
  );
  X_AND2   \vga_inst/Mcompar_h_reset_cy<3>2/CYAND  (
    .I0(\vga_inst/Mcompar_h_reset_cy<3>2/CYSELG_1254 ),
    .I1(\vga_inst/Mcompar_h_reset_cy<3>2/CYSELF_1269 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>2/CYAND_1267 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<3>2/CYMUXFAST  (
    .IA(\vga_inst/Mcompar_h_reset_cy<3>2/CYMUXG2_1265 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<3>2/FASTCARRY_1266 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<3>2/CYAND_1267 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>2/CYMUXFAST_1268 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<3>2/CYMUXG2  (
    .IA(\vga_inst/Mcompar_h_reset_cy<3>2/LOGIC_ONE_1263 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<3>2/CYMUXF2_1264 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<3>2/CYSELG_1254 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>2/CYMUXG2_1265 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<3>2/CYSELG  (
    .I(\vga_inst/Mcompar_h_reset_lut<3>2 ),
    .O(\vga_inst/Mcompar_h_reset_cy<3>2/CYSELG_1254 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<3>2_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_h_position [4]),
    .O(\vga_inst/Mcompar_h_reset_lut<3>2 )
  );
  X_ONE   \vga_inst/Mcompar_h_reset_cy<5>/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_h_reset_cy<5>/LOGIC_ONE_1297 )
  );
  X_ZERO   \vga_inst/Mcompar_h_reset_cy<5>/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_h_reset_cy<5>/LOGIC_ZERO_1310 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<5>/CYMUXF2  (
    .IA(\vga_inst/Mcompar_h_reset_cy<5>/LOGIC_ZERO_1310 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<5>/LOGIC_ZERO_1310 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<5>/CYSELF_1303 ),
    .O(\vga_inst/Mcompar_h_reset_cy<5>/CYMUXF2_1298 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<5>/CYSELF  (
    .I(\vga_inst/Mcompar_h_reset_lut<4>2_1304 ),
    .O(\vga_inst/Mcompar_h_reset_cy<5>/CYSELF_1303 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<5>/COUTUSED  (
    .I(\vga_inst/Mcompar_h_reset_cy<5>/CYMUXFAST_1302 ),
    .O(\vga_inst/Mcompar_h_reset_cy[5] )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<5>/FASTCARRY  (
    .I(\vga_inst/Mcompar_h_reset_cy<3>2/CYMUXFAST_1268 ),
    .O(\vga_inst/Mcompar_h_reset_cy<5>/FASTCARRY_1300 )
  );
  X_AND2   \vga_inst/Mcompar_h_reset_cy<5>/CYAND  (
    .I0(\vga_inst/Mcompar_h_reset_cy<5>/CYSELG_1290 ),
    .I1(\vga_inst/Mcompar_h_reset_cy<5>/CYSELF_1303 ),
    .O(\vga_inst/Mcompar_h_reset_cy<5>/CYAND_1301 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<5>/CYMUXFAST  (
    .IA(\vga_inst/Mcompar_h_reset_cy<5>/CYMUXG2_1299 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<5>/FASTCARRY_1300 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<5>/CYAND_1301 ),
    .O(\vga_inst/Mcompar_h_reset_cy<5>/CYMUXFAST_1302 )
  );
  X_MUX2   \vga_inst/Mcompar_h_reset_cy<5>/CYMUXG2  (
    .IA(\vga_inst/Mcompar_h_reset_cy<5>/LOGIC_ONE_1297 ),
    .IB(\vga_inst/Mcompar_h_reset_cy<5>/CYMUXF2_1298 ),
    .SEL(\vga_inst/Mcompar_h_reset_cy<5>/CYSELG_1290 ),
    .O(\vga_inst/Mcompar_h_reset_cy<5>/CYMUXG2_1299 )
  );
  X_BUF   \vga_inst/Mcompar_h_reset_cy<5>/CYSELG  (
    .I(\vga_inst/Mcompar_h_reset_lut [5]),
    .O(\vga_inst/Mcompar_h_reset_cy<5>/CYSELG_1290 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<5>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [11]),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_h_position [10]),
    .ADR3(\vga_inst/out_h_position [9]),
    .O(\vga_inst/Mcompar_h_reset_lut [5])
  );
  X_ZERO   \Mcompar_led_cy<1>/LOGIC_ZERO  (
    .O(\Mcompar_led_cy<1>/LOGIC_ZERO_1328 )
  );
  X_MUX2   \Mcompar_led_cy<1>/CYMUXF  (
    .IA(\Mcompar_led_cy<1>/LOGIC_ZERO_1328 ),
    .IB(\Mcompar_led_cy<1>/CYINIT_1339 ),
    .SEL(\Mcompar_led_cy<1>/CYSELF_1333 ),
    .O(Mcompar_led_cy[0])
  );
  X_BUF   \Mcompar_led_cy<1>/CYINIT  (
    .I(\Mcompar_led_cy<1>/BXINV_1331 ),
    .O(\Mcompar_led_cy<1>/CYINIT_1339 )
  );
  X_BUF   \Mcompar_led_cy<1>/CYSELF  (
    .I(Mcompar_led_lut[0]),
    .O(\Mcompar_led_cy<1>/CYSELF_1333 )
  );
  X_BUF   \Mcompar_led_cy<1>/BXINV  (
    .I(1'b1),
    .O(\Mcompar_led_cy<1>/BXINV_1331 )
  );
  X_MUX2   \Mcompar_led_cy<1>/CYMUXG  (
    .IA(\Mcompar_led_cy<1>/LOGIC_ZERO_1328 ),
    .IB(Mcompar_led_cy[0]),
    .SEL(\Mcompar_led_cy<1>/CYSELG_1322 ),
    .O(\Mcompar_led_cy<1>/CYMUXG_1330 )
  );
  X_BUF   \Mcompar_led_cy<1>/CYSELG  (
    .I(Mcompar_led_lut[1]),
    .O(\Mcompar_led_cy<1>/CYSELG_1322 )
  );
  X_LUT4MUX16   \Mcompar_led_lut<1>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_active_position [3]),
    .ADR1(\vga_inst/out_h_active_position [2]),
    .ADR2(\vga_inst/out_h_active_position [3]),
    .ADR3(\vga_inst/out_v_active_position [2]),
    .O(Mcompar_led_lut[1])
  );
  X_ZERO   \Mcompar_led_cy<3>/LOGIC_ZERO  (
    .O(\Mcompar_led_cy<3>/LOGIC_ZERO_1357 )
  );
  X_MUX2   \Mcompar_led_cy<3>/CYMUXF2  (
    .IA(\Mcompar_led_cy<3>/LOGIC_ZERO_1357 ),
    .IB(\Mcompar_led_cy<3>/LOGIC_ZERO_1357 ),
    .SEL(\Mcompar_led_cy<3>/CYSELF_1363 ),
    .O(\Mcompar_led_cy<3>/CYMUXF2_1358 )
  );
  X_BUF   \Mcompar_led_cy<3>/CYSELF  (
    .I(Mcompar_led_lut[2]),
    .O(\Mcompar_led_cy<3>/CYSELF_1363 )
  );
  X_BUF   \Mcompar_led_cy<3>/FASTCARRY  (
    .I(\Mcompar_led_cy<1>/CYMUXG_1330 ),
    .O(\Mcompar_led_cy<3>/FASTCARRY_1360 )
  );
  X_AND2   \Mcompar_led_cy<3>/CYAND  (
    .I0(\Mcompar_led_cy<3>/CYSELG_1351 ),
    .I1(\Mcompar_led_cy<3>/CYSELF_1363 ),
    .O(\Mcompar_led_cy<3>/CYAND_1361 )
  );
  X_MUX2   \Mcompar_led_cy<3>/CYMUXFAST  (
    .IA(\Mcompar_led_cy<3>/CYMUXG2_1359 ),
    .IB(\Mcompar_led_cy<3>/FASTCARRY_1360 ),
    .SEL(\Mcompar_led_cy<3>/CYAND_1361 ),
    .O(\Mcompar_led_cy<3>/CYMUXFAST_1362 )
  );
  X_MUX2   \Mcompar_led_cy<3>/CYMUXG2  (
    .IA(\Mcompar_led_cy<3>/LOGIC_ZERO_1357 ),
    .IB(\Mcompar_led_cy<3>/CYMUXF2_1358 ),
    .SEL(\Mcompar_led_cy<3>/CYSELG_1351 ),
    .O(\Mcompar_led_cy<3>/CYMUXG2_1359 )
  );
  X_BUF   \Mcompar_led_cy<3>/CYSELG  (
    .I(Mcompar_led_lut[3]),
    .O(\Mcompar_led_cy<3>/CYSELG_1351 )
  );
  X_LUT4MUX16   \Mcompar_led_lut<3>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_active_position [7]),
    .ADR1(\vga_inst/out_v_active_position [7]),
    .ADR2(\vga_inst/out_v_active_position [6]),
    .ADR3(\vga_inst/out_h_active_position [6]),
    .O(Mcompar_led_lut[3])
  );
  X_ZERO   \led_OBUF/LOGIC_ZERO  (
    .O(\led_OBUF/LOGIC_ZERO_1387 )
  );
  X_MUX2   \led_OBUF/CYMUXF2  (
    .IA(\led_OBUF/LOGIC_ZERO_1387 ),
    .IB(\led_OBUF/LOGIC_ZERO_1387 ),
    .SEL(\led_OBUF/CYSELF_1393 ),
    .O(\led_OBUF/CYMUXF2_1388 )
  );
  X_BUF   \led_OBUF/CYSELF  (
    .I(Mcompar_led_lut[4]),
    .O(\led_OBUF/CYSELF_1393 )
  );
  X_BUF   \led_OBUF/FASTCARRY  (
    .I(\Mcompar_led_cy<3>/CYMUXFAST_1362 ),
    .O(\led_OBUF/FASTCARRY_1390 )
  );
  X_AND2   \led_OBUF/CYAND  (
    .I0(\led_OBUF/CYSELG_1381 ),
    .I1(\led_OBUF/CYSELF_1393 ),
    .O(\led_OBUF/CYAND_1391 )
  );
  X_MUX2   \led_OBUF/CYMUXFAST  (
    .IA(\led_OBUF/CYMUXG2_1389 ),
    .IB(\led_OBUF/FASTCARRY_1390 ),
    .SEL(\led_OBUF/CYAND_1391 ),
    .O(\led_OBUF/CYMUXFAST_1392 )
  );
  X_MUX2   \led_OBUF/CYMUXG2  (
    .IA(\led_OBUF/LOGIC_ZERO_1387 ),
    .IB(\led_OBUF/CYMUXF2_1388 ),
    .SEL(\led_OBUF/CYSELG_1381 ),
    .O(\led_OBUF/CYMUXG2_1389 )
  );
  X_BUF   \led_OBUF/CYSELG  (
    .I(Mcompar_led_lut[5]),
    .O(\led_OBUF/CYSELG_1381 )
  );
  X_LUT4MUX16   \Mcompar_led_lut<5>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_active_position [10]),
    .ADR1(\vga_inst/out_h_active_position [11]),
    .ADR2(\vga_inst/out_v_active_position [11]),
    .ADR3(\vga_inst/out_v_active_position [10]),
    .O(Mcompar_led_lut[5])
  );
  X_ONE   \vga_inst/out_v_active_position<1>/LOGIC_ONE  (
    .O(\vga_inst/out_v_active_position<1>/LOGIC_ONE_1420 )
  );
  X_ZERO   \vga_inst/out_v_active_position<1>/LOGIC_ZERO  (
    .O(\vga_inst/out_v_active_position<1>/LOGIC_ZERO_1442 )
  );
  X_BUF   \vga_inst/out_v_active_position<1>/DXMUX  (
    .I(\vga_inst/out_v_active_position<1>/XORF_1443 ),
    .O(\vga_inst/out_v_active_position<1>/DXMUX_1445 )
  );
  X_XOR2   \vga_inst/out_v_active_position<1>/XORF  (
    .I0(\vga_inst/out_v_active_position<1>/CYINIT_1441 ),
    .I1(\vga_inst/out_v_active_position<1>/F ),
    .O(\vga_inst/out_v_active_position<1>/XORF_1443 )
  );
  X_MUX2   \vga_inst/out_v_active_position<1>/CYMUXF  (
    .IA(\vga_inst/out_v_active_position<1>/LOGIC_ZERO_1442 ),
    .IB(\vga_inst/out_v_active_position<1>/CYINIT_1441 ),
    .SEL(\vga_inst/out_v_active_position<1>/CYSELF_1432 ),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_cy [1])
  );
  X_BUF   \vga_inst/out_v_active_position<1>/CYINIT  (
    .I(\vga_inst/out_v_active_position<1>/BXINV_1430 ),
    .O(\vga_inst/out_v_active_position<1>/CYINIT_1441 )
  );
  X_BUF   \vga_inst/out_v_active_position<1>/CYSELF  (
    .I(\vga_inst/out_v_active_position<1>/F ),
    .O(\vga_inst/out_v_active_position<1>/CYSELF_1432 )
  );
  X_BUF   \vga_inst/out_v_active_position<1>/BXINV  (
    .I(1'b1),
    .O(\vga_inst/out_v_active_position<1>/BXINV_1430 )
  );
  X_BUF   \vga_inst/out_v_active_position<1>/DYMUX  (
    .I(\vga_inst/out_v_active_position<1>/XORG_1423 ),
    .O(\vga_inst/out_v_active_position<1>/DYMUX_1425 )
  );
  X_XOR2   \vga_inst/out_v_active_position<1>/XORG  (
    .I0(\vga_inst/Msub_out_v_active_position_sub0000_cy [1]),
    .I1(\vga_inst/Msub_out_v_active_position_sub0000_lut[2] ),
    .O(\vga_inst/out_v_active_position<1>/XORG_1423 )
  );
  X_BUF   \vga_inst/out_v_active_position<1>/COUTUSED  (
    .I(\vga_inst/out_v_active_position<1>/CYMUXG_1422 ),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_cy [2])
  );
  X_MUX2   \vga_inst/out_v_active_position<1>/CYMUXG  (
    .IA(\vga_inst/out_v_active_position<1>/LOGIC_ONE_1420 ),
    .IB(\vga_inst/Msub_out_v_active_position_sub0000_cy [1]),
    .SEL(\vga_inst/out_v_active_position<1>/CYSELG_1411 ),
    .O(\vga_inst/out_v_active_position<1>/CYMUXG_1422 )
  );
  X_BUF   \vga_inst/out_v_active_position<1>/CYSELG  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_lut[2] ),
    .O(\vga_inst/out_v_active_position<1>/CYSELG_1411 )
  );
  X_BUF   \vga_inst/out_v_active_position<1>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_v_active_position<1>/SRINV_1409 )
  );
  X_BUF   \vga_inst/out_v_active_position<1>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_active_position<1>/CLKINV_1408 )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_v_active_position_sub0000_lut<2>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [2]),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_lut[2] )
  );
  X_ONE   \vga_inst/out_v_active_position<3>/LOGIC_ONE  (
    .O(\vga_inst/out_v_active_position<3>/LOGIC_ONE_1470 )
  );
  X_ZERO   \vga_inst/out_v_active_position<3>/LOGIC_ZERO  (
    .O(\vga_inst/out_v_active_position<3>/LOGIC_ZERO_1495 )
  );
  X_BUF   \vga_inst/out_v_active_position<3>/DXMUX  (
    .I(\vga_inst/out_v_active_position<3>/XORF_1496 ),
    .O(\vga_inst/out_v_active_position<3>/DXMUX_1498 )
  );
  X_XOR2   \vga_inst/out_v_active_position<3>/XORF  (
    .I0(\vga_inst/out_v_active_position<3>/CYINIT_1494 ),
    .I1(\vga_inst/out_v_active_position<3>/F ),
    .O(\vga_inst/out_v_active_position<3>/XORF_1496 )
  );
  X_MUX2   \vga_inst/out_v_active_position<3>/CYMUXF  (
    .IA(\vga_inst/out_v_active_position<3>/LOGIC_ZERO_1495 ),
    .IB(\vga_inst/out_v_active_position<3>/CYINIT_1494 ),
    .SEL(\vga_inst/out_v_active_position<3>/CYSELF_1476 ),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_cy [3])
  );
  X_MUX2   \vga_inst/out_v_active_position<3>/CYMUXF2  (
    .IA(\vga_inst/out_v_active_position<3>/LOGIC_ZERO_1495 ),
    .IB(\vga_inst/out_v_active_position<3>/LOGIC_ZERO_1495 ),
    .SEL(\vga_inst/out_v_active_position<3>/CYSELF_1476 ),
    .O(\vga_inst/out_v_active_position<3>/CYMUXF2_1471 )
  );
  X_BUF   \vga_inst/out_v_active_position<3>/CYINIT  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_cy [2]),
    .O(\vga_inst/out_v_active_position<3>/CYINIT_1494 )
  );
  X_BUF   \vga_inst/out_v_active_position<3>/CYSELF  (
    .I(\vga_inst/out_v_active_position<3>/F ),
    .O(\vga_inst/out_v_active_position<3>/CYSELF_1476 )
  );
  X_BUF   \vga_inst/out_v_active_position<3>/DYMUX  (
    .I(\vga_inst/out_v_active_position<3>/XORG_1478 ),
    .O(\vga_inst/out_v_active_position<3>/DYMUX_1480 )
  );
  X_XOR2   \vga_inst/out_v_active_position<3>/XORG  (
    .I0(\vga_inst/Msub_out_v_active_position_sub0000_cy [3]),
    .I1(\vga_inst/Msub_out_v_active_position_sub0000_lut[4] ),
    .O(\vga_inst/out_v_active_position<3>/XORG_1478 )
  );
  X_BUF   \vga_inst/out_v_active_position<3>/COUTUSED  (
    .I(\vga_inst/out_v_active_position<3>/CYMUXFAST_1475 ),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_cy [4])
  );
  X_BUF   \vga_inst/out_v_active_position<3>/FASTCARRY  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_cy [2]),
    .O(\vga_inst/out_v_active_position<3>/FASTCARRY_1473 )
  );
  X_AND2   \vga_inst/out_v_active_position<3>/CYAND  (
    .I0(\vga_inst/out_v_active_position<3>/CYSELG_1461 ),
    .I1(\vga_inst/out_v_active_position<3>/CYSELF_1476 ),
    .O(\vga_inst/out_v_active_position<3>/CYAND_1474 )
  );
  X_MUX2   \vga_inst/out_v_active_position<3>/CYMUXFAST  (
    .IA(\vga_inst/out_v_active_position<3>/CYMUXG2_1472 ),
    .IB(\vga_inst/out_v_active_position<3>/FASTCARRY_1473 ),
    .SEL(\vga_inst/out_v_active_position<3>/CYAND_1474 ),
    .O(\vga_inst/out_v_active_position<3>/CYMUXFAST_1475 )
  );
  X_MUX2   \vga_inst/out_v_active_position<3>/CYMUXG2  (
    .IA(\vga_inst/out_v_active_position<3>/LOGIC_ONE_1470 ),
    .IB(\vga_inst/out_v_active_position<3>/CYMUXF2_1471 ),
    .SEL(\vga_inst/out_v_active_position<3>/CYSELG_1461 ),
    .O(\vga_inst/out_v_active_position<3>/CYMUXG2_1472 )
  );
  X_BUF   \vga_inst/out_v_active_position<3>/CYSELG  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_lut[4] ),
    .O(\vga_inst/out_v_active_position<3>/CYSELG_1461 )
  );
  X_BUF   \vga_inst/out_v_active_position<3>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_v_active_position<3>/SRINV_1459 )
  );
  X_BUF   \vga_inst/out_v_active_position<3>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_active_position<3>/CLKINV_1458 )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_v_active_position_sub0000_lut<4>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_v_position [4]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_lut[4] )
  );
  X_ONE   \vga_inst/out_v_active_position<5>/LOGIC_ONE  (
    .O(\vga_inst/out_v_active_position<5>/LOGIC_ONE_1523 )
  );
  X_BUF   \vga_inst/out_v_active_position<5>/DXMUX  (
    .I(\vga_inst/out_v_active_position<5>/XORF_1548 ),
    .O(\vga_inst/out_v_active_position<5>/DXMUX_1550 )
  );
  X_XOR2   \vga_inst/out_v_active_position<5>/XORF  (
    .I0(\vga_inst/out_v_active_position<5>/CYINIT_1547 ),
    .I1(\vga_inst/Msub_out_v_active_position_sub0000_lut[5] ),
    .O(\vga_inst/out_v_active_position<5>/XORF_1548 )
  );
  X_MUX2   \vga_inst/out_v_active_position<5>/CYMUXF  (
    .IA(\vga_inst/out_v_active_position<5>/LOGIC_ONE_1523 ),
    .IB(\vga_inst/out_v_active_position<5>/CYINIT_1547 ),
    .SEL(\vga_inst/out_v_active_position<5>/CYSELF_1529 ),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_cy [5])
  );
  X_MUX2   \vga_inst/out_v_active_position<5>/CYMUXF2  (
    .IA(\vga_inst/out_v_active_position<5>/LOGIC_ONE_1523 ),
    .IB(\vga_inst/out_v_active_position<5>/LOGIC_ONE_1523 ),
    .SEL(\vga_inst/out_v_active_position<5>/CYSELF_1529 ),
    .O(\vga_inst/out_v_active_position<5>/CYMUXF2_1524 )
  );
  X_BUF   \vga_inst/out_v_active_position<5>/CYINIT  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_cy [4]),
    .O(\vga_inst/out_v_active_position<5>/CYINIT_1547 )
  );
  X_BUF   \vga_inst/out_v_active_position<5>/CYSELF  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_lut[5] ),
    .O(\vga_inst/out_v_active_position<5>/CYSELF_1529 )
  );
  X_BUF   \vga_inst/out_v_active_position<5>/DYMUX  (
    .I(\vga_inst/out_v_active_position<5>/XORG_1531 ),
    .O(\vga_inst/out_v_active_position<5>/DYMUX_1533 )
  );
  X_XOR2   \vga_inst/out_v_active_position<5>/XORG  (
    .I0(\vga_inst/Msub_out_v_active_position_sub0000_cy [5]),
    .I1(\vga_inst/Msub_out_v_active_position_sub0000_lut[6] ),
    .O(\vga_inst/out_v_active_position<5>/XORG_1531 )
  );
  X_BUF   \vga_inst/out_v_active_position<5>/COUTUSED  (
    .I(\vga_inst/out_v_active_position<5>/CYMUXFAST_1528 ),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_cy [6])
  );
  X_BUF   \vga_inst/out_v_active_position<5>/FASTCARRY  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_cy [4]),
    .O(\vga_inst/out_v_active_position<5>/FASTCARRY_1526 )
  );
  X_AND2   \vga_inst/out_v_active_position<5>/CYAND  (
    .I0(\vga_inst/out_v_active_position<5>/CYSELG_1514 ),
    .I1(\vga_inst/out_v_active_position<5>/CYSELF_1529 ),
    .O(\vga_inst/out_v_active_position<5>/CYAND_1527 )
  );
  X_MUX2   \vga_inst/out_v_active_position<5>/CYMUXFAST  (
    .IA(\vga_inst/out_v_active_position<5>/CYMUXG2_1525 ),
    .IB(\vga_inst/out_v_active_position<5>/FASTCARRY_1526 ),
    .SEL(\vga_inst/out_v_active_position<5>/CYAND_1527 ),
    .O(\vga_inst/out_v_active_position<5>/CYMUXFAST_1528 )
  );
  X_MUX2   \vga_inst/out_v_active_position<5>/CYMUXG2  (
    .IA(\vga_inst/out_v_active_position<5>/LOGIC_ONE_1523 ),
    .IB(\vga_inst/out_v_active_position<5>/CYMUXF2_1524 ),
    .SEL(\vga_inst/out_v_active_position<5>/CYSELG_1514 ),
    .O(\vga_inst/out_v_active_position<5>/CYMUXG2_1525 )
  );
  X_BUF   \vga_inst/out_v_active_position<5>/CYSELG  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_lut[6] ),
    .O(\vga_inst/out_v_active_position<5>/CYSELG_1514 )
  );
  X_BUF   \vga_inst/out_v_active_position<5>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_v_active_position<5>/SRINV_1512 )
  );
  X_BUF   \vga_inst/out_v_active_position<5>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_active_position<5>/CLKINV_1511 )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_v_active_position_sub0000_lut<6>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [6]),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_lut[6] )
  );
  X_ONE   \vga_inst/out_v_active_position<7>/LOGIC_ONE  (
    .O(\vga_inst/out_v_active_position<7>/LOGIC_ONE_1575 )
  );
  X_BUF   \vga_inst/out_v_active_position<7>/DXMUX  (
    .I(\vga_inst/out_v_active_position<7>/XORF_1600 ),
    .O(\vga_inst/out_v_active_position<7>/DXMUX_1602 )
  );
  X_XOR2   \vga_inst/out_v_active_position<7>/XORF  (
    .I0(\vga_inst/out_v_active_position<7>/CYINIT_1599 ),
    .I1(\vga_inst/Msub_out_v_active_position_sub0000_lut[7] ),
    .O(\vga_inst/out_v_active_position<7>/XORF_1600 )
  );
  X_MUX2   \vga_inst/out_v_active_position<7>/CYMUXF  (
    .IA(\vga_inst/out_v_active_position<7>/LOGIC_ONE_1575 ),
    .IB(\vga_inst/out_v_active_position<7>/CYINIT_1599 ),
    .SEL(\vga_inst/out_v_active_position<7>/CYSELF_1581 ),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_cy [7])
  );
  X_MUX2   \vga_inst/out_v_active_position<7>/CYMUXF2  (
    .IA(\vga_inst/out_v_active_position<7>/LOGIC_ONE_1575 ),
    .IB(\vga_inst/out_v_active_position<7>/LOGIC_ONE_1575 ),
    .SEL(\vga_inst/out_v_active_position<7>/CYSELF_1581 ),
    .O(\vga_inst/out_v_active_position<7>/CYMUXF2_1576 )
  );
  X_BUF   \vga_inst/out_v_active_position<7>/CYINIT  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_cy [6]),
    .O(\vga_inst/out_v_active_position<7>/CYINIT_1599 )
  );
  X_BUF   \vga_inst/out_v_active_position<7>/CYSELF  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_lut[7] ),
    .O(\vga_inst/out_v_active_position<7>/CYSELF_1581 )
  );
  X_BUF   \vga_inst/out_v_active_position<7>/DYMUX  (
    .I(\vga_inst/out_v_active_position<7>/XORG_1583 ),
    .O(\vga_inst/out_v_active_position<7>/DYMUX_1585 )
  );
  X_XOR2   \vga_inst/out_v_active_position<7>/XORG  (
    .I0(\vga_inst/Msub_out_v_active_position_sub0000_cy [7]),
    .I1(\vga_inst/Msub_out_v_active_position_sub0000_lut[8] ),
    .O(\vga_inst/out_v_active_position<7>/XORG_1583 )
  );
  X_BUF   \vga_inst/out_v_active_position<7>/COUTUSED  (
    .I(\vga_inst/out_v_active_position<7>/CYMUXFAST_1580 ),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_cy [8])
  );
  X_BUF   \vga_inst/out_v_active_position<7>/FASTCARRY  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_cy [6]),
    .O(\vga_inst/out_v_active_position<7>/FASTCARRY_1578 )
  );
  X_AND2   \vga_inst/out_v_active_position<7>/CYAND  (
    .I0(\vga_inst/out_v_active_position<7>/CYSELG_1566 ),
    .I1(\vga_inst/out_v_active_position<7>/CYSELF_1581 ),
    .O(\vga_inst/out_v_active_position<7>/CYAND_1579 )
  );
  X_MUX2   \vga_inst/out_v_active_position<7>/CYMUXFAST  (
    .IA(\vga_inst/out_v_active_position<7>/CYMUXG2_1577 ),
    .IB(\vga_inst/out_v_active_position<7>/FASTCARRY_1578 ),
    .SEL(\vga_inst/out_v_active_position<7>/CYAND_1579 ),
    .O(\vga_inst/out_v_active_position<7>/CYMUXFAST_1580 )
  );
  X_MUX2   \vga_inst/out_v_active_position<7>/CYMUXG2  (
    .IA(\vga_inst/out_v_active_position<7>/LOGIC_ONE_1575 ),
    .IB(\vga_inst/out_v_active_position<7>/CYMUXF2_1576 ),
    .SEL(\vga_inst/out_v_active_position<7>/CYSELG_1566 ),
    .O(\vga_inst/out_v_active_position<7>/CYMUXG2_1577 )
  );
  X_BUF   \vga_inst/out_v_active_position<7>/CYSELG  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_lut[8] ),
    .O(\vga_inst/out_v_active_position<7>/CYSELG_1566 )
  );
  X_BUF   \vga_inst/out_v_active_position<7>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_v_active_position<7>/SRINV_1564 )
  );
  X_BUF   \vga_inst/out_v_active_position<7>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_active_position<7>/CLKINV_1563 )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_v_active_position_sub0000_lut<8>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_v_position [8]),
    .ADR3(VCC),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_lut[8] )
  );
  X_ONE   \vga_inst/out_v_active_position<9>/LOGIC_ONE  (
    .O(\vga_inst/out_v_active_position<9>/LOGIC_ONE_1627 )
  );
  X_BUF   \vga_inst/out_v_active_position<9>/DXMUX  (
    .I(\vga_inst/out_v_active_position<9>/XORF_1652 ),
    .O(\vga_inst/out_v_active_position<9>/DXMUX_1654 )
  );
  X_XOR2   \vga_inst/out_v_active_position<9>/XORF  (
    .I0(\vga_inst/out_v_active_position<9>/CYINIT_1651 ),
    .I1(\vga_inst/Msub_out_v_active_position_sub0000_lut[9] ),
    .O(\vga_inst/out_v_active_position<9>/XORF_1652 )
  );
  X_MUX2   \vga_inst/out_v_active_position<9>/CYMUXF  (
    .IA(\vga_inst/out_v_active_position<9>/LOGIC_ONE_1627 ),
    .IB(\vga_inst/out_v_active_position<9>/CYINIT_1651 ),
    .SEL(\vga_inst/out_v_active_position<9>/CYSELF_1633 ),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_cy [9])
  );
  X_MUX2   \vga_inst/out_v_active_position<9>/CYMUXF2  (
    .IA(\vga_inst/out_v_active_position<9>/LOGIC_ONE_1627 ),
    .IB(\vga_inst/out_v_active_position<9>/LOGIC_ONE_1627 ),
    .SEL(\vga_inst/out_v_active_position<9>/CYSELF_1633 ),
    .O(\vga_inst/out_v_active_position<9>/CYMUXF2_1628 )
  );
  X_BUF   \vga_inst/out_v_active_position<9>/CYINIT  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_cy [8]),
    .O(\vga_inst/out_v_active_position<9>/CYINIT_1651 )
  );
  X_BUF   \vga_inst/out_v_active_position<9>/CYSELF  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_lut[9] ),
    .O(\vga_inst/out_v_active_position<9>/CYSELF_1633 )
  );
  X_BUF   \vga_inst/out_v_active_position<9>/DYMUX  (
    .I(\vga_inst/out_v_active_position<9>/XORG_1635 ),
    .O(\vga_inst/out_v_active_position<9>/DYMUX_1637 )
  );
  X_XOR2   \vga_inst/out_v_active_position<9>/XORG  (
    .I0(\vga_inst/Msub_out_v_active_position_sub0000_cy [9]),
    .I1(\vga_inst/Msub_out_v_active_position_sub0000_lut[10] ),
    .O(\vga_inst/out_v_active_position<9>/XORG_1635 )
  );
  X_BUF   \vga_inst/out_v_active_position<9>/FASTCARRY  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_cy [8]),
    .O(\vga_inst/out_v_active_position<9>/FASTCARRY_1630 )
  );
  X_AND2   \vga_inst/out_v_active_position<9>/CYAND  (
    .I0(\vga_inst/out_v_active_position<9>/CYSELG_1618 ),
    .I1(\vga_inst/out_v_active_position<9>/CYSELF_1633 ),
    .O(\vga_inst/out_v_active_position<9>/CYAND_1631 )
  );
  X_MUX2   \vga_inst/out_v_active_position<9>/CYMUXFAST  (
    .IA(\vga_inst/out_v_active_position<9>/CYMUXG2_1629 ),
    .IB(\vga_inst/out_v_active_position<9>/FASTCARRY_1630 ),
    .SEL(\vga_inst/out_v_active_position<9>/CYAND_1631 ),
    .O(\vga_inst/out_v_active_position<9>/CYMUXFAST_1632 )
  );
  X_MUX2   \vga_inst/out_v_active_position<9>/CYMUXG2  (
    .IA(\vga_inst/out_v_active_position<9>/LOGIC_ONE_1627 ),
    .IB(\vga_inst/out_v_active_position<9>/CYMUXF2_1628 ),
    .SEL(\vga_inst/out_v_active_position<9>/CYSELG_1618 ),
    .O(\vga_inst/out_v_active_position<9>/CYMUXG2_1629 )
  );
  X_BUF   \vga_inst/out_v_active_position<9>/CYSELG  (
    .I(\vga_inst/Msub_out_v_active_position_sub0000_lut[10] ),
    .O(\vga_inst/out_v_active_position<9>/CYSELG_1618 )
  );
  X_BUF   \vga_inst/out_v_active_position<9>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_v_active_position<9>/SRINV_1616 )
  );
  X_BUF   \vga_inst/out_v_active_position<9>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_active_position<9>/CLKINV_1615 )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_v_active_position_sub0000_lut<10>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_v_position [10]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_lut[10] )
  );
  X_BUF   \vga_inst/out_v_active_position<11>/DXMUX  (
    .I(\vga_inst/out_v_active_position<11>/XORF_1676 ),
    .O(\vga_inst/out_v_active_position<11>/DXMUX_1678 )
  );
  X_XOR2   \vga_inst/out_v_active_position<11>/XORF  (
    .I0(\vga_inst/out_v_active_position<11>/CYINIT_1675 ),
    .I1(\vga_inst/Msub_out_v_active_position_sub0000_lut[11] ),
    .O(\vga_inst/out_v_active_position<11>/XORF_1676 )
  );
  X_BUF   \vga_inst/out_v_active_position<11>/CYINIT  (
    .I(\vga_inst/out_v_active_position<9>/CYMUXFAST_1632 ),
    .O(\vga_inst/out_v_active_position<11>/CYINIT_1675 )
  );
  X_BUF   \vga_inst/out_v_active_position<11>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_v_active_position<11>/SRINV_1665 )
  );
  X_BUF   \vga_inst/out_v_active_position<11>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_active_position<11>/CLKINV_1664 )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_v_active_position_sub0000_lut<11>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_v_position [11]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_lut[11] )
  );
  X_ONE   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/LOGIC_ONE_1698 )
  );
  X_ZERO   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/LOGIC_ZERO_1712 )
  );
  X_MUX2   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYMUXF  (
    .IA(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/LOGIC_ZERO_1712 ),
    .IB(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYINIT_1711 ),
    .SEL(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYSELF_1703 ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy [0])
  );
  X_BUF   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYINIT  (
    .I(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/BXINV_1701 ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYINIT_1711 )
  );
  X_BUF   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYSELF  (
    .I(\vga_inst/Mcompar_v_sync_cmp_le0000_lut[0] ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYSELF_1703 )
  );
  X_BUF   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/BXINV  (
    .I(1'b1),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/BXINV_1701 )
  );
  X_MUX2   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYMUXG  (
    .IA(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/LOGIC_ONE_1698 ),
    .IB(\vga_inst/Mcompar_v_sync_cmp_le0000_cy [0]),
    .SEL(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYSELG_1689 ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYMUXG_1700 )
  );
  X_BUF   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYSELG  (
    .I(\vga_inst/out_v_position<3>_rt ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYSELG_1689 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position<3>_rt.1  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position [3]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_v_position<3>_rt )
  );
  X_ZERO   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/LOGIC_ZERO_1730 )
  );
  X_MUX2   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXF2  (
    .IA(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/LOGIC_ZERO_1730 ),
    .IB(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/LOGIC_ZERO_1730 ),
    .SEL(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYSELF_1736 ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXF2_1731 )
  );
  X_BUF   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYSELF  (
    .I(\vga_inst/Mcompar_v_sync_cmp_le0000_lut[2] ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYSELF_1736 )
  );
  X_BUF   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/FASTCARRY  (
    .I(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<1>/CYMUXG_1700 ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/FASTCARRY_1733 )
  );
  X_AND2   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYAND  (
    .I0(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYSELG_1721 ),
    .I1(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYSELF_1736 ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYAND_1734 )
  );
  X_MUX2   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXFAST  (
    .IA(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXG2_1732 ),
    .IB(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/FASTCARRY_1733 ),
    .SEL(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYAND_1734 ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXFAST_1735 )
  );
  X_MUX2   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXG2  (
    .IA(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/LOGIC_ZERO_1730 ),
    .IB(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXF2_1731 ),
    .SEL(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYSELG_1721 ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXG2_1732 )
  );
  X_BUF   \vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYSELG  (
    .I(\vga_inst/Mcompar_v_sync_cmp_le0000_lut[3] ),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYSELG_1721 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_v_sync_cmp_le0000_lut<3>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [8]),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_lut[3] )
  );
  X_ZERO   \vga_inst/v_sync_cmp_le0000/LOGIC_ZERO  (
    .O(\vga_inst/v_sync_cmp_le0000/LOGIC_ZERO_1757 )
  );
  X_ONE   \vga_inst/v_sync_cmp_le0000/LOGIC_ONE  (
    .O(\vga_inst/v_sync_cmp_le0000/LOGIC_ONE_1773 )
  );
  X_MUX2   \vga_inst/v_sync_cmp_le0000/CYMUXF2  (
    .IA(\vga_inst/v_sync_cmp_le0000/LOGIC_ONE_1773 ),
    .IB(\vga_inst/v_sync_cmp_le0000/LOGIC_ONE_1773 ),
    .SEL(\vga_inst/v_sync_cmp_le0000/CYSELF_1763 ),
    .O(\vga_inst/v_sync_cmp_le0000/CYMUXF2_1758 )
  );
  X_BUF   \vga_inst/v_sync_cmp_le0000/CYSELF  (
    .I(\vga_inst/out_v_position<9>_rt_1764 ),
    .O(\vga_inst/v_sync_cmp_le0000/CYSELF_1763 )
  );
  X_BUF   \vga_inst/v_sync_cmp_le0000/COUTUSED  (
    .I(\vga_inst/v_sync_cmp_le0000/CYMUXFAST_1762 ),
    .O(\vga_inst/v_sync_cmp_le0000 )
  );
  X_BUF   \vga_inst/v_sync_cmp_le0000/FASTCARRY  (
    .I(\vga_inst/Mcompar_v_sync_cmp_le0000_cy<3>/CYMUXFAST_1735 ),
    .O(\vga_inst/v_sync_cmp_le0000/FASTCARRY_1760 )
  );
  X_AND2   \vga_inst/v_sync_cmp_le0000/CYAND  (
    .I0(\vga_inst/v_sync_cmp_le0000/CYSELG_1749 ),
    .I1(\vga_inst/v_sync_cmp_le0000/CYSELF_1763 ),
    .O(\vga_inst/v_sync_cmp_le0000/CYAND_1761 )
  );
  X_MUX2   \vga_inst/v_sync_cmp_le0000/CYMUXFAST  (
    .IA(\vga_inst/v_sync_cmp_le0000/CYMUXG2_1759 ),
    .IB(\vga_inst/v_sync_cmp_le0000/FASTCARRY_1760 ),
    .SEL(\vga_inst/v_sync_cmp_le0000/CYAND_1761 ),
    .O(\vga_inst/v_sync_cmp_le0000/CYMUXFAST_1762 )
  );
  X_MUX2   \vga_inst/v_sync_cmp_le0000/CYMUXG2  (
    .IA(\vga_inst/v_sync_cmp_le0000/LOGIC_ZERO_1757 ),
    .IB(\vga_inst/v_sync_cmp_le0000/CYMUXF2_1758 ),
    .SEL(\vga_inst/v_sync_cmp_le0000/CYSELG_1749 ),
    .O(\vga_inst/v_sync_cmp_le0000/CYMUXG2_1759 )
  );
  X_BUF   \vga_inst/v_sync_cmp_le0000/CYSELG  (
    .I(\vga_inst/Mcompar_v_sync_cmp_le0000_lut[5] ),
    .O(\vga_inst/v_sync_cmp_le0000/CYSELG_1749 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_v_sync_cmp_le0000_lut<5>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_v_position [10]),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_v_position [11]),
    .ADR3(VCC),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_lut[5] )
  );
  X_ZERO   \vga_inst/out_v_position_addsub0000<0>/LOGIC_ZERO  (
    .O(\vga_inst/out_v_position_addsub0000<0>/LOGIC_ZERO_1790 )
  );
  X_ONE   \vga_inst/out_v_position_addsub0000<0>/LOGIC_ONE  (
    .O(\vga_inst/out_v_position_addsub0000<0>/LOGIC_ONE_1807 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<0>/XUSED  (
    .I(\vga_inst/out_v_position_addsub0000<0>/XORF_1808 ),
    .O(\vga_inst/out_v_position_addsub0000 [0])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<0>/XORF  (
    .I0(\vga_inst/out_v_position_addsub0000<0>/CYINIT_1806 ),
    .I1(\vga_inst/Madd_out_v_position_addsub0000_lut [0]),
    .O(\vga_inst/out_v_position_addsub0000<0>/XORF_1808 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<0>/CYMUXF  (
    .IA(\vga_inst/out_v_position_addsub0000<0>/LOGIC_ONE_1807 ),
    .IB(\vga_inst/out_v_position_addsub0000<0>/CYINIT_1806 ),
    .SEL(\vga_inst/out_v_position_addsub0000<0>/CYSELF_1797 ),
    .O(\vga_inst/Madd_out_v_position_addsub0000_cy[0] )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<0>/CYINIT  (
    .I(\vga_inst/out_v_position_addsub0000<0>/BXINV_1795 ),
    .O(\vga_inst/out_v_position_addsub0000<0>/CYINIT_1806 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<0>/CYSELF  (
    .I(\vga_inst/Madd_out_v_position_addsub0000_lut [0]),
    .O(\vga_inst/out_v_position_addsub0000<0>/CYSELF_1797 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<0>/BXINV  (
    .I(1'b0),
    .O(\vga_inst/out_v_position_addsub0000<0>/BXINV_1795 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<0>/YUSED  (
    .I(\vga_inst/out_v_position_addsub0000<0>/XORG_1793 ),
    .O(\vga_inst/out_v_position_addsub0000 [1])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<0>/XORG  (
    .I0(\vga_inst/Madd_out_v_position_addsub0000_cy[0] ),
    .I1(\vga_inst/out_v_position_addsub0000<0>/G ),
    .O(\vga_inst/out_v_position_addsub0000<0>/XORG_1793 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<0>/COUTUSED  (
    .I(\vga_inst/out_v_position_addsub0000<0>/CYMUXG_1792 ),
    .O(\vga_inst/Madd_out_v_position_addsub0000_cy[1] )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<0>/CYMUXG  (
    .IA(\vga_inst/out_v_position_addsub0000<0>/LOGIC_ZERO_1790 ),
    .IB(\vga_inst/Madd_out_v_position_addsub0000_cy[0] ),
    .SEL(\vga_inst/out_v_position_addsub0000<0>/CYSELG_1781 ),
    .O(\vga_inst/out_v_position_addsub0000<0>/CYMUXG_1792 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<0>/CYSELG  (
    .I(\vga_inst/out_v_position_addsub0000<0>/G ),
    .O(\vga_inst/out_v_position_addsub0000<0>/CYSELG_1781 )
  );
  X_ZERO   \vga_inst/out_v_position_addsub0000<2>/LOGIC_ZERO  (
    .O(\vga_inst/out_v_position_addsub0000<2>/LOGIC_ZERO_1826 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<2>/XUSED  (
    .I(\vga_inst/out_v_position_addsub0000<2>/XORF_1846 ),
    .O(\vga_inst/out_v_position_addsub0000 [2])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<2>/XORF  (
    .I0(\vga_inst/out_v_position_addsub0000<2>/CYINIT_1845 ),
    .I1(\vga_inst/out_v_position_addsub0000<2>/F ),
    .O(\vga_inst/out_v_position_addsub0000<2>/XORF_1846 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<2>/CYMUXF  (
    .IA(\vga_inst/out_v_position_addsub0000<2>/LOGIC_ZERO_1826 ),
    .IB(\vga_inst/out_v_position_addsub0000<2>/CYINIT_1845 ),
    .SEL(\vga_inst/out_v_position_addsub0000<2>/CYSELF_1832 ),
    .O(\vga_inst/Madd_out_v_position_addsub0000_cy[2] )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<2>/CYMUXF2  (
    .IA(\vga_inst/out_v_position_addsub0000<2>/LOGIC_ZERO_1826 ),
    .IB(\vga_inst/out_v_position_addsub0000<2>/LOGIC_ZERO_1826 ),
    .SEL(\vga_inst/out_v_position_addsub0000<2>/CYSELF_1832 ),
    .O(\vga_inst/out_v_position_addsub0000<2>/CYMUXF2_1827 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<2>/CYINIT  (
    .I(\vga_inst/Madd_out_v_position_addsub0000_cy[1] ),
    .O(\vga_inst/out_v_position_addsub0000<2>/CYINIT_1845 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<2>/CYSELF  (
    .I(\vga_inst/out_v_position_addsub0000<2>/F ),
    .O(\vga_inst/out_v_position_addsub0000<2>/CYSELF_1832 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<2>/YUSED  (
    .I(\vga_inst/out_v_position_addsub0000<2>/XORG_1834 ),
    .O(\vga_inst/out_v_position_addsub0000 [3])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<2>/XORG  (
    .I0(\vga_inst/Madd_out_v_position_addsub0000_cy[2] ),
    .I1(\vga_inst/out_v_position_addsub0000<2>/G ),
    .O(\vga_inst/out_v_position_addsub0000<2>/XORG_1834 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<2>/COUTUSED  (
    .I(\vga_inst/out_v_position_addsub0000<2>/CYMUXFAST_1831 ),
    .O(\vga_inst/Madd_out_v_position_addsub0000_cy[3] )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<2>/FASTCARRY  (
    .I(\vga_inst/Madd_out_v_position_addsub0000_cy[1] ),
    .O(\vga_inst/out_v_position_addsub0000<2>/FASTCARRY_1829 )
  );
  X_AND2   \vga_inst/out_v_position_addsub0000<2>/CYAND  (
    .I0(\vga_inst/out_v_position_addsub0000<2>/CYSELG_1817 ),
    .I1(\vga_inst/out_v_position_addsub0000<2>/CYSELF_1832 ),
    .O(\vga_inst/out_v_position_addsub0000<2>/CYAND_1830 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<2>/CYMUXFAST  (
    .IA(\vga_inst/out_v_position_addsub0000<2>/CYMUXG2_1828 ),
    .IB(\vga_inst/out_v_position_addsub0000<2>/FASTCARRY_1829 ),
    .SEL(\vga_inst/out_v_position_addsub0000<2>/CYAND_1830 ),
    .O(\vga_inst/out_v_position_addsub0000<2>/CYMUXFAST_1831 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<2>/CYMUXG2  (
    .IA(\vga_inst/out_v_position_addsub0000<2>/LOGIC_ZERO_1826 ),
    .IB(\vga_inst/out_v_position_addsub0000<2>/CYMUXF2_1827 ),
    .SEL(\vga_inst/out_v_position_addsub0000<2>/CYSELG_1817 ),
    .O(\vga_inst/out_v_position_addsub0000<2>/CYMUXG2_1828 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<2>/CYSELG  (
    .I(\vga_inst/out_v_position_addsub0000<2>/G ),
    .O(\vga_inst/out_v_position_addsub0000<2>/CYSELG_1817 )
  );
  X_ZERO   \vga_inst/out_v_position_addsub0000<4>/LOGIC_ZERO  (
    .O(\vga_inst/out_v_position_addsub0000<4>/LOGIC_ZERO_1864 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<4>/XUSED  (
    .I(\vga_inst/out_v_position_addsub0000<4>/XORF_1884 ),
    .O(\vga_inst/out_v_position_addsub0000 [4])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<4>/XORF  (
    .I0(\vga_inst/out_v_position_addsub0000<4>/CYINIT_1883 ),
    .I1(\vga_inst/out_v_position_addsub0000<4>/F ),
    .O(\vga_inst/out_v_position_addsub0000<4>/XORF_1884 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<4>/CYMUXF  (
    .IA(\vga_inst/out_v_position_addsub0000<4>/LOGIC_ZERO_1864 ),
    .IB(\vga_inst/out_v_position_addsub0000<4>/CYINIT_1883 ),
    .SEL(\vga_inst/out_v_position_addsub0000<4>/CYSELF_1870 ),
    .O(\vga_inst/Madd_out_v_position_addsub0000_cy[4] )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<4>/CYMUXF2  (
    .IA(\vga_inst/out_v_position_addsub0000<4>/LOGIC_ZERO_1864 ),
    .IB(\vga_inst/out_v_position_addsub0000<4>/LOGIC_ZERO_1864 ),
    .SEL(\vga_inst/out_v_position_addsub0000<4>/CYSELF_1870 ),
    .O(\vga_inst/out_v_position_addsub0000<4>/CYMUXF2_1865 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<4>/CYINIT  (
    .I(\vga_inst/Madd_out_v_position_addsub0000_cy[3] ),
    .O(\vga_inst/out_v_position_addsub0000<4>/CYINIT_1883 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<4>/CYSELF  (
    .I(\vga_inst/out_v_position_addsub0000<4>/F ),
    .O(\vga_inst/out_v_position_addsub0000<4>/CYSELF_1870 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<4>/YUSED  (
    .I(\vga_inst/out_v_position_addsub0000<4>/XORG_1872 ),
    .O(\vga_inst/out_v_position_addsub0000 [5])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<4>/XORG  (
    .I0(\vga_inst/Madd_out_v_position_addsub0000_cy[4] ),
    .I1(\vga_inst/out_v_position_addsub0000<4>/G ),
    .O(\vga_inst/out_v_position_addsub0000<4>/XORG_1872 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<4>/COUTUSED  (
    .I(\vga_inst/out_v_position_addsub0000<4>/CYMUXFAST_1869 ),
    .O(\vga_inst/Madd_out_v_position_addsub0000_cy[5] )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<4>/FASTCARRY  (
    .I(\vga_inst/Madd_out_v_position_addsub0000_cy[3] ),
    .O(\vga_inst/out_v_position_addsub0000<4>/FASTCARRY_1867 )
  );
  X_AND2   \vga_inst/out_v_position_addsub0000<4>/CYAND  (
    .I0(\vga_inst/out_v_position_addsub0000<4>/CYSELG_1855 ),
    .I1(\vga_inst/out_v_position_addsub0000<4>/CYSELF_1870 ),
    .O(\vga_inst/out_v_position_addsub0000<4>/CYAND_1868 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<4>/CYMUXFAST  (
    .IA(\vga_inst/out_v_position_addsub0000<4>/CYMUXG2_1866 ),
    .IB(\vga_inst/out_v_position_addsub0000<4>/FASTCARRY_1867 ),
    .SEL(\vga_inst/out_v_position_addsub0000<4>/CYAND_1868 ),
    .O(\vga_inst/out_v_position_addsub0000<4>/CYMUXFAST_1869 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<4>/CYMUXG2  (
    .IA(\vga_inst/out_v_position_addsub0000<4>/LOGIC_ZERO_1864 ),
    .IB(\vga_inst/out_v_position_addsub0000<4>/CYMUXF2_1865 ),
    .SEL(\vga_inst/out_v_position_addsub0000<4>/CYSELG_1855 ),
    .O(\vga_inst/out_v_position_addsub0000<4>/CYMUXG2_1866 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<4>/CYSELG  (
    .I(\vga_inst/out_v_position_addsub0000<4>/G ),
    .O(\vga_inst/out_v_position_addsub0000<4>/CYSELG_1855 )
  );
  X_ZERO   \vga_inst/out_v_position_addsub0000<6>/LOGIC_ZERO  (
    .O(\vga_inst/out_v_position_addsub0000<6>/LOGIC_ZERO_1902 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<6>/XUSED  (
    .I(\vga_inst/out_v_position_addsub0000<6>/XORF_1922 ),
    .O(\vga_inst/out_v_position_addsub0000 [6])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<6>/XORF  (
    .I0(\vga_inst/out_v_position_addsub0000<6>/CYINIT_1921 ),
    .I1(\vga_inst/out_v_position_addsub0000<6>/F ),
    .O(\vga_inst/out_v_position_addsub0000<6>/XORF_1922 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<6>/CYMUXF  (
    .IA(\vga_inst/out_v_position_addsub0000<6>/LOGIC_ZERO_1902 ),
    .IB(\vga_inst/out_v_position_addsub0000<6>/CYINIT_1921 ),
    .SEL(\vga_inst/out_v_position_addsub0000<6>/CYSELF_1908 ),
    .O(\vga_inst/Madd_out_v_position_addsub0000_cy[6] )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<6>/CYMUXF2  (
    .IA(\vga_inst/out_v_position_addsub0000<6>/LOGIC_ZERO_1902 ),
    .IB(\vga_inst/out_v_position_addsub0000<6>/LOGIC_ZERO_1902 ),
    .SEL(\vga_inst/out_v_position_addsub0000<6>/CYSELF_1908 ),
    .O(\vga_inst/out_v_position_addsub0000<6>/CYMUXF2_1903 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<6>/CYINIT  (
    .I(\vga_inst/Madd_out_v_position_addsub0000_cy[5] ),
    .O(\vga_inst/out_v_position_addsub0000<6>/CYINIT_1921 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<6>/CYSELF  (
    .I(\vga_inst/out_v_position_addsub0000<6>/F ),
    .O(\vga_inst/out_v_position_addsub0000<6>/CYSELF_1908 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<6>/YUSED  (
    .I(\vga_inst/out_v_position_addsub0000<6>/XORG_1910 ),
    .O(\vga_inst/out_v_position_addsub0000 [7])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<6>/XORG  (
    .I0(\vga_inst/Madd_out_v_position_addsub0000_cy[6] ),
    .I1(\vga_inst/out_v_position_addsub0000<6>/G ),
    .O(\vga_inst/out_v_position_addsub0000<6>/XORG_1910 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<6>/COUTUSED  (
    .I(\vga_inst/out_v_position_addsub0000<6>/CYMUXFAST_1907 ),
    .O(\vga_inst/Madd_out_v_position_addsub0000_cy[7] )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<6>/FASTCARRY  (
    .I(\vga_inst/Madd_out_v_position_addsub0000_cy[5] ),
    .O(\vga_inst/out_v_position_addsub0000<6>/FASTCARRY_1905 )
  );
  X_AND2   \vga_inst/out_v_position_addsub0000<6>/CYAND  (
    .I0(\vga_inst/out_v_position_addsub0000<6>/CYSELG_1893 ),
    .I1(\vga_inst/out_v_position_addsub0000<6>/CYSELF_1908 ),
    .O(\vga_inst/out_v_position_addsub0000<6>/CYAND_1906 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<6>/CYMUXFAST  (
    .IA(\vga_inst/out_v_position_addsub0000<6>/CYMUXG2_1904 ),
    .IB(\vga_inst/out_v_position_addsub0000<6>/FASTCARRY_1905 ),
    .SEL(\vga_inst/out_v_position_addsub0000<6>/CYAND_1906 ),
    .O(\vga_inst/out_v_position_addsub0000<6>/CYMUXFAST_1907 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<6>/CYMUXG2  (
    .IA(\vga_inst/out_v_position_addsub0000<6>/LOGIC_ZERO_1902 ),
    .IB(\vga_inst/out_v_position_addsub0000<6>/CYMUXF2_1903 ),
    .SEL(\vga_inst/out_v_position_addsub0000<6>/CYSELG_1893 ),
    .O(\vga_inst/out_v_position_addsub0000<6>/CYMUXG2_1904 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<6>/CYSELG  (
    .I(\vga_inst/out_v_position_addsub0000<6>/G ),
    .O(\vga_inst/out_v_position_addsub0000<6>/CYSELG_1893 )
  );
  X_ZERO   \vga_inst/out_v_position_addsub0000<8>/LOGIC_ZERO  (
    .O(\vga_inst/out_v_position_addsub0000<8>/LOGIC_ZERO_1940 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<8>/XUSED  (
    .I(\vga_inst/out_v_position_addsub0000<8>/XORF_1960 ),
    .O(\vga_inst/out_v_position_addsub0000 [8])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<8>/XORF  (
    .I0(\vga_inst/out_v_position_addsub0000<8>/CYINIT_1959 ),
    .I1(\vga_inst/out_v_position_addsub0000<8>/F ),
    .O(\vga_inst/out_v_position_addsub0000<8>/XORF_1960 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<8>/CYMUXF  (
    .IA(\vga_inst/out_v_position_addsub0000<8>/LOGIC_ZERO_1940 ),
    .IB(\vga_inst/out_v_position_addsub0000<8>/CYINIT_1959 ),
    .SEL(\vga_inst/out_v_position_addsub0000<8>/CYSELF_1946 ),
    .O(\vga_inst/Madd_out_v_position_addsub0000_cy[8] )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<8>/CYMUXF2  (
    .IA(\vga_inst/out_v_position_addsub0000<8>/LOGIC_ZERO_1940 ),
    .IB(\vga_inst/out_v_position_addsub0000<8>/LOGIC_ZERO_1940 ),
    .SEL(\vga_inst/out_v_position_addsub0000<8>/CYSELF_1946 ),
    .O(\vga_inst/out_v_position_addsub0000<8>/CYMUXF2_1941 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<8>/CYINIT  (
    .I(\vga_inst/Madd_out_v_position_addsub0000_cy[7] ),
    .O(\vga_inst/out_v_position_addsub0000<8>/CYINIT_1959 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<8>/CYSELF  (
    .I(\vga_inst/out_v_position_addsub0000<8>/F ),
    .O(\vga_inst/out_v_position_addsub0000<8>/CYSELF_1946 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<8>/YUSED  (
    .I(\vga_inst/out_v_position_addsub0000<8>/XORG_1948 ),
    .O(\vga_inst/out_v_position_addsub0000 [9])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<8>/XORG  (
    .I0(\vga_inst/Madd_out_v_position_addsub0000_cy[8] ),
    .I1(\vga_inst/out_v_position_addsub0000<8>/G ),
    .O(\vga_inst/out_v_position_addsub0000<8>/XORG_1948 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<8>/FASTCARRY  (
    .I(\vga_inst/Madd_out_v_position_addsub0000_cy[7] ),
    .O(\vga_inst/out_v_position_addsub0000<8>/FASTCARRY_1943 )
  );
  X_AND2   \vga_inst/out_v_position_addsub0000<8>/CYAND  (
    .I0(\vga_inst/out_v_position_addsub0000<8>/CYSELG_1931 ),
    .I1(\vga_inst/out_v_position_addsub0000<8>/CYSELF_1946 ),
    .O(\vga_inst/out_v_position_addsub0000<8>/CYAND_1944 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<8>/CYMUXFAST  (
    .IA(\vga_inst/out_v_position_addsub0000<8>/CYMUXG2_1942 ),
    .IB(\vga_inst/out_v_position_addsub0000<8>/FASTCARRY_1943 ),
    .SEL(\vga_inst/out_v_position_addsub0000<8>/CYAND_1944 ),
    .O(\vga_inst/out_v_position_addsub0000<8>/CYMUXFAST_1945 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<8>/CYMUXG2  (
    .IA(\vga_inst/out_v_position_addsub0000<8>/LOGIC_ZERO_1940 ),
    .IB(\vga_inst/out_v_position_addsub0000<8>/CYMUXF2_1941 ),
    .SEL(\vga_inst/out_v_position_addsub0000<8>/CYSELG_1931 ),
    .O(\vga_inst/out_v_position_addsub0000<8>/CYMUXG2_1942 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<8>/CYSELG  (
    .I(\vga_inst/out_v_position_addsub0000<8>/G ),
    .O(\vga_inst/out_v_position_addsub0000<8>/CYSELG_1931 )
  );
  X_ZERO   \vga_inst/out_v_position_addsub0000<10>/LOGIC_ZERO  (
    .O(\vga_inst/out_v_position_addsub0000<10>/LOGIC_ZERO_1990 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<10>/XUSED  (
    .I(\vga_inst/out_v_position_addsub0000<10>/XORF_1991 ),
    .O(\vga_inst/out_v_position_addsub0000 [10])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<10>/XORF  (
    .I0(\vga_inst/out_v_position_addsub0000<10>/CYINIT_1989 ),
    .I1(\vga_inst/out_v_position_addsub0000<10>/F ),
    .O(\vga_inst/out_v_position_addsub0000<10>/XORF_1991 )
  );
  X_MUX2   \vga_inst/out_v_position_addsub0000<10>/CYMUXF  (
    .IA(\vga_inst/out_v_position_addsub0000<10>/LOGIC_ZERO_1990 ),
    .IB(\vga_inst/out_v_position_addsub0000<10>/CYINIT_1989 ),
    .SEL(\vga_inst/out_v_position_addsub0000<10>/CYSELF_1980 ),
    .O(\vga_inst/Madd_out_v_position_addsub0000_cy[10] )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<10>/CYINIT  (
    .I(\vga_inst/out_v_position_addsub0000<8>/CYMUXFAST_1945 ),
    .O(\vga_inst/out_v_position_addsub0000<10>/CYINIT_1989 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<10>/CYSELF  (
    .I(\vga_inst/out_v_position_addsub0000<10>/F ),
    .O(\vga_inst/out_v_position_addsub0000<10>/CYSELF_1980 )
  );
  X_BUF   \vga_inst/out_v_position_addsub0000<10>/YUSED  (
    .I(\vga_inst/out_v_position_addsub0000<10>/XORG_1977 ),
    .O(\vga_inst/out_v_position_addsub0000 [11])
  );
  X_XOR2   \vga_inst/out_v_position_addsub0000<10>/XORG  (
    .I0(\vga_inst/Madd_out_v_position_addsub0000_cy[10] ),
    .I1(\vga_inst/out_v_position<11>_rt_1974 ),
    .O(\vga_inst/out_v_position_addsub0000<10>/XORG_1977 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position<11>_rt  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_v_position [11]),
    .ADR3(VCC),
    .O(\vga_inst/out_v_position<11>_rt_1974 )
  );
  X_ZERO   \vga_inst/out_h_position<0>/LOGIC_ZERO  (
    .O(\vga_inst/out_h_position<0>/LOGIC_ZERO_2013 )
  );
  X_ONE   \vga_inst/out_h_position<0>/LOGIC_ONE  (
    .O(\vga_inst/out_h_position<0>/LOGIC_ONE_2035 )
  );
  X_BUF   \vga_inst/out_h_position<0>/DXMUX  (
    .I(\vga_inst/out_h_position<0>/XORF_2036 ),
    .O(\vga_inst/out_h_position<0>/DXMUX_2038 )
  );
  X_XOR2   \vga_inst/out_h_position<0>/XORF  (
    .I0(\vga_inst/out_h_position<0>/CYINIT_2034 ),
    .I1(\vga_inst/Mcount_out_h_position_lut [0]),
    .O(\vga_inst/out_h_position<0>/XORF_2036 )
  );
  X_MUX2   \vga_inst/out_h_position<0>/CYMUXF  (
    .IA(\vga_inst/out_h_position<0>/LOGIC_ONE_2035 ),
    .IB(\vga_inst/out_h_position<0>/CYINIT_2034 ),
    .SEL(\vga_inst/out_h_position<0>/CYSELF_2025 ),
    .O(\vga_inst/Mcount_out_h_position_cy[0] )
  );
  X_BUF   \vga_inst/out_h_position<0>/CYINIT  (
    .I(\vga_inst/out_h_position<0>/BXINV_2023 ),
    .O(\vga_inst/out_h_position<0>/CYINIT_2034 )
  );
  X_BUF   \vga_inst/out_h_position<0>/CYSELF  (
    .I(\vga_inst/Mcount_out_h_position_lut [0]),
    .O(\vga_inst/out_h_position<0>/CYSELF_2025 )
  );
  X_BUF   \vga_inst/out_h_position<0>/BXINV  (
    .I(1'b0),
    .O(\vga_inst/out_h_position<0>/BXINV_2023 )
  );
  X_BUF   \vga_inst/out_h_position<0>/DYMUX  (
    .I(\vga_inst/out_h_position<0>/XORG_2016 ),
    .O(\vga_inst/out_h_position<0>/DYMUX_2018 )
  );
  X_XOR2   \vga_inst/out_h_position<0>/XORG  (
    .I0(\vga_inst/Mcount_out_h_position_cy[0] ),
    .I1(\vga_inst/out_h_position<0>/G ),
    .O(\vga_inst/out_h_position<0>/XORG_2016 )
  );
  X_BUF   \vga_inst/out_h_position<0>/COUTUSED  (
    .I(\vga_inst/out_h_position<0>/CYMUXG_2015 ),
    .O(\vga_inst/Mcount_out_h_position_cy[1] )
  );
  X_MUX2   \vga_inst/out_h_position<0>/CYMUXG  (
    .IA(\vga_inst/out_h_position<0>/LOGIC_ZERO_2013 ),
    .IB(\vga_inst/Mcount_out_h_position_cy[0] ),
    .SEL(\vga_inst/out_h_position<0>/CYSELG_2004 ),
    .O(\vga_inst/out_h_position<0>/CYMUXG_2015 )
  );
  X_BUF   \vga_inst/out_h_position<0>/CYSELG  (
    .I(\vga_inst/out_h_position<0>/G ),
    .O(\vga_inst/out_h_position<0>/CYSELG_2004 )
  );
  X_BUF   \vga_inst/out_h_position<0>/SRINV  (
    .I(\vga_inst/h_reset ),
    .O(\vga_inst/out_h_position<0>/SRINV_2002 )
  );
  X_BUF   \vga_inst/out_h_position<0>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_position<0>/CLKINV_2001 )
  );
  X_ZERO   \vga_inst/out_h_position<2>/LOGIC_ZERO  (
    .O(\vga_inst/out_h_position<2>/LOGIC_ZERO_2063 )
  );
  X_BUF   \vga_inst/out_h_position<2>/DXMUX  (
    .I(\vga_inst/out_h_position<2>/XORF_2088 ),
    .O(\vga_inst/out_h_position<2>/DXMUX_2090 )
  );
  X_XOR2   \vga_inst/out_h_position<2>/XORF  (
    .I0(\vga_inst/out_h_position<2>/CYINIT_2087 ),
    .I1(\vga_inst/out_h_position<2>/F ),
    .O(\vga_inst/out_h_position<2>/XORF_2088 )
  );
  X_MUX2   \vga_inst/out_h_position<2>/CYMUXF  (
    .IA(\vga_inst/out_h_position<2>/LOGIC_ZERO_2063 ),
    .IB(\vga_inst/out_h_position<2>/CYINIT_2087 ),
    .SEL(\vga_inst/out_h_position<2>/CYSELF_2069 ),
    .O(\vga_inst/Mcount_out_h_position_cy[2] )
  );
  X_MUX2   \vga_inst/out_h_position<2>/CYMUXF2  (
    .IA(\vga_inst/out_h_position<2>/LOGIC_ZERO_2063 ),
    .IB(\vga_inst/out_h_position<2>/LOGIC_ZERO_2063 ),
    .SEL(\vga_inst/out_h_position<2>/CYSELF_2069 ),
    .O(\vga_inst/out_h_position<2>/CYMUXF2_2064 )
  );
  X_BUF   \vga_inst/out_h_position<2>/CYINIT  (
    .I(\vga_inst/Mcount_out_h_position_cy[1] ),
    .O(\vga_inst/out_h_position<2>/CYINIT_2087 )
  );
  X_BUF   \vga_inst/out_h_position<2>/CYSELF  (
    .I(\vga_inst/out_h_position<2>/F ),
    .O(\vga_inst/out_h_position<2>/CYSELF_2069 )
  );
  X_BUF   \vga_inst/out_h_position<2>/DYMUX  (
    .I(\vga_inst/out_h_position<2>/XORG_2071 ),
    .O(\vga_inst/out_h_position<2>/DYMUX_2073 )
  );
  X_XOR2   \vga_inst/out_h_position<2>/XORG  (
    .I0(\vga_inst/Mcount_out_h_position_cy[2] ),
    .I1(\vga_inst/out_h_position<2>/G ),
    .O(\vga_inst/out_h_position<2>/XORG_2071 )
  );
  X_BUF   \vga_inst/out_h_position<2>/COUTUSED  (
    .I(\vga_inst/out_h_position<2>/CYMUXFAST_2068 ),
    .O(\vga_inst/Mcount_out_h_position_cy[3] )
  );
  X_BUF   \vga_inst/out_h_position<2>/FASTCARRY  (
    .I(\vga_inst/Mcount_out_h_position_cy[1] ),
    .O(\vga_inst/out_h_position<2>/FASTCARRY_2066 )
  );
  X_AND2   \vga_inst/out_h_position<2>/CYAND  (
    .I0(\vga_inst/out_h_position<2>/CYSELG_2054 ),
    .I1(\vga_inst/out_h_position<2>/CYSELF_2069 ),
    .O(\vga_inst/out_h_position<2>/CYAND_2067 )
  );
  X_MUX2   \vga_inst/out_h_position<2>/CYMUXFAST  (
    .IA(\vga_inst/out_h_position<2>/CYMUXG2_2065 ),
    .IB(\vga_inst/out_h_position<2>/FASTCARRY_2066 ),
    .SEL(\vga_inst/out_h_position<2>/CYAND_2067 ),
    .O(\vga_inst/out_h_position<2>/CYMUXFAST_2068 )
  );
  X_MUX2   \vga_inst/out_h_position<2>/CYMUXG2  (
    .IA(\vga_inst/out_h_position<2>/LOGIC_ZERO_2063 ),
    .IB(\vga_inst/out_h_position<2>/CYMUXF2_2064 ),
    .SEL(\vga_inst/out_h_position<2>/CYSELG_2054 ),
    .O(\vga_inst/out_h_position<2>/CYMUXG2_2065 )
  );
  X_BUF   \vga_inst/out_h_position<2>/CYSELG  (
    .I(\vga_inst/out_h_position<2>/G ),
    .O(\vga_inst/out_h_position<2>/CYSELG_2054 )
  );
  X_BUF   \vga_inst/out_h_position<2>/SRINV  (
    .I(\vga_inst/h_reset ),
    .O(\vga_inst/out_h_position<2>/SRINV_2052 )
  );
  X_BUF   \vga_inst/out_h_position<2>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_position<2>/CLKINV_2051 )
  );
  X_ZERO   \vga_inst/out_h_position<4>/LOGIC_ZERO  (
    .O(\vga_inst/out_h_position<4>/LOGIC_ZERO_2115 )
  );
  X_BUF   \vga_inst/out_h_position<4>/DXMUX  (
    .I(\vga_inst/out_h_position<4>/XORF_2140 ),
    .O(\vga_inst/out_h_position<4>/DXMUX_2142 )
  );
  X_XOR2   \vga_inst/out_h_position<4>/XORF  (
    .I0(\vga_inst/out_h_position<4>/CYINIT_2139 ),
    .I1(\vga_inst/out_h_position<4>/F ),
    .O(\vga_inst/out_h_position<4>/XORF_2140 )
  );
  X_MUX2   \vga_inst/out_h_position<4>/CYMUXF  (
    .IA(\vga_inst/out_h_position<4>/LOGIC_ZERO_2115 ),
    .IB(\vga_inst/out_h_position<4>/CYINIT_2139 ),
    .SEL(\vga_inst/out_h_position<4>/CYSELF_2121 ),
    .O(\vga_inst/Mcount_out_h_position_cy[4] )
  );
  X_MUX2   \vga_inst/out_h_position<4>/CYMUXF2  (
    .IA(\vga_inst/out_h_position<4>/LOGIC_ZERO_2115 ),
    .IB(\vga_inst/out_h_position<4>/LOGIC_ZERO_2115 ),
    .SEL(\vga_inst/out_h_position<4>/CYSELF_2121 ),
    .O(\vga_inst/out_h_position<4>/CYMUXF2_2116 )
  );
  X_BUF   \vga_inst/out_h_position<4>/CYINIT  (
    .I(\vga_inst/Mcount_out_h_position_cy[3] ),
    .O(\vga_inst/out_h_position<4>/CYINIT_2139 )
  );
  X_BUF   \vga_inst/out_h_position<4>/CYSELF  (
    .I(\vga_inst/out_h_position<4>/F ),
    .O(\vga_inst/out_h_position<4>/CYSELF_2121 )
  );
  X_BUF   \vga_inst/out_h_position<4>/DYMUX  (
    .I(\vga_inst/out_h_position<4>/XORG_2123 ),
    .O(\vga_inst/out_h_position<4>/DYMUX_2125 )
  );
  X_XOR2   \vga_inst/out_h_position<4>/XORG  (
    .I0(\vga_inst/Mcount_out_h_position_cy[4] ),
    .I1(\vga_inst/out_h_position<4>/G ),
    .O(\vga_inst/out_h_position<4>/XORG_2123 )
  );
  X_BUF   \vga_inst/out_h_position<4>/COUTUSED  (
    .I(\vga_inst/out_h_position<4>/CYMUXFAST_2120 ),
    .O(\vga_inst/Mcount_out_h_position_cy[5] )
  );
  X_BUF   \vga_inst/out_h_position<4>/FASTCARRY  (
    .I(\vga_inst/Mcount_out_h_position_cy[3] ),
    .O(\vga_inst/out_h_position<4>/FASTCARRY_2118 )
  );
  X_AND2   \vga_inst/out_h_position<4>/CYAND  (
    .I0(\vga_inst/out_h_position<4>/CYSELG_2106 ),
    .I1(\vga_inst/out_h_position<4>/CYSELF_2121 ),
    .O(\vga_inst/out_h_position<4>/CYAND_2119 )
  );
  X_MUX2   \vga_inst/out_h_position<4>/CYMUXFAST  (
    .IA(\vga_inst/out_h_position<4>/CYMUXG2_2117 ),
    .IB(\vga_inst/out_h_position<4>/FASTCARRY_2118 ),
    .SEL(\vga_inst/out_h_position<4>/CYAND_2119 ),
    .O(\vga_inst/out_h_position<4>/CYMUXFAST_2120 )
  );
  X_MUX2   \vga_inst/out_h_position<4>/CYMUXG2  (
    .IA(\vga_inst/out_h_position<4>/LOGIC_ZERO_2115 ),
    .IB(\vga_inst/out_h_position<4>/CYMUXF2_2116 ),
    .SEL(\vga_inst/out_h_position<4>/CYSELG_2106 ),
    .O(\vga_inst/out_h_position<4>/CYMUXG2_2117 )
  );
  X_BUF   \vga_inst/out_h_position<4>/CYSELG  (
    .I(\vga_inst/out_h_position<4>/G ),
    .O(\vga_inst/out_h_position<4>/CYSELG_2106 )
  );
  X_BUF   \vga_inst/out_h_position<4>/SRINV  (
    .I(\vga_inst/h_reset ),
    .O(\vga_inst/out_h_position<4>/SRINV_2104 )
  );
  X_BUF   \vga_inst/out_h_position<4>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_position<4>/CLKINV_2103 )
  );
  X_ZERO   \vga_inst/out_h_position<6>/LOGIC_ZERO  (
    .O(\vga_inst/out_h_position<6>/LOGIC_ZERO_2167 )
  );
  X_BUF   \vga_inst/out_h_position<6>/DXMUX  (
    .I(\vga_inst/out_h_position<6>/XORF_2192 ),
    .O(\vga_inst/out_h_position<6>/DXMUX_2194 )
  );
  X_XOR2   \vga_inst/out_h_position<6>/XORF  (
    .I0(\vga_inst/out_h_position<6>/CYINIT_2191 ),
    .I1(\vga_inst/out_h_position<6>/F ),
    .O(\vga_inst/out_h_position<6>/XORF_2192 )
  );
  X_MUX2   \vga_inst/out_h_position<6>/CYMUXF  (
    .IA(\vga_inst/out_h_position<6>/LOGIC_ZERO_2167 ),
    .IB(\vga_inst/out_h_position<6>/CYINIT_2191 ),
    .SEL(\vga_inst/out_h_position<6>/CYSELF_2173 ),
    .O(\vga_inst/Mcount_out_h_position_cy[6] )
  );
  X_MUX2   \vga_inst/out_h_position<6>/CYMUXF2  (
    .IA(\vga_inst/out_h_position<6>/LOGIC_ZERO_2167 ),
    .IB(\vga_inst/out_h_position<6>/LOGIC_ZERO_2167 ),
    .SEL(\vga_inst/out_h_position<6>/CYSELF_2173 ),
    .O(\vga_inst/out_h_position<6>/CYMUXF2_2168 )
  );
  X_BUF   \vga_inst/out_h_position<6>/CYINIT  (
    .I(\vga_inst/Mcount_out_h_position_cy[5] ),
    .O(\vga_inst/out_h_position<6>/CYINIT_2191 )
  );
  X_BUF   \vga_inst/out_h_position<6>/CYSELF  (
    .I(\vga_inst/out_h_position<6>/F ),
    .O(\vga_inst/out_h_position<6>/CYSELF_2173 )
  );
  X_BUF   \vga_inst/out_h_position<6>/DYMUX  (
    .I(\vga_inst/out_h_position<6>/XORG_2175 ),
    .O(\vga_inst/out_h_position<6>/DYMUX_2177 )
  );
  X_XOR2   \vga_inst/out_h_position<6>/XORG  (
    .I0(\vga_inst/Mcount_out_h_position_cy[6] ),
    .I1(\vga_inst/out_h_position<6>/G ),
    .O(\vga_inst/out_h_position<6>/XORG_2175 )
  );
  X_BUF   \vga_inst/out_h_position<6>/COUTUSED  (
    .I(\vga_inst/out_h_position<6>/CYMUXFAST_2172 ),
    .O(\vga_inst/Mcount_out_h_position_cy[7] )
  );
  X_BUF   \vga_inst/out_h_position<6>/FASTCARRY  (
    .I(\vga_inst/Mcount_out_h_position_cy[5] ),
    .O(\vga_inst/out_h_position<6>/FASTCARRY_2170 )
  );
  X_AND2   \vga_inst/out_h_position<6>/CYAND  (
    .I0(\vga_inst/out_h_position<6>/CYSELG_2158 ),
    .I1(\vga_inst/out_h_position<6>/CYSELF_2173 ),
    .O(\vga_inst/out_h_position<6>/CYAND_2171 )
  );
  X_MUX2   \vga_inst/out_h_position<6>/CYMUXFAST  (
    .IA(\vga_inst/out_h_position<6>/CYMUXG2_2169 ),
    .IB(\vga_inst/out_h_position<6>/FASTCARRY_2170 ),
    .SEL(\vga_inst/out_h_position<6>/CYAND_2171 ),
    .O(\vga_inst/out_h_position<6>/CYMUXFAST_2172 )
  );
  X_MUX2   \vga_inst/out_h_position<6>/CYMUXG2  (
    .IA(\vga_inst/out_h_position<6>/LOGIC_ZERO_2167 ),
    .IB(\vga_inst/out_h_position<6>/CYMUXF2_2168 ),
    .SEL(\vga_inst/out_h_position<6>/CYSELG_2158 ),
    .O(\vga_inst/out_h_position<6>/CYMUXG2_2169 )
  );
  X_BUF   \vga_inst/out_h_position<6>/CYSELG  (
    .I(\vga_inst/out_h_position<6>/G ),
    .O(\vga_inst/out_h_position<6>/CYSELG_2158 )
  );
  X_BUF   \vga_inst/out_h_position<6>/SRINV  (
    .I(\vga_inst/h_reset ),
    .O(\vga_inst/out_h_position<6>/SRINV_2156 )
  );
  X_BUF   \vga_inst/out_h_position<6>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_position<6>/CLKINV_2155 )
  );
  X_ZERO   \vga_inst/out_h_position<8>/LOGIC_ZERO  (
    .O(\vga_inst/out_h_position<8>/LOGIC_ZERO_2219 )
  );
  X_BUF   \vga_inst/out_h_position<8>/DXMUX  (
    .I(\vga_inst/out_h_position<8>/XORF_2244 ),
    .O(\vga_inst/out_h_position<8>/DXMUX_2246 )
  );
  X_XOR2   \vga_inst/out_h_position<8>/XORF  (
    .I0(\vga_inst/out_h_position<8>/CYINIT_2243 ),
    .I1(\vga_inst/out_h_position<8>/F ),
    .O(\vga_inst/out_h_position<8>/XORF_2244 )
  );
  X_MUX2   \vga_inst/out_h_position<8>/CYMUXF  (
    .IA(\vga_inst/out_h_position<8>/LOGIC_ZERO_2219 ),
    .IB(\vga_inst/out_h_position<8>/CYINIT_2243 ),
    .SEL(\vga_inst/out_h_position<8>/CYSELF_2225 ),
    .O(\vga_inst/Mcount_out_h_position_cy[8] )
  );
  X_MUX2   \vga_inst/out_h_position<8>/CYMUXF2  (
    .IA(\vga_inst/out_h_position<8>/LOGIC_ZERO_2219 ),
    .IB(\vga_inst/out_h_position<8>/LOGIC_ZERO_2219 ),
    .SEL(\vga_inst/out_h_position<8>/CYSELF_2225 ),
    .O(\vga_inst/out_h_position<8>/CYMUXF2_2220 )
  );
  X_BUF   \vga_inst/out_h_position<8>/CYINIT  (
    .I(\vga_inst/Mcount_out_h_position_cy[7] ),
    .O(\vga_inst/out_h_position<8>/CYINIT_2243 )
  );
  X_BUF   \vga_inst/out_h_position<8>/CYSELF  (
    .I(\vga_inst/out_h_position<8>/F ),
    .O(\vga_inst/out_h_position<8>/CYSELF_2225 )
  );
  X_BUF   \vga_inst/out_h_position<8>/DYMUX  (
    .I(\vga_inst/out_h_position<8>/XORG_2227 ),
    .O(\vga_inst/out_h_position<8>/DYMUX_2229 )
  );
  X_XOR2   \vga_inst/out_h_position<8>/XORG  (
    .I0(\vga_inst/Mcount_out_h_position_cy[8] ),
    .I1(\vga_inst/out_h_position<8>/G ),
    .O(\vga_inst/out_h_position<8>/XORG_2227 )
  );
  X_BUF   \vga_inst/out_h_position<8>/FASTCARRY  (
    .I(\vga_inst/Mcount_out_h_position_cy[7] ),
    .O(\vga_inst/out_h_position<8>/FASTCARRY_2222 )
  );
  X_AND2   \vga_inst/out_h_position<8>/CYAND  (
    .I0(\vga_inst/out_h_position<8>/CYSELG_2210 ),
    .I1(\vga_inst/out_h_position<8>/CYSELF_2225 ),
    .O(\vga_inst/out_h_position<8>/CYAND_2223 )
  );
  X_MUX2   \vga_inst/out_h_position<8>/CYMUXFAST  (
    .IA(\vga_inst/out_h_position<8>/CYMUXG2_2221 ),
    .IB(\vga_inst/out_h_position<8>/FASTCARRY_2222 ),
    .SEL(\vga_inst/out_h_position<8>/CYAND_2223 ),
    .O(\vga_inst/out_h_position<8>/CYMUXFAST_2224 )
  );
  X_MUX2   \vga_inst/out_h_position<8>/CYMUXG2  (
    .IA(\vga_inst/out_h_position<8>/LOGIC_ZERO_2219 ),
    .IB(\vga_inst/out_h_position<8>/CYMUXF2_2220 ),
    .SEL(\vga_inst/out_h_position<8>/CYSELG_2210 ),
    .O(\vga_inst/out_h_position<8>/CYMUXG2_2221 )
  );
  X_BUF   \vga_inst/out_h_position<8>/CYSELG  (
    .I(\vga_inst/out_h_position<8>/G ),
    .O(\vga_inst/out_h_position<8>/CYSELG_2210 )
  );
  X_BUF   \vga_inst/out_h_position<8>/SRINV  (
    .I(\vga_inst/h_reset ),
    .O(\vga_inst/out_h_position<8>/SRINV_2208 )
  );
  X_BUF   \vga_inst/out_h_position<8>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_position<8>/CLKINV_2207 )
  );
  X_ZERO   \vga_inst/out_h_position<10>/LOGIC_ZERO  (
    .O(\vga_inst/out_h_position<10>/LOGIC_ZERO_2288 )
  );
  X_BUF   \vga_inst/out_h_position<10>/DXMUX  (
    .I(\vga_inst/out_h_position<10>/XORF_2289 ),
    .O(\vga_inst/out_h_position<10>/DXMUX_2291 )
  );
  X_XOR2   \vga_inst/out_h_position<10>/XORF  (
    .I0(\vga_inst/out_h_position<10>/CYINIT_2287 ),
    .I1(\vga_inst/out_h_position<10>/F ),
    .O(\vga_inst/out_h_position<10>/XORF_2289 )
  );
  X_MUX2   \vga_inst/out_h_position<10>/CYMUXF  (
    .IA(\vga_inst/out_h_position<10>/LOGIC_ZERO_2288 ),
    .IB(\vga_inst/out_h_position<10>/CYINIT_2287 ),
    .SEL(\vga_inst/out_h_position<10>/CYSELF_2278 ),
    .O(\vga_inst/Mcount_out_h_position_cy[10] )
  );
  X_BUF   \vga_inst/out_h_position<10>/CYINIT  (
    .I(\vga_inst/out_h_position<8>/CYMUXFAST_2224 ),
    .O(\vga_inst/out_h_position<10>/CYINIT_2287 )
  );
  X_BUF   \vga_inst/out_h_position<10>/CYSELF  (
    .I(\vga_inst/out_h_position<10>/F ),
    .O(\vga_inst/out_h_position<10>/CYSELF_2278 )
  );
  X_BUF   \vga_inst/out_h_position<10>/DYMUX  (
    .I(\vga_inst/out_h_position<10>/XORG_2270 ),
    .O(\vga_inst/out_h_position<10>/DYMUX_2272 )
  );
  X_XOR2   \vga_inst/out_h_position<10>/XORG  (
    .I0(\vga_inst/Mcount_out_h_position_cy[10] ),
    .I1(\vga_inst/out_h_position<11>_rt_2267 ),
    .O(\vga_inst/out_h_position<10>/XORG_2270 )
  );
  X_BUF   \vga_inst/out_h_position<10>/SRINV  (
    .I(\vga_inst/h_reset ),
    .O(\vga_inst/out_h_position<10>/SRINV_2259 )
  );
  X_BUF   \vga_inst/out_h_position<10>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_position<10>/CLKINV_2258 )
  );
  X_SFF   \vga_inst/out_h_position_11  (
    .I(\vga_inst/out_h_position<10>/DYMUX_2272 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<10>/CLKINV_2258 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<10>/SRINV_2259 ),
    .O(\vga_inst/out_h_position [11])
  );
  X_LUT4MUX16   \vga_inst/out_h_position<11>_rt  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_h_position [11]),
    .O(\vga_inst/out_h_position<11>_rt_2267 )
  );
  X_ZERO   \vga_inst/out_h_active_position<4>/LOGIC_ZERO  (
    .O(\vga_inst/out_h_active_position<4>/LOGIC_ZERO_2318 )
  );
  X_MUX2   \vga_inst/out_h_active_position<4>/CYMUXF  (
    .IA(\vga_inst/out_h_active_position<4>/LOGIC_ZERO_2318 ),
    .IB(\vga_inst/out_h_active_position<4>/CYINIT_2335 ),
    .SEL(\vga_inst/out_h_active_position<4>/CYSELF_2329 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_cy [0])
  );
  X_BUF   \vga_inst/out_h_active_position<4>/CYINIT  (
    .I(\vga_inst/out_h_active_position<4>/BXINV_2327 ),
    .O(\vga_inst/out_h_active_position<4>/CYINIT_2335 )
  );
  X_BUF   \vga_inst/out_h_active_position<4>/CYSELF  (
    .I(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[0] ),
    .O(\vga_inst/out_h_active_position<4>/CYSELF_2329 )
  );
  X_BUF   \vga_inst/out_h_active_position<4>/BXINV  (
    .I(1'b1),
    .O(\vga_inst/out_h_active_position<4>/BXINV_2327 )
  );
  X_BUF   \vga_inst/out_h_active_position<4>/DYMUX  (
    .I(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[1] ),
    .O(\vga_inst/out_h_active_position<4>/DYMUX_2322 )
  );
  X_MUX2   \vga_inst/out_h_active_position<4>/CYMUXG  (
    .IA(\vga_inst/out_h_active_position<4>/LOGIC_ZERO_2318 ),
    .IB(\vga_inst/Mcompar_h_sync_cmp_le0000_cy [0]),
    .SEL(\vga_inst/out_h_active_position<4>/CYSELG_2309 ),
    .O(\vga_inst/out_h_active_position<4>/CYMUXG_2320 )
  );
  X_BUF   \vga_inst/out_h_active_position<4>/CYSELG  (
    .I(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[1] ),
    .O(\vga_inst/out_h_active_position<4>/CYSELG_2309 )
  );
  X_BUF   \vga_inst/out_h_active_position<4>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_h_active_position<4>/SRINV_2307 )
  );
  X_BUF   \vga_inst/out_h_active_position<4>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_active_position<4>/CLKINV_2306 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<1>_INV_0  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[1] )
  );
  X_ZERO   \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/LOGIC_ZERO_2350 )
  );
  X_ONE   \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/LOGIC_ONE_2366 )
  );
  X_MUX2   \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXF2  (
    .IA(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/LOGIC_ONE_2366 ),
    .IB(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/LOGIC_ONE_2366 ),
    .SEL(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYSELF_2356 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXF2_2351 )
  );
  X_BUF   \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYSELF  (
    .I(\vga_inst/out_h_position<5>_rt ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYSELF_2356 )
  );
  X_BUF   \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/FASTCARRY  (
    .I(\vga_inst/out_h_active_position<4>/CYMUXG_2320 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/FASTCARRY_2353 )
  );
  X_AND2   \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYAND  (
    .I0(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYSELG_2342 ),
    .I1(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYSELF_2356 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYAND_2354 )
  );
  X_MUX2   \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXFAST  (
    .IA(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXG2_2352 ),
    .IB(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/FASTCARRY_2353 ),
    .SEL(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYAND_2354 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXFAST_2355 )
  );
  X_MUX2   \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXG2  (
    .IA(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/LOGIC_ZERO_2350 ),
    .IB(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXF2_2351 ),
    .SEL(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYSELG_2342 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXG2_2352 )
  );
  X_BUF   \vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYSELG  (
    .I(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[3] ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYSELG_2342 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<3>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [7]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_h_position [6]),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[3] )
  );
  X_ZERO   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/LOGIC_ZERO_2383 )
  );
  X_ONE   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/LOGIC_ONE_2399 )
  );
  X_MUX2   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXF2  (
    .IA(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/LOGIC_ONE_2399 ),
    .IB(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/LOGIC_ONE_2399 ),
    .SEL(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYSELF_2389 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXF2_2384 )
  );
  X_BUF   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYSELF  (
    .I(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[4] ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYSELF_2389 )
  );
  X_BUF   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/YUSED  (
    .I(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[5] ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>_0 )
  );
  X_BUF   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/COUTUSED  (
    .I(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXFAST_2388 ),
    .O(\vga_inst/h_sync_cmp_le0000 )
  );
  X_BUF   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/FASTCARRY  (
    .I(\vga_inst/Mcompar_h_sync_cmp_le0000_cy<3>/CYMUXFAST_2355 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/FASTCARRY_2386 )
  );
  X_AND2   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYAND  (
    .I0(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYSELG_2375 ),
    .I1(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYSELF_2389 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYAND_2387 )
  );
  X_MUX2   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXFAST  (
    .IA(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXG2_2385 ),
    .IB(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/FASTCARRY_2386 ),
    .SEL(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYAND_2387 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXFAST_2388 )
  );
  X_MUX2   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXG2  (
    .IA(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/LOGIC_ZERO_2383 ),
    .IB(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXF2_2384 ),
    .SEL(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYSELG_2375 ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYMUXG2_2385 )
  );
  X_BUF   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYSELG  (
    .I(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[5] ),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>/CYSELG_2375 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_h_position [11]),
    .ADR2(\vga_inst/out_h_position [10]),
    .ADR3(VCC),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[5] )
  );
  X_ONE   \vga_inst/Mcompar_v_reset_cy<1>/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_v_reset_cy<1>/LOGIC_ONE_2416 )
  );
  X_ZERO   \vga_inst/Mcompar_v_reset_cy<1>/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_v_reset_cy<1>/LOGIC_ZERO_2429 )
  );
  X_MUX2   \vga_inst/Mcompar_v_reset_cy<1>/CYMUXF  (
    .IA(\vga_inst/Mcompar_v_reset_cy<1>/LOGIC_ZERO_2429 ),
    .IB(\vga_inst/Mcompar_v_reset_cy<1>/CYINIT_2428 ),
    .SEL(\vga_inst/Mcompar_v_reset_cy<1>/CYSELF_2421 ),
    .O(\vga_inst/Mcompar_v_reset_cy [0])
  );
  X_BUF   \vga_inst/Mcompar_v_reset_cy<1>/CYINIT  (
    .I(\vga_inst/Mcompar_v_reset_cy<1>/BXINV_2419 ),
    .O(\vga_inst/Mcompar_v_reset_cy<1>/CYINIT_2428 )
  );
  X_BUF   \vga_inst/Mcompar_v_reset_cy<1>/CYSELF  (
    .I(\vga_inst/Mcompar_v_reset_lut[0] ),
    .O(\vga_inst/Mcompar_v_reset_cy<1>/CYSELF_2421 )
  );
  X_BUF   \vga_inst/Mcompar_v_reset_cy<1>/BXINV  (
    .I(1'b1),
    .O(\vga_inst/Mcompar_v_reset_cy<1>/BXINV_2419 )
  );
  X_MUX2   \vga_inst/Mcompar_v_reset_cy<1>/CYMUXG  (
    .IA(\vga_inst/Mcompar_v_reset_cy<1>/LOGIC_ONE_2416 ),
    .IB(\vga_inst/Mcompar_v_reset_cy [0]),
    .SEL(\vga_inst/Mcompar_v_reset_cy<1>/CYSELG_2410 ),
    .O(\vga_inst/Mcompar_v_reset_cy<1>/CYMUXG_2418 )
  );
  X_BUF   \vga_inst/Mcompar_v_reset_cy<1>/CYSELG  (
    .I(\vga_inst/Mcompar_v_reset_lut[1] ),
    .O(\vga_inst/Mcompar_v_reset_cy<1>/CYSELG_2410 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_v_reset_lut<1>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_v_position [6]),
    .ADR1(\vga_inst/out_v_position [5]),
    .ADR2(\vga_inst/out_v_position [3]),
    .ADR3(\vga_inst/out_v_position [4]),
    .O(\vga_inst/Mcompar_v_reset_lut[1] )
  );
  X_ZERO   \vga_inst/Mcompar_v_reset_cy<3>/LOGIC_ZERO  (
    .O(\vga_inst/Mcompar_v_reset_cy<3>/LOGIC_ZERO_2445 )
  );
  X_ONE   \vga_inst/Mcompar_v_reset_cy<3>/LOGIC_ONE  (
    .O(\vga_inst/Mcompar_v_reset_cy<3>/LOGIC_ONE_2460 )
  );
  X_MUX2   \vga_inst/Mcompar_v_reset_cy<3>/CYMUXF2  (
    .IA(\vga_inst/Mcompar_v_reset_cy<3>/LOGIC_ONE_2460 ),
    .IB(\vga_inst/Mcompar_v_reset_cy<3>/LOGIC_ONE_2460 ),
    .SEL(\vga_inst/Mcompar_v_reset_cy<3>/CYSELF_2451 ),
    .O(\vga_inst/Mcompar_v_reset_cy<3>/CYMUXF2_2446 )
  );
  X_BUF   \vga_inst/Mcompar_v_reset_cy<3>/CYSELF  (
    .I(\vga_inst/Mcompar_v_reset_lut[2] ),
    .O(\vga_inst/Mcompar_v_reset_cy<3>/CYSELF_2451 )
  );
  X_BUF   \vga_inst/Mcompar_v_reset_cy<3>/FASTCARRY  (
    .I(\vga_inst/Mcompar_v_reset_cy<1>/CYMUXG_2418 ),
    .O(\vga_inst/Mcompar_v_reset_cy<3>/FASTCARRY_2448 )
  );
  X_AND2   \vga_inst/Mcompar_v_reset_cy<3>/CYAND  (
    .I0(\vga_inst/Mcompar_v_reset_cy<3>/CYSELG_2436 ),
    .I1(\vga_inst/Mcompar_v_reset_cy<3>/CYSELF_2451 ),
    .O(\vga_inst/Mcompar_v_reset_cy<3>/CYAND_2449 )
  );
  X_MUX2   \vga_inst/Mcompar_v_reset_cy<3>/CYMUXFAST  (
    .IA(\vga_inst/Mcompar_v_reset_cy<3>/CYMUXG2_2447 ),
    .IB(\vga_inst/Mcompar_v_reset_cy<3>/FASTCARRY_2448 ),
    .SEL(\vga_inst/Mcompar_v_reset_cy<3>/CYAND_2449 ),
    .O(\vga_inst/Mcompar_v_reset_cy<3>/CYMUXFAST_2450 )
  );
  X_MUX2   \vga_inst/Mcompar_v_reset_cy<3>/CYMUXG2  (
    .IA(\vga_inst/Mcompar_v_reset_cy<3>/LOGIC_ZERO_2445 ),
    .IB(\vga_inst/Mcompar_v_reset_cy<3>/CYMUXF2_2446 ),
    .SEL(\vga_inst/Mcompar_v_reset_cy<3>/CYSELG_2436 ),
    .O(\vga_inst/Mcompar_v_reset_cy<3>/CYMUXG2_2447 )
  );
  X_BUF   \vga_inst/Mcompar_v_reset_cy<3>/CYSELG  (
    .I(\vga_inst/Mcompar_v_reset_cy<3>/G ),
    .O(\vga_inst/Mcompar_v_reset_cy<3>/CYSELG_2436 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position<9>_rt.2  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [9]),
    .O(\vga_inst/Mcompar_v_reset_cy<3>/G )
  );
  X_ONE   \vga_inst/out_v_position<11>/LOGIC_ONE  (
    .O(\vga_inst/out_v_position<11>/LOGIC_ONE_2496 )
  );
  X_MUX2   \vga_inst/out_v_position<11>/CYMUXF  (
    .IA(\vga_inst/out_v_position<11>/LOGIC_ONE_2496 ),
    .IB(\vga_inst/out_v_position<11>/CYINIT_2495 ),
    .SEL(\vga_inst/out_v_position<11>/CYSELF_2487 ),
    .O(\vga_inst/v_sync_cmp_ge0000 )
  );
  X_BUF   \vga_inst/out_v_position<11>/CYINIT  (
    .I(\vga_inst/Mcompar_v_reset_cy<3>/CYMUXFAST_2450 ),
    .O(\vga_inst/out_v_position<11>/CYINIT_2495 )
  );
  X_BUF   \vga_inst/out_v_position<11>/CYSELF  (
    .I(\vga_inst/Mcompar_v_reset_lut[4] ),
    .O(\vga_inst/out_v_position<11>/CYSELF_2487 )
  );
  X_BUF   \vga_inst/out_v_position<11>/DYMUX  (
    .I(\vga_inst/out_v_position_mux0000<0>1 ),
    .O(\vga_inst/out_v_position<11>/DYMUX_2481 )
  );
  X_BUF   \vga_inst/out_v_position<11>/SRINV  (
    .I(\vga_inst/v_reset2_0 ),
    .O(\vga_inst/out_v_position<11>/SRINV_2472 )
  );
  X_BUF   \vga_inst/out_v_position<11>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_position<11>/CLKINV_2471 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<0>11  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/h_at_max_0 ),
    .ADR1(\vga_inst/out_v_position_addsub0000 [11]),
    .ADR2(\vga_inst/out_v_position [11]),
    .ADR3(VCC),
    .O(\vga_inst/out_v_position_mux0000<0>1 )
  );
  X_OBUF   led_OBUF (
    .I(\led/O ),
    .O(led)
  );
  X_OBUF   vga_b_0_OBUF (
    .I(\vga_b<0>/O ),
    .O(vga_b[0])
  );
  X_OBUF   vga_b_1_OBUF (
    .I(\vga_b<1>/O ),
    .O(vga_b[1])
  );
  X_OBUF   vga_b_2_OBUF (
    .I(\vga_b<2>/O ),
    .O(vga_b[2])
  );
  X_OBUF   vga_b_3_OBUF (
    .I(\vga_b<3>/O ),
    .O(vga_b[3])
  );
  X_BUF   clk_50m_IBUFG (
    .I(clk_50m),
    .O(clk_50m_IBUFG_2543)
  );
  X_OBUF   vga_r_0_OBUF (
    .I(\vga_r<0>/O ),
    .O(vga_r[0])
  );
  X_OBUF   vga_r_1_OBUF (
    .I(\vga_r<1>/O ),
    .O(vga_r[1])
  );
  X_OBUF   vga_r_2_OBUF (
    .I(\vga_r<2>/O ),
    .O(vga_r[2])
  );
  X_OBUF   vga_r_3_OBUF (
    .I(\vga_r<3>/O ),
    .O(vga_r[3])
  );
  X_OBUF   vga_g_0_OBUF (
    .I(\vga_g<0>/O ),
    .O(vga_g[0])
  );
  X_OBUF   vga_g_1_OBUF (
    .I(\vga_g<1>/O ),
    .O(vga_g[1])
  );
  X_OBUF   vga_g_2_OBUF (
    .I(\vga_g<2>/O ),
    .O(vga_g[2])
  );
  X_OBUF   vga_g_3_OBUF (
    .I(\vga_g<3>/O ),
    .O(vga_g[3])
  );
  X_OBUF   vga_vertical_sync_OBUF (
    .I(\vga_vertical_sync/O ),
    .O(vga_vertical_sync)
  );
  X_OBUF   vga_horizontal_sync_OBUF (
    .I(\vga_horizontal_sync/O ),
    .O(vga_horizontal_sync)
  );
  X_BUFGMUX   clk_p_BUFG (
    .I0(\clk_p_BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_p_BUFG/S_INVNOT ),
    .O(clk_p)
  );
  X_INV   \clk_p_BUFG/SINV  (
    .I(1'b1),
    .O(\clk_p_BUFG/S_INVNOT )
  );
  X_BUF   \clk_p_BUFG/I0_USED  (
    .I(clk_p1),
    .O(\clk_p_BUFG/I0_INV )
  );
  X_INV   \DCM_SP_inst/PSCLKINV  (
    .I(1'b1),
    .O(\DCM_SP_inst/PSCLKINVNOT )
  );
  X_INV   \DCM_SP_inst/PSENINV  (
    .I(1'b1),
    .O(\DCM_SP_inst/PSENINVNOT )
  );
  X_INV   \DCM_SP_inst/PSINCDECINV  (
    .I(1'b1),
    .O(\DCM_SP_inst/PSINCDECINVNOT )
  );
  X_DCM_SP   DCM_SP_inst (
    .CLKIN(\DCM_SP_inst/CLKIN_BUF_2637 ),
    .CLKFB(\DCM_SP_inst/CLKFB_BUF_2639 ),
    .RST(DCM_SP_inst_ML_NEW_OUT_0),
    .DSSEN(NLW_DCM_SP_inst_DSSEN_UNCONNECTED),
    .PSINCDEC(\DCM_SP_inst/PSINCDECINVNOT ),
    .PSEN(\DCM_SP_inst/PSENINVNOT ),
    .PSCLK(\DCM_SP_inst/PSCLKINVNOT ),
    .PSDONE(\DCM_SP_inst/PSDONE ),
    .LOCKED(DCM_SP_inst_ML_NEW_I2),
    .CLKFX180(\DCM_SP_inst/CLKFX180 ),
    .CLKFX(clk_p1),
    .CLKDV(\DCM_SP_inst/CLKDV ),
    .CLK2X180(\DCM_SP_inst/CLK2X180 ),
    .CLK2X(\DCM_SP_inst/CLK2X ),
    .CLK270(\DCM_SP_inst/CLK270 ),
    .CLK180(\DCM_SP_inst/CLK180 ),
    .CLK90(\DCM_SP_inst/CLK90 ),
    .CLK0(\DCM_SP_inst/CLK0 ),
    .STATUS({\DCM_SP_inst/STATUS7 , \DCM_SP_inst/STATUS6 , \DCM_SP_inst/STATUS5 , \DCM_SP_inst/STATUS4 , \DCM_SP_inst/STATUS3 , DCM_SP_inst_ML_NEW_I1
, \DCM_SP_inst/STATUS1 , \DCM_SP_inst/STATUS0 })
  );
  X_BUF   \DCM_SP_inst/CLKFB_BUF  (
    .I(\DCM_SP_inst/CLKFB ),
    .O(\DCM_SP_inst/CLKFB_BUF_2639 )
  );
  X_BUF   \DCM_SP_inst/CLKIN_BUF  (
    .I(clk_50m_IBUFG_2543),
    .O(\DCM_SP_inst/CLKIN_BUF_2637 )
  );
  X_BUF   \vga_g_0_OBUF/XUSED  (
    .I(\vga_g_0_OBUF/F5MUX_2682 ),
    .O(vga_g_0_OBUF_928)
  );
  X_MUX2   \vga_g_0_OBUF/F5MUX  (
    .IA(\vga_g_0_OBUF/G ),
    .IB(\vga_inst/out_vga_g<1>1 ),
    .SEL(\vga_g_0_OBUF/BXINV_2675 ),
    .O(\vga_g_0_OBUF/F5MUX_2682 )
  );
  X_BUF   \vga_g_0_OBUF/BXINV  (
    .I(\vga_inst/v_visibile_area_cmp_ge0000 ),
    .O(\vga_g_0_OBUF/BXINV_2675 )
  );
  X_BUF   \vga_inst/v_reset2/XUSED  (
    .I(\vga_inst/v_reset2 ),
    .O(\vga_inst/v_reset2_0 )
  );
  X_BUF   \vga_inst/v_reset2/YUSED  (
    .I(\vga_inst/v_reset15/O_pack_1 ),
    .O(\vga_inst/v_reset15/O )
  );
  X_LUT4MUX16   \vga_inst/v_reset15  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position [4]),
    .ADR1(\vga_inst/out_v_position [5]),
    .ADR2(\vga_inst/out_v_position [3]),
    .ADR3(\vga_inst/out_v_position [6]),
    .O(\vga_inst/v_reset15/O_pack_1 )
  );
  X_BUF   \vga_inst/h_sync/YUSED  (
    .I(\vga_inst/h_sync_SW0/O_pack_1 ),
    .O(\vga_inst/h_sync_SW0/O )
  );
  X_LUT4MUX16   \vga_inst/h_sync_SW0  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [6]),
    .ADR1(\vga_inst/out_h_position [8]),
    .ADR2(\vga_inst/out_h_position [9]),
    .ADR3(\vga_inst/out_h_position [7]),
    .O(\vga_inst/h_sync_SW0/O_pack_1 )
  );
  X_BUF   \g_and0000_inv/YUSED  (
    .I(\vga_inst/out_visible_area73_SW1/O_pack_1 ),
    .O(\vga_inst/out_visible_area73_SW1/O )
  );
  X_LUT4MUX16   \vga_inst/out_visible_area73_SW1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_visible_area15_0 ),
    .ADR1(\vga_inst/out_visible_area25_0 ),
    .ADR2(\vga_inst/out_visible_area20_0 ),
    .ADR3(\vga_inst/Mcompar_h_sync_cmp_le0000_lut<5>_0 ),
    .O(\vga_inst/out_visible_area73_SW1/O_pack_1 )
  );
  X_BUF   \vga_inst/out_visible_area15/XUSED  (
    .I(\vga_inst/out_visible_area15_2777 ),
    .O(\vga_inst/out_visible_area15_0 )
  );
  X_BUF   \vga_inst/out_visible_area15/YUSED  (
    .I(\vga_inst/Msub_out_h_active_position_sub0000_cy<6>_pack_1 ),
    .O(\vga_inst/Msub_out_h_active_position_sub0000_cy[6] )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_h_active_position_sub0000_cy<6>11  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [4]),
    .ADR1(\vga_inst/out_h_position [5]),
    .ADR2(\vga_inst/out_h_position [6]),
    .ADR3(VCC),
    .O(\vga_inst/Msub_out_h_active_position_sub0000_cy<6>_pack_1 )
  );
  X_BUF   \vga_inst/out_v_position<3>/DXMUX  (
    .I(\vga_inst/out_v_position_mux0000 [8]),
    .O(\vga_inst/out_v_position<3>/DXMUX_2806 )
  );
  X_BUF   \vga_inst/out_v_position<3>/YUSED  (
    .I(\vga_inst/N11_pack_2 ),
    .O(\vga_inst/N11 )
  );
  X_BUF   \vga_inst/out_v_position<3>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_position<3>/CLKINV_2790 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<10>21  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/h_at_max_0 ),
    .ADR1(VCC),
    .ADR2(\vga_inst/v_reset2_0 ),
    .ADR3(\vga_inst/out_v_position [11]),
    .O(\vga_inst/N11_pack_2 )
  );
  X_BUF   \vga_inst/h_at_max/XUSED  (
    .I(\vga_inst/h_at_max ),
    .O(\vga_inst/h_at_max_0 )
  );
  X_BUF   \vga_inst/h_at_max/YUSED  (
    .I(\vga_inst/h_at_max25/O_pack_1 ),
    .O(\vga_inst/h_at_max25/O )
  );
  X_LUT4MUX16   \vga_inst/h_at_max25  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [6]),
    .ADR1(\vga_inst/out_h_position [5]),
    .ADR2(\vga_inst/out_h_position [4]),
    .ADR3(\vga_inst/out_h_position [7]),
    .O(\vga_inst/h_at_max25/O_pack_1 )
  );
  X_BUF   \vga_inst/out_v_position<2>/DXMUX  (
    .I(\vga_inst/out_v_position_mux0000 [9]),
    .O(\vga_inst/out_v_position<2>/DXMUX_2860 )
  );
  X_BUF   \vga_inst/out_v_position<2>/YUSED  (
    .I(\vga_inst/N0_pack_2 ),
    .O(\vga_inst/N0 )
  );
  X_BUF   \vga_inst/out_v_position<2>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_position<2>/CLKINV_2844 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<10>11  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_v_position [11]),
    .ADR1(VCC),
    .ADR2(\vga_inst/v_reset2_0 ),
    .ADR3(\vga_inst/h_at_max_0 ),
    .O(\vga_inst/N0_pack_2 )
  );
  X_BUF   \vga_inst/out_h_active_position<10>/DXMUX  (
    .I(\vga_inst/out_h_active_position_sub0000 [10]),
    .O(\vga_inst/out_h_active_position<10>/DXMUX_2892 )
  );
  X_BUF   \vga_inst/out_h_active_position<10>/YUSED  (
    .I(\vga_inst/Msub_out_h_active_position_sub0000_cy<9>_pack_1 ),
    .O(\vga_inst/Msub_out_h_active_position_sub0000_cy[9] )
  );
  X_BUF   \vga_inst/out_h_active_position<10>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_h_active_position<10>/SRINV_2875 )
  );
  X_BUF   \vga_inst/out_h_active_position<10>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_active_position<10>/CLKINV_2874 )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_h_active_position_sub0000_cy<9>11  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [7]),
    .ADR1(\vga_inst/Msub_out_h_active_position_sub0000_cy[6] ),
    .ADR2(\vga_inst/out_h_position [9]),
    .ADR3(\vga_inst/out_h_position [8]),
    .O(\vga_inst/Msub_out_h_active_position_sub0000_cy<9>_pack_1 )
  );
  X_BUF   \vga_inst/out_visible_area_inv/XUSED  (
    .I(\vga_inst/out_visible_area_inv ),
    .O(\vga_inst/out_visible_area_inv_0 )
  );
  X_BUF   \vga_inst/out_visible_area_inv/YUSED  (
    .I(N2_pack_1),
    .O(N2)
  );
  X_LUT4MUX16   \vga_inst/out_visible_area73_SW0  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_visible_area25_0 ),
    .ADR1(\vga_inst/out_h_position [10]),
    .ADR2(\vga_inst/out_visible_area20_0 ),
    .ADR3(\vga_inst/out_h_position [11]),
    .O(N2_pack_1)
  );
  X_BUF   \vga_inst/out_h_active_position<5>/XUSED  (
    .I(\vga_inst/out_visible_area25_2951 ),
    .O(\vga_inst/out_visible_area25_0 )
  );
  X_BUF   \vga_inst/out_h_active_position<5>/DYMUX  (
    .I(\vga_inst/out_h_active_position_sub0000 [5]),
    .O(\vga_inst/out_h_active_position<5>/DYMUX_2942 )
  );
  X_BUF   \vga_inst/out_h_active_position<5>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_h_active_position<5>/SRINV_2932 )
  );
  X_BUF   \vga_inst/out_h_active_position<5>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_active_position<5>/CLKINV_2931 )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_h_active_position_sub0000_xor<5>11  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b1),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [4]),
    .ADR1(\vga_inst/out_h_position [5]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_active_position_sub0000 [5])
  );
  X_BUF   \vga_inst/out_h_active_position<7>/DXMUX  (
    .I(\vga_inst/out_h_active_position_sub0000 [7]),
    .O(\vga_inst/out_h_active_position<7>/DXMUX_2987 )
  );
  X_BUF   \vga_inst/out_h_active_position<7>/DYMUX  (
    .I(\vga_inst/out_h_active_position_sub0000 [6]),
    .O(\vga_inst/out_h_active_position<7>/DYMUX_2975 )
  );
  X_BUF   \vga_inst/out_h_active_position<7>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_h_active_position<7>/SRINV_2966 )
  );
  X_BUF   \vga_inst/out_h_active_position<7>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_active_position<7>/CLKINV_2965 )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_h_active_position_sub0000_xor<6>11  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b1),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [6]),
    .ADR1(\vga_inst/out_h_position [4]),
    .ADR2(\vga_inst/out_h_position [5]),
    .ADR3(VCC),
    .O(\vga_inst/out_h_active_position_sub0000 [6])
  );
  X_BUF   \vga_inst/out_h_active_position<9>/DXMUX  (
    .I(\vga_inst/out_h_active_position_sub0000 [9]),
    .O(\vga_inst/out_h_active_position<9>/DXMUX_3025 )
  );
  X_BUF   \vga_inst/out_h_active_position<9>/DYMUX  (
    .I(\vga_inst/out_h_active_position_sub0000 [8]),
    .O(\vga_inst/out_h_active_position<9>/DYMUX_3013 )
  );
  X_BUF   \vga_inst/out_h_active_position<9>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_h_active_position<9>/SRINV_3004 )
  );
  X_BUF   \vga_inst/out_h_active_position<9>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_active_position<9>/CLKINV_3003 )
  );
  X_LUT4MUX16   \vga_inst/Msub_out_h_active_position_sub0000_xor<8>11  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b1),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/Msub_out_h_active_position_sub0000_cy[6] ),
    .ADR1(\vga_inst/out_h_position [8]),
    .ADR2(\vga_inst/out_h_position [7]),
    .ADR3(VCC),
    .O(\vga_inst/out_h_active_position_sub0000 [8])
  );
  X_BUF   \vga_inst/out_v_position<1>/DXMUX  (
    .I(\vga_inst/out_v_position_mux0000 [10]),
    .O(\vga_inst/out_v_position<1>/DXMUX_3060 )
  );
  X_BUF   \vga_inst/out_v_position<1>/DYMUX  (
    .I(\vga_inst/out_v_position_mux0000 [11]),
    .O(\vga_inst/out_v_position<1>/DYMUX_3049 )
  );
  X_BUF   \vga_inst/out_v_position<1>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_position<1>/CLKINV_3041 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<11>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position [0]),
    .ADR1(\vga_inst/out_v_position_addsub0000 [0]),
    .ADR2(\vga_inst/N11 ),
    .ADR3(\vga_inst/N0 ),
    .O(\vga_inst/out_v_position_mux0000 [11])
  );
  X_BUF   \vga_inst/out_v_position<5>/DXMUX  (
    .I(\vga_inst/out_v_position_mux0000 [6]),
    .O(\vga_inst/out_v_position<5>/DXMUX_3094 )
  );
  X_BUF   \vga_inst/out_v_position<5>/DYMUX  (
    .I(\vga_inst/out_v_position_mux0000 [7]),
    .O(\vga_inst/out_v_position<5>/DYMUX_3083 )
  );
  X_BUF   \vga_inst/out_v_position<5>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_position<5>/CLKINV_3075 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<7>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position [4]),
    .ADR1(\vga_inst/N11 ),
    .ADR2(\vga_inst/out_v_position_addsub0000 [4]),
    .ADR3(\vga_inst/N0 ),
    .O(\vga_inst/out_v_position_mux0000 [7])
  );
  X_BUF   \vga_inst/out_v_position<7>/DXMUX  (
    .I(\vga_inst/out_v_position_mux0000 [4]),
    .O(\vga_inst/out_v_position<7>/DXMUX_3128 )
  );
  X_BUF   \vga_inst/out_v_position<7>/DYMUX  (
    .I(\vga_inst/out_v_position_mux0000 [5]),
    .O(\vga_inst/out_v_position<7>/DYMUX_3117 )
  );
  X_BUF   \vga_inst/out_v_position<7>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_position<7>/CLKINV_3109 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<5>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position_addsub0000 [6]),
    .ADR1(\vga_inst/out_v_position [6]),
    .ADR2(\vga_inst/N11 ),
    .ADR3(\vga_inst/N0 ),
    .O(\vga_inst/out_v_position_mux0000 [5])
  );
  X_BUF   \vga_inst/out_v_position<10>/DYMUX  (
    .I(\vga_inst/out_v_position_mux0000 [1]),
    .O(\vga_inst/out_v_position<10>/DYMUX_3146 )
  );
  X_BUF   \vga_inst/out_v_position<10>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_position<10>/CLKINV_3138 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<1>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/N0 ),
    .ADR1(\vga_inst/out_v_position_addsub0000 [10]),
    .ADR2(\vga_inst/N11 ),
    .ADR3(\vga_inst/out_v_position [10]),
    .O(\vga_inst/out_v_position_mux0000 [1])
  );
  X_BUF   \vga_inst/out_v_position<9>/DXMUX  (
    .I(\vga_inst/out_v_position_mux0000 [2]),
    .O(\vga_inst/out_v_position<9>/DXMUX_3180 )
  );
  X_BUF   \vga_inst/out_v_position<9>/DYMUX  (
    .I(\vga_inst/out_v_position_mux0000 [3]),
    .O(\vga_inst/out_v_position<9>/DYMUX_3169 )
  );
  X_BUF   \vga_inst/out_v_position<9>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_position<9>/CLKINV_3161 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<3>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/N11 ),
    .ADR1(\vga_inst/out_v_position [8]),
    .ADR2(\vga_inst/out_v_position_addsub0000 [8]),
    .ADR3(\vga_inst/N0 ),
    .O(\vga_inst/out_v_position_mux0000 [3])
  );
  X_BUF   \vga_inst/out_h_active_position<11>/DYMUX  (
    .I(\vga_inst/out_h_active_position_sub0000 [11]),
    .O(\vga_inst/out_h_active_position<11>/DYMUX_3200 )
  );
  X_BUF   \vga_inst/out_h_active_position<11>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_h_active_position<11>/SRINV_3191 )
  );
  X_BUF   \vga_inst/out_h_active_position<11>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_active_position<11>/CLKINV_3190 )
  );
  X_BUF   \vga_inst/out_vga_vertical_sync/DYMUX  (
    .I(\vga_inst/out_vga_vertical_sync/BYINV_3211 ),
    .O(\vga_inst/out_vga_vertical_sync/DYMUX_3212 )
  );
  X_BUF   \vga_inst/out_vga_vertical_sync/BYINV  (
    .I(1'b1),
    .O(\vga_inst/out_vga_vertical_sync/BYINV_3211 )
  );
  X_BUF   \vga_inst/out_vga_vertical_sync/SRINV  (
    .I(\vga_inst/v_sync ),
    .O(\vga_inst/out_vga_vertical_sync/SRINV_3210 )
  );
  X_BUF   \vga_inst/out_vga_vertical_sync/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_vga_vertical_sync/CLKINV_3209 )
  );
  X_BUF   \g<0>/DYMUX  (
    .I(\g<0>/BYINV_3223 ),
    .O(\g<0>/DYMUX_3224 )
  );
  X_BUF   \g<0>/BYINV  (
    .I(1'b1),
    .O(\g<0>/BYINV_3223 )
  );
  X_BUF   \g<0>/SRINV  (
    .I(g_and0000_inv),
    .O(\g<0>/SRINV_3222 )
  );
  X_BUF   \g<0>/CLKINV  (
    .I(clk_p),
    .O(\g<0>/CLKINV_3221 )
  );
  X_BUF   \DCM_SP_inst_ML_NEW_OUT/YUSED  (
    .I(DCM_SP_inst_ML_NEW_OUT),
    .O(DCM_SP_inst_ML_NEW_OUT_0)
  );
  X_LUT4MUX16   S3A_DCM_SP_LOCKING_ML_LUT3_0 (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(DCM_SP_inst_ML_NEW_I2),
    .ADR3(DCM_SP_inst_ML_NEW_I1),
    .O(DCM_SP_inst_ML_NEW_OUT)
  );
  X_LUT4MUX16   \vga_inst/v_sync1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/v_sync_cmp_le0000 ),
    .ADR2(VCC),
    .ADR3(\vga_inst/v_sync_cmp_ge0000 ),
    .O(\vga_inst/v_sync )
  );
  X_BUF   \vga_inst/out_vga_horizontal_sync/DYMUX  (
    .I(\vga_inst/out_vga_horizontal_sync/BYINV_3259 ),
    .O(\vga_inst/out_vga_horizontal_sync/DYMUX_3260 )
  );
  X_BUF   \vga_inst/out_vga_horizontal_sync/BYINV  (
    .I(1'b1),
    .O(\vga_inst/out_vga_horizontal_sync/BYINV_3259 )
  );
  X_BUF   \vga_inst/out_vga_horizontal_sync/SRINV  (
    .I(\vga_inst/h_sync_2729 ),
    .O(\vga_inst/out_vga_horizontal_sync/SRINV_3258 )
  );
  X_BUF   \vga_inst/out_vga_horizontal_sync/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_vga_horizontal_sync/CLKINV_3257 )
  );
  X_BUF   \vga_inst/out_v_active_position<0>/DYMUX  (
    .I(\vga_inst/out_v_position [0]),
    .O(\vga_inst/out_v_active_position<0>/DYMUX_3272 )
  );
  X_BUF   \vga_inst/out_v_active_position<0>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_v_active_position<0>/SRINV_3270 )
  );
  X_BUF   \vga_inst/out_v_active_position<0>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_v_active_position<0>/CLKINV_3269 )
  );
  X_BUF   \vga_inst/v_reset10/XUSED  (
    .I(\vga_inst/v_reset10_3286 ),
    .O(\vga_inst/v_reset10_0 )
  );
  X_LUT4MUX16   \vga_inst/v_reset10  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_v_position [7]),
    .ADR2(\vga_inst/out_v_position [8]),
    .ADR3(VCC),
    .O(\vga_inst/v_reset10_3286 )
  );
  X_BUF   \vga_inst/out_h_active_position<1>/DXMUX  (
    .I(\vga_inst/out_h_position [1]),
    .O(\vga_inst/out_h_active_position<1>/DXMUX_3304 )
  );
  X_BUF   \vga_inst/out_h_active_position<1>/DYMUX  (
    .I(\vga_inst/out_h_position [0]),
    .O(\vga_inst/out_h_active_position<1>/DYMUX_3298 )
  );
  X_BUF   \vga_inst/out_h_active_position<1>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_h_active_position<1>/SRINV_3296 )
  );
  X_BUF   \vga_inst/out_h_active_position<1>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_active_position<1>/CLKINV_3295 )
  );
  X_BUF   \vga_inst/out_h_active_position<3>/DXMUX  (
    .I(\vga_inst/out_h_position [3]),
    .O(\vga_inst/out_h_active_position<3>/DXMUX_3324 )
  );
  X_BUF   \vga_inst/out_h_active_position<3>/DYMUX  (
    .I(\vga_inst/out_h_position [2]),
    .O(\vga_inst/out_h_active_position<3>/DYMUX_3318 )
  );
  X_BUF   \vga_inst/out_h_active_position<3>/SRINV  (
    .I(\vga_inst/out_visible_area_inv_0 ),
    .O(\vga_inst/out_h_active_position<3>/SRINV_3316 )
  );
  X_BUF   \vga_inst/out_h_active_position<3>/CLKINV  (
    .I(clk_p),
    .O(\vga_inst/out_h_active_position<3>/CLKINV_3315 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<0>  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [1]),
    .ADR1(\vga_inst/out_h_position [3]),
    .ADR2(\vga_inst/out_h_position [2]),
    .ADR3(\vga_inst/out_h_position [0]),
    .O(\vga_inst/Mcompar_h_reset_lut [0])
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<2>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [7]),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_h_position [5]),
    .ADR3(\vga_inst/out_h_position [6]),
    .O(\vga_inst/Mcompar_h_reset_lut [2])
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<4>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [11]),
    .ADR1(\vga_inst/out_h_position [10]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/Mcompar_h_reset_lut [4])
  );
  X_LUT4MUX16   \vga_inst/out_h_position<1>_rt  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<1>_rt_1058 )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<3>_rt  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_h_position [3]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<3>_rt_1091 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<4>1  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [8]),
    .ADR1(\vga_inst/out_h_position [11]),
    .ADR2(\vga_inst/out_h_position [9]),
    .ADR3(\vga_inst/out_h_position [10]),
    .O(\vga_inst/Mcompar_h_reset_lut<4>1_1119 )
  );
  X_LUT4MUX16   \Mcompar_test_h_lut<0>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_active_position [0]),
    .ADR1(\vga_inst/out_h_active_position [2]),
    .ADR2(\vga_inst/out_h_active_position [1]),
    .ADR3(\vga_inst/out_h_active_position [3]),
    .O(\Mcompar_test_h_lut[0] )
  );
  X_LUT4MUX16   \vga_inst/out_h_active_position<6>_rt  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_h_active_position [6]),
    .O(\vga_inst/out_h_active_position<6>_rt_1178 )
  );
  X_LUT4MUX16   \vga_inst/out_h_active_position<8>_rt  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_h_active_position [8]),
    .ADR3(VCC),
    .O(\vga_inst/out_h_active_position<8>_rt_1209 )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<1>_rt.1  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/Mcompar_h_reset_cy<1>2/F )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<3>_rt.1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_h_position [3]),
    .O(\vga_inst/Mcompar_h_reset_cy<3>2/F )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_reset_lut<4>2  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [8]),
    .ADR1(\vga_inst/out_h_position [7]),
    .ADR2(\vga_inst/out_h_position [5]),
    .ADR3(\vga_inst/out_h_position [6]),
    .O(\vga_inst/Mcompar_h_reset_lut<4>2_1304 )
  );
  X_LUT4MUX16   \Mcompar_led_lut<0>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_active_position [0]),
    .ADR1(\vga_inst/out_h_active_position [1]),
    .ADR2(\vga_inst/out_h_active_position [0]),
    .ADR3(\vga_inst/out_v_active_position [1]),
    .O(Mcompar_led_lut[0])
  );
  X_LUT4MUX16   \Mcompar_led_lut<2>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_active_position [4]),
    .ADR1(\vga_inst/out_h_active_position [4]),
    .ADR2(\vga_inst/out_h_active_position [5]),
    .ADR3(\vga_inst/out_v_active_position [5]),
    .O(Mcompar_led_lut[2])
  );
  X_LUT4MUX16   \Mcompar_led_lut<4>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_active_position [8]),
    .ADR1(\vga_inst/out_h_active_position [9]),
    .ADR2(\vga_inst/out_v_active_position [8]),
    .ADR3(\vga_inst/out_v_active_position [9]),
    .O(Mcompar_led_lut[4])
  );
  X_SFF   \vga_inst/out_v_active_position_2  (
    .I(\vga_inst/out_v_active_position<1>/DYMUX_1425 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<1>/CLKINV_1408 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<1>/SRINV_1409 ),
    .O(\vga_inst/out_v_active_position [2])
  );
  X_SFF   \vga_inst/out_v_active_position_1  (
    .I(\vga_inst/out_v_active_position<1>/DXMUX_1445 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<1>/CLKINV_1408 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<1>/SRINV_1409 ),
    .O(\vga_inst/out_v_active_position [1])
  );
  X_SFF   \vga_inst/out_v_active_position_4  (
    .I(\vga_inst/out_v_active_position<3>/DYMUX_1480 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<3>/CLKINV_1458 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<3>/SRINV_1459 ),
    .O(\vga_inst/out_v_active_position [4])
  );
  X_SFF   \vga_inst/out_v_active_position_3  (
    .I(\vga_inst/out_v_active_position<3>/DXMUX_1498 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<3>/CLKINV_1458 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<3>/SRINV_1459 ),
    .O(\vga_inst/out_v_active_position [3])
  );
  X_SFF   \vga_inst/out_v_active_position_6  (
    .I(\vga_inst/out_v_active_position<5>/DYMUX_1533 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<5>/CLKINV_1511 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<5>/SRINV_1512 ),
    .O(\vga_inst/out_v_active_position [6])
  );
  X_LUT4MUX16   \vga_inst/Msub_out_v_active_position_sub0000_lut<5>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_v_position [5]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_lut[5] )
  );
  X_SFF   \vga_inst/out_v_active_position_5  (
    .I(\vga_inst/out_v_active_position<5>/DXMUX_1550 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<5>/CLKINV_1511 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<5>/SRINV_1512 ),
    .O(\vga_inst/out_v_active_position [5])
  );
  X_SFF   \vga_inst/out_v_active_position_8  (
    .I(\vga_inst/out_v_active_position<7>/DYMUX_1585 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<7>/CLKINV_1563 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<7>/SRINV_1564 ),
    .O(\vga_inst/out_v_active_position [8])
  );
  X_LUT4MUX16   \vga_inst/Msub_out_v_active_position_sub0000_lut<7>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [7]),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_lut[7] )
  );
  X_SFF   \vga_inst/out_v_active_position_7  (
    .I(\vga_inst/out_v_active_position<7>/DXMUX_1602 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<7>/CLKINV_1563 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<7>/SRINV_1564 ),
    .O(\vga_inst/out_v_active_position [7])
  );
  X_SFF   \vga_inst/out_v_active_position_10  (
    .I(\vga_inst/out_v_active_position<9>/DYMUX_1637 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<9>/CLKINV_1615 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<9>/SRINV_1616 ),
    .O(\vga_inst/out_v_active_position [10])
  );
  X_LUT4MUX16   \vga_inst/Msub_out_v_active_position_sub0000_lut<9>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [9]),
    .O(\vga_inst/Msub_out_v_active_position_sub0000_lut[9] )
  );
  X_LUT4MUX16   \vga_inst/Madd_out_v_position_addsub0000_lut<0>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [0]),
    .O(\vga_inst/Madd_out_v_position_addsub0000_lut [0])
  );
  X_SFF   \vga_inst/out_v_active_position_9  (
    .I(\vga_inst/out_v_active_position<9>/DXMUX_1654 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<9>/CLKINV_1615 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<9>/SRINV_1616 ),
    .O(\vga_inst/out_v_active_position [9])
  );
  X_SFF   \vga_inst/out_v_active_position_11  (
    .I(\vga_inst/out_v_active_position<11>/DXMUX_1678 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<11>/CLKINV_1664 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<11>/SRINV_1665 ),
    .O(\vga_inst/out_v_active_position [11])
  );
  X_LUT4MUX16   \vga_inst/Mcompar_v_sync_cmp_le0000_lut<0>  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_v_position [2]),
    .ADR2(\vga_inst/out_v_position [1]),
    .ADR3(VCC),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_lut[0] )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_v_sync_cmp_le0000_lut<2>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_v_position [4]),
    .ADR1(\vga_inst/out_v_position [6]),
    .ADR2(\vga_inst/out_v_position [5]),
    .ADR3(\vga_inst/out_v_position [7]),
    .O(\vga_inst/Mcompar_v_sync_cmp_le0000_lut[2] )
  );
  X_LUT4MUX16   \vga_inst/out_v_position<9>_rt  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [9]),
    .O(\vga_inst/out_v_position<9>_rt_1764 )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_v_reset_lut<2>  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_v_position [7]),
    .ADR2(\vga_inst/out_v_position [8]),
    .ADR3(VCC),
    .O(\vga_inst/Mcompar_v_reset_lut[2] )
  );
  X_SFF   \vga_inst/out_v_position_11  (
    .I(\vga_inst/out_v_position<11>/DYMUX_2481 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<11>/CLKINV_2471 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_position<11>/SRINV_2472 ),
    .O(\vga_inst/out_v_position [11])
  );
  X_LUT4MUX16   \vga_inst/Mcompar_v_reset_lut<4>  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_v_position [11]),
    .ADR3(\vga_inst/out_v_position [10]),
    .O(\vga_inst/Mcompar_v_reset_lut[4] )
  );
  X_SFF   \vga_inst/out_vga_horizontal_sync  (
    .I(\vga_inst/out_vga_horizontal_sync/DYMUX_3260 ),
    .CE(VCC),
    .CLK(\vga_inst/out_vga_horizontal_sync/CLKINV_3257 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_vga_horizontal_sync/SRINV_3258 ),
    .O(\vga_inst/out_vga_horizontal_sync_930 )
  );
  X_SFF   \vga_inst/out_v_active_position_0  (
    .I(\vga_inst/out_v_active_position<0>/DYMUX_3272 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_active_position<0>/CLKINV_3269 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_v_active_position<0>/SRINV_3270 ),
    .O(\vga_inst/out_v_active_position [0])
  );
  X_SFF   \vga_inst/out_h_active_position_0  (
    .I(\vga_inst/out_h_active_position<1>/DYMUX_3298 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<1>/CLKINV_3295 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<1>/SRINV_3296 ),
    .O(\vga_inst/out_h_active_position [0])
  );
  X_SFF   \vga_inst/out_h_active_position_1  (
    .I(\vga_inst/out_h_active_position<1>/DXMUX_3304 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<1>/CLKINV_3295 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<1>/SRINV_3296 ),
    .O(\vga_inst/out_h_active_position [1])
  );
  X_SFF   \vga_inst/out_h_active_position_2  (
    .I(\vga_inst/out_h_active_position<3>/DYMUX_3318 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<3>/CLKINV_3315 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<3>/SRINV_3316 ),
    .O(\vga_inst/out_h_active_position [2])
  );
  X_SFF   \vga_inst/out_h_active_position_3  (
    .I(\vga_inst/out_h_active_position<3>/DXMUX_3324 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<3>/CLKINV_3315 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<3>/SRINV_3316 ),
    .O(\vga_inst/out_h_active_position [3])
  );
  X_SFF   \vga_inst/out_h_position_1  (
    .I(\vga_inst/out_h_position<0>/DYMUX_2018 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<0>/CLKINV_2001 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<0>/SRINV_2002 ),
    .O(\vga_inst/out_h_position [1])
  );
  X_LUT4MUX16   \vga_inst/Mcount_out_h_position_lut<0>_INV_0  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_h_position [0]),
    .O(\vga_inst/Mcount_out_h_position_lut [0])
  );
  X_SFF   \vga_inst/out_h_position_0  (
    .I(\vga_inst/out_h_position<0>/DXMUX_2038 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<0>/CLKINV_2001 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<0>/SRINV_2002 ),
    .O(\vga_inst/out_h_position [0])
  );
  X_SFF   \vga_inst/out_h_position_3  (
    .I(\vga_inst/out_h_position<2>/DYMUX_2073 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<2>/CLKINV_2051 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<2>/SRINV_2052 ),
    .O(\vga_inst/out_h_position [3])
  );
  X_SFF   \vga_inst/out_h_position_2  (
    .I(\vga_inst/out_h_position<2>/DXMUX_2090 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<2>/CLKINV_2051 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<2>/SRINV_2052 ),
    .O(\vga_inst/out_h_position [2])
  );
  X_SFF   \vga_inst/out_h_position_5  (
    .I(\vga_inst/out_h_position<4>/DYMUX_2125 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<4>/CLKINV_2103 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<4>/SRINV_2104 ),
    .O(\vga_inst/out_h_position [5])
  );
  X_SFF   \vga_inst/out_h_position_4  (
    .I(\vga_inst/out_h_position<4>/DXMUX_2142 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<4>/CLKINV_2103 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<4>/SRINV_2104 ),
    .O(\vga_inst/out_h_position [4])
  );
  X_FF   \vga_inst/out_v_position_6  (
    .I(\vga_inst/out_v_position<7>/DYMUX_3117 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<7>/CLKINV_3109 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [6])
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<4>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position [7]),
    .ADR1(\vga_inst/out_v_position_addsub0000 [7]),
    .ADR2(\vga_inst/N11 ),
    .ADR3(\vga_inst/N0 ),
    .O(\vga_inst/out_v_position_mux0000 [4])
  );
  X_FF   \vga_inst/out_v_position_7  (
    .I(\vga_inst/out_v_position<7>/DXMUX_3128 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<7>/CLKINV_3109 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [7])
  );
  X_FF   \vga_inst/out_v_position_10  (
    .I(\vga_inst/out_v_position<10>/DYMUX_3146 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<10>/CLKINV_3138 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [10])
  );
  X_FF   \vga_inst/out_v_position_8  (
    .I(\vga_inst/out_v_position<9>/DYMUX_3169 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<9>/CLKINV_3161 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [8])
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<2>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position [9]),
    .ADR1(\vga_inst/N11 ),
    .ADR2(\vga_inst/out_v_position_addsub0000 [9]),
    .ADR3(\vga_inst/N0 ),
    .O(\vga_inst/out_v_position_mux0000 [2])
  );
  X_FF   \vga_inst/out_v_position_9  (
    .I(\vga_inst/out_v_position<9>/DXMUX_3180 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<9>/CLKINV_3161 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [9])
  );
  X_LUT4MUX16   \vga_inst/Msub_out_h_active_position_sub0000_xor<11>11  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [10]),
    .ADR1(\vga_inst/out_h_position [11]),
    .ADR2(VCC),
    .ADR3(\vga_inst/Msub_out_h_active_position_sub0000_cy[9] ),
    .O(\vga_inst/out_h_active_position_sub0000 [11])
  );
  X_SFF   \vga_inst/out_h_active_position_11  (
    .I(\vga_inst/out_h_active_position<11>/DYMUX_3200 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<11>/CLKINV_3190 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<11>/SRINV_3191 ),
    .O(\vga_inst/out_h_active_position [11])
  );
  X_SFF   \vga_inst/out_vga_vertical_sync  (
    .I(\vga_inst/out_vga_vertical_sync/DYMUX_3212 ),
    .CE(VCC),
    .CLK(\vga_inst/out_vga_vertical_sync/CLKINV_3209 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_vga_vertical_sync/SRINV_3210 ),
    .O(\vga_inst/out_vga_vertical_sync_929 )
  );
  X_SFF   g_0 (
    .I(\g<0>/DYMUX_3224 ),
    .CE(VCC),
    .CLK(\g<0>/CLKINV_3221 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\g<0>/SRINV_3222 ),
    .O(g[0])
  );
  X_SFF   \vga_inst/out_h_position_7  (
    .I(\vga_inst/out_h_position<6>/DYMUX_2177 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<6>/CLKINV_2155 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<6>/SRINV_2156 ),
    .O(\vga_inst/out_h_position [7])
  );
  X_SFF   \vga_inst/out_h_position_6  (
    .I(\vga_inst/out_h_position<6>/DXMUX_2194 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<6>/CLKINV_2155 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<6>/SRINV_2156 ),
    .O(\vga_inst/out_h_position [6])
  );
  X_SFF   \vga_inst/out_h_position_9  (
    .I(\vga_inst/out_h_position<8>/DYMUX_2229 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<8>/CLKINV_2207 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<8>/SRINV_2208 ),
    .O(\vga_inst/out_h_position [9])
  );
  X_SFF   \vga_inst/out_h_position_8  (
    .I(\vga_inst/out_h_position<8>/DXMUX_2246 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<8>/CLKINV_2207 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<8>/SRINV_2208 ),
    .O(\vga_inst/out_h_position [8])
  );
  X_SFF   \vga_inst/out_h_position_10  (
    .I(\vga_inst/out_h_position<10>/DXMUX_2291 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_position<10>/CLKINV_2258 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_position<10>/SRINV_2259 ),
    .O(\vga_inst/out_h_position [10])
  );
  X_SFF   \vga_inst/out_h_active_position_4  (
    .I(\vga_inst/out_h_active_position<4>/DYMUX_2322 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<4>/CLKINV_2306 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<4>/SRINV_2307 ),
    .O(\vga_inst/out_h_active_position [4])
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<0>  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [1]),
    .ADR1(\vga_inst/out_h_position [3]),
    .ADR2(\vga_inst/out_h_position [2]),
    .ADR3(\vga_inst/out_h_position [0]),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[0] )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<5>_rt.1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_h_position [5]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<5>_rt )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_h_sync_cmp_le0000_lut<4>  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_h_position [9]),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_h_position [8]),
    .O(\vga_inst/Mcompar_h_sync_cmp_le0000_lut[4] )
  );
  X_LUT4MUX16   \vga_inst/Mcompar_v_reset_lut<0>  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position [1]),
    .ADR1(\vga_inst/out_v_position [0]),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [2]),
    .O(\vga_inst/Mcompar_v_reset_lut[0] )
  );
  X_LUT4MUX16   \vga_inst/out_vga_g<1>11  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_visible_area15_0 ),
    .ADR1(g[0]),
    .ADR2(N2),
    .ADR3(\vga_inst/Mcompar_h_reset_cy[5] ),
    .O(\vga_inst/out_vga_g<1>1 )
  );
  X_LUT4MUX16   \vga_inst/v_reset119  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position [9]),
    .ADR1(\vga_inst/v_reset10_0 ),
    .ADR2(\vga_inst/out_v_position [10]),
    .ADR3(\vga_inst/v_reset15/O ),
    .O(\vga_inst/v_reset2 )
  );
  X_LUT4MUX16   \vga_inst/h_sync  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/h_sync_SW0/O ),
    .ADR1(\vga_inst/out_h_position [11]),
    .ADR2(\vga_inst/h_sync_cmp_le0000 ),
    .ADR3(\vga_inst/out_h_position [10]),
    .O(\vga_inst/h_sync_2729 )
  );
  X_LUT4MUX16   g_and0000_inv1 (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\Mcompar_test_h_cy[5] ),
    .ADR1(\vga_inst/Mcompar_h_reset_cy[5] ),
    .ADR2(\vga_inst/out_visible_area73_SW1/O ),
    .ADR3(\vga_inst/v_visibile_area_cmp_ge0000 ),
    .O(g_and0000_inv)
  );
  X_LUT4MUX16   \vga_inst/out_visible_area15  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(\vga_inst/out_h_position [8]),
    .ADR1(\vga_inst/out_h_position [9]),
    .ADR2(\vga_inst/out_h_position [7]),
    .ADR3(\vga_inst/Msub_out_h_active_position_sub0000_cy[6] ),
    .O(\vga_inst/out_visible_area15_2777 )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<8>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position_addsub0000 [3]),
    .ADR1(\vga_inst/out_v_position [3]),
    .ADR2(\vga_inst/N0 ),
    .ADR3(\vga_inst/N11 ),
    .O(\vga_inst/out_v_position_mux0000 [8])
  );
  X_FF   \vga_inst/out_v_position_3  (
    .I(\vga_inst/out_v_position<3>/DXMUX_2806 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<3>/CLKINV_2790 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [3])
  );
  X_LUT4MUX16   \vga_inst/h_at_max36  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/h_at_max8_0 ),
    .ADR2(\vga_inst/Mcompar_h_reset_lut<0>_0 ),
    .ADR3(\vga_inst/h_at_max25/O ),
    .O(\vga_inst/h_at_max )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<9>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position_addsub0000 [2]),
    .ADR1(\vga_inst/N11 ),
    .ADR2(\vga_inst/out_v_position [2]),
    .ADR3(\vga_inst/N0 ),
    .O(\vga_inst/out_v_position_mux0000 [9])
  );
  X_FF   \vga_inst/out_v_position_2  (
    .I(\vga_inst/out_v_position<2>/DXMUX_2860 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<2>/CLKINV_2844 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [2])
  );
  X_LUT4MUX16   \vga_inst/Msub_out_h_active_position_sub0000_xor<10>11  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_h_position [10]),
    .ADR3(\vga_inst/Msub_out_h_active_position_sub0000_cy[9] ),
    .O(\vga_inst/out_h_active_position_sub0000 [10])
  );
  X_SFF   \vga_inst/out_h_active_position_10  (
    .I(\vga_inst/out_h_active_position<10>/DXMUX_2892 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<10>/CLKINV_2874 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<10>/SRINV_2875 ),
    .O(\vga_inst/out_h_active_position [10])
  );
  X_LUT4MUX16   \vga_inst/out_visible_area_inv1  (
    .I0(1'b1),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/v_visibile_area_cmp_ge0000 ),
    .ADR1(\vga_inst/out_visible_area15_0 ),
    .ADR2(N2),
    .ADR3(\vga_inst/Mcompar_h_reset_cy[5] ),
    .O(\vga_inst/out_visible_area_inv )
  );
  X_SFF   \vga_inst/out_h_active_position_5  (
    .I(\vga_inst/out_h_active_position<5>/DYMUX_2942 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<5>/CLKINV_2931 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<5>/SRINV_2932 ),
    .O(\vga_inst/out_h_active_position [5])
  );
  X_LUT4MUX16   \vga_inst/out_visible_area25  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [4]),
    .ADR1(\vga_inst/out_h_position [7]),
    .ADR2(\vga_inst/out_h_position [6]),
    .ADR3(\vga_inst/out_h_position [5]),
    .O(\vga_inst/out_visible_area25_2951 )
  );
  X_SFF   \vga_inst/out_h_active_position_6  (
    .I(\vga_inst/out_h_active_position<7>/DYMUX_2975 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<7>/CLKINV_2965 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<7>/SRINV_2966 ),
    .O(\vga_inst/out_h_active_position [6])
  );
  X_LUT4MUX16   \vga_inst/Msub_out_h_active_position_sub0000_xor<7>11  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [7]),
    .ADR1(\vga_inst/out_h_position [6]),
    .ADR2(\vga_inst/out_h_position [5]),
    .ADR3(\vga_inst/out_h_position [4]),
    .O(\vga_inst/out_h_active_position_sub0000 [7])
  );
  X_SFF   \vga_inst/out_h_active_position_7  (
    .I(\vga_inst/out_h_active_position<7>/DXMUX_2987 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<7>/CLKINV_2965 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<7>/SRINV_2966 ),
    .O(\vga_inst/out_h_active_position [7])
  );
  X_SFF   \vga_inst/out_h_active_position_8  (
    .I(\vga_inst/out_h_active_position<9>/DYMUX_3013 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<9>/CLKINV_3003 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<9>/SRINV_3004 ),
    .O(\vga_inst/out_h_active_position [8])
  );
  X_LUT4MUX16   \vga_inst/Msub_out_h_active_position_sub0000_xor<9>11  (
    .I0(1'b1),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/Msub_out_h_active_position_sub0000_cy[6] ),
    .ADR1(\vga_inst/out_h_position [8]),
    .ADR2(\vga_inst/out_h_position [7]),
    .ADR3(\vga_inst/out_h_position [9]),
    .O(\vga_inst/out_h_active_position_sub0000 [9])
  );
  X_SFF   \vga_inst/out_h_active_position_9  (
    .I(\vga_inst/out_h_active_position<9>/DXMUX_3025 ),
    .CE(VCC),
    .CLK(\vga_inst/out_h_active_position<9>/CLKINV_3003 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\vga_inst/out_h_active_position<9>/SRINV_3004 ),
    .O(\vga_inst/out_h_active_position [9])
  );
  X_FF   \vga_inst/out_v_position_0  (
    .I(\vga_inst/out_v_position<1>/DYMUX_3049 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<1>/CLKINV_3041 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [0])
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<10>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position_addsub0000 [1]),
    .ADR1(\vga_inst/out_v_position [1]),
    .ADR2(\vga_inst/N11 ),
    .ADR3(\vga_inst/N0 ),
    .O(\vga_inst/out_v_position_mux0000 [10])
  );
  X_FF   \vga_inst/out_v_position_1  (
    .I(\vga_inst/out_v_position<1>/DXMUX_3060 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<1>/CLKINV_3041 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [1])
  );
  X_FF   \vga_inst/out_v_position_4  (
    .I(\vga_inst/out_v_position<5>/DYMUX_3083 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<5>/CLKINV_3075 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [4])
  );
  X_LUT4MUX16   \vga_inst/out_v_position_mux0000<6>1  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position_addsub0000 [5]),
    .ADR1(\vga_inst/N11 ),
    .ADR2(\vga_inst/out_v_position [5]),
    .ADR3(\vga_inst/N0 ),
    .O(\vga_inst/out_v_position_mux0000 [6])
  );
  X_FF   \vga_inst/out_v_position_5  (
    .I(\vga_inst/out_v_position<5>/DXMUX_3094 ),
    .CE(VCC),
    .CLK(\vga_inst/out_v_position<5>/CLKINV_3075 ),
    .SET(GND),
    .RST(GND),
    .O(\vga_inst/out_v_position [5])
  );
  X_LUT4MUX16   \vga_inst/out_v_active_position<1>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_v_position [1]),
    .ADR3(VCC),
    .O(\vga_inst/out_v_active_position<1>/F )
  );
  X_LUT4MUX16   \vga_inst/out_v_active_position<3>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [3]),
    .O(\vga_inst/out_v_active_position<3>/F )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_addsub0000<0>/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_v_position [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_v_position_addsub0000<0>/G )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_addsub0000<2>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_v_position_addsub0000<2>/F )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_addsub0000<2>/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [3]),
    .O(\vga_inst/out_v_position_addsub0000<2>/G )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_addsub0000<4>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [4]),
    .O(\vga_inst/out_v_position_addsub0000<4>/F )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_addsub0000<4>/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [5]),
    .O(\vga_inst/out_v_position_addsub0000<4>/G )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_addsub0000<6>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_v_position [6]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_v_position_addsub0000<6>/F )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_addsub0000<6>/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_v_position [7]),
    .ADR3(VCC),
    .O(\vga_inst/out_v_position_addsub0000<6>/G )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_addsub0000<8>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_v_position [8]),
    .ADR3(VCC),
    .O(\vga_inst/out_v_position_addsub0000<8>/F )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_addsub0000<8>/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_v_position [9]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_v_position_addsub0000<8>/G )
  );
  X_LUT4MUX16   \vga_inst/out_v_position_addsub0000<10>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_v_position [10]),
    .O(\vga_inst/out_v_position_addsub0000<10>/F )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<0>/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<0>/G )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<2>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_h_position [2]),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<2>/F )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<2>/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b1),
    .I9(1'b1),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\vga_inst/out_h_position [3]),
    .O(\vga_inst/out_h_position<2>/G )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<4>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_h_position [4]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<4>/F )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<4>/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b1),
    .I5(1'b1),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b1),
    .I13(1'b1),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\vga_inst/out_h_position [5]),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<4>/G )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<6>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_h_position [6]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<6>/F )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<6>/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [7]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<6>/G )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<8>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b1),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b1),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b1),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b1),
    .I15(1'b1),
    .ADR0(VCC),
    .ADR1(\vga_inst/out_h_position [8]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<8>/F )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<8>/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [9]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<8>/G )
  );
  X_LUT4MUX16   \vga_inst/out_h_position<10>/F/X_LUT4  (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b0),
    .I3(1'b1),
    .I4(1'b0),
    .I5(1'b1),
    .I6(1'b0),
    .I7(1'b1),
    .I8(1'b0),
    .I9(1'b1),
    .I10(1'b0),
    .I11(1'b1),
    .I12(1'b0),
    .I13(1'b1),
    .I14(1'b0),
    .I15(1'b1),
    .ADR0(\vga_inst/out_h_position [10]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_inst/out_h_position<10>/F )
  );
  X_BUF   \led/OUTPUT/OFF/OMUX  (
    .I(\led_OBUF/CYMUXFAST_1392 ),
    .O(\led/O )
  );
  X_BUF   \vga_b<0>/OUTPUT/OFF/OMUX  (
    .I(\vga_b<0>/OUTPUT/OFF/O1INV_2512 ),
    .O(\vga_b<0>/O )
  );
  X_BUF   \vga_b<0>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\vga_b<0>/OUTPUT/OFF/O1INV_2512 )
  );
  X_BUF   \vga_b<1>/OUTPUT/OFF/OMUX  (
    .I(\vga_b<1>/OUTPUT/OFF/O1INV_2520 ),
    .O(\vga_b<1>/O )
  );
  X_BUF   \vga_b<1>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\vga_b<1>/OUTPUT/OFF/O1INV_2520 )
  );
  X_BUF   \vga_b<2>/OUTPUT/OFF/OMUX  (
    .I(\vga_b<2>/OUTPUT/OFF/O1INV_2528 ),
    .O(\vga_b<2>/O )
  );
  X_BUF   \vga_b<2>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\vga_b<2>/OUTPUT/OFF/O1INV_2528 )
  );
  X_BUF   \vga_b<3>/OUTPUT/OFF/OMUX  (
    .I(\vga_b<3>/OUTPUT/OFF/O1INV_2536 ),
    .O(\vga_b<3>/O )
  );
  X_BUF   \vga_b<3>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\vga_b<3>/OUTPUT/OFF/O1INV_2536 )
  );
  X_BUF   \vga_r<0>/OUTPUT/OFF/OMUX  (
    .I(\vga_r<0>/OUTPUT/OFF/O1INV_2551 ),
    .O(\vga_r<0>/O )
  );
  X_BUF   \vga_r<0>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\vga_r<0>/OUTPUT/OFF/O1INV_2551 )
  );
  X_BUF   \vga_r<1>/OUTPUT/OFF/OMUX  (
    .I(\vga_r<1>/OUTPUT/OFF/O1INV_2559 ),
    .O(\vga_r<1>/O )
  );
  X_BUF   \vga_r<1>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\vga_r<1>/OUTPUT/OFF/O1INV_2559 )
  );
  X_BUF   \vga_r<2>/OUTPUT/OFF/OMUX  (
    .I(\vga_r<2>/OUTPUT/OFF/O1INV_2567 ),
    .O(\vga_r<2>/O )
  );
  X_BUF   \vga_r<2>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\vga_r<2>/OUTPUT/OFF/O1INV_2567 )
  );
  X_BUF   \vga_r<3>/OUTPUT/OFF/OMUX  (
    .I(\vga_r<3>/OUTPUT/OFF/O1INV_2575 ),
    .O(\vga_r<3>/O )
  );
  X_BUF   \vga_r<3>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\vga_r<3>/OUTPUT/OFF/O1INV_2575 )
  );
  X_BUF   \vga_g<0>/OUTPUT/OFF/OMUX  (
    .I(vga_g_0_OBUF_928),
    .O(\vga_g<0>/O )
  );
  X_BUF   \vga_g<1>/OUTPUT/OFF/OMUX  (
    .I(vga_g_0_OBUF_928),
    .O(\vga_g<1>/O )
  );
  X_BUF   \vga_g<2>/OUTPUT/OFF/OMUX  (
    .I(vga_g_0_OBUF_928),
    .O(\vga_g<2>/O )
  );
  X_BUF   \vga_g<3>/OUTPUT/OFF/OMUX  (
    .I(vga_g_0_OBUF_928),
    .O(\vga_g<3>/O )
  );
  X_BUF   \vga_vertical_sync/OUTPUT/OFF/OMUX  (
    .I(\vga_inst/out_vga_vertical_sync_929 ),
    .O(\vga_vertical_sync/O )
  );
  X_BUF   \vga_horizontal_sync/OUTPUT/OFF/OMUX  (
    .I(\vga_inst/out_vga_horizontal_sync_930 ),
    .O(\vga_horizontal_sync/O )
  );
  X_LUT4MUX16   \vga_g_0_OBUF/G/X_LUT4  (
    .I0(1'b0),
    .I1(1'b0),
    .I2(1'b0),
    .I3(1'b0),
    .I4(1'b0),
    .I5(1'b0),
    .I6(1'b0),
    .I7(1'b0),
    .I8(1'b0),
    .I9(1'b0),
    .I10(1'b0),
    .I11(1'b0),
    .I12(1'b0),
    .I13(1'b0),
    .I14(1'b0),
    .I15(1'b0),
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\vga_g_0_OBUF/G )
  );
  X_ONE   NlwBlock_top_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_top_GND (
    .O(GND)
  );
endmodule

