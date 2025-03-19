LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decoder3to8 IS
    PORT(
        i_addr : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);  -- 3-bit input address
        o_dec  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)   -- 8-bit one-hot output
    );
END decoder3to8;

ARCHITECTURE structural OF decoder3to8 IS

    ----------------------------------------------------------------
    -- Component declarations for basic gates
    ----------------------------------------------------------------
    COMPONENT not_gate
        PORT(
            a : IN  std_logic;
            y : OUT std_logic
        );
    END COMPONENT;
    
    COMPONENT and_gate3
        PORT(
            a : IN  std_logic;
            b : IN  std_logic;
            c : IN  std_logic;
            y : OUT std_logic
        );
    END COMPONENT;
    
    ----------------------------------------------------------------
    -- Internal signals for inverted inputs
    ----------------------------------------------------------------
    SIGNAL n2, n1, n0 : std_logic;
    
BEGIN

    ----------------------------------------------------------------
    -- Inverters for each bit of i_addr
    ----------------------------------------------------------------
    U_INV2: not_gate PORT MAP ( a => i_addr(2), y => n2 );
    U_INV1: not_gate PORT MAP ( a => i_addr(1), y => n1 );
    U_INV0: not_gate PORT MAP ( a => i_addr(0), y => n0 );

    ----------------------------------------------------------------
    -- 3-to-8 Decoder using 3-input AND gates
    --
    -- For each output, the corresponding AND gate uses the appropriate
    -- combination of i_addr bits and their complements to produce a one-hot output.
    ----------------------------------------------------------------
    -- Output 0: "000" -> n2 AND n1 AND n0
    U_AND0: and_gate3 PORT MAP ( a => n2, b => n1, c => n0, y => o_dec(0) );
    
    -- Output 1: "001" -> n2 AND n1 AND i_addr(0)
    U_AND1: and_gate3 PORT MAP ( a => n2, b => n1, c => i_addr(0), y => o_dec(1) );
    
    -- Output 2: "010" -> n2 AND i_addr(1) AND n0
    U_AND2: and_gate3 PORT MAP ( a => n2, b => i_addr(1), c => n0, y => o_dec(2) );
    
    -- Output 3: "011" -> n2 AND i_addr(1) AND i_addr(0)
    U_AND3: and_gate3 PORT MAP ( a => n2, b => i_addr(1), c => i_addr(0), y => o_dec(3) );
    
    -- Output 4: "100" -> i_addr(2) AND n1 AND n0
    U_AND4: and_gate3 PORT MAP ( a => i_addr(2), b => n1, c => n0, y => o_dec(4) );
    
    -- Output 5: "101" -> i_addr(2) AND n1 AND i_addr(0)
    U_AND5: and_gate3 PORT MAP ( a => i_addr(2), b => n1, c => i_addr(0), y => o_dec(5) );
    
    -- Output 6: "110" -> i_addr(2) AND i_addr(1) AND n0
    U_AND6: and_gate3 PORT MAP ( a => i_addr(2), b => i_addr(1), c => n0, y => o_dec(6) );
    
    -- Output 7: "111" -> i_addr(2) AND i_addr(1) AND i_addr(0)
    U_AND7: and_gate3 PORT MAP ( a => i_addr(2), b => i_addr(1), c => i_addr(0), y => o_dec(7) );

END structural;
