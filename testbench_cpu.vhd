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


w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 1
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 2
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 3
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 4
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 5
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 6
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 7
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 8
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 9
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 10
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 11
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 12
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 13
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 14
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 15
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 16
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 17
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 18
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 19
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 20
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 21
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 22
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 23
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 24
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 25
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 26
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 27
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 28
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 29
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 30
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 31
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 32
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 33
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 34
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 35
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 36
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 37
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 38
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 39
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 40
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 41
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 42
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 43
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 44
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 45
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 46
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;

-- 47
w_CLK <= '0';
wait for 1000 ns;
w_CLK <= '1';
wait for 1000 ns;
wait;
end process;
end;
