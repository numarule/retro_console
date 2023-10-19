module vga#(
  // TODO Generalize
  //
  // 640x480x60hz - 25.175Mhz - 50Mhz * 2/4 (25.0)
  // Visible Area - Polarity  - Front Porch - Sync - Back Porch - Total
  // 640          - neg       - 16          - 96   - 48         - 800
  // Visible Area - Polarity  - Front Porch - Sync - Back Porch - Total
  // 480          - neg       - 10          - 2    - 33         - 525
  //
  // 1024x768@60  - 65.0Mhz   - 50Mhz * 13/10 (65.0)
  // Visible Area - Polarity  - Front Porch - Sync - Back Porch - Total
  // 1024         - neg       - 24          - 136  - 160        - 1344
  // Visible Area - Polarity  - Front Porch - Sync - Back Porch - Total
  // 768          - neg       - 3           - 6    - 29         - 806
  //
  // 1280x800@60  - 83.5Mhz   - 50Mhz * 5/3 (83.333)
  // Visible Area - Polarity  - Front Porch - Sync - Back Porch - Total
  // 1280         - neg       - 72          - 128  - 200        - 1680
  // Visible Area - Polarity  - Front Porch - Sync - Back Porch - Total
  // 800          - pos       - 3           - 6    - 22         - 831

   parameter H_VISIBLE_AREA = 640
  ,parameter H_FRONT_PORCH  =  16
  ,parameter H_SYNC_WIDTH   =  96
  ,parameter H_BACK_PORCH   =  48
  ,parameter H_ACTIVE_POLARITY = 1'b0

  ,parameter V_VISIBLE_AREA = 480
  ,parameter V_FRONT_PORCH  =  10
  ,parameter V_SYNC_WIDTH   =  2
  ,parameter V_BACK_PORCH   =  33
  ,parameter V_ACTIVE_POLARITY = 1'b0

  //TODO log2(ceil(VISIBLE_AREA))
  ,parameter H_REG_MAX = 11
  ,parameter V_REG_MAX = 11
) (
   input pixel_clock

  ,output reg vga_horizontal_sync
  ,output reg vga_vertical_sync

  ,output reg [H_REG_MAX:0] h_position
  ,output reg [V_REG_MAX:0] v_position

  ,output visible_area
);

localparam H_SYNC_START = H_VISIBLE_AREA + H_FRONT_PORCH;
localparam H_SYNC_END   = H_SYNC_START   + H_SYNC_WIDTH;
localparam V_SYNC_START = V_VISIBLE_AREA + V_FRONT_PORCH;
localparam V_SYNC_END   = V_SYNC_START   + V_SYNC_WIDTH;

localparam H_TOTAL = H_VISIBLE_AREA + H_FRONT_PORCH + H_SYNC_WIDTH + H_BACK_PORCH;
localparam V_TOTAL = V_VISIBLE_AREA + V_FRONT_PORCH + V_SYNC_WIDTH + V_BACK_PORCH;
localparam H_MAX = H_TOTAL - 1;
localparam V_MAX = V_TOTAL - 1;

// H
wire h_reset = h_position >= H_MAX;
always @(posedge pixel_clock) h_position <= h_reset ? 0 : h_position + 1;

wire h_sync = h_position >= H_SYNC_START && h_position < H_SYNC_END;
//OPT Could this ternary be some binary operation of h_sync and H_ACTIVE_POLARITY?
always @(posedge pixel_clock) vga_horizontal_sync <=
  h_sync ? H_ACTIVE_POLARITY : ~H_ACTIVE_POLARITY;

// V
wire h_at_max = h_position >= H_MAX;
wire v_reset = v_position >= V_MAX;

always @(posedge pixel_clock) begin
  casez({h_at_max, v_reset})
    2'b?1: v_position = 0;
    2'b00: v_position = v_position; //NOP
    2'b10: v_position = v_position + 1;
  endcase
end

wire v_sync = v_position >= V_SYNC_START && v_position < V_SYNC_END;
always @(posedge pixel_clock) vga_vertical_sync <=
  v_sync ? V_ACTIVE_POLARITY : ~V_ACTIVE_POLARITY;

// visible?
wire h_visibile_area = h_position < H_VISIBLE_AREA;
wire v_visibile_area = v_position < V_VISIBLE_AREA;
assign visible_area = h_visibile_area && v_visibile_area;

endmodule
