library verilog;
use verilog.vl_types.all;
entity lab2_1_vlg_sample_tst is
    port(
        key             : in     vl_logic;
        sw30            : in     vl_logic_vector(3 downto 0);
        sw74            : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab2_1_vlg_sample_tst;
