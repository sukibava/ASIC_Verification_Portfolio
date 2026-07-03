# Design Notes – 4:1 Multiplexer

## Objective

Design and verify a 4:1 Multiplexer using Verilog HDL.

## Description

A 4:1 Multiplexer selects one of four input signals and forwards it to the output based on the 2-bit select signal.

## Inputs

- I0
- I1
- I2
- I3
- sel[1:0]

## Output

- Y

## Design Method

The design uses a combinational `always @(*)` block with a `case` statement.

## Verification

The testbench applies different input combinations and verifies all four select values.

## Expected Behavior

- sel = 00 → Y = I0
- sel = 01 → Y = I1
- sel = 10 → Y = I2
- sel = 11 → Y = I3

## Learning Outcomes

- Multiplexer design
- Case statement
- Combinational logic
- Verilog testbench creation
- Waveform analysis