//-----------------------------------------------------------------------
//module : cla
//version : 1.0
//Description : carry lookahead adder
//-----------------------------------------------------------------------
//author : li weihan
//Email : weihanlee@foxmail.com
//created on 15th july, 2020
//changed on 16th july, 2020
//-----------------------------------------------------------------------
`timescale 1ns/1ps
module cla  (
    op1,op2,sum,cout
);
parameter  width = 256 ; 
input  [width-1:0] op1;
input  [width-1:0] op2;
output [width-1:0] sum;
output cout;

wire [width>>2:0] c;      //
assign c[0] = 1'b0;
assign cout = c[width>>2];


cla_4bit u_cla_4bit_0  (.op1( op1[ 0*4+3: 0*4] ),.op2( op2[ 0*4+3: 0*4] ),.cin( c[0 ] ),.sum( sum[ 0*4+3: 0*4] ),.cout( c[0 +1]));
cla_4bit u_cla_4bit_1  (.op1( op1[ 1*4+3: 1*4] ),.op2( op2[ 1*4+3: 1*4] ),.cin( c[1 ] ),.sum( sum[ 1*4+3: 1*4] ),.cout( c[1 +1]));
cla_4bit u_cla_4bit_2  (.op1( op1[ 2*4+3: 2*4] ),.op2( op2[ 2*4+3: 2*4] ),.cin( c[2 ] ),.sum( sum[ 2*4+3: 2*4] ),.cout( c[2 +1]));
cla_4bit u_cla_4bit_3  (.op1( op1[ 3*4+3: 3*4] ),.op2( op2[ 3*4+3: 3*4] ),.cin( c[3 ] ),.sum( sum[ 3*4+3: 3*4] ),.cout( c[3 +1]));
cla_4bit u_cla_4bit_4  (.op1( op1[ 4*4+3: 4*4] ),.op2( op2[ 4*4+3: 4*4] ),.cin( c[4 ] ),.sum( sum[ 4*4+3: 4*4] ),.cout( c[4 +1]));
cla_4bit u_cla_4bit_5  (.op1( op1[ 5*4+3: 5*4] ),.op2( op2[ 5*4+3: 5*4] ),.cin( c[5 ] ),.sum( sum[ 5*4+3: 5*4] ),.cout( c[5 +1]));
cla_4bit u_cla_4bit_6  (.op1( op1[ 6*4+3: 6*4] ),.op2( op2[ 6*4+3: 6*4] ),.cin( c[6 ] ),.sum( sum[ 6*4+3: 6*4] ),.cout( c[6 +1]));
cla_4bit u_cla_4bit_7  (.op1( op1[ 7*4+3: 7*4] ),.op2( op2[ 7*4+3: 7*4] ),.cin( c[7 ] ),.sum( sum[ 7*4+3: 7*4] ),.cout( c[7 +1]));
cla_4bit u_cla_4bit_8  (.op1( op1[ 8*4+3: 8*4] ),.op2( op2[ 8*4+3: 8*4] ),.cin( c[8 ] ),.sum( sum[ 8*4+3: 8*4] ),.cout( c[8 +1]));
cla_4bit u_cla_4bit_9  (.op1( op1[ 9*4+3: 9*4] ),.op2( op2[ 9*4+3: 9*4] ),.cin( c[9 ] ),.sum( sum[ 9*4+3: 9*4] ),.cout( c[9 +1]));
cla_4bit u_cla_4bit_10 (.op1( op1[10*4+3:10*4] ),.op2( op2[10*4+3:10*4] ),.cin( c[10] ),.sum( sum[10*4+3:10*4] ),.cout( c[10+1]));
cla_4bit u_cla_4bit_11 (.op1( op1[11*4+3:11*4] ),.op2( op2[11*4+3:11*4] ),.cin( c[11] ),.sum( sum[11*4+3:11*4] ),.cout( c[11+1]));
cla_4bit u_cla_4bit_12 (.op1( op1[12*4+3:12*4] ),.op2( op2[12*4+3:12*4] ),.cin( c[12] ),.sum( sum[12*4+3:12*4] ),.cout( c[12+1]));
cla_4bit u_cla_4bit_13 (.op1( op1[13*4+3:13*4] ),.op2( op2[13*4+3:13*4] ),.cin( c[13] ),.sum( sum[13*4+3:13*4] ),.cout( c[13+1]));
cla_4bit u_cla_4bit_14 (.op1( op1[14*4+3:14*4] ),.op2( op2[14*4+3:14*4] ),.cin( c[14] ),.sum( sum[14*4+3:14*4] ),.cout( c[14+1]));
cla_4bit u_cla_4bit_15 (.op1( op1[15*4+3:15*4] ),.op2( op2[15*4+3:15*4] ),.cin( c[15] ),.sum( sum[15*4+3:15*4] ),.cout( c[15+1]));
cla_4bit u_cla_4bit_16 (.op1( op1[16*4+3:16*4] ),.op2( op2[16*4+3:16*4] ),.cin( c[16] ),.sum( sum[16*4+3:16*4] ),.cout( c[16+1]));
cla_4bit u_cla_4bit_17 (.op1( op1[17*4+3:17*4] ),.op2( op2[17*4+3:17*4] ),.cin( c[17] ),.sum( sum[17*4+3:17*4] ),.cout( c[17+1]));
cla_4bit u_cla_4bit_18 (.op1( op1[18*4+3:18*4] ),.op2( op2[18*4+3:18*4] ),.cin( c[18] ),.sum( sum[18*4+3:18*4] ),.cout( c[18+1]));
cla_4bit u_cla_4bit_19 (.op1( op1[19*4+3:19*4] ),.op2( op2[19*4+3:19*4] ),.cin( c[19] ),.sum( sum[19*4+3:19*4] ),.cout( c[19+1]));
cla_4bit u_cla_4bit_20 (.op1( op1[20*4+3:20*4] ),.op2( op2[20*4+3:20*4] ),.cin( c[20] ),.sum( sum[20*4+3:20*4] ),.cout( c[20+1]));
cla_4bit u_cla_4bit_21 (.op1( op1[21*4+3:21*4] ),.op2( op2[21*4+3:21*4] ),.cin( c[21] ),.sum( sum[21*4+3:21*4] ),.cout( c[21+1]));
cla_4bit u_cla_4bit_22 (.op1( op1[22*4+3:22*4] ),.op2( op2[22*4+3:22*4] ),.cin( c[22] ),.sum( sum[22*4+3:22*4] ),.cout( c[22+1]));
cla_4bit u_cla_4bit_23 (.op1( op1[23*4+3:23*4] ),.op2( op2[23*4+3:23*4] ),.cin( c[23] ),.sum( sum[23*4+3:23*4] ),.cout( c[23+1]));
cla_4bit u_cla_4bit_24 (.op1( op1[24*4+3:24*4] ),.op2( op2[24*4+3:24*4] ),.cin( c[24] ),.sum( sum[24*4+3:24*4] ),.cout( c[24+1]));
cla_4bit u_cla_4bit_25 (.op1( op1[25*4+3:25*4] ),.op2( op2[25*4+3:25*4] ),.cin( c[25] ),.sum( sum[25*4+3:25*4] ),.cout( c[25+1]));
cla_4bit u_cla_4bit_26 (.op1( op1[26*4+3:26*4] ),.op2( op2[26*4+3:26*4] ),.cin( c[26] ),.sum( sum[26*4+3:26*4] ),.cout( c[26+1]));
cla_4bit u_cla_4bit_27 (.op1( op1[27*4+3:27*4] ),.op2( op2[27*4+3:27*4] ),.cin( c[27] ),.sum( sum[27*4+3:27*4] ),.cout( c[27+1]));
cla_4bit u_cla_4bit_28 (.op1( op1[28*4+3:28*4] ),.op2( op2[28*4+3:28*4] ),.cin( c[28] ),.sum( sum[28*4+3:28*4] ),.cout( c[28+1]));
cla_4bit u_cla_4bit_29 (.op1( op1[29*4+3:29*4] ),.op2( op2[29*4+3:29*4] ),.cin( c[29] ),.sum( sum[29*4+3:29*4] ),.cout( c[29+1]));
cla_4bit u_cla_4bit_30 (.op1( op1[30*4+3:30*4] ),.op2( op2[30*4+3:30*4] ),.cin( c[30] ),.sum( sum[30*4+3:30*4] ),.cout( c[30+1]));
cla_4bit u_cla_4bit_31 (.op1( op1[31*4+3:31*4] ),.op2( op2[31*4+3:31*4] ),.cin( c[31] ),.sum( sum[31*4+3:31*4] ),.cout( c[31+1]));
cla_4bit u_cla_4bit_32 (.op1( op1[32*4+3:32*4] ),.op2( op2[32*4+3:32*4] ),.cin( c[32] ),.sum( sum[32*4+3:32*4] ),.cout( c[32+1]));
cla_4bit u_cla_4bit_33 (.op1( op1[33*4+3:33*4] ),.op2( op2[33*4+3:33*4] ),.cin( c[33] ),.sum( sum[33*4+3:33*4] ),.cout( c[33+1]));
cla_4bit u_cla_4bit_34 (.op1( op1[34*4+3:34*4] ),.op2( op2[34*4+3:34*4] ),.cin( c[34] ),.sum( sum[34*4+3:34*4] ),.cout( c[34+1]));
cla_4bit u_cla_4bit_35 (.op1( op1[35*4+3:35*4] ),.op2( op2[35*4+3:35*4] ),.cin( c[35] ),.sum( sum[35*4+3:35*4] ),.cout( c[35+1]));
cla_4bit u_cla_4bit_36 (.op1( op1[36*4+3:36*4] ),.op2( op2[36*4+3:36*4] ),.cin( c[36] ),.sum( sum[36*4+3:36*4] ),.cout( c[36+1]));
cla_4bit u_cla_4bit_37 (.op1( op1[37*4+3:37*4] ),.op2( op2[37*4+3:37*4] ),.cin( c[37] ),.sum( sum[37*4+3:37*4] ),.cout( c[37+1]));
cla_4bit u_cla_4bit_38 (.op1( op1[38*4+3:38*4] ),.op2( op2[38*4+3:38*4] ),.cin( c[38] ),.sum( sum[38*4+3:38*4] ),.cout( c[38+1]));
cla_4bit u_cla_4bit_39 (.op1( op1[39*4+3:39*4] ),.op2( op2[39*4+3:39*4] ),.cin( c[39] ),.sum( sum[39*4+3:39*4] ),.cout( c[39+1]));
cla_4bit u_cla_4bit_40 (.op1( op1[40*4+3:40*4] ),.op2( op2[40*4+3:40*4] ),.cin( c[40] ),.sum( sum[40*4+3:40*4] ),.cout( c[40+1]));
cla_4bit u_cla_4bit_41 (.op1( op1[41*4+3:41*4] ),.op2( op2[41*4+3:41*4] ),.cin( c[41] ),.sum( sum[41*4+3:41*4] ),.cout( c[41+1]));
cla_4bit u_cla_4bit_42 (.op1( op1[42*4+3:42*4] ),.op2( op2[42*4+3:42*4] ),.cin( c[42] ),.sum( sum[42*4+3:42*4] ),.cout( c[42+1]));
cla_4bit u_cla_4bit_43 (.op1( op1[43*4+3:43*4] ),.op2( op2[43*4+3:43*4] ),.cin( c[43] ),.sum( sum[43*4+3:43*4] ),.cout( c[43+1]));
cla_4bit u_cla_4bit_44 (.op1( op1[44*4+3:44*4] ),.op2( op2[44*4+3:44*4] ),.cin( c[44] ),.sum( sum[44*4+3:44*4] ),.cout( c[44+1]));
cla_4bit u_cla_4bit_45 (.op1( op1[45*4+3:45*4] ),.op2( op2[45*4+3:45*4] ),.cin( c[45] ),.sum( sum[45*4+3:45*4] ),.cout( c[45+1]));
cla_4bit u_cla_4bit_46 (.op1( op1[46*4+3:46*4] ),.op2( op2[46*4+3:46*4] ),.cin( c[46] ),.sum( sum[46*4+3:46*4] ),.cout( c[46+1]));
cla_4bit u_cla_4bit_47 (.op1( op1[47*4+3:47*4] ),.op2( op2[47*4+3:47*4] ),.cin( c[47] ),.sum( sum[47*4+3:47*4] ),.cout( c[47+1]));
cla_4bit u_cla_4bit_48 (.op1( op1[48*4+3:48*4] ),.op2( op2[48*4+3:48*4] ),.cin( c[48] ),.sum( sum[48*4+3:48*4] ),.cout( c[48+1]));
cla_4bit u_cla_4bit_49 (.op1( op1[49*4+3:49*4] ),.op2( op2[49*4+3:49*4] ),.cin( c[49] ),.sum( sum[49*4+3:49*4] ),.cout( c[49+1]));
cla_4bit u_cla_4bit_50 (.op1( op1[50*4+3:50*4] ),.op2( op2[50*4+3:50*4] ),.cin( c[50] ),.sum( sum[50*4+3:50*4] ),.cout( c[50+1]));
cla_4bit u_cla_4bit_51 (.op1( op1[51*4+3:51*4] ),.op2( op2[51*4+3:51*4] ),.cin( c[51] ),.sum( sum[51*4+3:51*4] ),.cout( c[51+1]));
cla_4bit u_cla_4bit_52 (.op1( op1[52*4+3:52*4] ),.op2( op2[52*4+3:52*4] ),.cin( c[52] ),.sum( sum[52*4+3:52*4] ),.cout( c[52+1]));
cla_4bit u_cla_4bit_53 (.op1( op1[53*4+3:53*4] ),.op2( op2[53*4+3:53*4] ),.cin( c[53] ),.sum( sum[53*4+3:53*4] ),.cout( c[53+1]));
cla_4bit u_cla_4bit_54 (.op1( op1[54*4+3:54*4] ),.op2( op2[54*4+3:54*4] ),.cin( c[54] ),.sum( sum[54*4+3:54*4] ),.cout( c[54+1]));
cla_4bit u_cla_4bit_55 (.op1( op1[55*4+3:55*4] ),.op2( op2[55*4+3:55*4] ),.cin( c[55] ),.sum( sum[55*4+3:55*4] ),.cout( c[55+1]));
cla_4bit u_cla_4bit_56 (.op1( op1[56*4+3:56*4] ),.op2( op2[56*4+3:56*4] ),.cin( c[56] ),.sum( sum[56*4+3:56*4] ),.cout( c[56+1]));
cla_4bit u_cla_4bit_57 (.op1( op1[57*4+3:57*4] ),.op2( op2[57*4+3:57*4] ),.cin( c[57] ),.sum( sum[57*4+3:57*4] ),.cout( c[57+1]));
cla_4bit u_cla_4bit_58 (.op1( op1[58*4+3:58*4] ),.op2( op2[58*4+3:58*4] ),.cin( c[58] ),.sum( sum[58*4+3:58*4] ),.cout( c[58+1]));
cla_4bit u_cla_4bit_59 (.op1( op1[59*4+3:59*4] ),.op2( op2[59*4+3:59*4] ),.cin( c[59] ),.sum( sum[59*4+3:59*4] ),.cout( c[59+1]));
cla_4bit u_cla_4bit_60 (.op1( op1[60*4+3:60*4] ),.op2( op2[60*4+3:60*4] ),.cin( c[60] ),.sum( sum[60*4+3:60*4] ),.cout( c[60+1]));
cla_4bit u_cla_4bit_61 (.op1( op1[61*4+3:61*4] ),.op2( op2[61*4+3:61*4] ),.cin( c[61] ),.sum( sum[61*4+3:61*4] ),.cout( c[61+1]));
cla_4bit u_cla_4bit_62 (.op1( op1[62*4+3:62*4] ),.op2( op2[62*4+3:62*4] ),.cin( c[62] ),.sum( sum[62*4+3:62*4] ),.cout( c[62+1]));
cla_4bit u_cla_4bit_63 (.op1( op1[63*4+3:63*4] ),.op2( op2[63*4+3:63*4] ),.cin( c[63] ),.sum( sum[63*4+3:63*4] ),.cout( c[63+1]));



endmodule
