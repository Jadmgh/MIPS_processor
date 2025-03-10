library verilog;
use verilog.vl_types.all;
entity Control_testing_vlg_check_tst is
    port(
        ALUop           : in     vl_logic_vector(1 downto 0);
        ALUSrc          : in     vl_logic;
        Branch          : in     vl_logic;
        MemRead         : in     vl_logic;
        MemToReg        : in     vl_logic;
        MemWrite        : in     vl_logic;
        RegDest         : in     vl_logic;
        RegWrite        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Control_testing_vlg_check_tst;
