module reg5bit(clk, rst, ld, D, Q);
    input clk, rst, ld;
    input [4:0] D;
    output reg [4:0] Q;

    always @(posedge clk or negedge rst) begin
        if (!rst)
            Q <= 5'b00000;
        else if (!ld)
            Q <= D;
    end
endmodule
