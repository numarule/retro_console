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
  input clock,
  input [3:0] switches,
  output [3:0] leds,
  output reg [3:0] leds2
);

assign leds[3:0] = switches;

always @(posedge clock) begin
  leds2[0] <= !switches[0];
  leds2[1] <= !switches[1];
  leds2[2] <= !switches[2];
  leds2[3] <= !switches[3];
end

endmodule
