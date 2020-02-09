library ieee;				-- component #1
use ieee.std_logic_1164.all;

entity piiri2 is
port (A, B, C: in std_logic;
  Z: out std_logic
			);
end piiri2;


architecture optimized of piiri2 is
begin
  z <= (a and c) or  (not b and c);
end;

architecture totuustaulu of piiri2 is
begin
  process(A,B,C)
    variable SEL : std_logic_vector (2 downto 0);
  begin
    SEL := A & B & C;
    c1: case SEL is
      when "000" =>   Z <= '0';
      when "001" =>   Z <= '1';
      when "010" =>   Z <= '0';
      when "011" =>   Z <= '1';
      when "100" =>   Z <= '1';
      when "101" =>   Z <= '0';
      when "110" =>   Z <= '1';
      when "111" =>   Z <= '0';
      when others => Z <= 'X';
    end case;
  end process;
end architecture;
