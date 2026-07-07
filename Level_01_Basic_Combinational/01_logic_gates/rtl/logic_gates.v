// Project : Logic Gates
// File    : logic_gates.v
// Author  : Mohan Krishna


module logic_gates(
  input a,
  input b,
  output _and,
  output _or,
  output _nand,
  output _nor,
  output ex_or,
  output ex_nor,
  output _not
);
  
  assign _and = a & b;
  assign _or = a | b;
  assign _nand = ~(a & b);
  assign _nor = ~(a | b);
  assign ex_or = a ^ b;
  assign ex_nor = ~(a ^ b);
  assign _not = ~a;
  
endmodule

