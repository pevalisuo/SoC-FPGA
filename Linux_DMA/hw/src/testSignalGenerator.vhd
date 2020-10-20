----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2020 06:20:03 PM
-- Design Name: 
-- Module Name: testSignalGenerator - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testSignalGenerator is
    Port ( result : in STD_LOGIC_VECTOR(31 downto 0);
           testdata : out STD_LOGIC_VECTOR(31 downto 0);
            
           Clk : in std_logic;
           
           rd_en : out STD_LOGIC;
           rd_empty : in STD_LOGIC;

           wr_en : out STD_LOGIC;
           wr_full : in STD_LOGIC
           );
end testSignalGenerator;

architecture RTL of testSignalGenerator is  
begin

process(clk)
    variable n: Integer :=0;
begin
    if (falling_edge(clk))
    then
        wr_en <= '0';
        rd_en <= '0';
        testdata <= (others => '0');
        n:=n+1;
        
        if (n>=5) and (n<15) then
            wr_en<='1';
            testdata <= std_logic_vector(to_unsigned(n, 32));
        end if;
        
        if (n>=10) and (n<20) then 
            rd_en<='1';
        end if;
     end if; 
end process;

end RTL;
