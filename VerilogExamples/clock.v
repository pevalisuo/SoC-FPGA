initial
  begin
    clock = '0;
    forever #10ps clock = ~clock;
  end

initial
  begin
    n_reset = '1;
    #1ns n_reset = '0;
    #1ns n_reset = '1;
  end
  
