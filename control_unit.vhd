LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY control_unit IS
    PORT(
        opCode   : IN  std_logic_vector(5 DOWNTO 0);  -- 6-bit input opcode
        RegDest  : OUT std_logic;
        ALUSrc   : OUT std_logic;
        MemToReg : OUT std_logic;
        RegWrite : OUT std_logic;
        MemRead  : OUT std_logic;
        MemWrite : OUT std_logic;
        Branch   : OUT std_logic;
        ALUop    : OUT std_logic_vector(1 DOWNTO 0);
        Jump     : OUT std_logic
    );
END control_unit;

ARCHITECTURE structural OF control_unit IS

    ----------------------------------------------------------------
    -- Component Declarations for Basic Gates
    ----------------------------------------------------------------
    COMPONENT not_gate
        PORT(
            a : IN  std_logic;
            y : OUT std_logic
        );
    END COMPONENT;
    
    COMPONENT and_gate6
        PORT(
            a, b, c, d, e, f : IN std_logic;
            y                : OUT std_logic
        );
    END COMPONENT;
    
    COMPONENT and_gate5
        PORT(
            a, b, c, d, e : IN std_logic;
            y            : OUT std_logic
        );
    END COMPONENT;
    
    COMPONENT or_gate2
        PORT(
            a, b : IN std_logic;
            y    : OUT std_logic
        );
    END COMPONENT;
    
    ----------------------------------------------------------------
    -- Internal Signals
    ----------------------------------------------------------------
    -- Inverted opcode bits
    SIGNAL op0_n, op1_n, op2_n, op3_n, op4_n, op5_n : std_logic;
    
    -- Condition signals for each output
    SIGNAL cond_regdest   : std_logic;
    SIGNAL cond_alusrc    : std_logic;
    SIGNAL cond_memtoreg  : std_logic;
    SIGNAL cond_memwrite  : std_logic;
    SIGNAL cond_branch    : std_logic;
    SIGNAL cond_jump      : std_logic;
    SIGNAL cond_regwrite  : std_logic;
    
BEGIN

    ----------------------------------------------------------------
    -- Inverters for Each Bit of opCode
    ----------------------------------------------------------------
    INV0: not_gate PORT MAP ( a => opCode(0), y => op0_n );
    INV1: not_gate PORT MAP ( a => opCode(1), y => op1_n );
    INV2: not_gate PORT MAP ( a => opCode(2), y => op2_n );
    INV3: not_gate PORT MAP ( a => opCode(3), y => op3_n );
    INV4: not_gate PORT MAP ( a => opCode(4), y => op4_n );
    INV5: not_gate PORT MAP ( a => opCode(5), y => op5_n );
    
    ----------------------------------------------------------------
    -- RegDest: '1' when opCode = "000000"
    -- = NOT(op5) AND NOT(op4) AND NOT(op3) AND NOT(op2) AND NOT(op1) AND NOT(op0)
    ----------------------------------------------------------------
    AND_RegDest: and_gate6 PORT MAP (
        a => op5_n,
        b => op4_n,
        c => op3_n,
        d => op2_n,
        e => op1_n,
        f => op0_n,
        y => cond_regdest
    );
    RegDest <= cond_regdest;
    
    ----------------------------------------------------------------
    -- ALUSrc: '1' when opCode = "100011" OR "101011"
    -- Factoring common terms, this condition becomes:
    -- opCode(5) AND NOT(op4) AND NOT(op2) AND opCode(1) AND opCode(0)
    ----------------------------------------------------------------
    AND_ALUSrc: and_gate5 PORT MAP (
        a => opCode(5),
        b => op4_n,
        c => op2_n,
        d => opCode(1),
        e => opCode(0),
        y => cond_alusrc
    );
    ALUSrc <= cond_alusrc;
    
    ----------------------------------------------------------------
    -- MemToReg: '1' when opCode = "100011"
    -- = opCode(5) AND NOT(op4) AND NOT(op3) AND NOT(op2) AND opCode(1) AND opCode(0)
    ----------------------------------------------------------------
    AND_MemToReg: and_gate6 PORT MAP (
        a => opCode(5),
        b => op4_n,
        c => op3_n,
        d => op2_n,
        e => opCode(1),
        f => opCode(0),
        y => cond_memtoreg
    );
    MemToReg <= cond_memtoreg;
    MemRead  <= cond_memtoreg;  -- Same condition as MemToReg
    
    ----------------------------------------------------------------
    -- MemWrite: '1' when opCode = "101011"
    -- = opCode(5) AND NOT(op4) AND opCode(3) AND NOT(op2) AND opCode(1) AND opCode(0)
    ----------------------------------------------------------------
    AND_MemWrite: and_gate6 PORT MAP (
        a => opCode(5),
        b => op4_n,
        c => opCode(3),
        d => op2_n,
        e => opCode(1),
        f => opCode(0),
        y => cond_memwrite
    );
    MemWrite <= cond_memwrite;
    
    ----------------------------------------------------------------
    -- Branch: '1' when opCode = "000100"
    -- = NOT(op5) AND NOT(op4) AND NOT(op3) AND opCode(2) AND NOT(opCode(1)) AND NOT(opCode(0))
    ----------------------------------------------------------------
    AND_Branch: and_gate6 PORT MAP (
        a => op5_n,
        b => op4_n,
        c => op3_n,
        d => opCode(2),
        e => op1_n,
        f => op0_n,
        y => cond_branch
    );
    Branch <= cond_branch;
    
    ----------------------------------------------------------------
    -- Jump: '1' when opCode = "000010"
    -- = NOT(op5) AND NOT(op4) AND NOT(op3) AND NOT(op2) AND opCode(1) AND NOT(opCode(0))
    ----------------------------------------------------------------
    AND_Jump: and_gate6 PORT MAP (
        a => op5_n,
        b => op4_n,
        c => op3_n,
        d => op2_n,
        e => opCode(1),
        f => op0_n,
        y => cond_jump
    );
    Jump <= cond_jump;
    
    ----------------------------------------------------------------
    -- RegWrite: '1' when opCode = "000000" OR opCode = "100011"
    -- = (RegDest condition) OR (MemToReg condition)
    ----------------------------------------------------------------
    OR_RegWrite: or_gate2 PORT MAP (
        a => cond_regdest,
        b => cond_memtoreg,
        y => cond_regwrite
    );
    RegWrite <= cond_regwrite;
    
    ----------------------------------------------------------------
    -- ALUop:
    -- For opCode "000000" (R-type): ALUop = "10"  -> ALUop(1)=1, ALUop(0)=0
    -- For opCode "000100" (Branch): ALUop = "01"  -> ALUop(1)=0, ALUop(0)=1
    -- Else (Load/Store or others): ALUop = "00"
    -- Notice that:
    --   ALUop(1) = RegDest (i.e. condition for "000000")
    --   ALUop(0) = Branch
    ----------------------------------------------------------------
    ALUop(1) <= cond_regdest;
    ALUop(0) <= cond_branch;

END structural;
