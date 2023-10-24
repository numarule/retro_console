module aabb_collision(
    input [`POSITION_WIDTH-1:0] bb1_x1, bb1_y1, bb1_x2, bb1_y2
   ,input [`POSITION_WIDTH-1:0] bb2_x1, bb2_y1, bb2_x2, bb2_y2

  ,output overlap
);

//TODO Confirm pixel perfect and not off by one
wire x_overlap, y_overlap;
assign x_overlap = bb1_x1 < bb2_x2 && bb1_x2 > bb2_x1;
assign y_overlap = bb1_y1 < bb2_y2 && bb1_y2 > bb2_y1;

assign overlap = x_overlap && y_overlap;

endmodule
