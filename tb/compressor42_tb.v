//-----------------------------------------------------------------------
//module : compressor42_tb
//version : 1.0
//Description : tb of compressor42_tb
//-----------------------------------------------------------------------
//author : li weihan
//Email : weihanlee@foxmail.com
//time : 26th july, 2020
//-----------------------------------------------------------------------
`timescale 1ns/1ps

module compressor42_tb ;
    reg  [255 : 0]  in1,in2,in3,in4;
    reg                     cin;
    wire  [256 : 0]  out1,out2;
    wire                    cout;
    

//module compressor42 (
//   in1,in2,in3,in4,cin,out1,out2,cout
//);    
compressor42 u1 (
   .in1(in1),.in2(in2),.in3(in3),.in4(in4),.cin(cin),.out1(out1),.out2(out2),.cout(cout)
);  
    integer i = 0;
initial begin
    cin = 1'b0;
    in1 = 256'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
    in2 = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_000a;
    in3 = 256'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff;
    in4 = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_00c2;
    #20 ;

    for(i = 0;i <= 20 ; i = i + 1 ) begin
        in1 = in1 + 2'b01;
        in2 = in2 + 2'b01;
        in3 = in3 + 1'b1;
        in4 = in4 + 1'b1;
        #20;
    end
    #20;
    $stop;
end


endmodule