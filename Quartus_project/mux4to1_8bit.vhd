LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux4to1_8bit IS
    PORT(
        i0, i1, i2, i3   : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        s        : IN  STD_LOGIC_VECTOR(1 downto 0);
        o_data   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END mux4to1_8bit;

ARCHITECTURE struct OF mux4to1_8bit IS
BEGIN
    o_data <= i0 WHEN s = "00" ELSE i1 WHEN s="01" ELSE i2 WHEN s="10" ELSE i3;
END struct;
