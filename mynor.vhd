library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity mynor is
	port(
		A, B: in std_logic;
		S: out std_logic
	);
end mynor;

architecture dataflow of mynor is

begin

    S <= A nor B;

end dataflow;