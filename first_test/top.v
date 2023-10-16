`timescale 1ns / 1ps
`include "vga.v"

//////////////////////////////////////////////////////////////////////////////////
// Company: The People
// Streamer: Numa
//
// Create Date:    04:30:32 10/09/2023
// Design Name: Old Board test
// Module Name:    top
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module top(
   input clk_50m

  ,output [3:0] vga_r
  ,output [3:0] vga_g
  ,output [3:0] vga_b

  ,output vga_horizontal_sync
  ,output vga_vertical_sync
);

// 25 Mhz Pixel Clock for 640x480x60hz
wire dcm_fb;
DCM_SP #(
   .CLKDV_DIVIDE(2)
  ,.CLK_FEEDBACK("1X")
) DCM_SP_inst (
   .CLKIN(clk_50m)
  ,.CLKDV(clk_pixel)
  ,.CLK0(dcm_fb)
  ,.CLKFB(dcm_fb) //TODO Learn what would be best/appropriate here
);

vga vga_inst(
   .clk_pixel(clk_pixel)

  // Solid CYAN!
  ,.in_vga_r(4'b0000)
  ,.in_vga_g(4'b1111)
  ,.in_vga_b(4'b1111)

  ,.out_vga_horizontal_sync(vga_horizontal_sync)
  ,.out_vga_vertical_sync(vga_vertical_sync)

  ,.out_vga_r(vga_r)
  ,.out_vga_g(vga_g)
  ,.out_vga_b(vga_b)

//  ,.out_h_position()
//  ,.out_v_position()

//  ,.out_visible_area()
);

endmodule
