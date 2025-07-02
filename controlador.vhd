library IEEE;	
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlador is
port(
  i_opcode   : in std_logic_vector(6 downto 0);
  o_JUMP     : out std_logic;
  o_BRANCH   : out std_logic;
  o_MemToReg : out std_logic;
  o_MemWrite : out std_logic;
  o_AluSrc   : out std_logic;
  o_RegWrite : out std_logic;
  o_AluOP    : out std_logic_vector(1 downto 0);
  o_imm_src  : out std_logic_vector(1 downto 0)
);
end entity;

architecture arch_controlador of controlador is
begin

o_JUMP     <= (i_opcode(6) and i_opcode(5) and not i_opcode(4) and i_opcode(3) and i_opcode(2) and i_opcode(1) and i_opcode(0));
--1101111 JUMP

o_BRANCH   <= (i_opcode(6) and i_opcode(5) and not i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0));
--1100011 FORMATO B

o_MemToReg <= (not i_opcode(6) and not i_opcode(5) and not i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0));
--0000011 LOAD WORD
				  
o_MemWrite <= (not i_opcode(6) and i_opcode(5) and not i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0));
--0100011 STORE WORD

o_AluSrc   <=(
              (i_opcode(6) and i_opcode(5) and not i_opcode(4) and not i_opcode(3) and i_opcode(2) and i_opcode(1) and i_opcode(0)) or
				  (not i_opcode(6) and not i_opcode(5) and not i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0)) or
				  (not i_opcode(6) and i_opcode(5) and not i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0))
             );
--FORMATO I OU LOAD WORD OU STORE WORD

o_RegWrite <= (
               (not i_opcode(6) and not i_opcode(5) and not i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0)) or
					(not i_opcode(6) and i_opcode(5) and i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0)) or
					(i_opcode(6) and i_opcode(5) and not i_opcode(4) and not i_opcode(3) and i_opcode(2) and i_opcode(1) and i_opcode(0))
				  );
--0000011 LOAD WORD - FORMATO R - FORMATO I

o_AluOP(0) <= (
               (i_opcode(6) and i_opcode(5) and not i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0)) or
					(i_opcode(6) and i_opcode(5) and not i_opcode(4) and not i_opcode(3) and i_opcode(2) and i_opcode(1) and i_opcode(0))
              );
--OP1: BRANCH E FORMATO I

o_AluOP(1) <= (
               (not i_opcode(6) and i_opcode(5) and i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0)) or
					(i_opcode(6) and i_opcode(5) and not i_opcode(4) and not i_opcode(3) and i_opcode(2) and i_opcode(1) and i_opcode(0))
              );
--OP2: FORMATO I E FORMATO R

o_imm_src(0) <= (
                 (not i_opcode(6) and i_opcode(5) and not i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0)) or
					  (i_opcode(6) and i_opcode(5) and not i_opcode(4) and i_opcode(3) and i_opcode(2) and i_opcode(1) and i_opcode(0))
                );
--SW - JUMP

o_imm_src(1) <= (
                 (i_opcode(6) and i_opcode(5) and not i_opcode(4) and not i_opcode(3) and not i_opcode(2) and i_opcode(1) and i_opcode(0)) or
					  (i_opcode(6) and i_opcode(5) and not i_opcode(4) and i_opcode(3) and i_opcode(2) and i_opcode(1) and i_opcode(0))
                );
--FORMATO B - JUMP

end architecture;
