module decoder (
  output reg [3:0] y,
  input wire [1:0] a);

  always @(*)
  begin
    case (a)
      0 : y = 1;
      1 : assign y = 2;
      2 : assign y = 4;
      3 : assign y = 8;
      default : assign y = "xxxx";
    endcase
  end
endmodule
