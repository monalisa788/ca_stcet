module tb_mux4bit;

reg a3, a2, a1, a0;
reg b3, b2, b1, b0;
reg s;

wire y3, y2, y1, y0;

mux4bit uut(
    a3, a2, a1, a0,
    b3, b2, b1, b0,
    s,
    y3, y2, y1, y0
);

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux4bit);

    a3=1; a2=0; a1=1; a0=0;
    b3=0; b2=1; b1=0; b0=1;

    s=0; #10;
    s=1; #10;

    a3=0; a2=1; a1=0; a0=1;
    b3=1; b2=1; b1=1; b0=0;

    s=0; #10;
    s=1; #10;

    $finish;
end

endmodule