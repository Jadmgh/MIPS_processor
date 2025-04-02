library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MEMWB is
    port(
        clk           : in std_logic;
        -- WB Controlpath Signals
        i_RegWrite    : in std_logic;
        i_MemtoReg    : in std_logic;
        o_RegWrite    : out std_logic;
        o_MemtoReg    : out std_logic;
        -- Datapath Signals
        i_memout      : in std_logic_vector(7 downto 0);
        i_aluresult   : in std_logic_vector(7 downto 0);
        i_destreg     : in std_logic_vector(4 downto 0);
        i_instruction : in std_logic_vector(31 downto 0);
        o_memout      : out std_logic_vector(7 downto 0);
        o_aluresult   : out std_logic_vector(7 downto 0);
        o_destreg     : out std_logic_vector(4 downto 0);
        o_instruction : out std_logic_vector(31 downto 0)
    );
end MEMWB;

architecture Structural of MEMWB is

    -- Component declaration for d_ff
    component d_ff is
        Port ( D   : in STD_LOGIC;
               clk : in STD_LOGIC;
               Q   : out STD_LOGIC);
    end component;

begin
    ----------------------------------------------------------------------------
    -- Control Signals: 1-bit each
    ----------------------------------------------------------------------------
    dff_RegWrite: d_ff port map (
        D   => i_RegWrite,
        clk => clk,
        Q   => o_RegWrite
    );
    
    dff_MemtoReg: d_ff port map (
        D   => i_MemtoReg,
        clk => clk,
        Q   => o_MemtoReg
    );
    
    ----------------------------------------------------------------------------
    -- Datapath Signals:
    -- memout: 8 bits
    ----------------------------------------------------------------------------
    gen_memout: for i in 0 to 7 generate
        dff_memout: d_ff port map (
            D   => i_memout(i),
            clk => clk,
            Q   => o_memout(i)
        );
    end generate;
    
    ----------------------------------------------------------------------------
    -- aluresult: 8 bits
    ----------------------------------------------------------------------------
    gen_aluresult: for i in 0 to 7 generate
        dff_aluresult: d_ff port map (
            D   => i_aluresult(i),
            clk => clk,
            Q   => o_aluresult(i)
        );
    end generate;
    
    ----------------------------------------------------------------------------
    -- destreg: 5 bits
    ----------------------------------------------------------------------------
    gen_destreg: for i in 0 to 4 generate
        dff_destreg: d_ff port map (
            D   => i_destreg(i),
            clk => clk,
            Q   => o_destreg(i)
        );
    end generate;
    
    ----------------------------------------------------------------------------
    -- instruction: 32 bits
    ----------------------------------------------------------------------------
    gen_instruction: for i in 0 to 31 generate
        dff_instruction: d_ff port map (
            D   => i_instruction(i),
            clk => clk,
            Q   => o_instruction(i)
        );
    end generate;
    
end Structural;
