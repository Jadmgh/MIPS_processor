library verilog;
use verilog.vl_types.all;
entity Lab2_vlg_check_tst is
    port(
        BranchOut       : in     vl_logic;
        input_PC_BTA    : in     vl_logic_vector(31 downto 0);
        InstructionOut  : in     vl_logic_vector(31 downto 0);
        MemReadOut      : in     vl_logic;
        MemToR          : in     vl_logic;
        MemWriteOut     : in     vl_logic;
        MuxOut          : in     vl_logic_vector(7 downto 0);
        next_pc4        : in     vl_logic_vector(7 downto 0);
        operation       : in     vl_logic_vector(2 downto 0);
        PCValue         : in     vl_logic_vector(7 downto 0);
        RAM_output      : in     vl_logic_vector(7 downto 0);
        rd1             : in     vl_logic_vector(7 downto 0);
        rd2             : in     vl_logic_vector(7 downto 0);
        RegWriteOut     : in     vl_logic;
        rr1             : in     vl_logic_vector(4 downto 0);
        rr2             : in     vl_logic_vector(4 downto 0);
        ZeroOut         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Lab2_vlg_check_tst;
