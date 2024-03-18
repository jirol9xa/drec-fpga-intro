`timescale 1 ns / 100 ps


module testbench(); /* No inputs, no outputs */

reg clk = 1'b0; /* Represents clock, initial value is 0 */
reg reset = 1'b0; /* Represent a reset, initial value is 0 */

always begin
    #1 clk = ~clk; /* Toggle clock every 1ns */
end

wire[2:0] clk_out;

counter counter(.clk(clk), .reset(reset), .clk_out(clk_out));

initial begin
    $dumpvars;      /* Open for dump of signals */
    $display("Test started...");   /* Write to console */

    #20 reset = 1'b1; /* Toggle reset after 10 clocks*/
    #50 $finish;      /* Stop simulation after 10ns */
end

endmodule
