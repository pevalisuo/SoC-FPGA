module decoder (
  output reg [3:0] y,
  input wire [1:0] a);

  // This needs to be inside always block, because the case
  // This will be synthesized as combinatorial logics though
  always @(*)
  begin
    if (a==0)
      y = 0;
    else if (a==1)
      y = 2;
    else if (a==2)
      y = 4;
    else if (a==3)
      y = 8;
    else
      y = "xxxx";
  end
endmodule
