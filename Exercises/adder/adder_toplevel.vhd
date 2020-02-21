----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2020 03:48:19 PM
-- Design Name: 
-- Module Name: adder_toplevel - Behavioral
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

entity adder_toplevel is
    Port ( sw  : in STD_LOGIC_VECTOR(3 downto 0);
           btn : in STD_LOGIC_VECTOR(3 downto 0);
           sysclk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR(3 downto 0);
           led6_r : out STD_LOGIC;
           led6_g : out STD_LOGIC;           
           led6_b : out STD_LOGIC
           );
end adder_toplevel;

architecture RTL of adder_toplevel is
    -- The system clock frequency is 50 MHz
    -- We will use a 24 bit counter and increment a it every clock cycle
    -- This will make the counter to roll over every 2^24 / 50 MHz = 1.3 seconds 
    constant  Nbits : Natural range 0 to 255 := 27;
    signal At : STD_LOGIC_VECTOR(Nbits-1 downto 0) := (others => '0');
    signal Bt : std_logic_vector(Nbits-1 downto 0) := (others => '0');
    signal St : std_logic_vector(Nbits-1 downto 0) := (others => '0');           
    signal Ct : std_logic;
    
    -- Duplicate signals for Hight Level synthesis implementation
    signal StHL : std_logic_vector(Nbits-1 downto 0);           
    signal CtHL : std_logic;

    component adder
    port (
     A: in std_logic_vector (Nbits-1 downto 0);
     B: in std_logic_vector (Nbits-1 downto 0);
     S: out std_logic_vector (Nbits-1 downto 0);
     C: out std_logic);
    end component;
 
    -- Configure tha the adder component will be our fulladder
    -- with Behavioral architecture)
    for DUT : adder use entity WORK.fulladder_nb(RTL) generic map (N => Nbits);
    for DUTHL : adder use entity WORK.fulladder_nb(Behavioral) generic map (N => Nbits);

begin 
    -- Instantiate our adder component
    DUT : adder
        port map (
        A => At,
        B => Bt,
        S => St,
        C => Ct);

    DUTHL : adder
            port map (
            A => At,
            B => Bt,
            S => StHL,
            C => CtHL);
            
    -- Read the LSB:s of input A from switches
    At(3 downto 0) <= sw;
    --At(Nbits downto 4) <= (others => '0');
    
    -- Write four MSB:s of the sum to the leds
    led <= St(Nbits-1 downto Nbits-4);
    
    -- Signal carry with the RGB leds
    led6_r <= Ct;
    led6_g <= not Ct;
    
    led6_b <= StHL(0);
            
    -- In this process, we will copy the sum A + B to B
    -- Therefore B is incremented by A every loop
    -- If A is one, the loop should take about 2 seconds, if A is two, it will
    -- only take 1 second, ... 
    process (sysclk) 
    begin 
        if rising_edge(sysclk) 
        then
            Bt <= St;
        end if;
    end process;
        
    
end RTL;
