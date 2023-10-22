`timescale 1ns / 1ps
`include "vga.v"
`include "aabb_collision.v"

module top(
   input clk_50m
  ,input button_north, button_south

  ,output [3:0] vga_r, vga_g, vga_b

  ,output vga_horizontal_sync, vga_vertical_sync
  ,output [2:0] led
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

localparam GRAPHICS_WIDTH  = 1280;
localparam GRAPHICS_HEIGHT =  800;

vga#(
   .WIDTH(1280)
  ,.HEIGHT(800)
//  ,.REFRESH_RATE(60)
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
   .box1_x1(h_position)
  ,.box1_y1(v_position)
  ,.box1_x2(h_position)
  ,.box1_y2(v_position)

  ,.box2_x1(BORDER_WIDTH)
  ,.box2_y1(BORDER_WIDTH)
  ,.box2_x2(GRAPHICS_WIDTH - BORDER_WIDTH)
  ,.box2_y2(GRAPHICS_HEIGHT - BORDER_WIDTH)

  ,.overlap(on_playarea)
);

// Paddle
localparam PADDLE_LENGTH = 200;
localparam PADDLE_WIDTH = 20;
localparam PADDLE_SPEED = 10;
localparam PADDLE_START_X = 110;
localparam PADDLE_START_Y = 110;
localparam PADDLE_COLOR = 12'hfff;
localparam PADDLE_Y_MIN = BORDER_WIDTH;
localparam PADDLE_Y_MAX = GRAPHICS_HEIGHT-PADDLE_LENGTH-(BORDER_WIDTH*2);

localparam PADDLE_POSITION_REG_MAX = POSITION_REG_MAX;
reg [PADDLE_POSITION_REG_MAX:0] paddle_x = PADDLE_START_X;
reg [PADDLE_POSITION_REG_MAX:0] paddle_y = PADDLE_START_Y;

reg last_vsync;
always @(posedge pixel_clock) begin
  last_vsync <= vga_vertical_sync;
  if (vga_vertical_sync && !last_vsync) begin
    //Tick logic
    casez({button_north, button_south})
      2'b01: begin
        if (paddle_y < PADDLE_SPEED+BORDER_WIDTH) begin
          //Clamp to border
          paddle_y <= BORDER_WIDTH;
        end else begin
          paddle_y <= paddle_y - PADDLE_SPEED;
        end
      end
      2'b10: begin
        if (paddle_y > GRAPHICS_HEIGHT-(PADDLE_LENGTH+BORDER_WIDTH+PADDLE_SPEED)) begin
          //Clamp to border
          paddle_y <= GRAPHICS_HEIGHT-(BORDER_WIDTH+PADDLE_LENGTH);
        end else begin
          paddle_y <= paddle_y + PADDLE_SPEED;
        end
      end
      default: paddle_y <= paddle_y; //NOP
    endcase
  end
end

wire on_paddle;
aabb_collision#(
  .POSITION_REG_MAX(POSITION_REG_MAX)
) paddle_aabb_col (
   .box1_x1(h_position)
  ,.box1_y1(v_position)
  ,.box1_x2(h_position)
  ,.box1_y2(v_position)

  ,.box2_x1(paddle_x)
  ,.box2_y1(paddle_y)
  ,.box2_x2(paddle_x + PADDLE_WIDTH)
  ,.box2_y2(paddle_y + PADDLE_LENGTH)

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

wire [PADDLE_POSITION_REG_MAX:0] dX = is_pos_dx ? h_position - ball_x : ball_x - h_position;
wire [PADDLE_POSITION_REG_MAX:0] dY = is_pos_dy ? v_position - ball_y : ball_y - v_position;

wire [PADDLE_POSITION_REG_MAX*2:0] ball_distance_squared = dX * dX + dY * dY;
wire on_ball = BALL_RADIUS_SQUARED > ball_distance_squared;

localparam BACKGROUND_COLOR = 12'h000;

// Active Area Blanking
assign vga_r = visible_area ? rgb12[11:8] : 0;
assign vga_g = visible_area ? rgb12[ 7:4] : 0;
assign vga_b = visible_area ? rgb12[ 3:0] : 0;

// Final RGB
always @(posedge pixel_clock) begin
  casez({on_ball, on_paddle,~on_playarea})
    'b1??: begin
      rgb12 <= BALL_COLOR;
    end
    'b?1?: begin
      rgb12 <= PADDLE_COLOR;
    end
    'b??1: begin
      rgb12 <= BORDER_COLOR;
    end
    default: begin
      rgb12 <= BACKGROUND_COLOR;
    end
  endcase
end

endmodule
