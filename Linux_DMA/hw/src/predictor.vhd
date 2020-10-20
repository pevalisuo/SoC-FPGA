----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2020 10:29:14 PM
-- Design Name: 
-- Module Name: predictor - Behavioral
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

entity predictor is
generic (TDATA_WIDTH: Integer := 32);
port (
  aclk    : in std_logic;
  aresetn    : in std_logic;

	-- Ports of Axi Slave Bus Interface S00_AXIS
  s00_axis_tready    : out std_logic;
  s00_axis_tdata    : in std_logic_vector(TDATA_WIDTH-1 downto 0);
  s00_axis_tstrb    : in std_logic_vector((TDATA_WIDTH/8)-1 downto 0);
  s00_axis_tlast    : in std_logic;
  s00_axis_tvalid    : in std_logic;

  -- Ports of Axi Master Bus Interface M00_AXIS
  m00_axis_tvalid    : out std_logic;
  m00_axis_tdata    : out std_logic_vector(TDATA_WIDTH-1 downto 0);
  m00_axis_tstrb    : out std_logic_vector((TDATA_WIDTH/8)-1 downto 0);
  m00_axis_tlast    : out std_logic;
  m00_axis_tready   : in std_logic;
  m00_axis_tkeep     : out std_logic_vector((TDATA_WIDTH/8)-1 downto 0)
  );
end predictor;

architecture Behavioral of predictor is
  type stateType is ( IDLE,        -- This is the initial/idle state 
	                  WORK,         -- In this the system processes the input
	                  FINISH);     -- Finish the transfer sending still couple of more bytes 
	signal CurrentState, NextState : stateType := IDLE;  
    signal data: std_logic_vector(TDATA_WIDTH-1 downto 0) := (others => '0');
    signal samplecount : Integer range 0 to 1024 := 0;

begin

  process (aclk, aresetn)
  begin 
    if (rising_edge(aclk)) then
      CurrentState <= NextState;
      if(ARESETN = '0') then
        -- Synchronous reset (active low)
        CurrentState   <= IDLE;
      end if;
    end if;
  end process;
    
  process(CurrentState, s00_axis_tvalid, m00_axis_tready, samplecount)
  begin
    s00_axis_tready<='1';
    case (CurrentState) is
        when IDLE     => 
          -- The sink starts accepting tdata when 
          -- tvalid is asserted to mark the
          -- presence of valid streaming data 
          if (S00_AXIS_TVALID = '1') then
            NextState <= WORK;
          else
            NextState <= IDLE;
          end if;
        when WORK     => 
          if (S00_AXIS_TVALID = '1') and (m00_axis_tready='1') and (samplecount < (64-2)) then
            NextState <= WORK;
          else
            NextState <= FINISH;
          end if;
        when FINISH =>
            NextState <= IDLE;
        when others =>
            NextState <= IDLE;
        end case;
  end process;
    
    
  process (aclk)
  begin
    if rising_edge(aclk)
    then 
       data <= std_logic_vector(signed(s00_axis_tdata) + 10);
    end if;
    
  end process;
  
  -- Output logic, we sychnronize the output also to the clock
  process (aclk)
  begin
    if rising_edge(aclk)
    then 
        if (CurrentState=WORK) 
        then
            samplecount <= samplecount + 1;
            m00_axis_tvalid<='1';
            m00_axis_tdata <= data;
            m00_axis_tlast <= s00_axis_tlast;
            m00_axis_tstrb <= (others=>'1');
            m00_axis_tkeep <= (others=>'1');
        elsif (CurrentState=FINISH)
        then
            samplecount <= samplecount + 1;
            m00_axis_tvalid<='1';
            m00_axis_tdata <= (others => '1');
            m00_axis_tlast <= '1';
            m00_axis_tstrb <= (others=>'1');
            m00_axis_tkeep <= (others=>'1');
        else
            samplecount <= 0;
            m00_axis_tvalid<='0';
            m00_axis_tdata <= (others => '0');
            m00_axis_tlast <= '0';
            m00_axis_tstrb <= (others=>'0');
            m00_axis_tkeep <= (others=>'0');
        end if;
    end if;
  end process;

end Behavioral;
