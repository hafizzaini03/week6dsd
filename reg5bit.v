module reg5bit(CK, rst, load, D, Q);
input CK, rst, load;
input [4:0] D;
output reg [4:0] Q;

// ✅ FIX: add initial reset for simulation stability
initial Q = 5'b00000;

always @ (posedge CK or negedge rst) begin
    if (!rst)
        Q <= 5'b00000;
    else if (!load)   // ✅ load active LOW (same as your testbench)
        Q <= D;
end
endmodule
