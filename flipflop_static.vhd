library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity flipflop_static is 
    port(
        CK, RST, D: in std_logic;  
        Q, CQ: out std_logic
    );
end flipflop_static;


architecture comportemental of flipflop_static is  
begin

    process(RST, CK)
    begin
        if(RST = '1') then
            Q <= '0';
            CQ <= '1';
        elsif(rising_edge(CK)) then
            Q <= D;
            CQ <= not D;
        end if; 
    end process;

end comportemental; 