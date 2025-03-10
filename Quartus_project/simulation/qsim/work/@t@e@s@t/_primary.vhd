library verilog;
use verilog.vl_types.all;
entity TEST is
    port(
        RD1             : out    vl_logic_vector(7 downto 0);
        REGWRITE        : in     vl_logic;
        RR1             : in     vl_logic_vector(4 downto 0);
        RR2             : in     vl_logic_vector(4 downto 0);
        wD              : in     vl_logic_vector(7 downto 0);
        WR              : in     vl_logic_vector(4 downto 0);
        RD2             : out    vl_logic_vector(7 downto 0)
    );
end TEST;
