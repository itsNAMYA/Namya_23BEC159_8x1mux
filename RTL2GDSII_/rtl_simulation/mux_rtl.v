module mux (
    input [7:0] I0, I1, I2, I3, I4, I5, I6, I7,
    input [2:0] Sel,
    input Clock,
    input Reset, // Reset signal
    input Enable, // Enable signal
    output reg [7:0] Y
);

always @ (posedge Clock or posedge Reset) begin
    if (Reset) begin
        Y <= 8'b0; // Reset output to 0
    end else if (Enable) begin
        case (Sel)
            3'b000: Y <= I0;
            3'b001: Y <= I1;
            3'b010: Y <= I2;
            3'b011: Y <= I3;
            3'b100: Y <= I4;
            3'b101: Y <= I5;
            3'b110: Y <= I6;
            3'b111: Y <= I7;
            default: Y <= 8'b0;
        endcase
    end
end

endmodule

