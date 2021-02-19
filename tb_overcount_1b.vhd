library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity tb_overcout_1b is
end tb_overcout_1b;

architecture testbench of tb_overcout_1b is

component overcount_1b is
	port(
        CK, RST, D_IN, LOAD, CIN: in std_logic;
        COUT, DOWN, UP: out std_logic
	);
end component;

signal CK, RST, D_IN, LOAD, CIN, COUT, DOWN, UP: std_logic;

begin
DUT0:overcount_1b port map(
    CK => CK,
	RST => RST,
	D_IN => D_IN,
	LOAD => LOAD,
	CIN => CIN,
	COUT => COUT,
	DOWN => DOWN,
	UP => UP
);

stimulus0:process
begin
	RST <= '1';
	wait for 40 ns;
	RST <= '0';
	wait;
end process stimulus0;

ck_0:process
begin
	CK <= '0';
	wait for 20 ns;
	CK <= '1';
	wait for 20 ns;
end process ck_0;

cin_0:process
begin
	CIN <= '0';
    wait for 100 ns;
    CIN <= '1';
    wait for 100 ns;
end process cin_0;

d_in_0:process
begin
	D_IN <= '0';
	wait for 200 ns;
	D_IN <= '1';
	wait for 200 ns;
end process d_in_0;

load_0:process
begin
	LOAD <= '0';
    wait for 1000 ns;
    LOAD <= '1';
    wait for 1000 ns;
end process load_0;

end testbench;