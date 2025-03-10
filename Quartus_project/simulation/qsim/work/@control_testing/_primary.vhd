library verilog;
use verilog.vl_types.all;
entity Control_testing is
    port(
        RegDest         : out    vl_logic;
        opCode          : in     vl_logic_vector(5 downto 0);
        ALUSrc          : out    vl_logic;
        MemToReg        : out    vl_logic;
        RegWrite        : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        Branch          : out    vl_logic;
        ALUop           : out    vl_logic_vector(1 downto 0)
    );
end Control_testing;
