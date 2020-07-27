`timescale 1ns/1ps
module pg_gen(
    a,b,g,p
);
input a;
input b;
output g;
output p;

assign g = a & b;
assign p = a ^ b;

endmodule