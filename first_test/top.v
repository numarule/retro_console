`timescale 1ns / 1ps
`include "vga.v"

module top(
   input clk_50m

  ,output [3:0] vga_r
  ,output [3:0] vga_g
  ,output [3:0] vga_b

  ,output vga_horizontal_sync
  ,output vga_vertical_sync
);

// 25 Mhz Pixel Clock for 640x480x60hz
wire pixel_clock;
DCM_SP #(
   .CLKFX_MULTIPLY(5)
  ,.CLKFX_DIVIDE(3)
  //,.CLKIN_PERIOD(20.0)

) DCM_SP_inst (
   .CLKIN(clk_50m)
  ,.CLKFX(pixel_clock)
  ,.RST(0)
);
// TODO Source elsewhere with log2(ceil())
localparam POSITION_REG_MAX = 11;
localparam R_BIT_DEPTH = 4;
localparam G_BIT_DEPTH = 4;
localparam B_BIT_DEPTH = 4;
localparam COLOR_BIT_DEPTH = R_BIT_DEPTH + G_BIT_DEPTH + B_BIT_DEPTH;
localparam COLOR_BIT_MAX = COLOR_BIT_DEPTH-1;

wire [POSITION_REG_MAX:0] h_position;
wire [POSITION_REG_MAX:0] v_position;

wire [POSITION_REG_MAX:0] h_active_position;
wire [POSITION_REG_MAX:0] v_active_position;

wire visible_area;

//`define RED_BITS   11:8
//`define GREEN_BITS 7:4
//`define BLUE_BITS  3:0
reg [COLOR_BIT_MAX:0] rgb12;

localparam GRAPHICS_WIDTH  = 1280; //TODO Link
localparam GRAPHICS_HEIGHT =  800; //TODO Link
vga #(
   .H_VISIBLE_AREA(GRAPHICS_WIDTH)
  ,.H_FRONT_PORCH(72)
  ,.H_SYNC_WIDTH(128)
  ,.H_BACK_PORCH(200)
  ,.H_ACTIVE_POLARITY(1'b0)

  ,.V_VISIBLE_AREA(GRAPHICS_HEIGHT)
  ,.V_FRONT_PORCH(3)
  ,.V_SYNC_WIDTH(6)
  ,.V_BACK_PORCH(22)
  ,.V_ACTIVE_POLARITY(1'b1)

  ,.H_REG_MAX(POSITION_REG_MAX)
  ,.V_REG_MAX(POSITION_REG_MAX)
) vga_inst (
   .pixel_clock(pixel_clock)

  ,.vga_horizontal_sync(vga_horizontal_sync)
  ,.vga_vertical_sync(vga_vertical_sync)

  ,.h_position(h_position)
  ,.v_position(v_position)

  ,.visible_area(visible_area)
);
localparam COLOR_POLARITY = 1'b1;

assign vga_r = visible_area ? rgb12[11:8]: 0;
assign vga_g = visible_area ? rgb12[7:4] : 0;
assign vga_b = visible_area ? rgb12[3:0] : 0;

localparam BORDER_WIDTH = 100;
wire on_h_border = h_position < BORDER_WIDTH ||
  (h_position + BORDER_WIDTH) > GRAPHICS_WIDTH;
wire on_v_border = v_position < BORDER_WIDTH ||
  (v_position + BORDER_WIDTH) > GRAPHICS_HEIGHT;
wire on_border = on_h_border || on_v_border;

always @(posedge pixel_clock) begin
  if(on_border) begin
    //rgb12 <= 12'h03_00_03; //BUG Doesn't work! Endian issue maybe?
    rgb12[11:8]   <= 4'h03;
    rgb12[7:4] <= 4'h00;
    rgb12[3:0]  <= 4'h03;
  end else begin
    //rgb12 <= 12'h00_00_00;
    rgb12[11:8]   <= 4'h00;
    rgb12[7:4] <= 4'h00;
    rgb12[3:0]  <= 4'h00;
  end
end

endmodule
