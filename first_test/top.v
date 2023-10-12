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
  input clk_50m,
  input [3:0] switches,
  output reg [7:0] leds,
  output clk_25m
);

wire led7;

// 640x480x60hz - 25.125Mhz
// Front Porch - Visible Area - Back Porch - Sync - Total
// 16          - 640          - 48         - 96   - 800
reg [9:0] horizontal_position;

// Front Porch - Visible Area - Back Porch - Sync - Total
// 10          - 480          - 33         - 2    - 525
reg [9:0] vertical_position;

//25 Mhz
DCM_SP #(
  .CLKIN_DIVIDE_BY_2("TRUE"),
  .CLK_FEEDBACK("1X")
) DCM_SP_inst (
  .CLKIN(clk_50m),
  .CLKDV(clk_25m),
  .CLKFB(clk_50m) //TODO Learn what would be best/appropriate here
);

// Test with switches and leds
always @(posedge clk_25m) begin
  leds[0] <= !switches[0];
  leds[1] <= !switches[1];
  leds[2] <= !switches[2];
  leds[3] <= !switches[3];

  leds[6:4] <= leds[2:0];
end

always @(posedge clk_25m) begin
  horizontal_position = horizontal_position + 1;
  if (horizontal_position >= 799) begin
    horizontal_position = 0;
  end
end

always @(posedge clk_25m) begin
  if (horizontal_position == 799) begin
    vertical_position = vertical_position + 1;
  end
  if (vertical_position >= 524) begin
    vertical_position = 0;
  end
end

always @(posedge clk_25m) begin
  leds[7] <= vertical_position == 0;
end

assign led7 = leds[7];

endmodule
