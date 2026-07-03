`timescale 1ns/1ps

module mux4to1_tb;

    // Testbench signals
    reg I0, I1, I2, I3;
    reg [1:0] sel;
    wire Y;

    // Instantiate the DUT (Device Under Test)
    mux4to1 dut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .sel(sel),
        .Y(Y)
    );

    initial begin
        $display("--------------------------------------------");
        $display(" Time | I0 I1 I2 I3 | sel | Y ");
        $display("--------------------------------------------");

        // Test Case 1
        I0 = 0; I1 = 1; I2 = 0; I3 = 1;

        sel = 2'b00; #10;
        $display("%4t |  %b  %b  %b  %b | %b | %b",
                 $time, I0, I1, I2, I3, sel, Y);

        sel = 2'b01; #10;
        $display("%4t |  %b  %b  %b  %b | %b | %b",
                 $time, I0, I1, I2, I3, sel, Y);

        sel = 2'b10; #10;
        $display("%4t |  %b  %b  %b  %b | %b | %b",
                 $time, I0, I1, I2, I3, sel, Y);

        sel = 2'b11; #10;
        $display("%4t |  %b  %b  %b  %b | %b | %b",
                 $time, I0, I1, I2, I3, sel, Y);

        // Test Case 2
        I0 = 1; I1 = 0; I2 = 1; I3 = 0;

        sel = 2'b00; #10;
        $display("%4t |  %b  %b  %b  %b | %b | %b",
                 $time, I0, I1, I2, I3, sel, Y);

        sel = 2'b01; #10;
        $display("%4t |  %b  %b  %b  %b | %b | %b",
                 $time, I0, I1, I2, I3, sel, Y);

        sel = 2'b10; #10;
        $display("%4t |  %b  %b  %b  %b | %b | %b",
                 $time, I0, I1, I2, I3, sel, Y);

        sel = 2'b11; #10;
        $display("%4t |  %b  %b  %b  %b | %b | %b",
                 $time, I0, I1, I2, I3, sel, Y);

        $display("--------------------------------------------");
        $display("Simulation Completed Successfully.");
        $display("--------------------------------------------");

        $finish;
    end

endmodule