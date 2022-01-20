library verilog;
use verilog.vl_types.all;
entity lab3_4_vlg_check_tst is
    port(
        led10           : in     vl_logic_vector(1 downto 0);
        led32           : in     vl_logic_vector(1 downto 0);
        led54           : in     vl_logic_vector(1 downto 0);
        led76           : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab3_4_vlg_check_tst;
