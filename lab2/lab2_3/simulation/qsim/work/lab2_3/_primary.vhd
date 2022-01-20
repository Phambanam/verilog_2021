library verilog;
use verilog.vl_types.all;
entity lab2_3 is
    port(
        sw76            : in     vl_logic_vector(1 downto 0);
        sw54            : in     vl_logic_vector(1 downto 0);
        sw32            : in     vl_logic_vector(1 downto 0);
        sw10            : in     vl_logic_vector(1 downto 0);
        led76           : out    vl_logic_vector(1 downto 0);
        led             : out    vl_logic_vector(5 downto 0)
    );
end lab2_3;
