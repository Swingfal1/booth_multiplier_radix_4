//-----------------------------------------------------------------------
//module : booth4code
//version : 1.0
//Description : radix-4 booth multiplier
//version : 2.0 (26th july ,2020)
//Description : radix-4 booth multiplier base on case funcation
//-----------------------------------------------------------------------
//author : li weihan
//Email : weihanlee@foxmail.com
//time : 15th july, 2020
//-----------------------------------------------------------------------
`timescale 1ns/1ps
module booth4code (
    a_i,b_i,booth_o
);
    parameter length = 128;
    input      [length-1 : 0]  a_i;         //full 128-bit input
    input      [2:0]           b_i;         //3 of 128 bit input
    output reg [length   : 0]  booth_o;     //booth output

//-----------------------------------------------------------------------  
//version : 1.0
//Description : radix-4 booth multiplier
//-----------------------------------------------------------------------
/************************************************************************
    wire    as_f,ov_f,te_f,sub_valid;  
            //as_f = 0 add, as_f = 1 sub ;
            //ov_f = 0 0  , ov_f = 1 a;   
            //te_f = 0 0  , te_f = 1 2a;

assign  as_f = b_i[2];
assign  ov_f = b_i[1] ^ b_i[0];
assign  te_f = (( ~b_i[2] ) & b_i[1] & b_i[0] ) | ( b_i[2] & ( ~b_i[0] | b_i[1]) ); 
assign  sub_valid = as_f & ( ov_f | te_f );

always @(as_f or ov_f or te_f) begin
   if(ov_f)         //operation a_i;
        begin   
          if(as_f)   booth_o <= {~a_i[length-1],~a_i}; //sub  
          else       booth_o <= { a_i[length-1], a_i}; //add
        end 
   else if(te_f)    //operation 2*a_i
         begin
          if(as_f)   booth_o <= ~(a_i<<1); //sub
          else       booth_o <=   a_i<<1; //add
         end
    else
                     booth_o <= 0;                  
end
************************************************************************/
//-----------------------------------------------------------------------  
//version : 2.0 (26th july ,2020)
//Description : radix-4 booth multiplier base on case funcation
//-----------------------------------------------------------------------
always @(*) begin
    case(b_i)
        3'b000 : booth_o <= 0;
        3'b001 : booth_o <= { a_i[length-1], a_i};
        3'b010 : booth_o <= { a_i[length-1], a_i};
        3'b011 : booth_o <=   a_i<<1;
        3'b100 : booth_o <= -(a_i<<1);
        3'b101 : booth_o <= -{a_i[length-1],a_i};
        3'b110 : booth_o <= -{a_i[length-1],a_i};
        3'b111 : booth_o <= 0;
        default: booth_o <= 0;
    endcase
end



endmodule