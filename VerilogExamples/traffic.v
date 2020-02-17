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
      present state <= next_state;
  end

  
endmodule
