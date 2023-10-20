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

  // 1280x800@60  - 83.5Mhz   - 50Mhz * 5/3 (83.333)
  // Visible Area - Polarity  - Front Porch - Sync - Back Porch - Total
  // 1280         - neg       - 72          - 128  - 200        - 1680
  // Visible Area - Polarity  - Front Porch - Sync - Back Porch - Total
  // 800          - pos       - 3           - 6    - 22         - 831


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
localparam COLOR_BIT_DEPTH = 4;
localparam COLOR_BIT_MAX = COLOR_BIT_DEPTH-1;

wire [POSITION_REG_MAX:0] h_position;
wire [POSITION_REG_MAX:0] v_position;

wire [POSITION_REG_MAX:0] h_active_position;
wire [POSITION_REG_MAX:0] v_active_position;

wire visible_area;
reg [COLOR_BIT_MAX:0] r;
reg [COLOR_BIT_MAX:0] g;
reg [COLOR_BIT_MAX:0] b;

localparam GRAPHICS_WIDTH  = 1280; //TODO Link
localparam GRAPHICS_HEIGHT =  800; //TODO Link
//localparam GRAPHICS_WIDTH  = 640; //TODO Link
//localparam GRAPHICS_HEIGHT =  480; //TODO Link
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

localparam BORDER_WIDTH = 100;
wire on_h_border = h_position < BORDER_WIDTH ||
  (h_position + BORDER_WIDTH) > GRAPHICS_WIDTH;
wire on_v_border = v_position < BORDER_WIDTH ||
  (v_position + BORDER_WIDTH) > GRAPHICS_HEIGHT;
wire on_border = on_h_border || on_v_border;

//wire test_h = h_active_position > 330;

always @(posedge pixel_clock) begin
  if(on_border) begin
    r <= 4'b0011;
    g <= 4'b0000;
    b <= 4'b0011;
  end else begin
    r <= 4'b0000;
    g <= 4'b0000;
    b <= 4'b0000;
  end
end

localparam COLOR_POLARITY = 1'b1;

assign vga_r = visible_area ? r : 0;
assign vga_g = visible_area ? g : 0;
assign vga_b = visible_area ? b : 0;

endmodule
