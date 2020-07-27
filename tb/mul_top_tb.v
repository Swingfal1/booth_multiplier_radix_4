//-----------------------------------------------------------------------
//module : mul_top_tb
//version : 1.0
//Description : testbench for mul_top
//version : 1.1 (27th july , 2020)
//-----------------------------------------------------------------------
//author : li weihan
//Email : weihanlee@foxmail.com
//time : 16th july, 2020
//-----------------------------------------------------------------------
`timescale 1ns/1ps
module mul_top_tb;
reg   [127 : 0]  a_i,b_i;
reg              clk_i;
wire  [255 : 0]  mul_o;


mul_top u0(
    .a_i(a_i),
    .b_i(b_i),
    .clk_i(clk_i),
    .mul_o(mul_o)
);

//always #1 clk_i = ~clk_i;

integer i;

initial begin
    a_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_fffe_ffff;
    b_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_ffef_ffff;
    #10;
    a_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_fffe_ffff;
    b_i = 128'h0000_0000_0000_0000_0000_0000_0000_0002;
    #10;
    a_i = 128'h0000_0000_0000_0000_0000_0000_0000_0002;
    b_i = 128'h0000_0000_0000_0000_0000_0000_0000_0001;
    #10;
    a_i = 128'hf000_0000_0000_0000_0000_0000_0000_0002;
    b_i = 128'h00f0_0000_0000_0000_0000_0000_0000_0001;
    #10;
    a_i = 128'h00ef_f000_0000_0000_0000_0000_0000_0002;
    b_i = 128'h0100_0000_0000_0000_0000_0000_0000_0001;
    #10;
    b_i[3:1] = 3'b001;
    #10;
    clk_i = 1;
    #10
    a_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
    b_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
    #10;

    a_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
    b_i = 128'h0000_0000_0000_0000_0000_0000_0000_0000;
    #10;

    a_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
    b_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
    #10;

    #10;
    a_i = 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
    b_i = 128'h0000_0000_0000_0000_0000_0000_0000_0000;
    for (i = 0; i<10; i=i+1) begin
        a_i = a_i + 1;
        b_i = b_i + 1;
        #10;

    end

end

initial begin
    #1000 $stop;
end
endmodule
