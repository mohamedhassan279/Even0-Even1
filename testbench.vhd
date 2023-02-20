library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EO_TB is
end EO_TB;

architecture PEO_TB of EO_TB is
component EO is
port ( x, clk, RST : in std_logic ;
z : out std_logic );
end component;
signal x, clk, z, RST : std_logic ;
begin
dut : EO port map (x, clk, RST, z);

Clock : process
begin
clk <= '0';
wait for 10 ns;
clk <= '1';
wait for 10 ns;
end process;
sim : process
begin
x<='0';
wait for 10 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
x<='1';
wait for 20 ns;
x<='0';
wait for 20 ns;
wait;
end process;
end PEO_TB;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TFF_tb is
end entity;

architecture tb of TFF_tb is

component TFF is
Port ( T, CLK, RST, TEMP : in STD_LOGIC;
Q, Qb : out STD_LOGIC);
end component ;

signal T, CLK, RST, Q, Qb, TEMP : STD_LOGIC;

begin
uut: TFF port map(
T => T,
CLK => CLK,
RST => RST,
Q => Q,
TEMP => TEMP,
Qb => Qb);

Clock : process
begin
CLK <= '0';
wait for 10 ns;
CLK <= '1';
wait for 10 ns;
end process;

stim : process
begin

RST <= '0';
T <= '0';
wait for 20 ns;
T <= '1';
wait for 20 ns;

end process;
end tb;