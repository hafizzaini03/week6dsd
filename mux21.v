module mux21(sel, a, b, y);
input sel;
input [3:0] a, b;
output [3:0] y;

assign y = sel ? b : a;
endmodule
