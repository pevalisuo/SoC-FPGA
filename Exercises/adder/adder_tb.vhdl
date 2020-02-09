----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2020 02:02:30 PM
-- Design Name: 
-- Module Name: adder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use work.Types.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_tb is
--  Port ( );
end adder_tb;

architecture Behavioral of adder_tb is
    constant  Nbits : Natural range 0 to 255 := 4;
    signal At : STD_LOGIC_VECTOR(Nbits-1 downto 0);
    signal Bt : std_logic_vector(Nbits-1 downto 0);
    signal St : std_logic_vector(Nbits-1 downto 0);           
    signal Ct : std_logic;
    signal error : std_logic := '0';

 component adder
 port (
     A: in std_logic_vector (Nbits-1 downto 0);
     B: in std_logic_vector (Nbits-1 downto 0);
     S: out std_logic_vector (Nbits-1 downto 0);
     C: out std_logic);
 end component;
 
-- for all : adder use entity WORK.fulladder_nb(Behavioral) generic map (N => Nbits);
for all : adder use entity WORK.fulladder_nb(RTL) generic map (N => Nbits);

begin
 DUT : adder
 port map (
     A => At,
     B => Bt,
     S => St,
     C => Ct);
 process
    variable Aint, Bint, Sint : Integer range 0 to (Nbits**2 -1) := 0;
 begin
    report "Testi alkaa";

    At <= "0111";
    Bt <= "0011";    
    wait for 10 ns;
    assert St="1010" report "S should be 1010";
        
    report "Testiluuppi";
    for i in 0 to 8 loop
        At <= std_logic_vector(to_unsigned(i, At'length));
        wait for 10 ns;
        
        Aint := to_integer(unsigned(At));
        Bint := to_integer(unsigned(Bt));
        Sint := to_integer(unsigned(St));
        
        report integer'image(i);
        if ((Aint+Bint) /= Sint) then
            error <= '1';
        end if;
        assert ((Aint+Bint) = Sint) 
            report "Error " & integer'image(Aint) & " + " & integer'image(Bint)
                & " /= " & integer'image(Sint) & " !";
    end loop;
    report "Testi päättyy";
    wait;  -- Wait forever
  end process;
end Behavioral;
