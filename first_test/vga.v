`include "vga_sync.v"
// Docs:
// vga timing formulae:  https://glenwing.github.io/docs/VESA-GTF-1.1.pdf
// vga timing generator: https://kosshi.gitlab.io/vgatimingeditor/
// vga timing tables:    https://glenwing.github.io/docs/VESA-DMT-1.13.pdf
// tinvga timings:       http://tinyvga.com/vga-timing
//
//
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

module vga#(
   parameter WIDTH  = 1280
  ,parameter HEIGHT = 800
  //TODO Replace with log2(ceil(TOTAL))
  ,parameter POSITION_REG_MAX = 11
//  ,parameter REFRESH_RATE = 60
) (
   input clk_50m

  ,output pixel_clock
  ,output vga_horizontal_sync
  ,output vga_vertical_sync

  ,output [POSITION_REG_MAX:0] h_position
  ,output [POSITION_REG_MAX:0] v_position

  ,output visible_area
  //TODO
//  ,output v_sync
);

//1280x800@60hz - 83.5Mhz ideal pixel clock - 83.333Mhz w/ 5/3*50m
//TODO Calculate, or lookup CLKFX values according to settings
DCM_SP #(
   .CLKFX_MULTIPLY(5)
  ,.CLKFX_DIVIDE(3)
  ,.CLKIN_PERIOD(20.0)
) DCM_SP_inst (
   .CLKIN(clk_50m)
  ,.CLKFX(pixel_clock)
  ,.RST(0)
);

//TODO Calculate, or lookup timing values according to settings
vga_sync #(
   .H_VISIBLE_AREA(WIDTH)
  ,.H_FRONT_PORCH(72)
  ,.H_SYNC_WIDTH(128)
  ,.H_BACK_PORCH(200)
  ,.H_ACTIVE_POLARITY(1'b0)

  ,.V_VISIBLE_AREA(HEIGHT)
  ,.V_FRONT_PORCH(3)
  ,.V_SYNC_WIDTH(6)
  ,.V_BACK_PORCH(22)
  ,.V_ACTIVE_POLARITY(1'b1)

  ,.H_REG_MAX(POSITION_REG_MAX)
  ,.V_REG_MAX(POSITION_REG_MAX)
) vga_sync_inst (
   .pixel_clock(pixel_clock)

  ,.vga_horizontal_sync(vga_horizontal_sync)
  ,.vga_vertical_sync(vga_vertical_sync)

  ,.h_position(h_position)
  ,.v_position(v_position)

  ,.visible_area(visible_area)
);

endmodule
