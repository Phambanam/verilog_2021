library verilog;
use verilog.vl_types.all;
entity lab3_1_vlg_check_tst is
    port(
        led30           : in     vl_logic_vector(3 downto 0);
        led74           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab3_1_vlg_check_tst;
