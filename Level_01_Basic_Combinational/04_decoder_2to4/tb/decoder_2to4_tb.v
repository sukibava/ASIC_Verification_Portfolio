`timescale 1ns / 1ps

module decoder_2to4_tb;

    // Testbench signals
    reg A1;
    reg A0;

    wire Y3;
    wire Y2;
    wire Y1;
    wire Y0;

    // Instantiate the DUT (Device Under Test)
    decoder_2to4 uut (
        .A1(A1),
        .A0(A0),
        .Y3(Y3),
        .Y2(Y2),
        .Y1(Y1),
        .Y0(Y0)
    );

    initial begin

        $display("----------------------------------------");
        $display("   2-to-4 Decoder Test Started");
        $display("----------------------------------------");
        $display(" A1 A0 | Y3 Y2 Y1 Y0");
        $display("---------------------");

        // Test Case 1
        A1 = 0; A0 = 0;
        #10;
        $display("  %b  %b |  %b  %b  %b  %b",
                  A1, A0, Y3, Y2, Y1, Y0);

        // Test Case 2
        A1 = 0; A0 = 1;
        #10;
        $display("  %b  %b |  %b  %b  %b  %b",
                  A1, A0, Y3, Y2, Y1, Y0);

        // Test Case 3
        A1 = 1; A0 = 0;
        #10;
        $display("  %b  %b |  %b  %b  %b  %b",
                  A1, A0, Y3, Y2, Y1, Y0);

        // Test Case 4
        A1 = 1; A0 = 1;
        #10;
        $display("  %b  %b |  %b  %b  %b  %b",
                  A1, A0, Y3, Y2, Y1, Y0);

        $display("----------------------------------------");
        $display("Simulation Completed Successfully");
        $display("----------------------------------------");

        $finish;

    end

endmodule