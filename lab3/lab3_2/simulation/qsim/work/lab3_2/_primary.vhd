library verilog;
use verilog.vl_types.all;
entity lab3_2 is
    port(
        sw30            : in     vl_logic_vector(3 downto 0);
        sw76            : in     vl_logic_vector(1 downto 0);
        ss_out          : out    vl_logic_vector(6 downto 0);
        led             : out    vl_logic_vector(3 downto 0)
    );
end lab3_2;
