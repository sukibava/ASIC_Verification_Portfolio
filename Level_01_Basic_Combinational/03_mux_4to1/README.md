# 4:1 Multiplexer (MUX)

## Overview

This project implements a 4:1 Multiplexer in Verilog HDL and verifies its functionality using a Verilog testbench.

---

## Project Structure

```
03_mux_4to1/
│
├── rtl/
├── tb/
├── docs/
├── images/
├── README.md
└── LICENSE
```

---

## Inputs

- I0
- I1
- I2
- I3
- sel[1:0]

## Output

- Y

---

## Truth Table

| sel | Output |
|-----|--------|
| 00 | I0 |
| 01 | I1 |
| 10 | I2 |
| 11 | I3 |

---

## RTL Description

The multiplexer is implemented using an `always @(*)` block with a `case` statement.

---

## Verification

The testbench verifies:

- All four select values
- Different input combinations
- Correct output selection

---

## Simulation Result

Simulation completed successfully with expected output.

---

## RTL Schematic

![RTL Schematic](images/rtl_schematic.png)

---

## Waveform

![Waveform](images/waveform.png)

---

## Learning Outcomes

- Verilog RTL coding
- Multiplexer design
- Combinational logic
- Testbench development
- Simulation using Vivado
- Waveform analysis

---

## Tools Used

- Vivado
- Verilog HDL
- Git
- GitHub

---

## Author

**K. Mohan Krishna**