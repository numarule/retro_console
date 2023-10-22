module aabb_collision#(
  parameter POSITION_REG_MAX = 11 //TODO Eval default value
) (
    input [POSITION_REG_MAX:0] box1_x1, box1_y1, box1_x2, box1_y2
   ,input [POSITION_REG_MAX:0] box2_x1, box2_y1, box2_x2, box2_y2

  ,output overlap
);

assign x_overlap = box1_x1 < box2_x2 && box1_x2 > box2_x1;
assign y_overlap = box1_y1 < box2_y2 && box1_y2 > box2_y1;

assign overlap = x_overlap && y_overlap;

endmodule
