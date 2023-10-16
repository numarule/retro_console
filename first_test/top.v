`timescale 1ns / 1ps

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
  ,input [3:0] switches
  ,output reg [7:0] leds
  ,output clk_pixel

  ,output reg vga_horizontal_sync
  ,output reg vga_vertical_sync

  ,output reg [3:0] vga_r
  ,output reg [3:0] vga_g
  ,output reg [3:0] vga_b

  ,output rx_n
  ,output rx_p
);

// TODO Generalize
// 640x480x60hz - 25.125Mhz
// Front Porch - Visible Area - Back Porch - Sync - Total
// 16          - 640          - 48         - 96   - 800
// Front Porch - Visible Area - Back Porch - Sync - Total
// 10          - 480          - 33         - 2    - 525
localparam H_FRONT_PORCH  = 16;
localparam H_VISIBLE_AREA = 640;
localparam H_BACK_PORCH   = 48;
localparam H_SYNC_WIDTH   = 96;
localparam H_TOTAL = H_FRONT_PORCH + H_VISIBLE_AREA + H_BACK_PORCH + H_SYNC_WIDTH; //TODO Assert == 800
localparam H_MAX = H_TOTAL - 1;

localparam H_ACTIVE_POLARITY = 1'b0;

localparam V_FRONT_PORCH  = 10;
localparam V_VISIBLE_AREA = 480;
localparam V_BACK_PORCH   = 29;
localparam V_SYNC_WIDTH   = 2;
localparam V_TOTAL = V_FRONT_PORCH + V_VISIBLE_AREA + V_BACK_PORCH + V_SYNC_WIDTH; //TODO Assert == 525
localparam V_MAX = V_TOTAL - 1;

localparam V_ACTIVE_POLARITY = 1'b0;

localparam H_REG_WIDTH = 11; //TODO log2(H_VISIBLE_AREA)
localparam V_REG_WIDTH = 11; //TODO log2(V_VISIBLE_AREA)

localparam H_SYNC_START = H_FRONT_PORCH +
  H_VISIBLE_AREA + H_BACK_PORCH;
localparam H_SYNC_END = H_SYNC_START + H_SYNC_WIDTH;

localparam V_SYNC_START = V_FRONT_PORCH +
  V_VISIBLE_AREA + V_BACK_PORCH;
localparam V_SYNC_END = V_SYNC_START + V_SYNC_WIDTH;

// 25 Mhz Pixel Clock
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

reg [H_REG_WIDTH:0] h_position;
reg [V_REG_WIDTH:0] v_position;

// H
wire h_reset = h_position >= H_MAX;
always @(posedge clk_pixel) h_position <= h_reset ? 0 : h_position + 1;

wire h_sync = h_position >= H_SYNC_START && h_position <= H_SYNC_END;
always @(posedge clk_pixel) vga_horizontal_sync <=
  h_sync ? H_ACTIVE_POLARITY : ~H_ACTIVE_POLARITY; //OPT Could this ternary be an operation?

// V
wire v_reset = v_position >= V_MAX;

wire h_at_max;
assign h_at_max = h_position == H_MAX;

always @(posedge clk_pixel) begin
  casez({v_reset, h_at_max})
    2'b1?: v_position = 0;
    2'b00: v_position = v_position; //NOP
    2'b01: v_position = v_position + 1;
  endcase
end

wire v_sync;
assign v_sync = v_position >= V_SYNC_START && v_position <= V_SYNC_END;
always @(posedge clk_pixel) vga_vertical_sync <=
  v_sync ? V_ACTIVE_POLARITY : ~V_ACTIVE_POLARITY;


localparam H_VISIBLE_AREA_START = H_FRONT_PORCH;
localparam H_VISIBLE_AREA_END = H_FRONT_PORCH + H_VISIBLE_AREA;
wire in_h_visibile_area = h_position >= H_VISIBLE_AREA_START &&
  h_position < H_VISIBLE_AREA_END;

localparam V_VISIBLE_AREA_START = V_FRONT_PORCH;
localparam V_VISIBLE_AREA_END = V_FRONT_PORCH + V_VISIBLE_AREA;
wire in_v_visibile_area = h_position >= V_VISIBLE_AREA_START &&
  h_position < V_VISIBLE_AREA_END;

wire in_visible_area;
assign in_visible_area = in_h_visibile_area && in_v_visibile_area;

// Debug

// Solid MAGENTA!
always @* begin
  if(in_visible_area) begin
    vga_r[3:0] <= 4'b1111;
    vga_g[3:0] <= 4'b0000;
    vga_b[3:0] <= 4'b1111;
  end else begin
    vga_r[3:0] <= 4'b0000;
    vga_g[3:0] <= 4'b0000;
    vga_b[3:0] <= 4'b0000;
  end
end

assign rx_n = vga_vertical_sync;
assign rx_p = vga_horizontal_sync;

// Debug Test with switches and leds
always @(posedge clk_pixel) begin
  leds[0] <= vga_vertical_sync;
  leds[1] <= vga_horizontal_sync;
  leds[2] <= switches[2];
  leds[3] <= switches[3];

  leds[6:4] <= leds[2:0];
end

always @(posedge clk_pixel) begin
  leds[7] <= v_position == 0;
end

wire led7 = leds[7];

endmodule
