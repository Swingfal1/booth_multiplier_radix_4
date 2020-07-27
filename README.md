
有符号二进制数128位4-2压缩器结构booth乘法器
====
因为在这学期低功耗课程中老师布置的期末作业是做一个128乘法器，但想省事儿只选择了论文调研。觉得挺可惜的，就趁着暑期时间完成这个任务。

简介
-----
本乘法器采用基4booth编码，输入为两个128位有符号数，输出为256位有符号数。
基4的booth编码将两个128位有符号数计算成64个部分积。
64个部分积经过一层4-2压缩器得到32个部分积……在经过几层4-2压缩器，最终得到两个部分积，
两个部分积进过一个超前进位加法器（cla）得到最终结果。
结构框图如下：
![Image text](https://raw.githubusercontent.com/Swingfal1/img/master/img_booth_multiplier_radix_4/%E5%9B%BE%E7%89%871.png)
 
 
基4Booth编码器
-----
对于被乘数b_i进行编码，Booth 基-4 编码是根据相邻 3 位为一组，前后相邻分组重叠一比特位，
从低位到高位逐次进行，在乘数的最右边另增加一位辅助位 0，作为分组的最低位。
Booth 4-基编码的优点是可以减少 Booth  2-基产生部分积的一半，Booth  基-4 除了具有高速特性还具有低功耗的特点。
![Image text](https://raw.githubusercontent.com/Swingfal1/img/master/img_booth_multiplier_radix_4/1.png)
对应case：
```v
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
```


4-2压缩器
-----
![Image text](https://raw.githubusercontent.com/Swingfal1/img/master/img_booth_multiplier_radix_4/2.png)
4-2 压缩器的原理图所示，
把 4 个相同权值的二进制数两个权值高一级的二进制数和,
它有 5 个输入端口：包括 4 个待压缩数据 a1、a2、a3、a4 和一个初始进位或低权值 4-2 压缩传递的进位值 Ci；3 个输出端口：包括一比特位溢出进位值 Co，进位数据 C，伪和 S。
下面代码得到的结果out1的权值高一位，下一层部分积计算时需要将out1的结果左移一位（out1<<1）；
功能代码：
```v
assign w1 = in1 ^ in2 ^ in3 ^ in4;
assign w2 = (in1 & in2) | (in3 & in4);
assign w3 = (in1 | in2) & (in3 | in4);

assign out2 = { w1[length*2-1] , w1} ^ {w3 , cin};
assign cout = w3[length*2-1];
assign out1 = ({ w1[length*2-1] , w1} & {w3 , cin}) | (( ~{w1[length*2-1] , w1}) & { w2[length*2-1] , w2});
```

超前进位加法器
-----
因为大数位的超前进位加法器线路复杂设计麻烦，这里的256位的超前进位加法器采用64个4位超前进位加法器级联构成
4位超前进位代码：
```v
//carry generator
assign c[0] = cin;
assign c[1] = g[0] + ( c[0] & p[0] );
assign c[2] = g[1] + ( (g[0] + ( c[0] & p[0]) ) & p[1] );
assign c[3] = g[2] + ( (g[1] + ( (g[0] + (c[0] & p[0]) ) & p[1])) & p[2] );
assign c[4] = g[3] + ( (g[2] + ( (g[1] + ( (g[0] + (c[0] & p[0]) ) & p[1])) & p[2] )) & p[3]);
assign cout = c[width];
```
仿真结果：
------
![Image text](https://raw.githubusercontent.com/Swingfal1/img/master/img_booth_multiplier_radix_4/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20200727152209.png)
![Image text](https://raw.githubusercontent.com/Swingfal1/img/master/img_booth_multiplier_radix_4/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20200727152335.png)
![Image text](https://raw.githubusercontent.com/Swingfal1/img/master/img_booth_multiplier_radix_4/%E5%BE%AE%E4%BF%A1%E6%88%AA%E5%9B%BE_20200727152359.png)
![Image text](https://raw.githubusercontent.com/Swingfal1/img/master/img_booth_multiplier_radix_4/%E4%B9%98%E6%B3%95%E5%99%A8%E4%BB%BF%E7%9C%9F.png)

总结：
------
本文设计的128乘法器是全组合电路的结构，电路复杂会产生比较大的路径延迟，因此老师建议采用pipeline结构。
而且本电路仅支持有符号数的乘法，因此最高位为符号位
