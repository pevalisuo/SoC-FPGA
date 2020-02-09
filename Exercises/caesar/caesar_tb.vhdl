library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity caesar_tb is
end;

architecture tb_arch of caesar_tb is
  signal At : std_logic_vector (7 downto 0) := (others => '0');
  signal Bt : std_logic_vector (7 downto 0) := (others => '0');

  signal error : std_logic := '0';
  type testvector is array (0 to 19) of Natural range 0 to 255;
  component caesar
    generic (N : Natural);
    port (
        A: in std_logic_vector (7 downto 0);
        B: out std_logic_vector (7 downto 0)
    );
  end component;
  for all : caesar use entity WORK.caesar(behavioral);
begin
  DUT : caesar
  generic map ( n=> 3)
  port map (
      A => At,
      B => Bt);

  process
    variable input  : testvector := (63, 64, 65, 66, 67, 88, 89, 90, 91, 92, 95, 96, 97, 98, 99, 120, 121, 122, 123, 124);
    variable output : testvector := ( 0,  0, 68, 69, 70, 65, 66, 67,  0,  0,  0,  0, 100, 101, 102, 97, 98, 99,   0,   0);
    variable Btint : Natural range 0 to 255;
  begin
    report "Testi alkaa";
    At <= (others => '0');
    wait for 10 ns;

    for i in 0 to 19 loop
      --report "Testing: " & integer'image(input(i));
      At <= std_logic_vector(to_unsigned(input(i), At'length));

      wait for 10 ns;
      Btint := to_integer(unsigned(Bt));
      if (output(i) /= Btint) then
          error <= '1';
      end if;
      assert (output(i) = Btint)
        report "Error: " & integer'image(output(i)) & " /= " & integer'image(Btint);
    end loop;

    wait for 10 ns;

    if (error='0') then
      report "Testi onnistui";
    else
      report "Testi epäonnistui **********";
    end if;

    wait;  -- Wait forever
  end process;
end tb_arch;
