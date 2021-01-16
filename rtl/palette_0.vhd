library ieee;
use ieee.std_logic_1164.all,ieee.numeric_std.all;

entity palette_0 is
port (
	clk  : in  std_logic;
	addr : in  std_logic_vector(6 downto 0);
	data : out std_logic_vector(7 downto 0)
);
end entity;

architecture prom of palette_0 is
	type rom is array(0 to  127) of std_logic_vector(7 downto 0);
	signal rom_data: rom := (
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"02",X"02",X"04",X"02",X"05",X"02",X"02",X"02",
		X"00",X"01",X"02",X"00",X"02",X"01",X"01",X"01",X"00",X"01",X"01",X"01",X"06",X"04",X"04",X"04",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"04",X"01",X"01",X"03",X"03",X"03",X"01",X"00",
		X"02",X"05",X"05",X"01",X"01",X"01",X"07",X"00",X"06",X"07",X"07",X"05",X"05",X"05",X"03",X"07",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"02",X"02",X"04",X"02",X"01",X"01",X"01",X"01",
		X"00",X"01",X"02",X"00",X"02",X"02",X"02",X"02",X"00",X"01",X"01",X"01",X"04",X"04",X"04",X"04",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"04",X"01",X"01",X"04",X"04",X"04",X"03",X"04",
		X"02",X"05",X"05",X"05",X"05",X"05",X"07",X"00",X"05",X"07",X"07",X"03",X"03",X"03",X"05",X"07");
begin
process(clk)
begin
	if rising_edge(clk) then
		data <= rom_data(to_integer(unsigned(addr)));
	end if;
end process;
end architecture;
