library ieee;
library std;
use ieee.std_logic_1164.all;
use std.textio.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

-- Empty entity for testbench
entity piiri2_tb  is
end;

architecture tb_arch OF piiri2_tb is
  signal Atb, Btb, Ctb, Ztb  :  std_logic :='U';
begin
  dut  : entity WORK.piiri2(optimized)
  --dut  : entity WORK.piiri2(totuustaulu)
    port map (A => Atb, B => Btb, C => Ctb, Z => Ztb);
  process
    constant GoldenOutput : std_logic_vector (0 to 7) := "01000101";
  begin
    report "Test begins";

    l: for i in 0 to 7 LOOP
      Atb <= to_unsigned(i,3)(2);
      Btb <= to_unsigned(i,3)(1);
      Ctb <= to_unsigned(i,3)(0);

      wait for 10 ns;
      assert Ztb = GoldenOutput(i)
        report "Input = " & integer'image(i)
        & " output = " & std_logic'image(Ztb)
        & " should be = " & std_logic'image(GoldenOutput(i));
    end LOOP l;

    report "Test ends";
    wait;
  end process;
end architecture;
