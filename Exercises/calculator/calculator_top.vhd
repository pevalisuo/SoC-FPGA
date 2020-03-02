----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2020 03:13:05 PM
-- Design Name: 
-- Module Name: calculator_top - Behavioral
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

entity calculator_top is
    Port ( sysclk : in STD_LOGIC;
           Tog : in STD_LOGIC;
           Inc : in STD_LOGIC;
           Cal : in STD_LOGIC;
           Res : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR(3 downto 0)
           );
end calculator_top;

architecture Behavioral of calculator_top is
    -- The system clock frequency is 150 MHz
    -- We will use a 27 bit counter and increment a it every clock cycle
    -- This will make the counter to roll over every 2^27 / 150 MHz = 0.89 seconds 
    constant  Nbits : Natural range 0 to 255 := 27;
    constant one : Integer range 0 to 1 := 1;

    -- Counter signal for frequency division to generate nearly 1 Hz clock
    -- signal 
    signal Ctrvalue : STD_LOGIC_VECTOR(Nbits-1 downto 0) := (others => '0');
    signal Ctrstep : std_logic_vector(Nbits-1 downto 0) := (0 => '1', others => '0');
    signal Ctrnext  : std_logic_vector(Nbits-1 downto 0) := (others => '0');
    signal Ctrcarry : std_logic;
    signal Clk : std_logic;   -- The output clock signal 

    -- The A and B, the incremented values, and S is the sum
    signal A : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal B : std_logic_vector(3 downto 0) := (others => '0');
    signal S : std_logic_vector(3 downto 0) := (others => '0');

      -- States
    type Statetype is (IncA, IncB, Calc, Reset);
    signal CurrentState : Statetype := IncA;
    signal NextState : Statetype := IncA;
    
    
    component adder
    port (
     A: in std_logic_vector (Nbits-1 downto 0);
     B: in std_logic_vector (Nbits-1 downto 0);
     S: out std_logic_vector (Nbits-1 downto 0);
     C: out std_logic);
    end component;
 
    -- Configure tha the adder component will be our fulladder
    -- with Behavioral architecture)
    for  counter : adder use entity WORK.fulladder_nb(RTL) generic map (N => Nbits);

begin
    -- Instantiate our adder component
    counter : adder
        port map (
        A => Ctrvalue,
        B => Ctrstep,
        S => Ctrnext,
        C => Ctrcarry);

    -- Clock divider process two create about 1 Hz clock 
    clk_p: process (sysclk) 
    begin 
        if rising_edge(sysclk) 
        then
            Ctrvalue <= Ctrnext;
        end if;
    end process;
    Clk <= CtrValue(Nbits-1);

    -- State change process
    state_p: process (Clk)
    begin
      if (rising_edge(Clk)) then
        CurrentState <= NextState;
      end if;
    end process;

    -- Actual payload adder as concurrent statement
    -- We trust that the synzhesizer makes a good adder for us
    --S <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) + to_integer(unsigned(B)), S'length));
    S <= std_logic_vector(unsigned(A) + unsigned(B));

    -- State change and output logic
    nstate_p : process(Inc, Tog, Cal, Res)
    begin
      case CurrentState is
        when IncA =>
          if Tog='1' then
            NextState <= IncB;
          end if;
          if Cal='1' then
            NextState <= Calc;
          end if;
          if Res = '1' then 
            NextState <= Reset;
          end if;
          if Inc = '1' then 
            A <= std_logic_vector(unsigned(A)+1);
          end if;
          led <= A;
        when IncB =>
          if Tog='1' then
            NextState <= IncA;
          end if;
          if Cal='1' then
            NextState <= Calc;
          end if;
          if Res = '1' then 
            NextState <= Reset;
          end if;
          if Inc = '1' then 
            B <= std_logic_vector(unsigned(B)+1);
          end if;          
          led <= B;
        when Calc =>
          if Res = '1' then 
            NextState <= Reset;
          end if;
          led <= S;
        when Reset =>
          A <= (others => '0');
          B <= (others => '0');
          Nextstate <= IncA;
      end case;
    end process;    
end Behavioral;

