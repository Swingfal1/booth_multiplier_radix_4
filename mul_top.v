//-----------------------------------------------------------------------
//module : mul_top
//version : 1.0
//Description : multiplier top level verilog file (filed)
//version : 1.1 (26th jult, 2020)
//Description : change the compressor42
//-----------------------------------------------------------------------
//author : li weihan
//Email : weihanlee@foxmail.com
//time : 15th july, 2020
//-----------------------------------------------------------------------
`timescale 1ns/1ps
module mul_top(
    a_i,b_i,clk_i,mul_o

    );
    parameter length = 128;
    input   [length-1 : 0]  a_i,b_i;
    input                   clk_i;
    output  [length*2-1:0]  mul_o;





    wire    [length   : 0]  booth_o0 ;
    wire    [length   : 0]  booth_o1 ;
    wire    [length   : 0]  booth_o2 ;
    wire    [length   : 0]  booth_o3 ;
    wire    [length   : 0]  booth_o4 ;
    wire    [length   : 0]  booth_o5 ;
    wire    [length   : 0]  booth_o6 ;
    wire    [length   : 0]  booth_o7 ;
    wire    [length   : 0]  booth_o8 ;
    wire    [length   : 0]  booth_o9 ;
    wire    [length   : 0]  booth_o10;
    wire    [length   : 0]  booth_o11;
    wire    [length   : 0]  booth_o12;
    wire    [length   : 0]  booth_o13;
    wire    [length   : 0]  booth_o14;
    wire    [length   : 0]  booth_o15;
    wire    [length   : 0]  booth_o16;
    wire    [length   : 0]  booth_o17;
    wire    [length   : 0]  booth_o18;
    wire    [length   : 0]  booth_o19;
    wire    [length   : 0]  booth_o20;
    wire    [length   : 0]  booth_o21;
    wire    [length   : 0]  booth_o22;
    wire    [length   : 0]  booth_o23;
    wire    [length   : 0]  booth_o24;
    wire    [length   : 0]  booth_o25;
    wire    [length   : 0]  booth_o26;
    wire    [length   : 0]  booth_o27;
    wire    [length   : 0]  booth_o28;
    wire    [length   : 0]  booth_o29;
    wire    [length   : 0]  booth_o30;
    wire    [length   : 0]  booth_o31;
    wire    [length   : 0]  booth_o32;
    wire    [length   : 0]  booth_o33;
    wire    [length   : 0]  booth_o34;
    wire    [length   : 0]  booth_o35;
    wire    [length   : 0]  booth_o36;
    wire    [length   : 0]  booth_o37;
    wire    [length   : 0]  booth_o38;
    wire    [length   : 0]  booth_o39;
    wire    [length   : 0]  booth_o40;
    wire    [length   : 0]  booth_o41;
    wire    [length   : 0]  booth_o42;
    wire    [length   : 0]  booth_o43;
    wire    [length   : 0]  booth_o44;
    wire    [length   : 0]  booth_o45;
    wire    [length   : 0]  booth_o46;
    wire    [length   : 0]  booth_o47;
    wire    [length   : 0]  booth_o48;
    wire    [length   : 0]  booth_o49;
    wire    [length   : 0]  booth_o50;
    wire    [length   : 0]  booth_o51;
    wire    [length   : 0]  booth_o52;
    wire    [length   : 0]  booth_o53;
    wire    [length   : 0]  booth_o54;
    wire    [length   : 0]  booth_o55;
    wire    [length   : 0]  booth_o56;
    wire    [length   : 0]  booth_o57;
    wire    [length   : 0]  booth_o58;
    wire    [length   : 0]  booth_o59;
    wire    [length   : 0]  booth_o60;
    wire    [length   : 0]  booth_o61;
    wire    [length   : 0]  booth_o62;
    wire    [length   : 0]  booth_o63;


    wire    [length*2-1: 0]  pp0 ;
    wire    [length*2-1: 0]  pp1 ;
    wire    [length*2-1: 0]  pp2 ;
    wire    [length*2-1: 0]  pp3 ;
    wire    [length*2-1: 0]  pp4 ;
    wire    [length*2-1: 0]  pp5 ;
    wire    [length*2-1: 0]  pp6 ;
    wire    [length*2-1: 0]  pp7 ;
    wire    [length*2-1: 0]  pp8 ;
    wire    [length*2-1: 0]  pp9 ;
    wire    [length*2-1: 0]  pp10;
    wire    [length*2-1: 0]  pp11;
    wire    [length*2-1: 0]  pp12;
    wire    [length*2-1: 0]  pp13;
    wire    [length*2-1: 0]  pp14;
    wire    [length*2-1: 0]  pp15;
    wire    [length*2-1: 0]  pp16;
    wire    [length*2-1: 0]  pp17;
    wire    [length*2-1: 0]  pp18;
    wire    [length*2-1: 0]  pp19;
    wire    [length*2-1: 0]  pp20;
    wire    [length*2-1: 0]  pp21;
    wire    [length*2-1: 0]  pp22;
    wire    [length*2-1: 0]  pp23;
    wire    [length*2-1: 0]  pp24;
    wire    [length*2-1: 0]  pp25;
    wire    [length*2-1: 0]  pp26;
    wire    [length*2-1: 0]  pp27;
    wire    [length*2-1: 0]  pp28;
    wire    [length*2-1: 0]  pp29;
    wire    [length*2-1: 0]  pp30;
    wire    [length*2-1: 0]  pp31;
    wire    [length*2-1: 0]  pp32;
    wire    [length*2-1: 0]  pp33;
    wire    [length*2-1: 0]  pp34;
    wire    [length*2-1: 0]  pp35;
    wire    [length*2-1: 0]  pp36;
    wire    [length*2-1: 0]  pp37;
    wire    [length*2-1: 0]  pp38;
    wire    [length*2-1: 0]  pp39;
    wire    [length*2-1: 0]  pp40;
    wire    [length*2-1: 0]  pp41;
    wire    [length*2-1: 0]  pp42;
    wire    [length*2-1: 0]  pp43;
    wire    [length*2-1: 0]  pp44;
    wire    [length*2-1: 0]  pp45;
    wire    [length*2-1: 0]  pp46;
    wire    [length*2-1: 0]  pp47;
    wire    [length*2-1: 0]  pp48;
    wire    [length*2-1: 0]  pp49;
    wire    [length*2-1: 0]  pp50;
    wire    [length*2-1: 0]  pp51;
    wire    [length*2-1: 0]  pp52;
    wire    [length*2-1: 0]  pp53;
    wire    [length*2-1: 0]  pp54;
    wire    [length*2-1: 0]  pp55;
    wire    [length*2-1: 0]  pp56;
    wire    [length*2-1: 0]  pp57;
    wire    [length*2-1: 0]  pp58;
    wire    [length*2-1: 0]  pp59;
    wire    [length*2-1: 0]  pp60;
    wire    [length*2-1: 0]  pp61;
    wire    [length*2-1: 0]  pp62;
    wire    [length*2-1: 0]  pp63;




    
//module booth4code (a_i,b_i,booth_o);
booth4code booth4_0  (a_i , {b_i[1:0],1'b0}   , booth_o0 );
booth4code booth4_1  (a_i ,  b_i[3:1]         , booth_o1 );
booth4code booth4_2  (a_i ,  b_i[5:3]         , booth_o2 );
booth4code booth4_3  (a_i ,  b_i[7:5]         , booth_o3 );
booth4code booth4_4  (a_i ,  b_i[9:7]         , booth_o4 );
booth4code booth4_5  (a_i ,  b_i[11:9]        , booth_o5 );
booth4code booth4_6  (a_i ,  b_i[13:11]       , booth_o6 );
booth4code booth4_7  (a_i ,  b_i[15:13]       , booth_o7 );
booth4code booth4_8  (a_i ,  b_i[17:15]       , booth_o8 );
booth4code booth4_9  (a_i ,  b_i[19:17]       , booth_o9 );
booth4code booth4_10 (a_i ,  b_i[21:19]       , booth_o10);
booth4code booth4_11 (a_i ,  b_i[23:21]       , booth_o11);
booth4code booth4_12 (a_i ,  b_i[25:23]       , booth_o12);
booth4code booth4_13 (a_i ,  b_i[27:25]       , booth_o13);
booth4code booth4_14 (a_i ,  b_i[29:27]       , booth_o14);
booth4code booth4_15 (a_i ,  b_i[31:29]       , booth_o15);
booth4code booth4_16 (a_i ,  b_i[33:31]       , booth_o16);
booth4code booth4_17 (a_i ,  b_i[35:33]       , booth_o17);
booth4code booth4_18 (a_i ,  b_i[37:35]       , booth_o18);
booth4code booth4_19 (a_i ,  b_i[39:37]       , booth_o19);
booth4code booth4_20 (a_i ,  b_i[41:39]       , booth_o20);
booth4code booth4_21 (a_i ,  b_i[43:41]       , booth_o21);
booth4code booth4_22 (a_i ,  b_i[45:43]       , booth_o22);
booth4code booth4_23 (a_i ,  b_i[47:45]       , booth_o23);
booth4code booth4_24 (a_i ,  b_i[49:47]       , booth_o24);
booth4code booth4_25 (a_i ,  b_i[51:49]       , booth_o25);
booth4code booth4_26 (a_i ,  b_i[53:51]       , booth_o26);
booth4code booth4_27 (a_i ,  b_i[55:53]       , booth_o27);
booth4code booth4_28 (a_i ,  b_i[57:55]       , booth_o28);
booth4code booth4_29 (a_i ,  b_i[59:57]       , booth_o29);
booth4code booth4_30 (a_i ,  b_i[61:59]       , booth_o30);
booth4code booth4_31 (a_i ,  b_i[63:61]       , booth_o31);
booth4code booth4_32 (a_i ,  b_i[65:63]       , booth_o32);
booth4code booth4_33 (a_i ,  b_i[67:65]       , booth_o33);
booth4code booth4_34 (a_i ,  b_i[69:67]       , booth_o34);
booth4code booth4_35 (a_i ,  b_i[71:69]       , booth_o35);
booth4code booth4_36 (a_i ,  b_i[73:71]       , booth_o36);
booth4code booth4_37 (a_i ,  b_i[75:73]       , booth_o37);
booth4code booth4_38 (a_i ,  b_i[77:75]       , booth_o38);
booth4code booth4_39 (a_i ,  b_i[79:77]       , booth_o39);
booth4code booth4_40 (a_i ,  b_i[81:79]       , booth_o40);
booth4code booth4_41 (a_i ,  b_i[83:81]       , booth_o41);
booth4code booth4_42 (a_i ,  b_i[85:83]       , booth_o42);
booth4code booth4_43 (a_i ,  b_i[87:85]       , booth_o43);
booth4code booth4_44 (a_i ,  b_i[89:87]       , booth_o44);
booth4code booth4_45 (a_i ,  b_i[91:89]       , booth_o45);
booth4code booth4_46 (a_i ,  b_i[93:91]       , booth_o46);
booth4code booth4_47 (a_i ,  b_i[95:93]       , booth_o47);
booth4code booth4_48 (a_i ,  b_i[97:95]       , booth_o48);
booth4code booth4_49 (a_i ,  b_i[99:97]       , booth_o49);
booth4code booth4_50 (a_i ,  b_i[101:99]      , booth_o50);
booth4code booth4_51 (a_i ,  b_i[103:101]     , booth_o51);
booth4code booth4_52 (a_i ,  b_i[105:103]     , booth_o52);
booth4code booth4_53 (a_i ,  b_i[107:105]     , booth_o53);
booth4code booth4_54 (a_i ,  b_i[109:107]     , booth_o54);
booth4code booth4_55 (a_i ,  b_i[111:109]     , booth_o55);
booth4code booth4_56 (a_i ,  b_i[113:111]     , booth_o56);
booth4code booth4_57 (a_i ,  b_i[115:113]     , booth_o57);
booth4code booth4_58 (a_i ,  b_i[117:115]     , booth_o58);
booth4code booth4_59 (a_i ,  b_i[119:117]     , booth_o59);
booth4code booth4_60 (a_i ,  b_i[121:119]     , booth_o60);
booth4code booth4_61 (a_i ,  b_i[123:121]     , booth_o61);
booth4code booth4_62 (a_i ,  b_i[125:123]     , booth_o62);
booth4code booth4_63 (a_i ,  b_i[127:125]     , booth_o63);


assign  pp0  = {{ 127{booth_o0 [length]}} , {booth_o0   }};
assign  pp1  = {{ 125{booth_o1 [length]}} , {booth_o1  } , {  2{1'b0}}};  //<< 2  
assign  pp2  = {{ 123{booth_o2 [length]}} , {booth_o2  } , {  4{1'b0}}};  //<< 4  
assign  pp3  = {{ 121{booth_o3 [length]}} , {booth_o3  } , {  6{1'b0}}};  //<< 6  
assign  pp4  = {{ 119{booth_o4 [length]}} , {booth_o4  } , {  8{1'b0}}};  //<< 8  
assign  pp5  = {{ 117{booth_o5 [length]}} , {booth_o5  } , { 10{1'b0}}};  //<< 10 
assign  pp6  = {{ 115{booth_o6 [length]}} , {booth_o6  } , { 12{1'b0}}};  //<< 12 
assign  pp7  = {{ 113{booth_o7 [length]}} , {booth_o7  } , { 14{1'b0}}};  //<< 14 
assign  pp8  = {{ 111{booth_o8 [length]}} , {booth_o8  } , { 16{1'b0}}};  //<< 16 
assign  pp9  = {{ 109{booth_o9 [length]}} , {booth_o9  } , { 18{1'b0}}};  //<< 18 
assign  pp10 = {{ 107{booth_o10[length]}} , {booth_o10 } , { 20{1'b0}}};  //<< 20 
assign  pp11 = {{ 105{booth_o11[length]}} , {booth_o11 } , { 22{1'b0}}};  //<< 22 
assign  pp12 = {{ 103{booth_o12[length]}} , {booth_o12 } , { 24{1'b0}}};  //<< 24 
assign  pp13 = {{ 101{booth_o13[length]}} , {booth_o13 } , { 26{1'b0}}};  //<< 26 
assign  pp14 = {{  99{booth_o14[length]}} , {booth_o14 } , { 28{1'b0}}};  //<< 28 
assign  pp15 = {{  97{booth_o15[length]}} , {booth_o15 } , { 30{1'b0}}};  //<< 30 
assign  pp16 = {{  95{booth_o16[length]}} , {booth_o16 } , { 32{1'b0}}};  //<< 32 
assign  pp17 = {{  93{booth_o17[length]}} , {booth_o17 } , { 34{1'b0}}};  //<< 34 
assign  pp18 = {{  91{booth_o18[length]}} , {booth_o18 } , { 36{1'b0}}};  //<< 36 
assign  pp19 = {{  89{booth_o19[length]}} , {booth_o19 } , { 38{1'b0}}};  //<< 38 
assign  pp20 = {{  87{booth_o20[length]}} , {booth_o20 } , { 40{1'b0}}};  //<< 40 
assign  pp21 = {{  85{booth_o21[length]}} , {booth_o21 } , { 42{1'b0}}};  //<< 42 
assign  pp22 = {{  83{booth_o22[length]}} , {booth_o22 } , { 44{1'b0}}};  //<< 44 
assign  pp23 = {{  81{booth_o23[length]}} , {booth_o23 } , { 46{1'b0}}};  //<< 46 
assign  pp24 = {{  79{booth_o24[length]}} , {booth_o24 } , { 48{1'b0}}};  //<< 48 
assign  pp25 = {{  77{booth_o25[length]}} , {booth_o25 } , { 50{1'b0}}};  //<< 50 
assign  pp26 = {{  75{booth_o26[length]}} , {booth_o26 } , { 52{1'b0}}};  //<< 52 
assign  pp27 = {{  73{booth_o27[length]}} , {booth_o27 } , { 54{1'b0}}};  //<< 54 
assign  pp28 = {{  71{booth_o28[length]}} , {booth_o28 } , { 56{1'b0}}};  //<< 56 
assign  pp29 = {{  69{booth_o29[length]}} , {booth_o29 } , { 58{1'b0}}};  //<< 58 
assign  pp30 = {{  67{booth_o30[length]}} , {booth_o30 } , { 60{1'b0}}};  //<< 60 
assign  pp31 = {{  65{booth_o31[length]}} , {booth_o31 } , { 62{1'b0}}};  //<< 62 
assign  pp32 = {{  63{booth_o32[length]}} , {booth_o32 } , { 64{1'b0}}};  //<< 64 
assign  pp33 = {{  61{booth_o33[length]}} , {booth_o33 } , { 66{1'b0}}};  //<< 66 
assign  pp34 = {{  59{booth_o34[length]}} , {booth_o34 } , { 68{1'b0}}};  //<< 68 
assign  pp35 = {{  57{booth_o35[length]}} , {booth_o35 } , { 70{1'b0}}};  //<< 70 
assign  pp36 = {{  55{booth_o36[length]}} , {booth_o36 } , { 72{1'b0}}};  //<< 72 
assign  pp37 = {{  53{booth_o37[length]}} , {booth_o37 } , { 74{1'b0}}};  //<< 74 
assign  pp38 = {{  51{booth_o38[length]}} , {booth_o38 } , { 76{1'b0}}};  //<< 76 
assign  pp39 = {{  49{booth_o39[length]}} , {booth_o39 } , { 78{1'b0}}};  //<< 78 
assign  pp40 = {{  47{booth_o40[length]}} , {booth_o40 } , { 80{1'b0}}};  //<< 80 
assign  pp41 = {{  45{booth_o41[length]}} , {booth_o41 } , { 82{1'b0}}};  //<< 82 
assign  pp42 = {{  43{booth_o42[length]}} , {booth_o42 } , { 84{1'b0}}};  //<< 84 
assign  pp43 = {{  41{booth_o43[length]}} , {booth_o43 } , { 86{1'b0}}};  //<< 86 
assign  pp44 = {{  39{booth_o44[length]}} , {booth_o44 } , { 88{1'b0}}};  //<< 88 
assign  pp45 = {{  37{booth_o45[length]}} , {booth_o45 } , { 90{1'b0}}};  //<< 90 
assign  pp46 = {{  35{booth_o46[length]}} , {booth_o46 } , { 92{1'b0}}};  //<< 92 
assign  pp47 = {{  33{booth_o47[length]}} , {booth_o47 } , { 94{1'b0}}};  //<< 94 
assign  pp48 = {{  31{booth_o48[length]}} , {booth_o48 } , { 96{1'b0}}};  //<< 96 
assign  pp49 = {{  29{booth_o49[length]}} , {booth_o49 } , { 98{1'b0}}};  //<< 98 
assign  pp50 = {{  27{booth_o50[length]}} , {booth_o50 } , {100{1'b0}}};  //<< 100
assign  pp51 = {{  25{booth_o51[length]}} , {booth_o51 } , {102{1'b0}}};  //<< 102
assign  pp52 = {{  23{booth_o52[length]}} , {booth_o52 } , {104{1'b0}}};  //<< 104
assign  pp53 = {{  21{booth_o53[length]}} , {booth_o53 } , {106{1'b0}}};  //<< 106
assign  pp54 = {{  19{booth_o54[length]}} , {booth_o54 } , {108{1'b0}}};  //<< 108
assign  pp55 = {{  17{booth_o55[length]}} , {booth_o55 } , {110{1'b0}}};  //<< 110
assign  pp56 = {{  15{booth_o56[length]}} , {booth_o56 } , {112{1'b0}}};  //<< 112
assign  pp57 = {{  13{booth_o57[length]}} , {booth_o57 } , {114{1'b0}}};  //<< 114
assign  pp58 = {{  11{booth_o58[length]}} , {booth_o58 } , {116{1'b0}}};  //<< 116
assign  pp59 = {{   9{booth_o59[length]}} , {booth_o59 } , {118{1'b0}}};  //<< 118
assign  pp60 = {{   7{booth_o60[length]}} , {booth_o60 } , {120{1'b0}}};  //<< 120
assign  pp61 = {{   5{booth_o61[length]}} , {booth_o61 } , {122{1'b0}}};  //<< 122
assign  pp62 = {{   3{booth_o62[length]}} , {booth_o62 } , {124{1'b0}}};  //<< 124
assign  pp63 = {{   1{booth_o63[length]}} , {booth_o63 } , {126{1'b0}}};  //<< 126

wire cout_l1_0 ;
wire cout_l1_1 ;
wire cout_l1_2 ;
wire cout_l1_3 ;
wire cout_l1_4 ;
wire cout_l1_5 ;
wire cout_l1_6 ;
wire cout_l1_7 ;
wire cout_l1_8 ;
wire cout_l1_9 ;
wire cout_l1_10;
wire cout_l1_11;
wire cout_l1_12;
wire cout_l1_13;
wire cout_l1_14;
wire cout_l1_15;

wire [length*2 : 0] cpr_o_l1_0  ;
wire [length*2 : 0] cpr_o_l1_1  ;
wire [length*2 : 0] cpr_o_l1_2  ;
wire [length*2 : 0] cpr_o_l1_3  ;
wire [length*2 : 0] cpr_o_l1_4  ;
wire [length*2 : 0] cpr_o_l1_5  ;
wire [length*2 : 0] cpr_o_l1_6  ;
wire [length*2 : 0] cpr_o_l1_7  ;
wire [length*2 : 0] cpr_o_l1_8  ;
wire [length*2 : 0] cpr_o_l1_9  ;
wire [length*2 : 0] cpr_o_l1_10 ;
wire [length*2 : 0] cpr_o_l1_11 ;
wire [length*2 : 0] cpr_o_l1_12 ;
wire [length*2 : 0] cpr_o_l1_13 ;
wire [length*2 : 0] cpr_o_l1_14 ;
wire [length*2 : 0] cpr_o_l1_15 ;
wire [length*2 : 0] cpr_o_l1_16 ;
wire [length*2 : 0] cpr_o_l1_17 ;
wire [length*2 : 0] cpr_o_l1_18 ;
wire [length*2 : 0] cpr_o_l1_19 ;
wire [length*2 : 0] cpr_o_l1_20 ;
wire [length*2 : 0] cpr_o_l1_21 ;
wire [length*2 : 0] cpr_o_l1_22 ;
wire [length*2 : 0] cpr_o_l1_23 ;
wire [length*2 : 0] cpr_o_l1_24 ;
wire [length*2 : 0] cpr_o_l1_25 ;
wire [length*2 : 0] cpr_o_l1_26 ;
wire [length*2 : 0] cpr_o_l1_27 ;
wire [length*2 : 0] cpr_o_l1_28 ;
wire [length*2 : 0] cpr_o_l1_29 ;
wire [length*2 : 0] cpr_o_l1_30 ;
wire [length*2 : 0] cpr_o_l1_31 ;










//wallace tree
//
//first level of wallace tree: 42compressor
//module compressor42 (in1,in2,in3,in4,cin,out1,out2,cout);
//out1 needs to be multiplied by two (out1<<1)
//module        compressor42   (in1  ,in2  ,in3  ,in4  , cin  ,out1        ,out2        ,cout      );
compressor42 compressor42_1_0  (pp0  ,pp1  ,pp2  ,pp3  , 1'b0 ,cpr_o_l1_0  ,cpr_o_l1_1  ,cout_l1_0 );
compressor42 compressor42_1_1  (pp4  ,pp5  ,pp6  ,pp7  , 1'b0 ,cpr_o_l1_2  ,cpr_o_l1_3  ,cout_l1_1 );
compressor42 compressor42_1_2  (pp8  ,pp9  ,pp10 ,pp11 , 1'b0 ,cpr_o_l1_4  ,cpr_o_l1_5  ,cout_l1_2 );
compressor42 compressor42_1_3  (pp12 ,pp13 ,pp14 ,pp15 , 1'b0 ,cpr_o_l1_6  ,cpr_o_l1_7  ,cout_l1_3 );
compressor42 compressor42_1_4  (pp16 ,pp17 ,pp18 ,pp19 , 1'b0 ,cpr_o_l1_8  ,cpr_o_l1_9  ,cout_l1_4 );
compressor42 compressor42_1_5  (pp20 ,pp21 ,pp22 ,pp23 , 1'b0 ,cpr_o_l1_10 ,cpr_o_l1_11 ,cout_l1_5 );
compressor42 compressor42_1_6  (pp24 ,pp25 ,pp26 ,pp27 , 1'b0 ,cpr_o_l1_12 ,cpr_o_l1_13 ,cout_l1_6 );
compressor42 compressor42_1_7  (pp28 ,pp29 ,pp30 ,pp31 , 1'b0 ,cpr_o_l1_14 ,cpr_o_l1_15 ,cout_l1_7 );
compressor42 compressor42_1_8  (pp32 ,pp33 ,pp34 ,pp35 , 1'b0 ,cpr_o_l1_16 ,cpr_o_l1_17 ,cout_l1_8 );
compressor42 compressor42_1_9  (pp36 ,pp37 ,pp38 ,pp39 , 1'b0 ,cpr_o_l1_18 ,cpr_o_l1_19 ,cout_l1_9 );
compressor42 compressor42_1_10 (pp40 ,pp41 ,pp42 ,pp43 , 1'b0 ,cpr_o_l1_20 ,cpr_o_l1_21 ,cout_l1_10);
compressor42 compressor42_1_11 (pp44 ,pp45 ,pp46 ,pp47 , 1'b0 ,cpr_o_l1_22 ,cpr_o_l1_23 ,cout_l1_11);
compressor42 compressor42_1_12 (pp48 ,pp49 ,pp50 ,pp51 , 1'b0 ,cpr_o_l1_24 ,cpr_o_l1_25 ,cout_l1_12);
compressor42 compressor42_1_13 (pp52 ,pp53 ,pp54 ,pp55 , 1'b0 ,cpr_o_l1_26 ,cpr_o_l1_27 ,cout_l1_13);
compressor42 compressor42_1_14 (pp56 ,pp57 ,pp58 ,pp59 , 1'b0 ,cpr_o_l1_28 ,cpr_o_l1_29 ,cout_l1_14);
compressor42 compressor42_1_15 (pp60 ,pp61 ,pp62 ,pp63 , 1'b0 ,cpr_o_l1_30 ,cpr_o_l1_31 ,cout_l1_15);


wire [length*2 : 0] cpr_o_l2_0 ;
wire [length*2 : 0] cpr_o_l2_1 ;
wire [length*2 : 0] cpr_o_l2_2 ;
wire [length*2 : 0] cpr_o_l2_3 ;
wire [length*2 : 0] cpr_o_l2_4 ;
wire [length*2 : 0] cpr_o_l2_5 ;
wire [length*2 : 0] cpr_o_l2_6 ;
wire [length*2 : 0] cpr_o_l2_7 ;
wire [length*2 : 0] cpr_o_l2_8 ;
wire [length*2 : 0] cpr_o_l2_9 ;
wire [length*2 : 0] cpr_o_l2_10;
wire [length*2 : 0] cpr_o_l2_11;
wire [length*2 : 0] cpr_o_l2_12;
wire [length*2 : 0] cpr_o_l2_13;
wire [length*2 : 0] cpr_o_l2_14;
wire [length*2 : 0] cpr_o_l2_15;

wire  cout_l2_0;
wire  cout_l2_1;
wire  cout_l2_2;
wire  cout_l2_3;
wire  cout_l2_4;
wire  cout_l2_5;
wire  cout_l2_6;
wire  cout_l2_7;

//second level of wallace tree: 42compressor
//module compressor42 (in1,in2,in3,in4,cin,out1,out2,cout);
//out1 needs to be multiplied by two (out1<<1)
//module        compressor42   (in1                          ,in2                       ,in3                          ,in4                       , cin  ,out1        ,out2        ,cout      );
compressor42 compressor42_2_0  (cpr_o_l1_0 [length*2-1:0]<<1 ,cpr_o_l1_1 [length*2-1:0] ,cpr_o_l1_2 [length*2-1:0]<<1 ,cpr_o_l1_3 [length*2-1:0] , 1'b0 ,cpr_o_l2_0  ,cpr_o_l2_1  ,cout_l2_0 );
compressor42 compressor42_2_1  (cpr_o_l1_4 [length*2-1:0]<<1 ,cpr_o_l1_5 [length*2-1:0] ,cpr_o_l1_6 [length*2-1:0]<<1 ,cpr_o_l1_7 [length*2-1:0] , 1'b0 ,cpr_o_l2_2  ,cpr_o_l2_3  ,cout_l2_1 );
compressor42 compressor42_2_2  (cpr_o_l1_8 [length*2-1:0]<<1 ,cpr_o_l1_9 [length*2-1:0] ,cpr_o_l1_10[length*2-1:0]<<1 ,cpr_o_l1_11[length*2-1:0] , 1'b0 ,cpr_o_l2_4  ,cpr_o_l2_5  ,cout_l2_2 );
compressor42 compressor42_2_3  (cpr_o_l1_12[length*2-1:0]<<1 ,cpr_o_l1_13[length*2-1:0] ,cpr_o_l1_14[length*2-1:0]<<1 ,cpr_o_l1_15[length*2-1:0] , 1'b0 ,cpr_o_l2_6  ,cpr_o_l2_7  ,cout_l2_3 );
compressor42 compressor42_2_4  (cpr_o_l1_16[length*2-1:0]<<1 ,cpr_o_l1_17[length*2-1:0] ,cpr_o_l1_18[length*2-1:0]<<1 ,cpr_o_l1_19[length*2-1:0] , 1'b0 ,cpr_o_l2_8  ,cpr_o_l2_9  ,cout_l2_4 );
compressor42 compressor42_2_5  (cpr_o_l1_20[length*2-1:0]<<1 ,cpr_o_l1_21[length*2-1:0] ,cpr_o_l1_22[length*2-1:0]<<1 ,cpr_o_l1_23[length*2-1:0] , 1'b0 ,cpr_o_l2_10 ,cpr_o_l2_11 ,cout_l2_5 );
compressor42 compressor42_2_6  (cpr_o_l1_24[length*2-1:0]<<1 ,cpr_o_l1_25[length*2-1:0] ,cpr_o_l1_26[length*2-1:0]<<1 ,cpr_o_l1_27[length*2-1:0] , 1'b0 ,cpr_o_l2_12 ,cpr_o_l2_13 ,cout_l2_6 );
compressor42 compressor42_2_7  (cpr_o_l1_28[length*2-1:0]<<1 ,cpr_o_l1_29[length*2-1:0] ,cpr_o_l1_30[length*2-1:0]<<1 ,cpr_o_l1_31[length*2-1:0] , 1'b0 ,cpr_o_l2_14 ,cpr_o_l2_15 ,cout_l2_7 );


wire [length*2 : 0] cpr_o_l3_0 ;
wire [length*2 : 0] cpr_o_l3_1 ;
wire [length*2 : 0] cpr_o_l3_2 ;
wire [length*2 : 0] cpr_o_l3_3 ;
wire [length*2 : 0] cpr_o_l3_4 ;
wire [length*2 : 0] cpr_o_l3_5 ;
wire [length*2 : 0] cpr_o_l3_6 ;
wire [length*2 : 0] cpr_o_l3_7 ;

wire  cout_l3_0;
wire  cout_l3_1;
wire  cout_l3_2;
wire  cout_l3_3;

//third level of wallace tree: 42compressor
//module compressor42 (in1,in2,in3,in4,cin,out1,out2,cout);
//out1 needs to be multiplied by two (out1<<1)
//module        compressor42   (in1                          ,in2                       ,in3                          ,in4                       , cin  ,out1        ,out2        ,cout      );
compressor42 compressor42_3_0  (cpr_o_l2_0 [length*2-1:0]<<1 ,cpr_o_l2_1 [length*2-1:0] ,cpr_o_l2_2 [length*2-1:0]<<1 ,cpr_o_l2_3 [length*2-1:0] , 1'b0 ,cpr_o_l3_0  ,cpr_o_l3_1  ,cout_l3_0 );
compressor42 compressor42_3_1  (cpr_o_l2_4 [length*2-1:0]<<1 ,cpr_o_l2_5 [length*2-1:0] ,cpr_o_l2_6 [length*2-1:0]<<1 ,cpr_o_l2_7 [length*2-1:0] , 1'b0 ,cpr_o_l3_2  ,cpr_o_l3_3  ,cout_l3_1 );
compressor42 compressor42_3_2  (cpr_o_l2_8 [length*2-1:0]<<1 ,cpr_o_l2_9 [length*2-1:0] ,cpr_o_l2_10[length*2-1:0]<<1 ,cpr_o_l2_11[length*2-1:0] , 1'b0 ,cpr_o_l3_4  ,cpr_o_l3_5  ,cout_l3_2 );
compressor42 compressor42_3_3  (cpr_o_l2_12[length*2-1:0]<<1 ,cpr_o_l2_13[length*2-1:0] ,cpr_o_l2_14[length*2-1:0]<<1 ,cpr_o_l2_15[length*2-1:0] , 1'b0 ,cpr_o_l3_6  ,cpr_o_l3_7  ,cout_l3_3 );



wire [length*2 : 0] cpr_o_l4_0 ;
wire [length*2 : 0] cpr_o_l4_1 ;
wire [length*2 : 0] cpr_o_l4_2 ;
wire [length*2 : 0] cpr_o_l4_3 ;


wire  cout_l4_0;
wire  cout_l4_1;

//fourth level of wallace tree: 42compresssor
//module compressor42 (in1,in2,in3,in4,cin,out1,out2,cout);
//out1 needs to be multiplied by two (out1<<1)
//module        compressor42   (in1                          ,in2                       ,in3                          ,in4                       , cin  ,out1        ,out2        ,cout      );
compressor42 compressor42_4_0  (cpr_o_l3_0 [length*2-1:0]<<1 ,cpr_o_l3_1 [length*2-1:0] ,cpr_o_l3_2 [length*2-1:0]<<1 ,cpr_o_l3_3 [length*2-1:0] , 1'b0 ,cpr_o_l4_0  ,cpr_o_l4_1  ,cout_l4_0 );
compressor42 compressor42_4_1  (cpr_o_l3_4 [length*2-1:0]<<1 ,cpr_o_l3_5 [length*2-1:0] ,cpr_o_l3_6 [length*2-1:0]<<1 ,cpr_o_l3_7 [length*2-1:0] , 1'b0 ,cpr_o_l4_2  ,cpr_o_l4_3  ,cout_l4_1 );

wire [length*2 : 0] cpr_o_l5_0 ;
wire [length*2 : 0] cpr_o_l5_1 ;

wire  cout_l5_0;

//fifth level of wallace tree: 42compressor
//module compressor42 (in1,in2,in3,in4,cin,out
//out1 needs to be multiplied by two (out1<<1)
//module        compressor42   (in1                          ,in2                       ,in3                          ,in4                       , cin  ,out1        ,out2        ,cout      );
compressor42 compressor42_5_0  (cpr_o_l4_0 [length*2-1:0]<<1 ,cpr_o_l4_1 [length*2-1:0] ,cpr_o_l4_2 [length*2-1:0]<<1 ,cpr_o_l4_3 [length*2-1:0] , 1'b0 ,cpr_o_l5_0  ,cpr_o_l5_1  ,cout_l5_0 );

wire cout;
//carry lookahead adder
//module cla (op1,op2,sum,cout);
cla cla_0 (cpr_o_l5_0[length*2-1:0]<<1 ,cpr_o_l5_1[length*2-1:0] ,mul_o ,cout);



endmodule