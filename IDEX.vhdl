library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------------------------------
-- d_latch (provided)
--------------------------------------------------------------------------------
entity d_latch is
    Port ( D : in STD_LOGIC;
           EN : in STD_LOGIC;
           Q : out STD_LOGIC);
end d_latch;

architecture Structural of d_latch is
    signal s, r, q_internal, q_not_internal : STD_LOGIC;
begin
    s <= EN nand D;
    r <= EN nand (not D);
    q_internal <= s nand q_not_internal;
    q_not_internal <= r nand q_internal;
    Q <= q_internal;
end Structural;

--------------------------------------------------------------------------------
-- D Flip-Flop built from two d_latches (master-slave)
--------------------------------------------------------------------------------
entity d_ff is
    Port ( D   : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q   : out STD_LOGIC);
end d_ff;

architecture Structural of d_ff is
    signal master_out, clk_bar : STD_LOGIC;
begin
    clk_bar <= not clk;

    master_latch: d_latch 
        port map (
            D  => D,
            EN => clk_bar,  -- Transparent when clk is LOW
            Q  => master_out
        );

    slave_latch: d_latch 
        port map (
            D  => master_out,
            EN => clk,      -- Transparent when clk is HIGH
            Q  => Q
        );
end Structural;

--------------------------------------------------------------------------------
-- IDEX Pipeline Register (Structural, gate-level using d_ff)
--------------------------------------------------------------------------------
entity IDEX is
    port(
        clk           : in  std_logic;
        flush         : in  std_logic;
        -- WB Controlpath Signals
        i_RegWrite    : in  std_logic;
        i_MemtoReg    : in  std_logic;
        o_RegWrite    : out std_logic;
        o_MemtoReg    : out std_logic;
        -- M Controlpath Signals
        i_MemWrite    : in  std_logic;
        i_MemRead     : in  std_logic;
        i_Branch      : in  std_logic;
        o_MemWrite    : out std_logic;
        o_MemRead     : out std_logic;
        o_Branch      : out std_logic;
        -- EX Controlpath Signals
        i_RegDst      : in  std_logic;
        i_ALUOp       : in  std_logic_vector(1 downto 0);
        i_ALUSrc      : in  std_logic;		
        o_RegDst      : out std_logic;
        o_ALUOp       : out std_logic_vector(1 downto 0);
        o_ALUSrc      : out std_logic;
        -- Datapath Signals
        i_pc4         : in  std_logic_vector(7 downto 0);
        i_a           : in  std_logic_vector(7 downto 0);
        i_b           : in  std_logic_vector(7 downto 0);
        i_signext     : in  std_logic_vector(31 downto 0);
        i_rs          : in  std_logic_vector(4 downto 0);
        i_rt          : in  std_logic_vector(4 downto 0);
        i_rd          : in  std_logic_vector(4 downto 0);
        i_instruction : in  std_logic_vector(31 downto 0);
        o_pc4         : out std_logic_vector(7 downto 0);
        o_a           : out std_logic_vector(7 downto 0);
        o_b           : out std_logic_vector(7 downto 0);
        o_signext     : out std_logic_vector(31 downto 0);
        o_rs          : out std_logic_vector(4 downto 0);
        o_rt          : out std_logic_vector(4 downto 0);
        o_rd          : out std_logic_vector(4 downto 0);
        o_instruction : out std_logic_vector(31 downto 0)
    );
end IDEX;

architecture Structural of IDEX is

    -- Declare the d_ff component
    component d_ff is
        Port ( D   : in  std_logic;
               clk : in  std_logic;
               Q   : out std_logic);
    end component;

    ----------------------------------------------------------------------------
    -- MUX signals: if flush is '1', the register is cleared (all bits 0)
    ----------------------------------------------------------------------------
    signal RegWrite_mux    : std_logic;
    signal MemtoReg_mux    : std_logic;
    signal MemWrite_mux    : std_logic;
    signal MemRead_mux     : std_logic;
    signal Branch_mux      : std_logic;
    signal RegDst_mux      : std_logic;
    signal ALUSrc_mux      : std_logic;
    signal ALUOp_mux       : std_logic_vector(1 downto 0);
    signal pc4_mux         : std_logic_vector(7 downto 0);
    signal a_mux           : std_logic_vector(7 downto 0);
    signal b_mux           : std_logic_vector(7 downto 0);
    signal signext_mux     : std_logic_vector(31 downto 0);
    signal rs_mux          : std_logic_vector(4 downto 0);
    signal rt_mux          : std_logic_vector(4 downto 0);
    signal rd_mux          : std_logic_vector(4 downto 0);
    signal instruction_mux : std_logic_vector(31 downto 0);

