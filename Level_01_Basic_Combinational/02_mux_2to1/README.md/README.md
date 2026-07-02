# 2:1 Multiplexer

## Overview

This project implements a simple 2:1 Multiplexer in Verilog.

## RTL

```verilog
assign y = sel ? b : a;
```

## Files

- rtl/
- tb/
- docs/
- simulation/
- images/

## Truth Table

| Sel | A | B | Y |
|-----|---|---|---|
|0|0|0|0|
|0|0|1|0|
|0|1|0|1|
|0|1|1|1|
|1|0|0|0|
|1|0|1|1|
|1|1|0|0|
|1|1|1|1|

## Result

Simulation passed successfully.