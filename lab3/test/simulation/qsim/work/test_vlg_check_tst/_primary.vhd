library verilog;
use verilog.vl_types.all;
entity test_vlg_check_tst is
    port(
        res             : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end test_vlg_check_tst;
