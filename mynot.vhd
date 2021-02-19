library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity mynot is
	port(
		A: in std_logic;
		S: out std_logic
	);
end mynot;

architecture dataflow of mynot is

begin

    S <= not A;

end dataflow;