module tb_circuit19;

reg P, Q, R;
wire Y;

circuit19 uut(
    .P(P),
    .Q(Q),
    .R(R),
    .Y(Y)
);

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_circuit19);

    P=0; Q=0; R=0; #10;
    P=0; Q=0; R=1; #10;
    P=0; Q=1; R=0; #10;
    P=0; Q=1; R=1; #10;
    P=1; Q=0; R=0; #10;
    P=1; Q=0; R=1; #10;
    P=1; Q=1; R=0; #10;
    P=1; Q=1; R=1; #10;

    $finish;
end

endmodule