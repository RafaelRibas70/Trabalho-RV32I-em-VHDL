library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_cpu is
end testbench_cpu;

architecture teste of testbench_cpu is

component cpu is
port(
  i_CLK : in std_logic
);
end component;

signal w_CLK : std_logic;

begin

macaco : cpu
port map(
  i_CLK => w_CLK
);
  
process
begin
    for i in 1 to 48 loop
        w_CLK <= '0';
        wait for 1000 ns;
        w_CLK <= '1';
        wait for 1000 ns;
    end loop;
    wait; -- para parar a simulação
end process;
end;
