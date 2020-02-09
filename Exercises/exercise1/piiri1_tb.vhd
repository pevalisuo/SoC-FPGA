library ieee;
library std;
use ieee.std_logic_1164.all;
use std.textio.all;
use ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_textio.all;

-- Empty entity for testbench
entity piiri1_tb  is
end;

architecture tb_arch OF piiri1_tb is
  signal Atb, Btb, Ctb, Ztb  :  std_logic :='U';
  signal koe : std_logic :='U';
begin
  dut  : entity WORK.piiri1(simplified)
  --dut  : entity WORK.piiri1(raaka)
    port map (A => Atb, B => Btb, C => Ctb, Z => Ztb);
    koe <= ( ((not Atb) and (not Btb)) or Atb or Btb) and ( ((not Atb) and (not Btb)) or (not Ctb) );
  process
    --variable driver : unsigned (7 downto 0) := (others => '0');
    variable driver : integer range 0 to 7 := 0;
  begin
    report "Test begins";

    l: for i in 0 to 7 LOOP
      driver := i;
      Atb <= to_unsigned(driver,3)(2);
      Btb <= to_unsigned(driver,3)(1);
      Ctb <= to_unsigned(driver,3)(0);

      wait for 10 ns;
      report "Input: " & integer'image(driver) & " [" &
        std_logic'image(Atb) &
        std_logic'image(Btb) &
        std_logic'image(Ctb) & "] "&
        "output: " & std_logic'image(Ztb)
         & std_logic'image(koe);
    end LOOP l;

    report "Test ends";
    wait;
  end process;
end architecture;
