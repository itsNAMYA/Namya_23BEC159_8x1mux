`timescale 1ns/1ns

`include "mux_rtl.v" // includes the module definition for the 8-to-1 mux

module testbench;

    reg [7:0] I0, I1, I2, I3, I4, I5, I6, I7; // 8-bit inputs
    reg [2:0] Sel; // 3-bit select input
    reg Clock; // Clock input
    reg Reset; // Reset input
    reg Enable; // Enable input
    wire [7:0] Y; // 8-bit output

    // Instantiate the module under test
    mux dut (.I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .Sel(Sel), .Clock(Clock), .Reset(Reset), .Enable(Enable), .Y(Y));

    // Clock generation
    always #5 Clock = ~Clock; // Clock signal with a period of 10 ns

    // Stimulus
    initial begin
        $fsdbDumpvars(); // Tool specific command for waveform generation

        // Initialize inputs
        I0 = 8'b00000000; I1 = 8'b00000001; I2 = 8'b00000010; I3 = 8'b00000011;
        I4 = 8'b00000100; I5 = 8'b00000101; I6 = 8'b00000110; I7 = 8'b00000111;

        Sel = 3'b000; // Start with the first input
        Clock = 0; // Initialize clock
        Reset = 1; // Start with reset
        Enable = 0; // Disable initially

        #10 Reset = 0; // Release reset
        Enable = 1; // Enable the mux

        // Apply test cases
        #20 Sel = 3'b000; // Select I0
        #10; // Wait for clock edge
        $display("Sel = %b, Y = %b", Sel, Y);

        #20 Sel = 3'b001; // Select I1
        #10; // Wait for clock edge
        $display("Sel = %b, Y = %b", Sel, Y);

        #20 Sel = 3'b010; // Select I2
        #10; // Wait for clock edge
        $display("Sel = %b, Y = %b", Sel, Y);

        #20 Sel = 3'b011; // Select I3
        #10; // Wait for clock edge
        $display("Sel = %b, Y = %b", Sel, Y);

        #20 Sel = 3'b100; // Select I4
        #10; // Wait for clock edge
        $display("Sel = %b, Y = %b", Sel, Y);

        #20 Sel = 3'b101; // Select I5
        #10; // Wait for clock edge
        $display("Sel = %b, Y = %b", Sel, Y);

        #20 Sel = 3'b110; // Select I6
        #10; // Wait for clock edge
        $display("Sel = %b, Y = %b", Sel, Y);

        #20 Sel = 3'b111; // Select I7
        #10; // Wait for clock edge
        $display("Sel = %b, Y = %b", Sel, Y);

        #100 $finish; // End simulation
    end

endmodule
