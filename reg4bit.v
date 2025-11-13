module reg4bit(CK, rst, load, D, Q);
input CK, rst, load;
input [3:0] D;
output reg [3:0] Q;

// ✅ FIX: add initial value
initial Q = 4'b0000;

always @ (posedge CK or negedge rst) begin
    if (!rst)
        Q <= 4'b0000;
    else if (!load)
        Q <= D;
end
endmodule
