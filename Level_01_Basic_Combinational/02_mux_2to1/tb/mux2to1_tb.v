`timescale 1ns/1ps

module mux2to1_tb;

reg a;
reg b;
reg sel;

wire y;

mux2to1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin

    $display("Time\tSel\tA\tB\tY");
    $monitor("%0t\t%b\t%b\t%b\t%b",
              $time, sel, a, b, y);

    a=0; b=0; sel=0;
    #10;

    a=0; b=1; sel=0;
    #10;

    a=1; b=0; sel=0;
    #10;

    a=1; b=1; sel=0;
    #10;

    a=0; b=0; sel=1;
    #10;

    a=0; b=1; sel=1;
    #10;

    a=1; b=0; sel=1;
    #10;

    a=1; b=1; sel=1;
    #10;

    $finish;

end

endmodule