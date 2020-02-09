library ieee;				-- component #1
use ieee.std_logic_1164.all;

entity piiri1 is
port (A, B, C: in std_logic;
  Z: out std_logic
			);
end piiri1;


architecture raaka of piiri1 is
begin
  z <= ( ((not A) and (not B)) or A or B) and ( ((not A) and (not B)) or (not C) );
end;

architecture simplified of piiri1 is
begin
  z <= ((not A) and (not B)) or (not C);
end;
