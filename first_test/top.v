`timescale 1ns / 1ps
`default_nettype none

//TODO Move to own file, add header guards and includes as needed?
`define POSITION_WIDTH 11

`define VGA_INDIVIDUAL_COLOR_WIDTH 4
`define VGA_COLOR_CHANNELS 3
//`define COLOR_WIDTH (`VGA_INDIVIDUAL_COLOR_WIDTH * `VGA_COLOR_CHANNELS)
`define COLOR_WIDTH 12

`define RED_BITS   11:8
`define GREEN_BITS 7:4
`define BLUE_BITS  3:0

`include "vga.v"
`include "aabb_collision.v"
`include "paddle.v"

module top(
   input clk_50m
  ,input button_north, button_south

  ,output [`VGA_INDIVIDUAL_COLOR_WIDTH-1:0] vga_r, vga_g, vga_b
  ,output vga_horizontal_sync, vga_vertical_sync
  ,output [7:0] leds
);

// Setup Graphics
// TODO Evaluate bit widths, could cast to size needed when used in
// expressions?
localparam GRAPHICS_WIDTH  = `POSITION_WIDTH'd 1280;
localparam GRAPHICS_HEIGHT = `POSITION_WIDTH'd  800;
// TODO Source elsewhere with log2(ceil(TOTAL))
//localparam GRAPHICS_REFRESH_RATE = 60;
wire visible_area;
wire [`POSITION_WIDTH-1:0] h_position;
wire [`POSITION_WIDTH-1:0] v_position;

wire pixel_clock;

vga#(
   .WIDTH(GRAPHICS_WIDTH)
  ,.HEIGHT(GRAPHICS_HEIGHT)
//  ,.REFRESH_RATE(GRAPHICS_REFRESH_RATE)
) vga_inst (
   .clk_50m(clk_50m)

  ,.pixel_clock(pixel_clock)
  ,.vga_horizontal_sync(vga_horizontal_sync)
  ,.vga_vertical_sync(vga_vertical_sync)

  ,.h_position(h_position)
  ,.v_position(v_position)

  ,.visible_area(visible_area)
);

// GAME!
// Border
localparam BORDER_WIDTH = `POSITION_WIDTH'd50;
localparam BORDER_COLOR = `COLOR_WIDTH'h303;
wire on_playarea;
aabb_collision border_aabb_col (
   .bb1_x1(h_position), .bb1_y1(v_position)
  ,.bb1_x2(h_position), .bb1_y2(v_position)

  ,.bb2_x1(BORDER_WIDTH), .bb2_y1(BORDER_WIDTH)
  ,.bb2_x2(GRAPHICS_WIDTH - BORDER_WIDTH), .bb2_y2(GRAPHICS_HEIGHT - BORDER_WIDTH)

  ,.overlap(on_playarea)
);



// Paddle
localparam PADDLE_COLOR = `COLOR_WIDTH'hfff;
localparam PADDLE_LENGTH = `POSITION_WIDTH'd200;
localparam PADDLE_WIDTH  = `POSITION_WIDTH'd 20;
wire [`POSITION_WIDTH-1:0] paddle_x, paddle_y;
paddle#(
   .LENGTH(PADDLE_LENGTH)
  ,.WIDTH(PADDLE_WIDTH)
  ,.SPEED(`POSITION_WIDTH'd10)
  ,.START_X(`POSITION_WIDTH'd110)
  ,.START_Y(`POSITION_WIDTH'd110)
  ,.Y_MIN(BORDER_WIDTH)
  ,.Y_MAX(GRAPHICS_HEIGHT-BORDER_WIDTH)
) paddle (
   .pixel_clock(pixel_clock)
  ,.vertical_sync(vga_vertical_sync)
  ,.move_forward(button_north)
  ,.move_backward(button_south)

  ,.x(paddle_x)
  ,.y(paddle_y)
);

wire on_paddle;
aabb_collision paddle_aabb_col (
   .bb1_x1(h_position), .bb1_y1(v_position)
  ,.bb1_x2(h_position), .bb1_y2(v_position)

  ,.bb2_x1(paddle_x), .bb2_y1(paddle_y)
  ,.bb2_x2(paddle_x + PADDLE_WIDTH), .bb2_y2(paddle_y + PADDLE_LENGTH)

  ,.overlap(on_paddle)
);


//Ball
localparam BALL_RADIUS = `POSITION_WIDTH'd 10;
localparam BALL_RADIUS_SQUARED = BALL_RADIUS*BALL_RADIUS;
localparam BALL_START_X = GRAPHICS_WIDTH /`POSITION_WIDTH'd 2;
localparam BALL_START_Y = GRAPHICS_HEIGHT/`POSITION_WIDTH'd 2;
localparam BALL_COLOR = `COLOR_WIDTH'hfff;

reg [`POSITION_WIDTH-1:0] ball_x = BALL_START_X;
reg [`POSITION_WIDTH-1:0] ball_y = BALL_START_Y;

wire is_pos_dx = ball_x < h_position;
wire is_pos_dy = ball_y < v_position;

wire [`POSITION_WIDTH-1:0] dX = is_pos_dx ? h_position - ball_x : ball_x - h_position;
wire [`POSITION_WIDTH-1:0] dY = is_pos_dy ? v_position - ball_y : ball_y - v_position;

wire [(`POSITION_WIDTH*2)-1:0] ball_distance_squared = dX * dX + dY * dY;
wire on_ball = BALL_RADIUS_SQUARED > ball_distance_squared;



//Display
reg [`COLOR_WIDTH-1:0] rgb12;

// Active Area Blanking
assign vga_r = visible_area ? rgb12[`RED_BITS  ] : 0;
assign vga_g = visible_area ? rgb12[`GREEN_BITS] : 0;
assign vga_b = visible_area ? rgb12[`BLUE_BITS ] : 0;

localparam BACKGROUND_COLOR = `COLOR_WIDTH'h000;
// Final RGB
always @(posedge pixel_clock) begin
  casez({on_ball, on_paddle, on_playarea})
    'b1??:   rgb12 <= BALL_COLOR;
    'b?1?:   rgb12 <= PADDLE_COLOR;
    'b??0:   rgb12 <= BORDER_COLOR;
    default: rgb12 <= BACKGROUND_COLOR;
  endcase
end

//DEBUG
assign leds[7:0] = paddle_y[7:0];

endmodule
