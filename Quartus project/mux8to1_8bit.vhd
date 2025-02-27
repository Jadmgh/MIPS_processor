LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux8to1_8bit IS
    PORT(
        i0, i1, i2, i3, i4, i5, i6, i7 : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        s                                : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
        o_data                           : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END mux8to1_8bit;

ARCHITECTURE struct OF mux8to1_8bit IS
    COMPONENT mux2to1_8bit IS
        PORT(
            i0, i1  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            s       : IN  STD_LOGIC;
            o_data  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL mux0_1, mux2_3, mux4_5, mux6_7 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL mux0_3, mux4_7                  : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
    -- First level: 2-to-1 multiplexers
    mux0_1_inst: mux2to1_8bit PORT MAP(i0, i1, s(0), mux0_1);
    mux2_3_inst: mux2to1_8bit PORT MAP(i2, i3, s(0), mux2_3);
    mux4_5_inst: mux2to1_8bit PORT MAP(i4, i5, s(0), mux4_5);
    mux6_7_inst: mux2to1_8bit PORT MAP(i6, i7, s(0), mux6_7);

    -- Second level: 2-to-1 multiplexers
    mux0_3_inst: mux2to1_8bit PORT MAP(mux0_1, mux2_3, s(1), mux0_3);
    mux4_7_inst: mux2to1_8bit PORT MAP(mux4_5, mux6_7, s(1), mux4_7);

    -- Final level: 2-to-1 multiplexer
    mux_final_inst: mux2to1_8bit PORT MAP(mux0_3, mux4_7, s(2), o_data);

END struct;
