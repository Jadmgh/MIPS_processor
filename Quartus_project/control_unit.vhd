LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY control_unit IS
    PORT(
        opCode   : IN  std_logic_vector(5 DOWNTO 0);  -- 5-bit input opcode
        RegDest  : OUT std_logic;
        ALUSrc   : OUT std_logic;
        MemToReg : OUT std_logic;
        RegWrite : OUT std_logic;
        MemRead  : OUT std_logic;
        MemWrite : OUT std_logic;
        Branch   : OUT std_logic;
        ALUop    : OUT std_logic_vector(1 DOWNTO 0);
		  Jump	: OUT std_logic
    );
END control_unit;

ARCHITECTURE structural OF control_unit IS
    COMPONENT decoder_5to8 IS
        PORT(
            input  : IN  std_logic_vector(4 DOWNTO 0);
            output : OUT std_logic_vector(3 DOWNTO 0)
        );
    END COMPONENT;
    
BEGIN
    
    -- Control signal assignments
    RegDest  <= '1' WHEN opCode = "000000" ELSE '0';
    ALUSrc   <= '1' WHEN (opCode = "100011" OR opCode = "101011") ELSE '0';
    MemToReg <= '1' WHEN opCode = "100011" ELSE '0';
    RegWrite <= '1' WHEN (opCode = "000000" OR opCode = "100011") ELSE '0';
    MemRead  <= '1' WHEN opCode = "100011" ELSE '0';
    MemWrite <= '1' WHEN opCode = "101011" ELSE '0';
    Branch   <= '1' WHEN opCode = "000100" ELSE '0';
	 Jump   <= '1' WHEN opCode = "000010" ELSE '0';
    ALUop    <= "10" WHEN opCode = "000000" ELSE "00" WHEN (opCode = "100011" OR opCode = "101011") ELSE "01" WHEN opCode = "000100" ELSE "00";
END structural;
