module paddle#(
   parameter PADDLE_POSITION_REG_MAX = 11 //TODO Eval default values

  ,parameter PADDLE_LENGTH = 200
  ,parameter PADDLE_WIDTH = 20
  ,parameter PADDLE_SPEED = 10
  ,parameter PADDLE_START_X = 110
  ,parameter PADDLE_START_Y = 110
  ,parameter PADDLE_Y_MIN = 0
  ,parameter PADDLE_Y_MAX = (PADDLE_POSITION_REG_MAX**2)-1
) (
   input pixel_clock
  ,input vertical_sync
  ,input move_forward, move_backward

  //TODO Maybe remove paddle_x if const?
  ,output reg [PADDLE_POSITION_REG_MAX:0] paddle_x = PADDLE_START_X
  ,output reg [PADDLE_POSITION_REG_MAX:0] paddle_y = PADDLE_START_Y
);

//TODO Move tick logic to own module
reg last_vsync;
always @(posedge pixel_clock) begin
  last_vsync <= vertical_sync;
  if (vertical_sync && !last_vsync) begin
    //Tick logic
    casez({move_forward, move_backward})
      2'b01: begin
        if (paddle_y < PADDLE_SPEED+PADDLE_Y_MIN) begin
          //Clamp to border
          paddle_y <= PADDLE_Y_MIN;
        end else begin
          paddle_y <= paddle_y - PADDLE_SPEED;
        end
      end
      2'b10: begin
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
