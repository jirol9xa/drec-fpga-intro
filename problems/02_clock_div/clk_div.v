module clk_div #(parameter x = 10)(
    input clk,

    output clk_out
);

assign clk_out = (cnt == 2 ** x);

reg [x:0]cnt = 0;

always @(posedge clk) begin
        if (clk_out)
            cnt <= 0;
        else
            cnt <= cnt + 1;
end

endmodule
