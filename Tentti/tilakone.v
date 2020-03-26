module state_machine (output logic z,
                        input logic x, clock);
enum{S0, S1, S2, S3} state, next_state;

always @(posedge clock, negedge n_reset)
begin: SEQ
    if( ̃~n_reset)
        present_state <= S0;
    else
        present_state <= next_state;
end

always_comb
begin: com
    case(state)
        S0: begin
            z = ’0;
            if(X)
                next_state = S2;
            else
                next_state = S0;
            end
        S1: begin
            z = ’1;
            if(x) 
                next_state = S2;
            else
                next_state = S0;
            end
        S2: begin
            z = ’0;
            if(x)
                next_state = S3;
            else
                next_state = S2;
            end
        S3: begin
            z = ’0;
            if(x)
                next_state = S1;
            else
                next_state = S3;
            end
    endcase
end
endmodule