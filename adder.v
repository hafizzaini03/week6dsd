module adder(n, d, c_in, sum, c_out);
input n, d, c_in;
output sum, c_out;

assign sum = n ^ d ^ c_in;
assign c_out = (n & d) | (d & c_in) | (n & c_in);
endmodule
