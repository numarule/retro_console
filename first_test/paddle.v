module paddle#(
   parameter PADDLE_LENGTH  = `POSITION_WIDTH'd 200
  ,parameter PADDLE_WIDTH   = `POSITION_WIDTH'd  20
  ,parameter PADDLE_SPEED   = `POSITION_WIDTH'd  10
  ,parameter PADDLE_START_X = `POSITION_WIDTH'd 110
  ,parameter PADDLE_START_Y = `POSITION_WIDTH'd 110
  ,parameter PADDLE_Y_MIN   = `POSITION_WIDTH'd   0
  ,parameter PADDLE_Y_MAX   = (`POSITION_WIDTH**2)-`POSITION_WIDTH'd 1
) (
   input pixel_clock
  ,input vertical_sync
  ,input move_forward, move_backward

  //TODO Maybe remove paddle_x if const?
  ,output reg [`POSITION_WIDTH-1:0] paddle_x = PADDLE_START_X
  ,output reg [`POSITION_WIDTH-1:0] paddle_y = PADDLE_START_Y
);

//TODO Move tick logic to own module
reg last_vsync;
always @(posedge pixel_clock) begin
  last_vsync <= vertical_sync;
  if (vertical_sync && !last_vsync) begin
    //Tick logic
    casez({move_forward, move_backward})
      'b01: begin
        if (paddle_y < PADDLE_SPEED+PADDLE_Y_MIN) begin
          //Clamp to border
          paddle_y <= PADDLE_Y_MIN;
        end else begin
          paddle_y <= paddle_y - PADDLE_SPEED;
        end
      end
      'b10: begin
        if (paddle_y > PADDLE_Y_MAX - PADDLE_LENGTH - PADDLE_SPEED) begin
          //Clamp to border
          paddle_y <= PADDLE_Y_MAX - PADDLE_LENGTH;
        end else begin
          paddle_y <= paddle_y + PADDLE_SPEED;
        end
      end
      default: paddle_y <= paddle_y; //NOP
    endcase
  end
end

endmodule
