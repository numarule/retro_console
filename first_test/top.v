`timescale 1ns / 1ps
`include "vga.v"

module top(
   input clk_50m
  ,input button_north, button_south

  ,output [3:0] vga_r, vga_g, vga_b

  ,output vga_horizontal_sync, vga_vertical_sync
  ,output [2:0] led
);

//1280x800@60hz - 83.5Mhz ideal pixel clock - 83.333Mhz w/ 5/3*50m
wire pixel_clock;
DCM_SP #(
   .CLKFX_MULTIPLY(5)
  ,.CLKFX_DIVIDE(3)
  ,.CLKIN_PERIOD(20.0)

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

localparam GRAPHICS_WIDTH  = 1280;
localparam GRAPHICS_HEIGHT =  800;
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

// PONG!
// Border
localparam BORDER_WIDTH = 50;
localparam BORDER_COLOR_R = 4'h3;
localparam BORDER_COLOR_G = 4'h0;
localparam BORDER_COLOR_B = 4'h3;
//TODO Create AABB overlap component
assign on_h_border = h_position < BORDER_WIDTH ||
  (h_position + BORDER_WIDTH) > GRAPHICS_WIDTH;
assign on_v_border = v_position < BORDER_WIDTH ||
  (v_position + BORDER_WIDTH) > GRAPHICS_HEIGHT;
assign on_border = on_h_border || on_v_border;

// Paddle
localparam PADDLE_LENGTH = 200;
localparam PADDLE_WIDTH = 20;
localparam PADDLE_SPEED = 10;
localparam PADDLE_START_X = 110;
localparam PADDLE_START_Y = 110;
localparam PADDLE_COLOR_R = 4'hf;
localparam PADDLE_COLOR_G = 4'hf;
localparam PADDLE_COLOR_B = 4'hf;
localparam PADDLE_Y_MIN = BORDER_WIDTH;
localparam PADDLE_Y_MAX = GRAPHICS_HEIGHT-PADDLE_LENGTH-(BORDER_WIDTH*2);

localparam PADDLE_POSITION_REG_MAX = POSITION_REG_MAX;
reg [PADDLE_POSITION_REG_MAX:0] paddle_x = PADDLE_START_X;
reg [PADDLE_POSITION_REG_MAX:0] paddle_y = PADDLE_START_Y;

reg [PADDLE_POSITION_REG_MAX:0] paddle_x2 = PADDLE_START_X+PADDLE_WIDTH;
reg [PADDLE_POSITION_REG_MAX:0] paddle_y2 = PADDLE_START_Y+PADDLE_LENGTH;

always @(posedge pixel_clock) begin
   paddle_x2 <= paddle_x + PADDLE_WIDTH;
   paddle_y2 <= paddle_y + PADDLE_LENGTH;
 end

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
    endcase
  end
end

assign on_x_paddle = (h_position > paddle_x) && (h_position <= paddle_x2);
assign on_y_paddle = (v_position > paddle_y) && (v_position <= paddle_y2);
assign on_paddle = on_x_paddle && on_y_paddle;

//Ball
localparam BALL_RADIUS = 10;
localparam BALL_RADIUS_SQUARED = BALL_RADIUS*BALL_RADIUS;
localparam BALL_START_X = GRAPHICS_WIDTH /2;
localparam BALL_START_Y = GRAPHICS_HEIGHT/2;
localparam BALL_COLOR_R = 4'h0;
localparam BALL_COLOR_G = 4'hf;
localparam BALL_COLOR_B = 4'hf;

localparam BALL_POSITION_REG_MAX = POSITION_REG_MAX;

reg [BALL_POSITION_REG_MAX:0] ball_x = BALL_START_X;
reg [BALL_POSITION_REG_MAX:0] ball_y = BALL_START_Y;

wire [PADDLE_POSITION_REG_MAX:0] dX = h_position - ball_x;
wire [PADDLE_POSITION_REG_MAX:0] dY = v_position - ball_y;

wire [PADDLE_POSITION_REG_MAX*2:0] ball_distance_squared = dX * dY;
//ball_radius*ball_radius >= dX*dY
assign dX = h_position - ball_x;
assign dY = v_position - ball_y;
assign ball_distance_squared = dX * dY;

assign on_ball = BALL_RADIUS_SQUARED >= ball_distance_squared;

localparam BACKGROUND_COLOR_R = 4'h0;
localparam BACKGROUND_COLOR_G = 4'h0;
localparam BACKGROUND_COLOR_B = 4'h0;

// Active Area Blanking
assign vga_r = visible_area ? rgb12[11:8] : 0;
assign vga_g = visible_area ? rgb12[ 7:4] : 0;
assign vga_b = visible_area ? rgb12[ 3:0] : 0;

// Final RGB
always @(posedge pixel_clock) begin
  casez({on_ball, on_paddle, on_border})
    2'b1??: begin
      rgb12[11:8] <= BALL_COLOR_R;
      rgb12[7:4]  <= BALL_COLOR_G;
      rgb12[3:0]  <= BALL_COLOR_B;
    end
    2'b?1?: begin
      rgb12[11:8] <= PADDLE_COLOR_R;
      rgb12[7:4]  <= PADDLE_COLOR_G;
      rgb12[3:0]  <= PADDLE_COLOR_B;
    end
    2'b??1: begin
      rgb12[11:8] <= BORDER_COLOR_R;
      rgb12[7:4]  <= BORDER_COLOR_G;
      rgb12[3:0]  <= BORDER_COLOR_B;
    end
    default: begin
      rgb12[11:8] <= BACKGROUND_COLOR_R;
      rgb12[7:4]  <= BACKGROUND_COLOR_G;
      rgb12[3:0]  <= BACKGROUND_COLOR_B;
    end
  endcase
end

endmodule
