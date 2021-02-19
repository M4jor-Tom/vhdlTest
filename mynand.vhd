library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity mynand is
    port(
        A,B: in std_logic;

        S: out std_logic
    );
end mynand;

architecture dataflow of mynand is

begin

    S <= A nand B;

end dataflow;