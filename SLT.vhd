library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SLT is 
port(
    i_A          : in std_logic_vector(31 downto 0);
    i_B          : in std_logic_vector(31 downto 0);
    o_FLAG_MENOR : out std_logic
);
end SLT;

architecture arch_signed of SLT is 
begin

    process(i_A, i_B)
    begin
        if signed(i_A) < signed(i_B) then
            o_FLAG_MENOR <= '1';
        else
            o_FLAG_MENOR <= '0';
        end if;
    end process;

end arch_signed;
