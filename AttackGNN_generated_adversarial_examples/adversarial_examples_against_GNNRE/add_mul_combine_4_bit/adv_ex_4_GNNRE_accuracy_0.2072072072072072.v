module add_mul_combine_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        Result_mul_0_, Result_mul_1_, Result_mul_2_, Result_mul_3_, 
        Result_mul_4_, Result_mul_5_, Result_mul_6_, Result_mul_7_, 
        Result_add_0_, Result_add_1_, Result_add_2_, Result_add_3_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_;
  output Result_mul_0_, Result_mul_1_, Result_mul_2_, Result_mul_3_,
         Result_mul_4_, Result_mul_5_, Result_mul_6_, Result_mul_7_,
         Result_add_0_, Result_add_1_, Result_add_2_, Result_add_3_;
  wire   n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189;

  XOR2_X1 U102 ( .A(n91), .B(n92), .Z(Result_mul_6_) );
  NAND2_X1 U103 ( .A1(a_2_), .A2(b_3_), .ZN(n92) );
  NAND2_X1 U104 ( .A1(b_2_), .A2(a_3_), .ZN(n91) );
  XNOR2_X1 U105 ( .A(n93), .B(n94), .ZN(Result_mul_5_) );
  XOR2_X1 U106 ( .A(n95), .B(n96), .Z(n94) );
  XOR2_X1 U107 ( .A(n97), .B(n98), .Z(Result_mul_4_) );
  XNOR2_X1 U108 ( .A(n99), .B(n100), .ZN(n98) );
  XOR2_X1 U109 ( .A(n101), .B(n102), .Z(Result_mul_3_) );
  XOR2_X1 U110 ( .A(n103), .B(n104), .Z(Result_mul_2_) );
  XOR2_X1 U111 ( .A(n105), .B(n106), .Z(Result_mul_1_) );
  NAND3_X1 U112 ( .A1(n107), .A2(n108), .A3(n109), .ZN(Result_mul_0_) );
  INV_X1 U113 ( .A(n110), .ZN(n109) );
  NOR2_X1 U114 ( .A1(n106), .A2(n105), .ZN(n110) );
  NAND2_X1 U115 ( .A1(n108), .A2(n111), .ZN(n105) );
  NAND2_X1 U116 ( .A1(n112), .A2(n113), .ZN(n111) );
  NAND2_X1 U117 ( .A1(n114), .A2(n115), .ZN(n113) );
  NAND2_X1 U118 ( .A1(n103), .A2(n104), .ZN(n106) );
  XOR2_X1 U119 ( .A(n115), .B(n114), .Z(n104) );
  NOR2_X1 U120 ( .A1(n101), .A2(n102), .ZN(n103) );
  XOR2_X1 U121 ( .A(n116), .B(n117), .Z(n102) );
  XOR2_X1 U122 ( .A(n118), .B(n119), .Z(n117) );
  NAND2_X1 U123 ( .A1(a_0_), .A2(b_2_), .ZN(n119) );
  NAND2_X1 U124 ( .A1(n120), .A2(n121), .ZN(n101) );
  NAND2_X1 U125 ( .A1(n97), .A2(n122), .ZN(n121) );
  NAND2_X1 U126 ( .A1(n100), .A2(n99), .ZN(n122) );
  XOR2_X1 U127 ( .A(n123), .B(n124), .Z(n97) );
  NAND2_X1 U128 ( .A1(n125), .A2(n126), .ZN(n123) );
  INV_X1 U129 ( .A(n127), .ZN(n120) );
  NOR2_X1 U130 ( .A1(n99), .A2(n100), .ZN(n127) );
  NOR2_X1 U131 ( .A1(n128), .A2(n129), .ZN(n100) );
  NAND2_X1 U132 ( .A1(n130), .A2(n131), .ZN(n99) );
  NAND2_X1 U133 ( .A1(n95), .A2(n132), .ZN(n131) );
  NAND2_X1 U134 ( .A1(n93), .A2(n133), .ZN(n132) );
  NOR2_X1 U135 ( .A1(n134), .A2(n129), .ZN(n95) );
  INV_X1 U136 ( .A(b_3_), .ZN(n129) );
  INV_X1 U137 ( .A(n135), .ZN(n130) );
  NOR2_X1 U138 ( .A1(n133), .A2(n93), .ZN(n135) );
  XNOR2_X1 U139 ( .A(n136), .B(n137), .ZN(n93) );
  NAND3_X1 U140 ( .A1(n114), .A2(n115), .A3(n138), .ZN(n108) );
  INV_X1 U141 ( .A(n112), .ZN(n138) );
  NAND2_X1 U142 ( .A1(n139), .A2(n140), .ZN(n112) );
  INV_X1 U143 ( .A(n141), .ZN(n140) );
  NOR2_X1 U144 ( .A1(n142), .A2(n128), .ZN(n141) );
  NAND2_X1 U145 ( .A1(n143), .A2(n142), .ZN(n139) );
  NAND3_X1 U146 ( .A1(b_0_), .A2(n144), .A3(a_0_), .ZN(n143) );
  NAND2_X1 U147 ( .A1(n145), .A2(n146), .ZN(n115) );
  INV_X1 U148 ( .A(n147), .ZN(n146) );
  NOR3_X1 U149 ( .A1(n148), .A2(n149), .A3(n128), .ZN(n147) );
  NOR2_X1 U150 ( .A1(n116), .A2(n118), .ZN(n149) );
  NAND2_X1 U151 ( .A1(n116), .A2(n118), .ZN(n145) );
  NAND2_X1 U152 ( .A1(n125), .A2(n150), .ZN(n118) );
  NAND2_X1 U153 ( .A1(n124), .A2(n126), .ZN(n150) );
  NAND2_X1 U154 ( .A1(n151), .A2(n152), .ZN(n126) );
  NAND2_X1 U155 ( .A1(a_1_), .A2(b_2_), .ZN(n152) );
  INV_X1 U156 ( .A(n153), .ZN(n151) );
  INV_X1 U157 ( .A(n154), .ZN(n124) );
  NAND2_X1 U158 ( .A1(n155), .A2(n156), .ZN(n154) );
  NAND2_X1 U159 ( .A1(n157), .A2(n158), .ZN(n156) );
  NAND2_X1 U160 ( .A1(n153), .A2(a_1_), .ZN(n125) );
  NOR2_X1 U161 ( .A1(n137), .A2(n136), .ZN(n153) );
  NAND2_X1 U162 ( .A1(b_1_), .A2(a_3_), .ZN(n137) );
  XOR2_X1 U163 ( .A(n144), .B(n159), .Z(n116) );
  NAND2_X1 U164 ( .A1(n155), .A2(n160), .ZN(n159) );
  XNOR2_X1 U165 ( .A(n161), .B(n162), .ZN(n114) );
  XNOR2_X1 U166 ( .A(n163), .B(n164), .ZN(n161) );
  NAND2_X1 U167 ( .A1(a_0_), .A2(n165), .ZN(n107) );
  NAND2_X1 U168 ( .A1(n142), .A2(n166), .ZN(n165) );
  NAND2_X1 U169 ( .A1(n167), .A2(b_0_), .ZN(n166) );
  NAND2_X1 U170 ( .A1(n164), .A2(n168), .ZN(n142) );
  NAND2_X1 U171 ( .A1(n162), .A2(n163), .ZN(n168) );
  NAND2_X1 U172 ( .A1(a_0_), .A2(b_1_), .ZN(n163) );
  NAND2_X1 U173 ( .A1(b_0_), .A2(a_1_), .ZN(n162) );
  NAND2_X1 U174 ( .A1(n155), .A2(n169), .ZN(n164) );
  NAND2_X1 U175 ( .A1(n167), .A2(n160), .ZN(n169) );
  NOR2_X1 U176 ( .A1(n170), .A2(n171), .ZN(n160) );
  INV_X1 U177 ( .A(b_0_), .ZN(n170) );
  INV_X1 U178 ( .A(n172), .ZN(n155) );
  NOR2_X1 U179 ( .A1(n158), .A2(n157), .ZN(n172) );
  NAND2_X1 U180 ( .A1(b_1_), .A2(a_2_), .ZN(n157) );
  NAND2_X1 U181 ( .A1(b_0_), .A2(a_3_), .ZN(n158) );
  XOR2_X1 U182 ( .A(b_3_), .B(a_3_), .Z(Result_add_3_) );
  NAND3_X1 U183 ( .A1(n173), .A2(n174), .A3(n133), .ZN(Result_add_2_) );
  INV_X1 U184 ( .A(n96), .ZN(n133) );
  NOR2_X1 U185 ( .A1(n175), .A2(n136), .ZN(n96) );
  NAND2_X1 U186 ( .A1(n176), .A2(n148), .ZN(n174) );
  XOR2_X1 U187 ( .A(n171), .B(n175), .Z(n176) );
  NAND3_X1 U188 ( .A1(n175), .A2(n171), .A3(b_2_), .ZN(n173) );
  NAND3_X1 U189 ( .A1(n177), .A2(n178), .A3(n179), .ZN(Result_add_1_) );
  NAND2_X1 U190 ( .A1(n167), .A2(n180), .ZN(n179) );
  INV_X1 U191 ( .A(n144), .ZN(n167) );
  NAND3_X1 U192 ( .A1(n181), .A2(n134), .A3(b_1_), .ZN(n178) );
  NAND2_X1 U193 ( .A1(n182), .A2(n183), .ZN(n177) );
  XOR2_X1 U194 ( .A(n134), .B(n181), .Z(n182) );
  XOR2_X1 U195 ( .A(n184), .B(n185), .Z(Result_add_0_) );
  XOR2_X1 U196 ( .A(b_0_), .B(n128), .Z(n185) );
  INV_X1 U197 ( .A(a_0_), .ZN(n128) );
  NAND2_X1 U198 ( .A1(n186), .A2(n187), .ZN(n184) );
  NAND2_X1 U199 ( .A1(n181), .A2(n144), .ZN(n187) );
  NAND2_X1 U200 ( .A1(a_1_), .A2(b_1_), .ZN(n144) );
  INV_X1 U201 ( .A(n180), .ZN(n181) );
  NAND2_X1 U202 ( .A1(n188), .A2(n136), .ZN(n180) );
  NAND2_X1 U203 ( .A1(a_2_), .A2(b_2_), .ZN(n136) );
  NAND2_X1 U204 ( .A1(Result_mul_7_), .A2(n189), .ZN(n188) );
  NAND2_X1 U205 ( .A1(n171), .A2(n148), .ZN(n189) );
  INV_X1 U206 ( .A(b_2_), .ZN(n148) );
  INV_X1 U207 ( .A(a_2_), .ZN(n171) );
  INV_X1 U208 ( .A(n175), .ZN(Result_mul_7_) );
  NAND2_X1 U209 ( .A1(b_3_), .A2(a_3_), .ZN(n175) );
  NAND2_X1 U210 ( .A1(n134), .A2(n183), .ZN(n186) );
  INV_X1 U211 ( .A(b_1_), .ZN(n183) );
  INV_X1 U212 ( .A(a_1_), .ZN(n134) );
endmodule

