`timescale 1ns / 1ps
`include "vga.v"
`include "aabb_collision.v"
`include "paddle.v"

module top(
   input clk_50m
  ,input button_north, button_south

  ,output [3:0] vga_r, vga_g, vga_b
  ,output vga_horizontal_sync, vga_vertical_sync
  ,output [7:0] leds
);

// Setup Graphics
localparam GRAPHICS_WIDTH  = 1280;
localparam GRAPHICS_HEIGHT =  800;
// TODO Source elsewhere with log2(ceil(TOTAL))
localparam POSITION_REG_MAX = 11;
//localparam GRAPHICS_REFRESH_RATE = 60;
wire visible_area;
wire [POSITION_REG_MAX:0] h_position;
wire [POSITION_REG_MAX:0] v_position;
wire [POSITION_REG_MAX:0] h_active_position;
wire [POSITION_REG_MAX:0] v_active_position;
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
localparam BORDER_WIDTH = 50;
localparam BORDER_COLOR = 12'h303;
aabb_collision#(
  .POSITION_REG_MAX(POSITION_REG_MAX)
) border_aabb_col (
   .bb1_x1(h_position), .bb1_y1(v_position)
  ,.bb1_x2(h_position), .bb1_y2(v_position)

  ,.bb2_x1(BORDER_WIDTH), .bb2_y1(BORDER_WIDTH)
  ,.bb2_x2(GRAPHICS_WIDTH - BORDER_WIDTH), .bb2_y2(GRAPHICS_HEIGHT - BORDER_WIDTH)

  ,.overlap(on_playarea)
);



// Paddle
localparam PADDLE_COLOR = 12'hfff;
localparam PADDLE_LENGTH = 200;
localparam PADDLE_WIDTH = 20;
wire [POSITION_REG_MAX:0] paddle_x, paddle_y;
paddle#(
   .PADDLE_POSITION_REG_MAX(POSITION_REG_MAX)
  ,.PADDLE_LENGTH(PADDLE_LENGTH)
  ,.PADDLE_WIDTH(PADDLE_WIDTH)
  ,.PADDLE_SPEED(10)
  ,.PADDLE_START_X(110)
  ,.PADDLE_START_Y(110)
  ,.PADDLE_Y_MIN(BORDER_WIDTH)
  ,.PADDLE_Y_MAX(GRAPHICS_HEIGHT-BORDER_WIDTH)
) paddle (
   .pixel_clock(pixel_clock)
  ,.vertical_sync(vga_vertical_sync)
  ,.move_forward(button_north)
  ,.move_backward(button_south)

  ,.paddle_x(paddle_x)
  ,.paddle_y(paddle_y)
);

wire on_paddle;
aabb_collision#(
  .POSITION_REG_MAX(POSITION_REG_MAX)
) paddle_aabb_col (
   .bb1_x1(h_position), .bb1_y1(v_position)
  ,.bb1_x2(h_position), .bb1_y2(v_position)

  ,.bb2_x1(paddle_x), .bb2_y1(paddle_y)
  ,.bb2_x2(paddle_x + PADDLE_WIDTH), .bb2_y2(paddle_y + PADDLE_LENGTH)

  ,.overlap(on_paddle)
);


//Ball
localparam BALL_RADIUS = 10;
localparam BALL_RADIUS_SQUARED = BALL_RADIUS*BALL_RADIUS;
localparam BALL_START_X = GRAPHICS_WIDTH /2;
localparam BALL_START_Y = GRAPHICS_HEIGHT/2;
localparam BALL_COLOR = 12'hfff;

localparam BALL_POSITION_REG_MAX = POSITION_REG_MAX;

reg [BALL_POSITION_REG_MAX:0] ball_x = BALL_START_X;
reg [BALL_POSITION_REG_MAX:0] ball_y = BALL_START_Y;

wire is_pos_dx = ball_x < h_position;
wire is_pos_dy = ball_y < v_position;

wire [BALL_POSITION_REG_MAX:0] dX = is_pos_dx ? h_position - ball_x : ball_x - h_position;
wire [BALL_POSITION_REG_MAX:0] dY = is_pos_dy ? v_position - ball_y : ball_y - v_position;

wire [BALL_POSITION_REG_MAX*2:0] ball_distance_squared = dX * dX + dY * dY;
wire on_ball = BALL_RADIUS_SQUARED > ball_distance_squared;



//Display
localparam R_BIT_DEPTH = 4;
localparam G_BIT_DEPTH = 4;
localparam B_BIT_DEPTH = 4;
localparam COLOR_BIT_DEPTH = R_BIT_DEPTH + G_BIT_DEPTH + B_BIT_DEPTH;
localparam COLOR_BIT_MAX = COLOR_BIT_DEPTH-1;
//`define RED_BITS   11:8
//`define GREEN_BITS 7:4
//`define BLUE_BITS  3:0
reg [COLOR_BIT_MAX:0] rgb12;

// Active Area Blanking
assign vga_r = visible_area ? rgb12[11:8] : 0;
assign vga_g = visible_area ? rgb12[ 7:4] : 0;
assign vga_b = visible_area ? rgb12[ 3:0] : 0;

localparam BACKGROUND_COLOR = 12'h000;
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
