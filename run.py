from vunit import VUnit

vu = VUnit.from_argv()


lib = vu.add_library("lib")
lib.add_source_files([
    "and_gate.vhdl",
    "tb_and_gate.vhdl"
])

vu.main()
