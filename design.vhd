library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TFF is
Port ( T, CLK, RST, TEMP : in STD_LOGIC;
Q, Qb : out STD_LOGIC);
end TFF;

architecture tf of TFF is
begin
 process(CLK, RST, T)
 variable TEMP :std_logic :='0';
 begin
  if(RST='1') then 
 TEMP := '0';
  else if (clk'event and clk='1') then 
  if(T='1') then
  TEMP := not TEMP;
  end if; 
  end if; 
  Q <= not TEMP;
  Qb <= TEMP ;
  end if;
 end process;
end tf;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EO is 
port ( x, clk, RST : in std_logic ;
z : out std_logic );
end EO;

architecture PEO of EO is
component TFF is
Port ( T, CLK, RST, TEMP : in STD_LOGIC;
Q, Qb : out STD_LOGIC);
end component;
signal q1, q1b , q2, q2b, TEMP : std_logic;
begin
T1 : TFF port map(T=> not x, CLK => clk , Q => q1, Qb => q1b, RST=>RST, TEMP => TEMP );
T2 : TFF port map(T=>'1', CLK => clk , Q => q2, Qb => q2b, RST=>RST, TEMP => TEMP );
z <= q2b or (x xor q1);
end PEO;