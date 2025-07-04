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
	 
	     tmp(0)  := "00000000000100000000010000010011";
		  tmp(1)  := "00000000000000000000001010010011";
		  tmp(2)  := "00000000100000101010000000100011";
		  tmp(3)  := "00000000001000000000010010010011";
		  tmp(4)  := "00000000100100101010001000100011";
		  tmp(5)  := "00000000001100000000100100010011";
		  tmp(6)  := "00000001001000101010010000100011";
		  tmp(7)  := "00000000010000000000100110010011";
		  tmp(8)  := "00000001001100101010011000100011";
		  tmp(9)  := "00000000010100000000101000010011";
		  tmp(10) := "00000001010000101010100000100011";
		  tmp(11) := "00000000011000000000101010010011";
		  tmp(12) := "00000001010100101010101000100011";
		  tmp(13) := "00000000011100000000101100010011";
		  tmp(14) := "00000001011000101010110000100011";
		  tmp(15) := "00000000100000000000101110010011";
		  tmp(16) := "00000001011100101010111000100011";
		  tmp(17) := "00000000100000000000111110010011";
		  tmp(18) := "00000000000000101010010000000011";
		  tmp(19) := "00000000010100000000010010110011";
		  tmp(20) := "00000000010100101000100100110011";
		  tmp(21) := "00000000011110010000100100110011";
		  tmp(22) := "00000000000010010010001100000011";
		  tmp(23) := "00000000011001000010001110110011";
		  tmp(24) := "00000000000100000000111000010011";
		  tmp(25) := "00000000011111100000100001100011";
		  tmp(26) := "00000000000100101000001010010011";
		  tmp(27) := "00000001111100101000111001100011";
		  tmp(28) := "11111110000111111111000001101111";
		  tmp(29) := "00000000011000000000010000110011";
		  tmp(30) := "00000000010100000000010010110011";
		  tmp(31) := "00000000000100101000001010010011";
		  tmp(32) := "00000001111100101000010001100011";
		  tmp(33) := "11111100110111111111000001101111";
		  tmp(34) := "00000010000000000000110000010011";
		  tmp(35) := "00000000000000000000001010010011";
		  tmp(36) := "00000000010100101000100100110011";
		  tmp(37) := "00000001001010010000100100110011";
		  tmp(38) := "00000000000010010000001110010011";
		  tmp(39) := "00000010000010010000111000010011";
		  tmp(40) := "00000000000000111010111010000011";
		  tmp(41) := "01000001110101000000111010110011";
		  tmp(42) := "00000001110111100010000000100011";
		  tmp(43) := "00000000000100101000001010010011";
		  tmp(44) := "00000001111100101000010001100011";
		  tmp(45) := "11111101110111111111000001101111";
		  tmp(46) := "00000000000000000000000000010011";
		  
        for addr_pos in 47 to 2**ADDR_WIDTH-1 loop
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