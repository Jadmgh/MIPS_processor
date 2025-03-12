library verilog;
use verilog.vl_types.all;
entity testing_alu is
    port(
        zero            : out    vl_logic;
        A               : in     vl_logic_vector(31 downto 0);
        ALU_ctrl        : in     vl_logic_vector(2 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0);
        resultEITGHTBITS: out    vl_logic_vector(7 downto 0)
    );
end testing_alu;
