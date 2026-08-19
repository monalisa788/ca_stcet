module circuit19(

&#x20;   input P,

&#x20;   input Q,

&#x20;   input R,

&#x20;   output Y

);



wire n1, n2, n3, n4, n5;



nand(n1, P, Q);

nand(n2, Q, R);

nand(n3, P, R);



nand(n4, n1, n2);

nand(n5, n4, n4);



nand(Y, n5, n3);



endmodule

