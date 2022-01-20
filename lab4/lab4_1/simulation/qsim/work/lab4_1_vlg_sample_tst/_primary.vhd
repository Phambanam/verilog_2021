library verilog;
use verilog.vl_types.all;
entity lab4_1_vlg_sample_tst is
    port(
        asset           : in     vl_logic;
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(3 downto 0);
        dir             : in     vl_logic;
        ena             : in     vl_logic;
        load            : in     vl_logic;
        sclr            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab4_1_vlg_sample_tst;
