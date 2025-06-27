library IEEE;	
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity not32 is   

port (
 i_A    : in std_logic_vector (31 downto 0);
 i_B    : in std_logic_vector (31 downto 0); 
 o_S    : out std_logic_vector (31 downto 0)
);

end not32;
---------------------------------------------
architecture arch_not of not32 is 
begin

  gen_not32 : for i in 0 to 31 generate
  begin
    o_S(i) <= i_A(i) or i_B(i);
  end generate gen_not32;

end arch_not;