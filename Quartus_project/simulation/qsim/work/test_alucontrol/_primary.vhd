library verilog;
use verilog.vl_types.all;
entity test_alucontrol is
    port(
        op              : out    vl_logic_vector(2 downto 0);
        aluop           : in     vl_logic_vector(1 downto 0);
        func            : in     vl_logic_vector(5 downto 0)
    );
end test_alucontrol;
