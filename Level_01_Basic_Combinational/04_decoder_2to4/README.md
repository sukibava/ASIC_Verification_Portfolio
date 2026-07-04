# Project 04 – 2-to-4 Decoder

## Overview

This project implements a 2-to-4 Decoder using Verilog HDL and verifies its functionality with a dedicated testbench.

A decoder converts a binary input into one active output line.

---

## Features

- Verilog RTL implementation
- Combinational logic design
- Complete testbench
- Simulation verification
- Waveform analysis
- RTL schematic
- Design documentation

---

## Folder Structure

```
04_decoder_2to4/
├── rtl/
├── tb/
├── docs/
├── images/
└── README.md
```

---

## Inputs

| Signal | Description |
|---------|-------------|
| A1 | Input Bit 1 |
| A0 | Input Bit 0 |

---

## Outputs

| Signal | Description |
|---------|-------------|
| Y3 | Output 3 |
| Y2 | Output 2 |
| Y1 | Output 1 |
| Y0 | Output 0 |

---

## Truth Table

| A1 | A0 | Y3 | Y2 | Y1 | Y0 |
|----|----|----|----|----|----|
|0|0|0|0|0|1|
|0|1|0|0|1|0|
|1|0|0|1|0|0|
|1|1|1|0|0|0|

---

## Simulation Results

The simulation verifies all possible input combinations.

### Waveform

> Insert waveform screenshot here.

---

### RTL Schematic

> Insert RTL schematic screenshot here.

---

### Console Output

> Insert simulation console output here.

---

## Tools Used

- Vivado 2023.1
- Verilog HDL

---

## Learning Outcomes

- Decoder operation
- Combinational circuit design
- Case statement implementation
- RTL simulation
- Testbench development
- Waveform verification