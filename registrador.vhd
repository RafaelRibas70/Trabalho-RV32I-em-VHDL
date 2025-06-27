library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registrador is
  port (
    i_CLK     : in std_logic; -- clock
	 i_Enable  : in std_logic;
	 i_Escrever: in std_logic; 
    i_D       : in std_logic_vector (31 downto 0); 
    o_S       : out std_logic_vector (31 downto 0) 
  ); 
end registrador; 
  
architecture arch_registrador of registrador is
begin

  process(i_CLK) 
  begin
  
    if (rising_edge(i_CLK)) then
      if(i_Enable = '1') then
		  if(i_Escrever = '1') then
		  
		    o_S <= i_D;
			 
		  end if;
		end if;
    end if;
	 
  end process;
  
end arch_registrador;