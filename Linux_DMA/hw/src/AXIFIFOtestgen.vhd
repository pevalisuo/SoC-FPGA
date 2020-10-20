----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2020 01:03:56 PM
-- Design Name: 
-- Module Name: AXIFIFOtestgen - Behavioral
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


entity AXIFIFOtestgen is
port (
  aclk    : out std_logic;
  aresetn    : out std_logic;

  -- Ports of Axi Slave Bus Interface S00_AXIS
  s00_axis_tready    : out std_logic;
  s00_axis_tdata    : in std_logic_vector(32-1 downto 0);
  --s00_axis_tstrb    : in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
  s00_axis_tlast    : in std_logic;
  s00_axis_tvalid    : in std_logic;

  -- Ports of Axi Master Bus Interface M00_AXIS
  m00_axis_tvalid    : out std_logic;
  m00_axis_tdata    : out std_logic_vector(32-1 downto 0);
  --m00_axis_tstrb    : out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
  m00_axis_tlast    : out std_logic;
  m00_axis_tready    : in std_logic 
  );
end AXIFIFOtestgen;

architecture Behavioral of AXIFIFOtestgen is
    type datavector is array (0 to 10) of std_logic_vector(31 downto 0);

    signal Clk :std_logic := '0';
    signal output : datavector;
begin

clkgen: process
begin
    Clk <= not Clk;
    wait for 5 ns;
end process clkgen;

aclk <= Clk;

process(Clk)
    variable n: Integer :=0;
    variable m: Integer :=0;
begin
    if (rising_edge(clk))
    then
        if (s00_axis_tvalid='1') 
        then
            output(m) <= s00_axis_tdata;
            m := m+1;
        end if;
    end if;
    if (falling_edge(clk))
    then
        s00_axis_tready <='1';
        m00_axis_tdata <= (others => '0');
        m00_axis_tvalid <= '0';

        if (m00_axis_tready='1') then
            n:=n+1;
            s00_axis_tready <='1';
            if (n>=5) and (n<15) then
               m00_axis_tvalid <='1';
               m00_axis_tdata <= std_logic_vector(to_unsigned(n, 32));
            end if;
        end if;
     end if; 
end process;

end Behavioral;
