//-----------------------------------------------------------------------
//module : cla _testbench
//version : 1.0
//Description : carry lookahead adder  testbench
//-----------------------------------------------------------------------
//author : li weihan
//Email : weihanlee@foxmail.com
//created on 25th july, 2020
//changed on 25th july, 2020
//-----------------------------------------------------------------------
`timescale 1ns/1ps

module cla_tb;
    
    reg    [255:0] op1;
    reg    [255:0] op2;
    wire   [255:0] sum;
    wire   cout;


//module cla  (op1,op2,sum,cout);
cla  cla_u (.op1(op1),.op2(op2),.sum(sum),.cout(cout));
integer i = 0;

initial begin
    op1 = 256'h8000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_000a;
    op2 = 256'h8000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_00c2;
    # 20;
    for(i = 0 ; i <= 100 ; i = i+1)
        begin
            op1 = op1 + 2'b10;
            op2 = op2 - 2'b01;
            # 20;
        end
    # 20;
    $stop;
end



endmodule