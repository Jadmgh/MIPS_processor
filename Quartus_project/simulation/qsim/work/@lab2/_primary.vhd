library verilog;
use verilog.vl_types.all;
entity Lab2 is
    port(
        MemToR          : out    vl_logic;
        GReset          : in     vl_logic;
        RAM_Clock       : in     vl_logic;
        PCValue         : out    vl_logic_vector(7 downto 0);
        GClock          : in     vl_logic;
        rd1             : out    vl_logic_vector(7 downto 0);
        rd2             : out    vl_logic_vector(7 downto 0);
        input_PC_BTA    : out    vl_logic_vector(31 downto 0);
        MuxOut          : out    vl_logic_vector(7 downto 0);
        ValueSelect     : in     vl_logic_vector(2 downto 0);
        next_pc4        : out    vl_logic_vector(7 downto 0);
        operation       : out    vl_logic_vector(2 downto 0);
        q               : out    vl_logic_vector(31 downto 0);
        RAM_output      : out    vl_logic_vector(7 downto 0);
        rr1             : out    vl_logic_vector(4 downto 0);
        rr2             : out    vl_logic_vector(4 downto 0)
    );
end Lab2;
