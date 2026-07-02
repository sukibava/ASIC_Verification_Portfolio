`timescale 1ns/1ps

module logic_gates_tb;

reg A;
reg B;

wire AND_OUT;
wire OR_OUT;
wire XOR_OUT;
wire NAND_OUT;
wire NOR_OUT;
wire NOT_OUT;

// DUT (Device Under Test)

logic_gates dut (

    .A(A),
    .B(B),

    .AND_OUT(AND_OUT),
    .OR_OUT(OR_OUT),
    .XOR_OUT(XOR_OUT),
    .NAND_OUT(NAND_OUT),
    .NOR_OUT(NOR_OUT),
    .NOT_OUT(NOT_OUT)

);

initial
begin

    $display("-----------------------------------------------");
    $display("A B | AND OR XOR NAND NOR NOT");
    $display("-----------------------------------------------");

    A=0; B=0;
    #10;
    $display("%b %b |  %b   %b   %b    %b    %b   %b",
             A,B,AND_OUT,OR_OUT,XOR_OUT,NAND_OUT,NOR_OUT,NOT_OUT);

    A=0; B=1;
    #10;
    $display("%b %b |  %b   %b   %b    %b    %b   %b",
             A,B,AND_OUT,OR_OUT,XOR_OUT,NAND_OUT,NOR_OUT,NOT_OUT);

    A=1; B=0;
    #10;
    $display("%b %b |  %b   %b   %b    %b    %b   %b",
             A,B,AND_OUT,OR_OUT,XOR_OUT,NAND_OUT,NOR_OUT,NOT_OUT);

    A=1; B=1;
    #10;
    $display("%b %b |  %b   %b   %b    %b    %b   %b",
             A,B,AND_OUT,OR_OUT,XOR_OUT,NAND_OUT,NOR_OUT,NOT_OUT);

    $finish;

end

endmodule