module traffic (output logic start_timer,
  major_green, minor_green,
  input logic clock, n_reset, timed, car);
  enum {G,R} present_state, next_state;

  // Implement the following statemachine block with FF
  always_ff @(posedge clock, negedge n_reset)
  begin: SEQ
    if (~n_reset)
      present_state <= G;
    else
      present_state <= next_state;
  end

  // Implement this always as combinatorics
  always_comb begin
    start_timer = '0;
    minor_green = '0;
    major_green = '0;
    next_state = present_state;
    case (present_state)
      G: begin
        major_green ='1;
        if (car)
          begin
            start_timer = '1;
            next_state = R;
          end
        end
      R: begin
        minor_green = 1'b1;
        if (timed)
          next_state = G;
        end
    endcase
  end
endmodule
