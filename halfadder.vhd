library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity halfadder is
	port(
		A, B: in std_logic;
		COUT, SUM: out std_logic
	);
end halfadder;

architecture structural of halfadder is

component mynand is
    port(
        A,B: in std_logic;

        S: out std_logic
    );
end component;

component mynor is
    port(
        A,B: in std_logic;
    
        S: out std_logic
    );
end component;

component mynot is
    port(
        A: in std_logic;
    
        S: out std_logic
    );
end component;

signal mynandout: std_logic;
signal mynor1out: std_logic;
signal COUT_sig: std_logic;

begin

    COUT <= COUT_sig;

    na: mynand port map(
        A => A,
        B => B,

        S => mynandout
    );

    no1: mynor port map(
        A => A,
        B => B,

        S => mynor1out
    );

    n: mynot port map(
        A => mynandout,
        S => COUT_sig
    );

    no2: mynor port map(
        A => COUT_sig,
        B => mynor1out,

        S => SUM
    );

end structural;