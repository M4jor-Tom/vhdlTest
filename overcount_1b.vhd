library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity overcount_1b is
	port(
        CK, RST, D_IN, LOAD, CIN: in std_logic;
        COUT, DOWN, UP: out std_logic
	);
end overcount_1b;

architecture structural of overcount_1b is

component halfadder is
    port(
		A, B: in std_logic;
		COUT, SUM: out std_logic
    );
end component;

component flipflop_static is 
    port(
        CK, RST, D: in std_logic;  
        Q, CQ: out std_logic
    );
end component;

component mux2 is 
    port(
        in0, in1, SEL: in std_logic;
        VOUT: out std_logic
    );
end component;

signal UP_sig: std_logic;
signal mux2_1sig: std_logic;
signal muxout: std_logic;

begin

    UP <= UP_sig;

    half: halfadder port map(
        A => CIN,
        B => UP_sig,
        COUT => COUT,
        SUM => mux2_1sig
    );

    dff: flipflop_static port map(
        CK => CK,
        RST => RST,
        D => muxout,
        CQ => DOWN,
        Q => UP_sig
    );

    m2: mux2 port map(
        in1 => mux2_1sig,
        in0 => D_IN,
        SEL => LOAD,
        VOUT => muxout
    );

end structural;