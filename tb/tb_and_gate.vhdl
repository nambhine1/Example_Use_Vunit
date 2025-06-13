library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_and_gate is
  generic (
    runner_cfg : string := runner_cfg_default
  );
end entity;

architecture testbench of tb_and_gate is
  signal a, b, out_sig : std_logic;
begin

  -- Unit Under Test
  uut: entity work.and_gate
    port map (
      a => a,
      b => b,
      y => out_sig
    );

  -- Test process
  main : process
  begin
    test_runner_setup(runner, runner_cfg);

    if run("Zero Output") then
      a <= '0'; b <= '0';
      wait for 10 ns;
      check_equal(out_sig, '0', "Test case 1a failed");

      a <= '0'; b <= '1';
      wait for 10 ns;
      check_equal(out_sig, '0', "Test case 1b failed");

      a <= '1'; b <= '0';
      wait for 10 ns;
      check_equal(out_sig, '0', "Test case 1c failed");

    elsif run("One Output") then
      a <= '1'; b <= '1';
      wait for 10 ns;
      check_equal(out_sig, '1', "Test case 2 failed");
    end if;

    test_runner_cleanup(runner);
    wait;
  end process;

end architecture;
