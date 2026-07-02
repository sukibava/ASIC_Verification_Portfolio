// Project : Logic Gates
// File    : logic_gates.v
// Author  : Mohan Krishna


module logic_gates(

    input  wire A,
    input  wire B,

    output wire AND_OUT,
    output wire OR_OUT,
    output wire XOR_OUT,
    output wire NAND_OUT,
    output wire NOR_OUT,
    output wire NOT_OUT

);

assign AND_OUT  = A & B;
assign OR_OUT   = A | B;
assign XOR_OUT  = A ^ B;
assign NAND_OUT = ~(A & B);
assign NOR_OUT  = ~(A | B);
assign NOT_OUT  = ~A;

endmodule