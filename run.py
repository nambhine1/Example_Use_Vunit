from vunit import VUnit

# Create VUnit instance from command line arguments
vu = VUnit.from_argv()

# Add a library
lib = vu.add_library("lib")

# Add source files
lib.add_source_files("src/and_gate.vhdl")

# Add testbench files
lib.add_source_files("tb/tb_and_gate.vhdl")

# Run VUnit
vu.main()
