// 4-bit Binary Adder (Part A)
module adder4(
    input  [3:0] A,
    input  [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
);

assign {Cout, S} = A + B + Cin;

endmodule


// BCD Adder using module instantiation
module bcd_adder(
    input  [3:0] A,
    input  [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

wire [3:0] s1;
wire c1;
wire k;

adder4 U1(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(s1),
    .Cout(c1)
);

assign k = c1 | (s1[3] & s1[2]) | (s1[3] & s1[1]);

adder4 U2(
    .A(s1),
    .B({1'b0, k, k, 1'b0}),   // Add 0110 if correction needed
    .Cin(1'b0),
    .S(Sum),
    .Cout()
);

assign Cout = k;

endmodule