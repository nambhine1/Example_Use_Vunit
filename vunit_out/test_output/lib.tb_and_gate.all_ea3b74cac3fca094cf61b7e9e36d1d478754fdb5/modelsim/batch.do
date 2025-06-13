onerror {quit -code 1}
source "C:/Users/nambinina.rakotojaon/Desktop/check/Example_Use_Vunit/vunit_out/test_output/lib.tb_and_gate.all_ea3b74cac3fca094cf61b7e9e36d1d478754fdb5/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
