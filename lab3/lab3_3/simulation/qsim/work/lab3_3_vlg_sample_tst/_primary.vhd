library verilog;
use verilog.vl_types.all;
entity lab3_3_vlg_sample_tst is
    port(
        sw10            : in     vl_logic_vector(1 downto 0);
        sw32            : in     vl_logic_vector(1 downto 0);
        sw54            : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab3_3_vlg_sample_tst;
