# Design Notes – 4-to-2 Encoder

## Objective

The objective of this project is to design and verify a 4-to-2 Encoder using Verilog HDL. The encoder converts one active input line out of four into a corresponding 2-bit binary output.

---

## Theory

An encoder is a combinational logic circuit that converts multiple input lines into a smaller number of output bits.

A 4-to-2 encoder has:
- 4 input lines (D0–D3)
- 2 output lines (Y1, Y0)

Only one input should be HIGH at a time (one-hot input condition). The output represents the binary index of the active input.

---

## Truth Table

| D3 | D2 | D1 | D0 | Y1 | Y0 |
|----|----|----|----|----|----|
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 | 1 |

---

## Logic Equations

Y1 = D2 + D3

Y0 = D1 + D3

---

## RTL Description

The encoder is implemented using simple combinational logic.

```verilog
assign y[1] = d[2] | d[3];
assign y[0] = d[1] | d[3];
```

No clock or sequential elements are used.

---

## Verification Methodology

A self-checking style is not required for this basic project.

The testbench applies four valid one-hot input combinations:

- D0 active
- D1 active
- D2 active
- D3 active

Each input is applied for 10 ns, and the corresponding output is observed in the waveform and console output.

---

## Simulation Results

Simulation was performed using Vivado Simulator.

Observed outputs:

| Input | Output |
|--------|--------|
|0001|00|
|0010|01|
|0100|10|
|1000|11|

The simulation results match the expected truth table.

---

## Learning Outcomes

After completing this project, the following concepts were learned:

- Combinational logic design
- Encoder functionality
- Verilog continuous assignment (`assign`)
- Testbench development
- Functional simulation using Vivado
- Waveform analysis
- RTL schematic generation

---

## Conclusion

The 4-to-2 Encoder was successfully designed and verified using Verilog HDL. The simulation results confirmed correct encoding for all valid one-hot input combinations, demonstrating proper operation of the combinational logic.