module vga#(
  // TODO Generalize
  // 640x480x60hz - 25.125Mhz
  // Front Porch - Visible Area - Back Porch - Sync - Total
  // 16          - 640          - 48         - 96   - 800
  // Front Porch - Visible Area - Back Porch - Sync - Total
  // 10          - 480          - 33         - 2    - 525
   parameter H_FRONT_PORCH  = 16
  ,parameter H_VISIBLE_AREA = 640
  ,parameter H_BACK_PORCH   = 48
  ,parameter H_SYNC_WIDTH   = 96

  ,parameter H_ACTIVE_POLARITY = 1'b0

  ,parameter V_FRONT_PORCH  = 10
  ,parameter V_VISIBLE_AREA = 480
  ,parameter V_BACK_PORCH   = 33
  ,parameter V_SYNC_WIDTH   = 2

  ,parameter V_ACTIVE_POLARITY = 1'b0

  //TODO log2(ceil(H_VISIBLE_AREA))
  ,parameter H_REG_WIDTH = 11
  //TODO log2(ceil(V_VISIBLE_AREA))
  ,parameter V_REG_WIDTH = 11
) (
   input clk_pixel

  ,input [3:0] in_vga_r
  ,input [3:0] in_vga_g
  ,input [3:0] in_vga_b

  ,output reg [3:0] out_vga_r
  ,output reg [3:0] out_vga_g
  ,output reg [3:0] out_vga_b

  ,output reg out_vga_horizontal_sync
  ,output reg out_vga_vertical_sync

  ,output reg [H_REG_WIDTH:0] out_h_position
  ,output reg [V_REG_WIDTH:0] out_v_position

  //TODO Evaluate widths?
  ,output reg [H_REG_WIDTH:0] out_h_active_position
  ,output reg [V_REG_WIDTH:0] out_v_active_position

  ,output out_visible_area
);

localparam H_VISIBLE_AREA_START = H_FRONT_PORCH;
localparam H_VISIBLE_AREA_END = H_VISIBLE_AREA_START + H_VISIBLE_AREA;
localparam V_VISIBLE_AREA_START = V_FRONT_PORCH;
localparam V_VISIBLE_AREA_END = V_VISIBLE_AREA_START + V_VISIBLE_AREA;

localparam H_SYNC_START = H_FRONT_PORCH + H_VISIBLE_AREA + H_BACK_PORCH;
localparam H_SYNC_END = H_SYNC_START + H_SYNC_WIDTH;
localparam V_SYNC_START = V_FRONT_PORCH + V_VISIBLE_AREA + V_BACK_PORCH;
localparam V_SYNC_END = V_SYNC_START + V_SYNC_WIDTH;

//TODO Assert == 800
localparam H_TOTAL = H_SYNC_START + H_SYNC_WIDTH;
//TODO Assert == 525
localparam V_TOTAL = V_SYNC_START + V_SYNC_WIDTH;

localparam H_MAX = H_TOTAL - 1;
localparam V_MAX = V_TOTAL - 1;


// H
wire h_reset = out_h_position >= H_MAX;
always @(posedge clk_pixel) out_h_position <= h_reset ? 0 : out_h_position + 1;

wire h_sync = out_h_position >= H_SYNC_START && out_h_position <= H_SYNC_END;
//OPT Could this ternary be an operation?
always @(posedge clk_pixel) out_vga_horizontal_sync <=
  h_sync ? H_ACTIVE_POLARITY : ~H_ACTIVE_POLARITY;

// V
wire v_reset = out_v_position >= V_MAX;
wire h_at_max = out_h_position >= H_MAX;

always @(posedge clk_pixel) begin
  casez({v_reset, h_at_max})
    2'b1?: out_v_position = 0;
    2'b00: out_v_position = out_v_position; //NOP
    2'b01: out_v_position = out_v_position + 1;
  endcase
end

wire v_sync = out_v_position >= V_SYNC_START && out_v_position <= V_SYNC_END;
always @(posedge clk_pixel) out_vga_vertical_sync <=
  v_sync ? V_ACTIVE_POLARITY : ~V_ACTIVE_POLARITY;

// visible?
wire h_visibile_area = out_h_position >= H_VISIBLE_AREA_START &&
                       out_h_position  < H_VISIBLE_AREA_END;
wire v_visibile_area = out_v_position >= V_VISIBLE_AREA_START &&
                       out_v_position  < V_VISIBLE_AREA_END;
assign out_visible_area = h_visibile_area && v_visibile_area;

// rgb passthrough //TODO Should this be completely external?
always @* begin
  if(out_visible_area) begin
    out_vga_r <= in_vga_r;
    out_vga_g <= in_vga_g;
    out_vga_b <= in_vga_b;
  end else begin
    out_vga_r <= 4'b0000;
    out_vga_g <= 4'b0000;
    out_vga_b <= 4'b0000;
  end
end

always @(posedge clk_pixel) begin
  if(out_visible_area) begin
    out_h_active_position = out_h_position - H_VISIBLE_AREA_START;
    out_v_active_position = out_v_position - V_VISIBLE_AREA_START;
  end else begin
    out_h_active_position = 0;
    out_v_active_position = 0;
  end
end

endmodule
