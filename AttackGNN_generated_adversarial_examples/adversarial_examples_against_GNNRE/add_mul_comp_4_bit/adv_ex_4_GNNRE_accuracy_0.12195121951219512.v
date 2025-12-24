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
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222;

  NAND2_X1 U116 ( .A1(n108), .A2(n109), .ZN(Result_7_) );
  NAND2_X1 U117 ( .A1(b_3_), .A2(n110), .ZN(n109) );
  XNOR2_X1 U118 ( .A(a_3_), .B(n111), .ZN(n110) );
  NAND2_X1 U119 ( .A1(n112), .A2(n113), .ZN(n108) );
  NAND2_X1 U120 ( .A1(n114), .A2(n115), .ZN(Result_6_) );
  NAND2_X1 U121 ( .A1(n116), .A2(n111), .ZN(n115) );
  XOR2_X1 U122 ( .A(n117), .B(n118), .Z(n116) );
  NAND2_X1 U123 ( .A1(n119), .A2(n112), .ZN(n114) );
  XOR2_X1 U124 ( .A(n120), .B(n121), .Z(n119) );
  XNOR2_X1 U125 ( .A(n122), .B(a_2_), .ZN(n121) );
  NOR2_X1 U126 ( .A1(n123), .A2(n124), .ZN(n120) );
  NAND2_X1 U127 ( .A1(n125), .A2(n126), .ZN(Result_5_) );
  NAND2_X1 U128 ( .A1(n112), .A2(n127), .ZN(n126) );
  NAND2_X1 U129 ( .A1(n128), .A2(n129), .ZN(n127) );
  NAND2_X1 U130 ( .A1(n130), .A2(n131), .ZN(n129) );
  NOR2_X1 U131 ( .A1(n132), .A2(n133), .ZN(n128) );
  NOR2_X1 U132 ( .A1(b_1_), .A2(n134), .ZN(n133) );
  XNOR2_X1 U133 ( .A(a_1_), .B(n131), .ZN(n134) );
  INV_X1 U134 ( .A(n135), .ZN(n132) );
  NAND2_X1 U135 ( .A1(b_1_), .A2(n136), .ZN(n135) );
  NOR2_X1 U136 ( .A1(n131), .A2(a_1_), .ZN(n136) );
  NAND2_X1 U137 ( .A1(n137), .A2(n111), .ZN(n125) );
  XOR2_X1 U138 ( .A(n138), .B(n139), .Z(n137) );
  XNOR2_X1 U139 ( .A(n140), .B(n141), .ZN(n139) );
  NAND2_X1 U140 ( .A1(n142), .A2(n143), .ZN(Result_4_) );
  NAND2_X1 U141 ( .A1(n144), .A2(n111), .ZN(n143) );
  XNOR2_X1 U142 ( .A(n145), .B(n146), .ZN(n144) );
  XOR2_X1 U143 ( .A(n147), .B(n148), .Z(n146) );
  NAND2_X1 U144 ( .A1(b_3_), .A2(a_0_), .ZN(n148) );
  NAND2_X1 U145 ( .A1(n149), .A2(n112), .ZN(n142) );
  XNOR2_X1 U146 ( .A(n150), .B(n151), .ZN(n149) );
  NOR2_X1 U147 ( .A1(n152), .A2(n153), .ZN(n151) );
  NOR2_X1 U148 ( .A1(b_1_), .A2(a_1_), .ZN(n153) );
  NOR2_X1 U149 ( .A1(n130), .A2(n131), .ZN(n152) );
  NAND2_X1 U150 ( .A1(n154), .A2(n155), .ZN(n131) );
  NAND2_X1 U151 ( .A1(n156), .A2(a_3_), .ZN(n155) );
  INV_X1 U152 ( .A(n117), .ZN(n156) );
  NOR2_X1 U153 ( .A1(n157), .A2(n158), .ZN(n154) );
  NOR2_X1 U154 ( .A1(n124), .A2(n118), .ZN(n158) );
  INV_X1 U155 ( .A(b_3_), .ZN(n124) );
  NOR2_X1 U156 ( .A1(n112), .A2(n159), .ZN(Result_3_) );
  XNOR2_X1 U157 ( .A(n160), .B(n161), .ZN(n159) );
  NOR2_X1 U158 ( .A1(n112), .A2(n162), .ZN(Result_2_) );
  XNOR2_X1 U159 ( .A(n163), .B(n164), .ZN(n162) );
  NOR2_X1 U160 ( .A1(n112), .A2(n165), .ZN(Result_1_) );
  XNOR2_X1 U161 ( .A(n166), .B(n167), .ZN(n165) );
  NOR2_X1 U162 ( .A1(n112), .A2(n168), .ZN(Result_0_) );
  NOR2_X1 U163 ( .A1(n169), .A2(n170), .ZN(n168) );
  NAND2_X1 U164 ( .A1(n171), .A2(n172), .ZN(n170) );
  NOR2_X1 U165 ( .A1(n166), .A2(n167), .ZN(n169) );
  NAND2_X1 U166 ( .A1(n171), .A2(n173), .ZN(n167) );
  NAND2_X1 U167 ( .A1(n174), .A2(n175), .ZN(n173) );
  INV_X1 U168 ( .A(n176), .ZN(n171) );
  NOR2_X1 U169 ( .A1(n174), .A2(n175), .ZN(n176) );
  NAND2_X1 U170 ( .A1(b_0_), .A2(n172), .ZN(n175) );
  NAND2_X1 U171 ( .A1(n177), .A2(b_1_), .ZN(n172) );
  NAND2_X1 U172 ( .A1(n178), .A2(n179), .ZN(n174) );
  NAND2_X1 U173 ( .A1(n163), .A2(n164), .ZN(n166) );
  XOR2_X1 U174 ( .A(n179), .B(n178), .Z(n164) );
  XOR2_X1 U175 ( .A(n177), .B(n180), .Z(n178) );
  NOR2_X1 U176 ( .A1(n181), .A2(n182), .ZN(n180) );
  NAND2_X1 U177 ( .A1(b_1_), .A2(n183), .ZN(n182) );
  NOR2_X1 U178 ( .A1(n184), .A2(n185), .ZN(n177) );
  NAND2_X1 U179 ( .A1(n186), .A2(n187), .ZN(n179) );
  NAND2_X1 U180 ( .A1(b_2_), .A2(n188), .ZN(n187) );
  INV_X1 U181 ( .A(n189), .ZN(n163) );
  NAND2_X1 U182 ( .A1(n161), .A2(n160), .ZN(n189) );
  NAND2_X1 U183 ( .A1(n147), .A2(n190), .ZN(n160) );
  NAND2_X1 U184 ( .A1(n191), .A2(b_3_), .ZN(n190) );
  NOR2_X1 U185 ( .A1(n145), .A2(n181), .ZN(n191) );
  XOR2_X1 U186 ( .A(n192), .B(n193), .Z(n145) );
  XOR2_X1 U187 ( .A(n194), .B(n195), .Z(n192) );
  NAND2_X1 U188 ( .A1(b_2_), .A2(a_1_), .ZN(n194) );
  NAND2_X1 U189 ( .A1(n196), .A2(n197), .ZN(n147) );
  NAND2_X1 U190 ( .A1(n198), .A2(n140), .ZN(n197) );
  NAND2_X1 U191 ( .A1(b_3_), .A2(a_1_), .ZN(n140) );
  NAND2_X1 U192 ( .A1(n141), .A2(n138), .ZN(n198) );
  INV_X1 U193 ( .A(n199), .ZN(n196) );
  NOR2_X1 U194 ( .A1(n138), .A2(n141), .ZN(n199) );
  NOR2_X1 U195 ( .A1(n118), .A2(n117), .ZN(n141) );
  NAND2_X1 U196 ( .A1(b_3_), .A2(a_2_), .ZN(n117) );
  XOR2_X1 U197 ( .A(n157), .B(n200), .Z(n138) );
  NOR2_X1 U198 ( .A1(n123), .A2(n201), .ZN(n200) );
  NOR2_X1 U199 ( .A1(n122), .A2(n202), .ZN(n157) );
  XNOR2_X1 U200 ( .A(n203), .B(n204), .ZN(n161) );
  NOR2_X1 U201 ( .A1(n122), .A2(n181), .ZN(n204) );
  XOR2_X1 U202 ( .A(n188), .B(n186), .Z(n203) );
  NOR2_X1 U203 ( .A1(n195), .A2(n205), .ZN(n186) );
  NOR2_X1 U204 ( .A1(n206), .A2(n122), .ZN(n205) );
  NAND2_X1 U205 ( .A1(n193), .A2(a_1_), .ZN(n206) );
  XNOR2_X1 U206 ( .A(n207), .B(n208), .ZN(n193) );
  NOR2_X1 U207 ( .A1(n207), .A2(n118), .ZN(n195) );
  NAND2_X1 U208 ( .A1(b_2_), .A2(a_3_), .ZN(n118) );
  NAND2_X1 U209 ( .A1(n209), .A2(n210), .ZN(n188) );
  NAND2_X1 U210 ( .A1(n211), .A2(n208), .ZN(n210) );
  NOR2_X1 U211 ( .A1(n123), .A2(n185), .ZN(n208) );
  INV_X1 U212 ( .A(n207), .ZN(n211) );
  NAND2_X1 U213 ( .A1(b_1_), .A2(a_2_), .ZN(n207) );
  XOR2_X1 U214 ( .A(n130), .B(n183), .Z(n209) );
  NAND2_X1 U215 ( .A1(a_2_), .A2(b_0_), .ZN(n183) );
  NOR2_X1 U216 ( .A1(n201), .A2(n184), .ZN(n130) );
  INV_X1 U217 ( .A(n111), .ZN(n112) );
  NAND2_X1 U218 ( .A1(n212), .A2(n213), .ZN(n111) );
  NAND2_X1 U219 ( .A1(n214), .A2(n150), .ZN(n213) );
  NAND2_X1 U220 ( .A1(b_0_), .A2(n181), .ZN(n150) );
  INV_X1 U221 ( .A(a_0_), .ZN(n181) );
  NAND2_X1 U222 ( .A1(n215), .A2(n216), .ZN(n214) );
  NAND2_X1 U223 ( .A1(a_1_), .A2(n201), .ZN(n216) );
  INV_X1 U224 ( .A(b_1_), .ZN(n201) );
  NAND2_X1 U225 ( .A1(n217), .A2(n218), .ZN(n215) );
  NAND2_X1 U226 ( .A1(b_1_), .A2(n184), .ZN(n218) );
  INV_X1 U227 ( .A(a_1_), .ZN(n184) );
  NOR2_X1 U228 ( .A1(n219), .A2(n220), .ZN(n217) );
  NOR2_X1 U229 ( .A1(a_2_), .A2(n113), .ZN(n220) );
  NOR2_X1 U230 ( .A1(n221), .A2(n122), .ZN(n219) );
  INV_X1 U231 ( .A(b_2_), .ZN(n122) );
  NOR2_X1 U232 ( .A1(n222), .A2(n202), .ZN(n221) );
  INV_X1 U233 ( .A(a_2_), .ZN(n202) );
  INV_X1 U234 ( .A(n113), .ZN(n222) );
  NOR2_X1 U235 ( .A1(n123), .A2(b_3_), .ZN(n113) );
  INV_X1 U236 ( .A(a_3_), .ZN(n123) );
  NAND2_X1 U237 ( .A1(a_0_), .A2(n185), .ZN(n212) );
  INV_X1 U238 ( .A(b_0_), .ZN(n185) );
endmodule

