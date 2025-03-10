library verilog;
use verilog.vl_types.all;
entity test_edgedetector is
    port(
        oedut           : out    vl_logic_vector(31 downto 0);
        inewd           : in     vl_logic_vector(31 downto 0)
    );
end test_edgedetector;
