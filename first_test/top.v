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
  ,output clk_25m //TODO Rename to pixel clock?

  ,output reg vga_horizontal_sync
  ,output reg vga_vertical_sync

  ,output [3:0] vga_r
  ,output [3:0] vga_g
  ,output [3:0] vga_b

  ,output rx_n
  ,output rx_p
);

// TODO Generalize
// 640x480x60hz - 25.125Mhz
// Front Porch - Visible Area - Back Porch - Sync - Total
// 16          - 640          - 48         - 96   - 800
// Front Porch - Visible Area - Back Porch - Sync - Total
// 10          - 480          - 33         - 2    - 525
localparam HORIZONTAL_FRONT_PORCH  = 16;
localparam HORIZONTAL_VISIBLE_AREA = 640;
localparam HORIZONTAL_BACK_PORCH   = 48;
localparam HORIZONTAL_SYNC_WIDTH   = 96;
localparam HORIZONTAL_TOTAL = HORIZONTAL_FRONT_PORCH +
  HORIZONTAL_VISIBLE_AREA + HORIZONTAL_BACK_PORCH + HORIZONTAL_SYNC_WIDTH; //TODO Assert == 800

localparam VERTICAL_FRONT_PORCH  = 10;
localparam VERTICAL_VISIBLE_AREA = 480;
localparam VERTICAL_BACK_PORCH   = 29;
localparam VERTICAL_SYNC_WIDTH   = 2;
localparam VERTICAL_TOTAL = VERTICAL_FRONT_PORCH +
  VERTICAL_VISIBLE_AREA + VERTICAL_BACK_PORCH + VERTICAL_SYNC_WIDTH; //TODO Assert == 525

//TODO Evaluate macro vs locaparam for constants
//jlocalparam GRAPHICS_WIDTH  = HORIZONTAL_VISIBLE_AREA;
//jlocalparam GRAPHICS_HEIGHT = VERTICAL_VISIBLE_AREA;

localparam HORIZONTAL_REGISTER_WIDTH = 11; //TODO log2(HORIZONTAL_VISIBLE_AREA)
localparam VERTICAL_REGISTER_WIDTH   = 11; //TODO log2(VERTICAL_VISIBLE_AREA)

localparam HORIZONTAL_SYNC_START = HORIZONTAL_FRONT_PORCH +
  HORIZONTAL_VISIBLE_AREA + HORIZONTAL_BACK_PORCH;
localparam HORIZONTAL_SYNC_END = HORIZONTAL_SYNC_START + HORIZONTAL_SYNC_WIDTH;

localparam VERTICAL_SYNC_START = VERTICAL_FRONT_PORCH +
  VERTICAL_VISIBLE_AREA + VERTICAL_BACK_PORCH;
localparam VERTICAL_SYNC_END = VERTICAL_SYNC_START + VERTICAL_SYNC_WIDTH;

reg [HORIZONTAL_REGISTER_WIDTH:0] horizontal_position;
reg [VERTICAL_REGISTER_WIDTH:0]   vertical_position;

// Horz
always @(posedge clk_25m) begin
  if (horizontal_position >= HORIZONTAL_TOTAL-1) begin
    horizontal_position = 0;
  end else begin
    horizontal_position = horizontal_position + 1;
  end
end

always @(posedge clk_25m) begin
  if (horizontal_position >= HORIZONTAL_SYNC_START &&
    horizontal_position <= HORIZONTAL_SYNC_END) begin
    //Inside sync
    vga_horizontal_sync <= 1'b0; //TODO Replace magic
  end else begin
    vga_horizontal_sync <= 1'b1;
  end
end

// Vert
always @(posedge clk_25m) begin
  if (vertical_position >= VERTICAL_TOTAL-1) begin
    vertical_position = 0;
  end else begin
    if (horizontal_position == HORIZONTAL_TOTAL-1) begin
      vertical_position = vertical_position + 1;
    end
  end
end

always @(posedge clk_25m) begin
  if (vertical_position >= VERTICAL_SYNC_START &&
    vertical_position <= VERTICAL_SYNC_END) begin
    //Inside sync
    vga_vertical_sync <= 1'b0;
  end else begin
    vga_vertical_sync <= 1'b1;
  end
end


// Debug
wire led7;

// Solid RED!
// TODO Only on in visible area
HERE
assign vga_r[3:0] = 4'b0000;
assign vga_g[3:0] = 4'b1111;
assign vga_b[3:0] = 4'b1111;

assign rx_n = vga_horizontal_sync;
assign rx_p = vga_vertical_sync;

wire dcm_fb;

// 25 Mhz
DCM_SP #(
    //TODO Memo: This is actually performed before entry into DCM, best?
   .CLKDV_DIVIDE(2)
  ,.CLK_FEEDBACK("1X")
) DCM_SP_inst (
   .CLKIN(clk_50m)
  ,.CLKDV(clk_25m)
  ,.CLK0(dcm_fb)
  ,.CLKFB(dcm_fb) //TODO Learn what would be best/appropriate here
);

// Debug Test with switches and leds
always @(posedge clk_25m) begin
  leds[0] <= vga_vertical_sync;
  leds[1] <= vga_horizontal_sync;
  leds[2] <= !switches[2];
  leds[3] <= !switches[3];

  leds[6:4] <= leds[2:0];
end

always @(posedge clk_25m) begin
  leds[7] <= vertical_position == 0;
end
assign led7 = leds[7];

endmodule
