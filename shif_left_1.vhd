library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity shif_left_1 is
    
    port (
        i_entrada_imediato  : in  std_logic_vector(31 downto 0);
		  o_saida_imediato    : out std_logic_vector(31 downto 0)
    );
end entity;

architecture arch_shif_left_1 of shif_left_1 is 

signal w_perca : std_logic;	

begin 

	gen_and32 : for i in 0 to 30 generate
            o_saida_imediato(i+1) <= i_entrada_imediato(i);
   end generate gen_and32;
	
	w_perca<= i_entrada_imediato(31);
	
end architecture; 