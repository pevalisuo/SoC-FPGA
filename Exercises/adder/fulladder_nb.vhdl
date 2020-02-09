----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2020 01:44:40 PM
-- Design Name: 
-- Module Name: fulladder_nb - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladder_nb is
    generic (N : Natural := 4);
    Port ( A : in STD_LOGIC_VECTOR(N-1 downto 0);
           B : in STD_LOGIC_VECTOR(N-1 downto 0);
           S : out STD_LOGIC_VECTOR(N-1 downto 0);
           C : out STD_LOGIC);
end fulladder_nb;

architecture Behavioral of fulladder_nb is
--    shared variable Overflow : Integer range 0 to (2**(N+1)-1);
begin
    S <= A + B;
    C <= '0';
end Behavioral;

architecture RTL of fulladder_nb is
    signal Carry : STD_LOGIC_VECTOR(N downto 0) := (others => '0');
begin
    g1 : for i in 0 to N-1 generate
        adder : entity WORK.fulladder(RTL) port map (A(i), B(i), Carry(i), S(i), Carry(i+1));
    end generate g1;
    C <= Carry(N);
end RTL;

