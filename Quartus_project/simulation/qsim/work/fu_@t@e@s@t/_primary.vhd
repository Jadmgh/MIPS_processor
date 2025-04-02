library verilog;
use verilog.vl_types.all;
entity fu_TEST is
    port(
        MUX1            : out    vl_logic_vector(1 downto 0);
        WR1             : in     vl_logic;
        WR2             : in     vl_logic;
        RR1             : in     vl_logic_vector(4 downto 0);
        RR2             : in     vl_logic_vector(4 downto 0);
        RS              : in     vl_logic_vector(4 downto 0);
        RT              : in     vl_logic_vector(4 downto 0);
        MUX2            : out    vl_logic_vector(1 downto 0)
    );
end fu_TEST;
