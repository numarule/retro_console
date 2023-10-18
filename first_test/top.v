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

  ,output led
);

// 25 Mhz Pixel Clock for 640x480x60hz
//wire dcm_fb;
wire clk_pixel;
DCM_SP #(
  //.CLKDV_DIVIDE(2)
   .CLKFX_MULTIPLY(2)
  ,.CLKFX_DIVIDE(4)
  //,.CLK_FEEDBACK("1X")
  //,.CLKIN_PERIOD(20.0)
  //,.STARTUP_WAIT("FALSE")

  //,.CLKIN_DIVIDE_BY_2("FALSE")
  //,.CLKDV_DIVIDE(2.0)
  //,.CLKOUT_PHASE_SHIFT("NONE")
  //,.DUTY_CYCLE_CORRECTION("FALSE")
  //,.PHASE_SHIFT(0)
) DCM_SP_inst (
   .CLKIN(clk_50m)
  ,.CLKFX(clk_pixel)
  //,.CLK0(dcm_fb)
  //,.CLKFB(dcm_fb) //TODO Learn what would be best/appropriate here

//  ,.DSSEN(0)
//  ,.PSCLK(0)
//  ,.PSEN(0)
  ,.RST(0)
);

wire [11:0] h_position;
wire [11:0] v_position;

wire [11:0] h_active_position;
wire [11:0] v_active_position;

wire visible_area;
reg [3:0] r;
reg [3:0] g;
reg [3:0] b;

vga #(
  /*
   .H_FRONT_PORCH(16)
  ,.H_VISIBLE_AREA(640)
  ,.H_BACK_PORCH(48)
  ,.H_SYNC_WIDTH(96)
  ,.H_ACTIVE_POLARITY(1'b0)

  ,.V_FRONT_PORCH(10)
  ,.V_VISIBLE_AREA(480)
  ,.V_BACK_PORCH(29)
  ,.V_SYNC_WIDTH(2)
  ,.V_ACTIVE_POLARITY(1'b0)

  //TODO log2(ceil(H_VISIBLE_AREA))
  ,.H_REG_WIDTH(11)
  //TODO log2(ceil(V_VISIBLE_AREA))
  ,.V_REG_WIDTH(11)
  */
) vga_inst (
   .clk_pixel(clk_pixel)

  // Solid CYAN!
  ,.in_vga_r(r)
  ,.in_vga_g(g)
  ,.in_vga_b(b)

  ,.out_vga_horizontal_sync(vga_horizontal_sync)
  ,.out_vga_vertical_sync(vga_vertical_sync)

  ,.out_visible_area(visible_area)
  ,.out_vga_r(vga_r)
  ,.out_vga_g(vga_g)
  ,.out_vga_b(vga_b)

  ,.out_h_position(h_position)
  ,.out_v_position(v_position)

  ,.out_h_active_position(h_active_position)
  ,.out_v_active_position(v_active_position)
);

localparam GRAPHICS_WIDTH  = 640; //TODO Link
localparam GRAPHICS_HEIGHT = 480; //TODO Link
localparam BORDER_WIDTH = 100;
wire on_h_border = h_position < BORDER_WIDTH ||
  (h_position + BORDER_WIDTH) > GRAPHICS_WIDTH;
wire on_v_border = v_position < BORDER_WIDTH ||
  (v_position + BORDER_WIDTH) > GRAPHICS_HEIGHT;
wire on_border = on_h_border || on_v_border;

//wire test_h = h_active_position > 330;

always @(posedge clk_pixel) begin
//  if(visible_area && (on_border || led)) begin
//  if(visible_area && (led)) begin
//  if(visible_area && on_border) begin
  if(visible_area) begin
    r <= 4'b0000;
    g <= 4'b1111;
    b <= 4'b1111;
  end else begin
    r <= 4'b0000;
    g <= 4'b0000;
    b <= 4'b0000;
  end
end

assign led = h_active_position == v_active_position;

endmodule
