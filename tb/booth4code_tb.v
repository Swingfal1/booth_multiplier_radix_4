//-----------------------------------------------------------------------
//module : booth4code_tb
//version : 1.0
//Description : tb of booth4code_tb
//-----------------------------------------------------------------------
//author : li weihan
//Email : weihanlee@foxmail.com
//time : 26th july, 2020
//-----------------------------------------------------------------------
`timescale 1ns/1ps
module booth4code_tb ;
    reg       [127 : 0]  a_i;         //full 64-bit 
    reg       [2 : 0]           b_i;         //3 of 64 bit 
    wire      [128 : 0]  booth_o;     //booth output

booth4code u1(
    .a_i(a_i),.b_i(b_i),.booth_o(booth_o)
);

initial begin



    a_i = 128'h0000_0000_0000_0000_0000_0000_0000_0002;
    b_i = 3'b110;
    #50;
    a_i = 128'h0000_0000_0000_0000_0000_0000_0000_0002;
    b_i = 3'b001;
    #50;
    a_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
    #20;
    b_i = 3'b000;
    #20;
    b_i = 3'b001;
    #20;
    b_i = 3'b010;
    #20;
    b_i = 3'b011;
    #20;
    b_i = 3'b100;
    #20;
    b_i = 3'b101;
    #20;
    b_i = 3'b110;
    #20;
    b_i = 3'b111;
    #20;
    a_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_fff0;
    #20;
    b_i = 3'b000;
    #20;
    b_i = 3'b001;
    #20;
    b_i = 3'b010;
    #20;
    b_i = 3'b011;
    #20;
    b_i = 3'b100;
    #20;
    b_i = 3'b101;
    #20;
    b_i = 3'b110;
    #20;
    b_i = 3'b111;
    #20;

    a_i = 128'h0fff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
    #20;
    b_i = 3'b000;
    #20;
    b_i = 3'b001;
    #20;
    b_i = 3'b010;
    #20;
    b_i = 3'b011;
    #20;
    b_i = 3'b100;
    #20;
    b_i = 3'b101;
    #20;
    b_i = 3'b110;
    #20;
    b_i = 3'b111;

    #20;
    $stop;
end
endmodule
