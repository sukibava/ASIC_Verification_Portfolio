# Design Notes

## Objective

Design and verify a 2-to-4 Decoder using Verilog HDL.

## Description

A decoder converts binary input data into a unique active output line.

This design has:

- 2 Inputs (A1, A0)
- 4 Outputs (Y3, Y2, Y1, Y0)

Only one output is HIGH for every input combination.

## Design Approach

The decoder is implemented using a combinational `always @(*)` block with a `case` statement.

Before evaluating the inputs, all outputs are initialized to LOW to prevent latch inference and ensure only one output is asserted.

## Verification

The testbench applies all four possible input combinations.

Simulation verifies that:

- Only one output is HIGH.
- The active output matches the applied input.
- All truth table entries are validated successfully.

## Expected Result

The RTL simulation, waveform, and RTL schematic confirm the correct functionality of the 2-to-4 Decoder.