library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
  port (
    i_CLK  : in std_logic; -- clock
	 i_RST  : in std_logic; --reset
    i_Data : in std_logic_vector (31 downto 0); 
    o_PC   : out std_logic_vector (31 downto 0) 
  ); 
end pc; 
  
architecture arch_pc of pc is
begin

  process(i_CLK, i_RST) 
  begin
  
    if (rising_edge(i_CLK)) then
	if (i_RST = '1')then
	  o_PC <= "00000000000000000000000000000000";
	end if;
	o_PC <= i_Data;
    end if;
	 
  end process;
  
end arch_pc;
