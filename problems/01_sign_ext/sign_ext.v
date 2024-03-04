module sign_ext(
    input [11:0]imm,

    output [31:0]ext_imm
);

/*
*   Problem 4:
*   Describe sign extension logic.
*/

wire [19:0]high_20 = {20{imm[11]}};
assign ext_imm = {high_20, imm};

endmodule
