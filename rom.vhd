library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
    generic (
        DATA_WIDTH : natural := 32;
        ADDR_WIDTH : natural := 8  -- 2^8 instruções = 256 instruções
    );
    port (
        clk      : in  std_logic;
        addr_in  : in  std_logic_vector(31 downto 0);
        q        : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity;

architecture rtl of rom is
    -- Definições de tipos
    subtype word_t is std_logic_vector(DATA_WIDTH-1 downto 0);
    type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

    -- Inicialização simples: instruções iguais ao índice
    function init_rom return memory_t is 
        variable tmp : memory_t := (others => (others => '0'));
    begin 
        for addr_pos in 0 to 2**ADDR_WIDTH-1 loop
            tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, DATA_WIDTH));
        end loop;
        return tmp;
    end init_rom;

    -- Memória interna
    signal rom : memory_t := init_rom;

    -- Endereço alinhado à palavra de 32 bits
    signal word_addr : natural range 0 to 2**ADDR_WIDTH-1;

begin
    -- Converter o addr_in de bytes para índice de instrução
    word_addr <= to_integer(unsigned(addr_in(ADDR_WIDTH+1 downto 2)));

    -- Leitura sincronizada
    process(clk)
    begin
        if rising_edge(clk) then
            q <= rom(word_addr);
        end if;
    end process;

end rtl;