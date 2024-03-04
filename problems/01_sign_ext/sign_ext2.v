module sign_ext2(
    input [11:0]imm,

    output [31:0]ext_imm
);

/*
*   Problem 5:
*   Describe sign extension logic using ternary operator.
*/

wire one = 1;
wire [19:0]ones  = {20{one}};
wire [19:0]zeros = 0;
wire [19:0]ext = imm[11] ? ones : zeros;

assign ext_imm = {ext, imm};

endmodule
