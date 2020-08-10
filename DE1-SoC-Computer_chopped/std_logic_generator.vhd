-- std_logic_generator.vhd

-- This file was auto-generated as a prototype implementation of a module
-- created in component editor.  It ties off all outputs to ground and
-- ignores all inputs.  It needs to be edited to make it do something
-- useful.
-- 
-- This file will not be automatically regenerated.  You should check it in
-- to your version control system if you want to keep it.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity std_logic_generator is
	generic (
		std_logic_output_value : std_logic := '1'
	);
	port (
		clock_sink_clk   : in  std_logic := '0'; --       clock_sink.clk
		reset_sink_reset : in  std_logic := '0'; --       reset_sink.reset
		std_logic_output : out std_logic          -- std_logic_output.enable
	);
end entity std_logic_generator;

architecture rtl of std_logic_generator is
begin

	std_logic_output <= std_logic_output_value; --Output the signal defined as the generic (can do this in Qsys too!)

end architecture rtl; -- of std_logic_generator
