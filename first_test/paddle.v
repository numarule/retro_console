module paddle#(
   parameter LENGTH  = `POSITION_WIDTH'd 200
  ,parameter WIDTH   = `POSITION_WIDTH'd  20
  ,parameter SPEED   = `POSITION_WIDTH'd  10
  ,parameter START_X = `POSITION_WIDTH'd 110
  ,parameter START_Y = `POSITION_WIDTH'd 110
  ,parameter Y_MIN   = `POSITION_WIDTH'd   0
  ,parameter Y_MAX   = (`POSITION_WIDTH**2)-`POSITION_WIDTH'd 1
) (
   input pixel_clock
  ,input vertical_sync
  ,input move_forward, move_backward

  //TODO Maybe remove x if const?
  ,output reg [`POSITION_WIDTH-1:0] x = START_X
  ,output reg [`POSITION_WIDTH-1:0] y = START_Y
);

//TODO Move tick logic to own module
reg last_vsync;
always @(posedge pixel_clock) begin
  last_vsync <= vertical_sync;
  if (vertical_sync && !last_vsync) begin
    //Tick logic
    casez({move_forward, move_backward})
      'b01: begin
        if (y < SPEED+Y_MIN) begin
          //Clamp to border
          y <= Y_MIN;
        end else begin
          y <= y - SPEED;
        end
      end
      'b10: begin
        if (y > Y_MAX - LENGTH - SPEED) begin
          //Clamp to border
          y <= Y_MAX - LENGTH;
        end else begin
          y <= y + SPEED;
        end
      end
      default: y <= y; //NOP
    endcase
  end
end

endmodule
