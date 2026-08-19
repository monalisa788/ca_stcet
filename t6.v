module fulladder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
);

wire andAB, andBCin, andACin;

xor(S, A, B, Cin);

and(andAB, A, B);
and(andBCin, B, Cin);
and(andACin, A, Cin);

or(Cout, andAB, andBCin, andACin);

endmodule