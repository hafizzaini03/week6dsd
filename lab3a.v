module lab3a(clk, rst, ld, cin, a, b, d2, d1, d0);
input CK, rst, load, cin;
input [7:0] a, b;
output [6:0] d2, d1, d0;

wire [7:0] s;
wire [3:0] A1, A2, m1, m2;
wire [7:1] c;
wire gr1, gr2, z1, z2, cout1, cout2; 

wire [3:0] reg4bit_output;
wire [4:0] reg5bit_output;


adder f0(a[0], b[0], cin,  s[0], c[1]);
adder f1(a[1], b[1], c[1], s[1], c[2]);
adder f2(a[2], b[2], c[2], s[2], c[3]);
adder f3(a[3], b[3], c[3], s[3], cout1);

comparator c0(s[3:0], gr1);
assign z1 = cout1 | gr1;

circuit_a a0(cout1, s[3:0], A1);
mux21 M0(z1, s[3:0], A1, m1[3:0]);


reg4bit r1(clk, rst, ld, m1[3:0], reg4bit_output);


decoder Dec0(reg4bit_output, d0);

adder f4(a[4], b[4], z1, s[4], c[5]);
adder f5(a[5], b[5], c[5], s[5], c[6]);
adder f6(a[6], b[6], c[6], s[6], c[7]);
adder f7(a[7], b[7], c[7], s[7], cout2);

comparator c1(s[7:4], gr2);
assign z2 = cout2 | gr2;

circuit_a a1(cout2, s[7:4], A2);
mux21 M1(z2, s[7:4], A2, m2);

reg5bit r2(clk, rst, ld, {z2, m2[3:0]}, reg5bit_output);

decoder Dec1(reg5bit_output[3:0], d1);
circuit_b b0(reg5bit_output[4], d2);
endmodule
