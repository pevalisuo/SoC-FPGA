library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity caesar is
  generic (N: natural:=0);
  port (A: in std_logic_vector(7 downto 0);
        B: out std_logic_vector(7 downto 0)
        );
end caesar;

-- This is behavioral architecture, which does not syhthesize
-- very efficiently if at all. Here behavioral implementation is
-- used for testing that testbench works
--
-- The ASCII-code of lowercase letters is the ASCII-code
-- of corresponding lowercase letter - 32
architecture behavioral of caesar is
begin
  doit : process(A)
    variable Aint : Natural  range 0 to 255:= 0;
    variable Bint : Natural  range 0 to 255:= 0;
  begin
    Aint := to_integer(unsigned(A));
    if(Aint >= 65) and (Aint <= 90) then
      Bint := (Aint-65+N) mod (90-65+1) + 65;
      B <= std_logic_vector(to_unsigned(Bint, B'length));
    elsif(Aint >= 97) and (Aint <= 122) then
      Bint := (Aint-97+N) mod (122-97+1) + 97;
      B <= std_logic_vector(to_unsigned(Bint, B'length));
    else
      B <= (others => '0');
      --B <= (others => 'X');
    end if;
  end process doit;
end behavioral;
