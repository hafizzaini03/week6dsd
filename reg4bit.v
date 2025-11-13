module reg4bit(clk, rst, ld, D, Q);
    input clk, rst, ld;
    input [3:0] D;
    output reg [3:0] Q;

    always @(posedge clk or negedge rst) begin
        if (!rst)
            Q <= 4'b0000;
        else if (!ld)
            Q <= D;
    end
endmodule

