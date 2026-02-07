# Teensy-gpau
  A personal project to create a teensy general-process-acceleration-unit with inspiration from tiny-gpu and my own graduate research on float-like ALUs.  

  This project is a learning experience for me, based on computer architecture, integrating modules to create a working system.

## Scope
- The GPAU will be FPGA-based, incorporating specialized processing units.
  - Stretch goal of a tape-out if a decent version is made.
- Build a *compiler* to generate kernels from a custom ISA.
  - The hope is that I can add new instructions as the processing units change.
  - Will probably only support very rudimentary 'C' like code.
- Build a control unit for the GPAU that can interface with either a serial or PCIe connection.
