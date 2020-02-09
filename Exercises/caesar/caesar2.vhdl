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
  begin
    Aint := to_integer(unsigned(A));

    c1: case Aint is
      when 97 to 122-N =>
        B <= std_logic_vector(to_unsigned(Aint+N, B'length));
      when 122-N+1 to 122 =>
        B <= std_logic_vector(to_unsigned(97+N, B'length));
      when 65 to 90-N =>   -- 'A'= 65, 'Z' = 90
        B <= std_logic_vector(to_unsigned(Aint+N, B'length));
      when 90-N+1 to 90 =>
        B <= std_logic_vector(to_unsigned(97+N, B'length));
      when others =>
        B <= (others => 'X');
    end case;
  end process doit;
end behavioral;
