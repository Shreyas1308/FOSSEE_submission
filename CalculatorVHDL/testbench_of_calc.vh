library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity calculator is port (
  clk: in std_logic;
  clear, load, add: in std_logic;
  dIn: in std_logic_vector(7 downto 0);
  result: out std_logic_vector(7 downto 0));
end calculator;
architecture a1 of calculator is
signal dReg: std_logic_vector(7 downto 0);
begin
   process (clk) begin
     if rising_edge(clk) then
       if clear = '1' then
         dReg <= x"00";
       elsif load = '1' then
         dReg <= dIn;
       elsif add = '1' then
         dReg <= dReg + dIn;
       end if;
     end if;
  end process;
  result <= dReg;
end a1;