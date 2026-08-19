module tb_d_flipflop;

reg D, clk;
wire Q;

d_flipflop uut(
    .D(D),
    .clk(clk),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("d_flipflop.vcd");
    $dumpvars(0, tb_d_flipflop);

    clk = 0;
    D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;

    $finish;
end

endmodule