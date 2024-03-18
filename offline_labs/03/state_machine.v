module counter (
    input clk,
    input reset,
    output[2:0] clk_out
);

localparam FIRST   = 3'b100,
           SECOND  = 3'b101,
           THIRD   = 3'b111,
           FORTH   = 3'b110,
           FIFTH   = 3'b010,
           SIXTH   = 3'b011,
           SEVENTH = 3'b001,
           EIGHT   = 3'b000;

reg [2:0] state = FIRST;
assign clk_out = state;

always @(posedge clk) begin
        if (reset)
            state <= FIRST;
        else
            case (state)
                FIRST: begin
                    state <= SECOND;
                end
                SECOND: begin
                    state <= THIRD;
                end
                THIRD: begin
                    state <= FORTH;
                end
                FORTH: begin
                    state <= FIFTH;
                end
                FIFTH: begin
                    state <= SIXTH;
                end
                SIXTH: begin
                    state <= SEVENTH;
                end
                SEVENTH: begin
                    state <= EIGHT;
                end
                EIGHT: begin
                    state <= FIRST;
                end
            endcase
end

endmodule
