module add_mul_combine_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        Result_mul_0_, Result_mul_1_, Result_mul_2_, Result_mul_3_, 
        Result_mul_4_, Result_mul_5_, Result_mul_6_, Result_mul_7_, 
        Result_add_0_, Result_add_1_, Result_add_2_, Result_add_3_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_;
  output Result_mul_0_, Result_mul_1_, Result_mul_2_, Result_mul_3_,
         Result_mul_4_, Result_mul_5_, Result_mul_6_, Result_mul_7_,
         Result_add_0_, Result_add_1_, Result_add_2_, Result_add_3_;
  wire   n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199;

  XOR2_X1 U105 ( .A(n94), .B(n95), .Z(Result_mul_6_) );
  NAND2_X1 U106 ( .A1(a_2_), .A2(b_3_), .ZN(n95) );
  NAND2_X1 U107 ( .A1(b_2_), .A2(a_3_), .ZN(n94) );
  XNOR2_X1 U108 ( .A(n96), .B(n97), .ZN(Result_mul_5_) );
  XOR2_X1 U109 ( .A(n98), .B(n99), .Z(n97) );
  XOR2_X1 U110 ( .A(n100), .B(n101), .Z(Result_mul_4_) );
  XNOR2_X1 U111 ( .A(n102), .B(n103), .ZN(n101) );
  XOR2_X1 U112 ( .A(n104), .B(n105), .Z(Result_mul_3_) );
  XOR2_X1 U113 ( .A(n106), .B(n107), .Z(Result_mul_2_) );
  XOR2_X1 U114 ( .A(n108), .B(n109), .Z(Result_mul_1_) );
  NAND2_X1 U115 ( .A1(n110), .A2(n111), .ZN(Result_mul_0_) );
  NAND2_X1 U116 ( .A1(a_0_), .A2(n112), .ZN(n111) );
  NOR2_X1 U117 ( .A1(n113), .A2(n114), .ZN(n110) );
  NOR2_X1 U118 ( .A1(n108), .A2(n109), .ZN(n114) );
  NAND2_X1 U119 ( .A1(n106), .A2(n107), .ZN(n109) );
  XNOR2_X1 U120 ( .A(n115), .B(n116), .ZN(n107) );
  NOR2_X1 U121 ( .A1(n104), .A2(n105), .ZN(n106) );
  XOR2_X1 U122 ( .A(n117), .B(n118), .Z(n105) );
  XOR2_X1 U123 ( .A(n119), .B(n120), .Z(n118) );
  NAND2_X1 U124 ( .A1(a_0_), .A2(b_2_), .ZN(n120) );
  NAND2_X1 U125 ( .A1(n121), .A2(n122), .ZN(n104) );
  NAND2_X1 U126 ( .A1(n100), .A2(n123), .ZN(n122) );
  NAND2_X1 U127 ( .A1(n103), .A2(n102), .ZN(n123) );
  XOR2_X1 U128 ( .A(n124), .B(n125), .Z(n100) );
  NAND2_X1 U129 ( .A1(n126), .A2(n127), .ZN(n124) );
  INV_X1 U130 ( .A(n128), .ZN(n121) );
  NOR2_X1 U131 ( .A1(n102), .A2(n103), .ZN(n128) );
  NOR2_X1 U132 ( .A1(n129), .A2(n130), .ZN(n103) );
  NAND2_X1 U133 ( .A1(n131), .A2(n132), .ZN(n102) );
  NAND2_X1 U134 ( .A1(n98), .A2(n133), .ZN(n132) );
  NAND2_X1 U135 ( .A1(n96), .A2(n134), .ZN(n133) );
  NOR2_X1 U136 ( .A1(n135), .A2(n130), .ZN(n98) );
  INV_X1 U137 ( .A(b_3_), .ZN(n130) );
  INV_X1 U138 ( .A(n136), .ZN(n131) );
  NOR2_X1 U139 ( .A1(n134), .A2(n96), .ZN(n136) );
  XNOR2_X1 U140 ( .A(n137), .B(n138), .ZN(n96) );
  NAND2_X1 U141 ( .A1(n139), .A2(n140), .ZN(n108) );
  NAND2_X1 U142 ( .A1(n141), .A2(n142), .ZN(n139) );
  NAND2_X1 U143 ( .A1(n116), .A2(n143), .ZN(n142) );
  INV_X1 U144 ( .A(n140), .ZN(n113) );
  NAND2_X1 U145 ( .A1(n144), .A2(n116), .ZN(n140) );
  XOR2_X1 U146 ( .A(n145), .B(n146), .Z(n116) );
  NOR2_X1 U147 ( .A1(n147), .A2(n129), .ZN(n146) );
  XOR2_X1 U148 ( .A(n148), .B(n149), .Z(n145) );
  NOR2_X1 U149 ( .A1(n115), .A2(n141), .ZN(n144) );
  INV_X1 U150 ( .A(n150), .ZN(n141) );
  NAND2_X1 U151 ( .A1(n151), .A2(n152), .ZN(n150) );
  NAND2_X1 U152 ( .A1(n112), .A2(n129), .ZN(n152) );
  INV_X1 U153 ( .A(a_0_), .ZN(n129) );
  NAND2_X1 U154 ( .A1(n153), .A2(a_0_), .ZN(n151) );
  NOR2_X1 U155 ( .A1(n154), .A2(n112), .ZN(n153) );
  NAND2_X1 U156 ( .A1(n155), .A2(n156), .ZN(n112) );
  NAND2_X1 U157 ( .A1(n157), .A2(a_0_), .ZN(n156) );
  NOR2_X1 U158 ( .A1(n158), .A2(n147), .ZN(n157) );
  NOR2_X1 U159 ( .A1(n148), .A2(n149), .ZN(n158) );
  NAND2_X1 U160 ( .A1(n148), .A2(n149), .ZN(n155) );
  NAND2_X1 U161 ( .A1(n159), .A2(n160), .ZN(n149) );
  NAND2_X1 U162 ( .A1(n161), .A2(n162), .ZN(n160) );
  NOR2_X1 U163 ( .A1(n154), .A2(n135), .ZN(n148) );
  INV_X1 U164 ( .A(n143), .ZN(n115) );
  NAND2_X1 U165 ( .A1(n163), .A2(n164), .ZN(n143) );
  NAND2_X1 U166 ( .A1(n165), .A2(a_0_), .ZN(n164) );
  NOR2_X1 U167 ( .A1(n166), .A2(n167), .ZN(n165) );
  NOR2_X1 U168 ( .A1(n119), .A2(n117), .ZN(n166) );
  NAND2_X1 U169 ( .A1(n117), .A2(n119), .ZN(n163) );
  NAND2_X1 U170 ( .A1(n126), .A2(n168), .ZN(n119) );
  NAND2_X1 U171 ( .A1(n125), .A2(n127), .ZN(n168) );
  NAND2_X1 U172 ( .A1(n169), .A2(n170), .ZN(n127) );
  NAND2_X1 U173 ( .A1(a_1_), .A2(b_2_), .ZN(n170) );
  INV_X1 U174 ( .A(n171), .ZN(n169) );
  INV_X1 U175 ( .A(n172), .ZN(n125) );
  NAND2_X1 U176 ( .A1(n159), .A2(n173), .ZN(n172) );
  NAND2_X1 U177 ( .A1(n174), .A2(n175), .ZN(n173) );
  NAND2_X1 U178 ( .A1(n171), .A2(a_1_), .ZN(n126) );
  NOR2_X1 U179 ( .A1(n138), .A2(n137), .ZN(n171) );
  NAND2_X1 U180 ( .A1(b_1_), .A2(a_3_), .ZN(n138) );
  XOR2_X1 U181 ( .A(n176), .B(n177), .Z(n117) );
  NAND2_X1 U182 ( .A1(n159), .A2(n162), .ZN(n177) );
  NOR2_X1 U183 ( .A1(n154), .A2(n178), .ZN(n162) );
  INV_X1 U184 ( .A(n179), .ZN(n159) );
  NOR2_X1 U185 ( .A1(n175), .A2(n174), .ZN(n179) );
  NAND2_X1 U186 ( .A1(b_1_), .A2(a_2_), .ZN(n174) );
  NAND2_X1 U187 ( .A1(b_0_), .A2(a_3_), .ZN(n175) );
  XOR2_X1 U188 ( .A(b_3_), .B(a_3_), .Z(Result_add_3_) );
  NAND2_X1 U189 ( .A1(n180), .A2(n134), .ZN(Result_add_2_) );
  INV_X1 U190 ( .A(n99), .ZN(n134) );
  NOR2_X1 U191 ( .A1(n181), .A2(n137), .ZN(n99) );
  NOR2_X1 U192 ( .A1(n182), .A2(n183), .ZN(n180) );
  NOR2_X1 U193 ( .A1(n167), .A2(n184), .ZN(n183) );
  NAND2_X1 U194 ( .A1(n181), .A2(n178), .ZN(n184) );
  NOR2_X1 U195 ( .A1(b_2_), .A2(n185), .ZN(n182) );
  XOR2_X1 U196 ( .A(n181), .B(a_2_), .Z(n185) );
  NAND2_X1 U197 ( .A1(n186), .A2(n187), .ZN(Result_add_1_) );
  NAND2_X1 U198 ( .A1(n161), .A2(n188), .ZN(n187) );
  INV_X1 U199 ( .A(n176), .ZN(n161) );
  NOR2_X1 U200 ( .A1(n189), .A2(n190), .ZN(n186) );
  NOR2_X1 U201 ( .A1(b_1_), .A2(n191), .ZN(n190) );
  XOR2_X1 U202 ( .A(a_1_), .B(n192), .Z(n191) );
  NOR2_X1 U203 ( .A1(n147), .A2(n193), .ZN(n189) );
  NAND2_X1 U204 ( .A1(n192), .A2(n135), .ZN(n193) );
  XOR2_X1 U205 ( .A(n194), .B(n195), .Z(Result_add_0_) );
  XOR2_X1 U206 ( .A(n154), .B(a_0_), .Z(n195) );
  INV_X1 U207 ( .A(b_0_), .ZN(n154) );
  NAND2_X1 U208 ( .A1(n196), .A2(n197), .ZN(n194) );
  NAND2_X1 U209 ( .A1(n192), .A2(n176), .ZN(n197) );
  NAND2_X1 U210 ( .A1(a_1_), .A2(b_1_), .ZN(n176) );
  INV_X1 U211 ( .A(n188), .ZN(n192) );
  NAND2_X1 U212 ( .A1(n198), .A2(n137), .ZN(n188) );
  NAND2_X1 U213 ( .A1(a_2_), .A2(b_2_), .ZN(n137) );
  NAND2_X1 U214 ( .A1(Result_mul_7_), .A2(n199), .ZN(n198) );
  NAND2_X1 U215 ( .A1(n178), .A2(n167), .ZN(n199) );
  INV_X1 U216 ( .A(b_2_), .ZN(n167) );
  INV_X1 U217 ( .A(a_2_), .ZN(n178) );
  INV_X1 U218 ( .A(n181), .ZN(Result_mul_7_) );
  NAND2_X1 U219 ( .A1(b_3_), .A2(a_3_), .ZN(n181) );
  NAND2_X1 U220 ( .A1(n135), .A2(n147), .ZN(n196) );
  INV_X1 U221 ( .A(b_1_), .ZN(n147) );
  INV_X1 U222 ( .A(a_1_), .ZN(n135) );
endmodule

