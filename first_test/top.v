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
    input [3:0] switches,
    output [3:0] leds
);

assign leds = switches;


endmodule
