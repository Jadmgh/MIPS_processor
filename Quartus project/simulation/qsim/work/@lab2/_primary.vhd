library verilog;
use verilog.vl_types.all;
entity Lab2 is
    port(
        q               : out    vl_logic_vector(31 downto 0);
        GClock          : in     vl_logic;
        PC_address      : in     vl_logic_vector(7 downto 0)
    );
end Lab2;