begin

    ----------------------------------------------------------------------------
    -- MUX assignments: if flush = '1', force the inputs to 0.
    ----------------------------------------------------------------------------
    RegWrite_mux    <= i_RegWrite    when flush = '0' else '0';
    MemtoReg_mux    <= i_MemtoReg    when flush = '0' else '0';
    MemWrite_mux    <= i_MemWrite    when flush = '0' else '0';
    MemRead_mux     <= i_MemRead     when flush = '0' else '0';
    Branch_mux      <= i_Branch      when flush = '0' else '0';
    RegDst_mux      <= i_RegDst      when flush = '0' else '0';
    ALUSrc_mux      <= i_ALUSrc      when flush = '0' else '0';
    ALUOp_mux       <= i_ALUOp       when flush = '0' else (others => '0');
    pc4_mux         <= i_pc4         when flush = '0' else (others => '0');
    a_mux           <= i_a           when flush = '0' else (others => '0');
    b_mux           <= i_b           when flush = '0' else (others => '0');
    signext_mux     <= i_signext     when flush = '0' else (others => '0');
    rs_mux          <= i_rs          when flush = '0' else (others => '0');
    rt_mux          <= i_rt          when flush = '0' else (others => '0');
    rd_mux          <= i_rd          when flush = '0' else (others => '0');
    instruction_mux <= i_instruction when flush = '0' else (others => '0');

    ----------------------------------------------------------------------------
    -- Instantiate d_ff's for each control signal (1-bit)
    ----------------------------------------------------------------------------
    dff_RegWrite : d_ff port map (D => RegWrite_mux, clk => clk, Q => o_RegWrite);
    dff_MemtoReg : d_ff port map (D => MemtoReg_mux, clk => clk, Q => o_MemtoReg);
    dff_MemWrite : d_ff port map (D => MemWrite_mux, clk => clk, Q => o_MemWrite);
    dff_MemRead  : d_ff port map (D => MemRead_mux,  clk => clk, Q => o_MemRead);
    dff_Branch   : d_ff port map (D => Branch_mux,  clk => clk, Q => o_Branch);
    dff_RegDst   : d_ff port map (D => RegDst_mux,  clk => clk, Q => o_RegDst);
    dff_ALUSrc   : d_ff port map (D => ALUSrc_mux,  clk => clk, Q => o_ALUSrc);

    ----------------------------------------------------------------------------
    -- Instantiate d_ff's for ALUOp (2 bits)
    ----------------------------------------------------------------------------
    gen_ALUOp: for i in 0 to 1 generate
        dff_ALUOp_bit: d_ff port map (
            D   => ALUOp_mux(i),
            clk => clk,
            Q   => o_ALUOp(i)
        );
    end generate;

    ----------------------------------------------------------------------------
    -- Instantiate d_ff's for datapath signals
    ----------------------------------------------------------------------------
    -- pc4 (8 bits)
    gen_pc4: for i in 0 to 7 generate
        dff_pc4_bit: d_ff port map (
            D   => pc4_mux(i),
            clk => clk,
            Q   => o_pc4(i)
        );
    end generate;

    -- a (8 bits)
    gen_a: for i in 0 to 7 generate
        dff_a_bit: d_ff port map (
            D   => a_mux(i),
            clk => clk,
            Q   => o_a(i)
        );
    end generate;

    -- b (8 bits)
    gen_b: for i in 0 to 7 generate
        dff_b_bit: d_ff port map (
            D   => b_mux(i),
            clk => clk,
            Q   => o_b(i)
        );
    end generate;

    -- signext (32 bits)
    gen_signext: for i in 0 to 31 generate
        dff_signext_bit: d_ff port map (
            D   => signext_mux(i),
            clk => clk,
            Q   => o_signext(i)
        );
    end generate;

    -- rs (5 bits)
    gen_rs: for i in 0 to 4 generate
        dff_rs_bit: d_ff port map (
            D   => rs_mux(i),
            clk => clk,
            Q   => o_rs(i)
        );
    end generate;

    -- rt (5 bits)
    gen_rt: for i in 0 to 4 generate
        dff_rt_bit: d_ff port map (
            D   => rt_mux(i),
            clk => clk,
            Q   => o_rt(i)
        );
    end generate;

    -- rd (5 bits)
    gen_rd: for i in 0 to 4 generate
        dff_rd_bit: d_ff port map (
            D   => rd_mux(i),
            clk => clk,
            Q   => o_rd(i)
        );
    end generate;

    -- instruction (32 bits)
    gen_instruction: for i in 0 to 31 generate
        dff_inst_bit: d_ff port map (
            D   => instruction_mux(i),
            clk => clk,
            Q   => o_instruction(i)
        );
    end generate;

end Structural;
