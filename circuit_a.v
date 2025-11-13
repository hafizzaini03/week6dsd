module circuit_a(cout, v, A);
input cout;
input [3:0] v;
output reg [3:0] A;

	always @({cout, v}) 
		case({cout, v})
			5'b01010: A = 4'b0000;
			5'b01011: A = 4'b0001;
			5'b01100: A = 4'b0010;
			5'b01101: A = 4'b0011;
			5'b01110: A = 4'b0100;
			5'b01111: A = 4'b0101;
			5'b10000: A = 4'b0110;
			5'b10001: A = 4'b0111;
			5'b10010: A = 4'b1000;
			5'b10011: A = 4'b1001;
			default: A = 4'bXXXX;
		endcase

endmodule
		