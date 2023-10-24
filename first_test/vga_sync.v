module vga_sync#(
   parameter H_VISIBLE_AREA = `POSITION_WIDTH'd 640
  ,parameter H_FRONT_PORCH  = `POSITION_WIDTH'd  16
  ,parameter H_SYNC_WIDTH   = `POSITION_WIDTH'd  96
  ,parameter H_BACK_PORCH   = `POSITION_WIDTH'd  48
  ,parameter H_ACTIVE_POLARITY = 1'b0

  ,parameter V_VISIBLE_AREA = `POSITION_WIDTH'd 480
  ,parameter V_FRONT_PORCH  = `POSITION_WIDTH'd  10
  ,parameter V_SYNC_WIDTH   = `POSITION_WIDTH'd   2
  ,parameter V_BACK_PORCH   = `POSITION_WIDTH'd  33
  ,parameter V_ACTIVE_POLARITY = 1'b0
) (
   input pixel_clock

  ,output reg vga_horizontal_sync
  ,output reg vga_vertical_sync

  ,output reg [`POSITION_WIDTH-1:0] h_position
  ,output reg [`POSITION_WIDTH-1:0] v_position

  ,output visible_area
);

localparam H_SYNC_START = H_VISIBLE_AREA + H_FRONT_PORCH;
localparam H_SYNC_END   = H_SYNC_START   + H_SYNC_WIDTH;
localparam V_SYNC_START = V_VISIBLE_AREA + V_FRONT_PORCH;
localparam V_SYNC_END   = V_SYNC_START   + V_SYNC_WIDTH;

localparam H_TOTAL = H_VISIBLE_AREA + H_FRONT_PORCH + H_SYNC_WIDTH + H_BACK_PORCH;
localparam V_TOTAL = V_VISIBLE_AREA + V_FRONT_PORCH + V_SYNC_WIDTH + V_BACK_PORCH;
localparam H_MAX = H_TOTAL - `POSITION_WIDTH'd1;
localparam V_MAX = V_TOTAL - `POSITION_WIDTH'd1;

// H
wire h_reset = h_position >= H_MAX;
always @(posedge pixel_clock) h_position <= h_reset ? `POSITION_WIDTH'd0 : h_position + `POSITION_WIDTH'd1;

wire h_sync = h_position >= H_SYNC_START && h_position < H_SYNC_END;
//OPT Could this ternary be some binary operation of h_sync and H_ACTIVE_POLARITY?
always @(posedge pixel_clock) vga_horizontal_sync <= h_sync ? H_ACTIVE_POLARITY : ~H_ACTIVE_POLARITY;

// V
wire h_at_max = h_position >= H_MAX;
wire v_reset = v_position >= V_MAX;

always @(posedge pixel_clock) begin
  casez({h_at_max, v_reset})
    'b?1: v_position = `POSITION_WIDTH'd0;
    'b00: v_position = v_position; //NOP
    'b10: v_position = v_position + `POSITION_WIDTH'd1;
  endcase
end

wire v_sync = v_position >= V_SYNC_START && v_position < V_SYNC_END;
always @(posedge pixel_clock) vga_vertical_sync <= v_sync ? V_ACTIVE_POLARITY : ~V_ACTIVE_POLARITY;

// visible?
wire h_visibile_area = h_position < H_VISIBLE_AREA;
wire v_visibile_area = v_position < V_VISIBLE_AREA;
assign visible_area = h_visibile_area && v_visibile_area;

endmodule
