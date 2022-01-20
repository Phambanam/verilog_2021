library verilog;
use verilog.vl_types.all;
entity lab1_5_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        sw              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab1_5_vlg_sample_tst;
