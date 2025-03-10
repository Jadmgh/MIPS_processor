library verilog;
use verilog.vl_types.all;
entity Lab2 is
    port(
        MemToR          : out    vl_logic;
        GReset          : in     vl_logic;
        GClock          : in     vl_logic;
        rd1             : out    vl_logic_vector(7 downto 0);
        RAM_Clock       : in     vl_logic;
        rd2             : out    vl_logic_vector(7 downto 0);
        ALUresults      : out    vl_logic_vector(7 downto 0);
        ALUsrcn2        : out    vl_logic_vector(31 downto 0);
        next_pc         : out    vl_logic_vector(7 downto 0);
        operation       : out    vl_logic_vector(2 downto 0);
        PCValue         : out    vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(31 downto 0);
        RAM_output      : out    vl_logic_vector(7 downto 0);
        rr1             : out    vl_logic_vector(4 downto 0);
        rr2             : out    vl_logic_vector(4 downto 0)
    );
end Lab2;
