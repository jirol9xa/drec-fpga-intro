module alu(
    input [31:0]src_a,
    input [31:0]src_b,
    input [2:0]op,

    output reg [31:0]res
);

always @(*) begin
    case (op)
        2'b00: res = src_a;
        2'b01: res = src_a + src_b;
    endcase
end

endmodule
