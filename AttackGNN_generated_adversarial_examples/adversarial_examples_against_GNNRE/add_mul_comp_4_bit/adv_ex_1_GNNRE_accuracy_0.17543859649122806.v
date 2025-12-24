module add_mul_comp_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_, 
        Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213;

  NAND2_X1 U116 ( .A1(n108), .A2(n109), .ZN(Result_7_) );
  NAND2_X1 U117 ( .A1(b_3_), .A2(n110), .ZN(n109) );
  XOR2_X1 U118 ( .A(n111), .B(n112), .Z(n110) );
  NAND2_X1 U119 ( .A1(n113), .A2(n114), .ZN(n108) );
  NAND2_X1 U120 ( .A1(n115), .A2(n116), .ZN(Result_6_) );
  NAND2_X1 U121 ( .A1(n117), .A2(n112), .ZN(n116) );
  XOR2_X1 U122 ( .A(n118), .B(n119), .Z(n117) );
  NAND2_X1 U123 ( .A1(n120), .A2(n113), .ZN(n115) );
  XNOR2_X1 U124 ( .A(n121), .B(n122), .ZN(n120) );
  XNOR2_X1 U125 ( .A(b_2_), .B(n123), .ZN(n122) );
  NAND2_X1 U126 ( .A1(a_3_), .A2(b_3_), .ZN(n121) );
  NAND2_X1 U127 ( .A1(n124), .A2(n125), .ZN(Result_5_) );
  NAND2_X1 U128 ( .A1(n113), .A2(n126), .ZN(n125) );
  NAND3_X1 U129 ( .A1(n127), .A2(n128), .A3(n129), .ZN(n126) );
  NAND2_X1 U130 ( .A1(n130), .A2(n131), .ZN(n129) );
  NAND3_X1 U131 ( .A1(n132), .A2(n133), .A3(b_1_), .ZN(n128) );
  NAND2_X1 U132 ( .A1(n134), .A2(n135), .ZN(n127) );
  XOR2_X1 U133 ( .A(n132), .B(n133), .Z(n134) );
  INV_X1 U134 ( .A(n131), .ZN(n132) );
  NAND2_X1 U135 ( .A1(n136), .A2(n112), .ZN(n124) );
  XOR2_X1 U136 ( .A(n137), .B(n138), .Z(n136) );
  XNOR2_X1 U137 ( .A(n139), .B(n140), .ZN(n138) );
  NAND2_X1 U138 ( .A1(n141), .A2(n142), .ZN(Result_4_) );
  NAND2_X1 U139 ( .A1(n143), .A2(n112), .ZN(n142) );
  XOR2_X1 U140 ( .A(n144), .B(n145), .Z(n143) );
  XOR2_X1 U141 ( .A(n146), .B(n147), .Z(n145) );
  NAND2_X1 U142 ( .A1(b_3_), .A2(a_0_), .ZN(n147) );
  NAND2_X1 U143 ( .A1(n148), .A2(n113), .ZN(n141) );
  XNOR2_X1 U144 ( .A(n149), .B(n150), .ZN(n148) );
  NOR2_X1 U145 ( .A1(n151), .A2(n152), .ZN(n150) );
  NOR2_X1 U146 ( .A1(b_1_), .A2(a_1_), .ZN(n152) );
  NOR2_X1 U147 ( .A1(n130), .A2(n131), .ZN(n151) );
  NAND3_X1 U148 ( .A1(n153), .A2(n154), .A3(n155), .ZN(n131) );
  NAND2_X1 U149 ( .A1(n118), .A2(a_3_), .ZN(n155) );
  NAND2_X1 U150 ( .A1(n119), .A2(b_3_), .ZN(n153) );
  NOR2_X1 U151 ( .A1(n113), .A2(n156), .ZN(Result_3_) );
  XNOR2_X1 U152 ( .A(n157), .B(n158), .ZN(n156) );
  NOR2_X1 U153 ( .A1(n113), .A2(n159), .ZN(Result_2_) );
  XOR2_X1 U154 ( .A(n160), .B(n161), .Z(n159) );
  NOR2_X1 U155 ( .A1(n113), .A2(n162), .ZN(Result_1_) );
  XNOR2_X1 U156 ( .A(n163), .B(n164), .ZN(n162) );
  NOR2_X1 U157 ( .A1(n113), .A2(n165), .ZN(Result_0_) );
  NOR3_X1 U158 ( .A1(n166), .A2(n167), .A3(n168), .ZN(n165) );
  NOR3_X1 U159 ( .A1(n169), .A2(n170), .A3(n171), .ZN(n168) );
  NOR2_X1 U160 ( .A1(n164), .A2(n163), .ZN(n166) );
  NAND2_X1 U161 ( .A1(n172), .A2(n161), .ZN(n163) );
  XOR2_X1 U162 ( .A(n171), .B(n170), .Z(n161) );
  INV_X1 U163 ( .A(n160), .ZN(n172) );
  NAND2_X1 U164 ( .A1(n158), .A2(n157), .ZN(n160) );
  NAND2_X1 U165 ( .A1(n146), .A2(n173), .ZN(n157) );
  NAND3_X1 U166 ( .A1(a_0_), .A2(n144), .A3(b_3_), .ZN(n173) );
  XNOR2_X1 U167 ( .A(n174), .B(n175), .ZN(n144) );
  XNOR2_X1 U168 ( .A(n176), .B(n177), .ZN(n174) );
  NAND2_X1 U169 ( .A1(b_2_), .A2(a_1_), .ZN(n176) );
  NAND2_X1 U170 ( .A1(n178), .A2(n179), .ZN(n146) );
  NAND2_X1 U171 ( .A1(n180), .A2(n139), .ZN(n179) );
  NAND2_X1 U172 ( .A1(b_3_), .A2(a_1_), .ZN(n139) );
  NAND2_X1 U173 ( .A1(n140), .A2(n137), .ZN(n180) );
  INV_X1 U174 ( .A(n181), .ZN(n137) );
  INV_X1 U175 ( .A(n182), .ZN(n140) );
  NAND2_X1 U176 ( .A1(n181), .A2(n182), .ZN(n178) );
  NAND2_X1 U177 ( .A1(n119), .A2(n118), .ZN(n182) );
  INV_X1 U178 ( .A(n183), .ZN(n118) );
  NAND2_X1 U179 ( .A1(b_3_), .A2(a_2_), .ZN(n183) );
  XOR2_X1 U180 ( .A(n154), .B(n184), .Z(n181) );
  NOR2_X1 U181 ( .A1(n111), .A2(n135), .ZN(n184) );
  NAND2_X1 U182 ( .A1(b_2_), .A2(a_2_), .ZN(n154) );
  XNOR2_X1 U183 ( .A(n185), .B(n186), .ZN(n158) );
  XOR2_X1 U184 ( .A(n187), .B(n188), .Z(n186) );
  NAND2_X1 U185 ( .A1(a_0_), .A2(b_2_), .ZN(n185) );
  XNOR2_X1 U186 ( .A(n189), .B(n190), .ZN(n164) );
  NOR2_X1 U187 ( .A1(n170), .A2(n171), .ZN(n190) );
  XOR2_X1 U188 ( .A(n191), .B(n192), .Z(n171) );
  NOR2_X1 U189 ( .A1(n193), .A2(n194), .ZN(n192) );
  NOR2_X1 U190 ( .A1(n188), .A2(n195), .ZN(n170) );
  INV_X1 U191 ( .A(n196), .ZN(n195) );
  NAND2_X1 U192 ( .A1(b_2_), .A2(n187), .ZN(n196) );
  NAND2_X1 U193 ( .A1(n197), .A2(n198), .ZN(n187) );
  NAND2_X1 U194 ( .A1(n199), .A2(n200), .ZN(n198) );
  XNOR2_X1 U195 ( .A(n130), .B(n193), .ZN(n197) );
  NOR2_X1 U196 ( .A1(n123), .A2(n169), .ZN(n193) );
  NOR2_X1 U197 ( .A1(n135), .A2(n133), .ZN(n130) );
  NAND2_X1 U198 ( .A1(n177), .A2(n201), .ZN(n188) );
  NAND3_X1 U199 ( .A1(a_1_), .A2(n175), .A3(b_2_), .ZN(n201) );
  XOR2_X1 U200 ( .A(n199), .B(n200), .Z(n175) );
  NOR2_X1 U201 ( .A1(n111), .A2(n169), .ZN(n200) );
  NAND2_X1 U202 ( .A1(n199), .A2(n119), .ZN(n177) );
  INV_X1 U203 ( .A(n202), .ZN(n119) );
  NAND2_X1 U204 ( .A1(b_2_), .A2(a_3_), .ZN(n202) );
  NOR2_X1 U205 ( .A1(n135), .A2(n123), .ZN(n199) );
  NOR2_X1 U206 ( .A1(n169), .A2(n167), .ZN(n189) );
  NOR2_X1 U207 ( .A1(n191), .A2(n194), .ZN(n167) );
  NAND2_X1 U208 ( .A1(a_0_), .A2(b_1_), .ZN(n194) );
  NAND2_X1 U209 ( .A1(a_1_), .A2(b_0_), .ZN(n191) );
  INV_X1 U210 ( .A(n112), .ZN(n113) );
  NAND2_X1 U211 ( .A1(n203), .A2(n204), .ZN(n112) );
  NAND2_X1 U212 ( .A1(n205), .A2(n149), .ZN(n204) );
  INV_X1 U213 ( .A(n206), .ZN(n149) );
  NOR2_X1 U214 ( .A1(n169), .A2(a_0_), .ZN(n206) );
  NAND2_X1 U215 ( .A1(n207), .A2(n208), .ZN(n205) );
  NAND2_X1 U216 ( .A1(a_1_), .A2(n135), .ZN(n208) );
  INV_X1 U217 ( .A(b_1_), .ZN(n135) );
  NAND3_X1 U218 ( .A1(n209), .A2(n210), .A3(n211), .ZN(n207) );
  NAND2_X1 U219 ( .A1(b_1_), .A2(n133), .ZN(n211) );
  INV_X1 U220 ( .A(a_1_), .ZN(n133) );
  NAND2_X1 U221 ( .A1(b_2_), .A2(n212), .ZN(n210) );
  NAND2_X1 U222 ( .A1(a_2_), .A2(n114), .ZN(n212) );
  NAND2_X1 U223 ( .A1(n213), .A2(n123), .ZN(n209) );
  INV_X1 U224 ( .A(a_2_), .ZN(n123) );
  INV_X1 U225 ( .A(n114), .ZN(n213) );
  NOR2_X1 U226 ( .A1(n111), .A2(b_3_), .ZN(n114) );
  INV_X1 U227 ( .A(a_3_), .ZN(n111) );
  NAND2_X1 U228 ( .A1(a_0_), .A2(n169), .ZN(n203) );
  INV_X1 U229 ( .A(b_0_), .ZN(n169) );
endmodule

