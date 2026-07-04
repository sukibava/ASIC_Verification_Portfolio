`timescale 1ns/1ps

module encoder_4to2_tb;

reg  [3:0] d;
wire [1:0] y;

encoder_4to2 uut (
    .d(d),
    .y(y)
);

initial begin

    $display("-------------------------------------");
    $display(" D3 D2 D1 D0 | Y1 Y0");
    $display("-------------------------------------");

    d = 4'b0001;
    #10;
    $display(" %b | %b", d, y);

    d = 4'b0010;
    #10;
    $display(" %b | %b", d, y);

    d = 4'b0100;
    #10;
    $display(" %b | %b", d, y);

    d = 4'b1000;
    #10;
    $display(" %b | %b", d, y);

    $finish;

end

endmodule