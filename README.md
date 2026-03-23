# 4-Bit ALU — RTL Design & FPGA Deployment

## Overview
A 4-bit ALU designed in Verilog supporting 6 operations 
decoded via a 3-bit opcode. Implemented and validated 
on Xilinx Artix-7 (Basys 3).

## Key Results
- Operations: ADD, SUB, AND, OR, XOR, SHIFT
- Max Frequency: 100 MHz (zero timing violations)
- LUT Utilisation: 48 LUTs (< 2% of Artix-7)
- Bug caught pre-synthesis via self-checking testbench

## Tools Used
- Language: Verilog HDL
- Simulation: ModelSim
- Synthesis: Xilinx Vivado
- Board: Basys 3 (Artix-7)

## RTL Best Practices Applied
- Zero inferred latches
- Synchronous resets on all flip-flops
- All Vivado lint warnings resolved

## Contact
Kumar Saurab
krsaurab62@gmail.com
linkedin.com/in/kumarsaurab49
