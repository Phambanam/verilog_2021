library verilog;
use verilog.vl_types.all;
entity lab1_5_vlg_check_tst is
    port(
        led             : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab1_5_vlg_check_tst;
