// 2:1 Multiplexer (Part A)
module mux2to1(
    input a,
    input b,
    input s,
    output y
);

assign y = s ? b : a;

endmodule


// 4-bit 2:1 Multiplexer using module instantiation
module mux4bit(
    input a3, a2, a1, a0,
    input b3, b2, b1, b0,
    input s,
    output y3, y2, y1, y0
);

mux2to1 M1(a3, b3, s, y3);
mux2to1 M2(a2, b2, s, y2);
mux2to1 M3(a1, b1, s, y1);
mux2to1 M4(a0, b0, s, y0);

endmodule