library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity mux2 is 
    port(
        in0, in1, SEL: in std_logic;
        VOUT: out std_logic
    );
end mux2;


architecture dataflow of mux2 is  
begin
    
    with SEL select VOUT <=
        in0 when '0',
        in1 when '1',
        '0' when others;

end dataflow; 