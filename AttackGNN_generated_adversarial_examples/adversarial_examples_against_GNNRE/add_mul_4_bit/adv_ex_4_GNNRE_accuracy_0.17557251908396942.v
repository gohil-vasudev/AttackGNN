module add_mul_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        operation, Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, 
        Result_5_, Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, operation;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233;

  NAND2_X1 U119 ( .A1(n111), .A2(n112), .ZN(Result_7_) );
  NAND2_X1 U120 ( .A1(n113), .A2(n114), .ZN(n112) );
  XOR2_X1 U121 ( .A(b_3_), .B(a_3_), .Z(n113) );
  NAND2_X1 U122 ( .A1(n115), .A2(operation), .ZN(n111) );
  NAND2_X1 U123 ( .A1(n116), .A2(n117), .ZN(Result_6_) );
  NAND2_X1 U124 ( .A1(n118), .A2(n114), .ZN(n117) );
  XOR2_X1 U125 ( .A(n115), .B(n119), .Z(n118) );
  XOR2_X1 U126 ( .A(b_2_), .B(a_2_), .Z(n119) );
  NOR2_X1 U127 ( .A1(n120), .A2(n121), .ZN(n115) );
  NAND2_X1 U128 ( .A1(n122), .A2(operation), .ZN(n116) );
  XOR2_X1 U129 ( .A(n123), .B(n124), .Z(n122) );
  NAND2_X1 U130 ( .A1(n125), .A2(n126), .ZN(Result_5_) );
  NAND2_X1 U131 ( .A1(n127), .A2(n114), .ZN(n126) );
  NAND2_X1 U132 ( .A1(n128), .A2(n129), .ZN(n127) );
  NAND2_X1 U133 ( .A1(n130), .A2(n131), .ZN(n129) );
  NOR2_X1 U134 ( .A1(n132), .A2(n133), .ZN(n128) );
  NOR2_X1 U135 ( .A1(b_1_), .A2(n134), .ZN(n133) );
  XOR2_X1 U136 ( .A(n135), .B(n131), .Z(n134) );
  INV_X1 U137 ( .A(n136), .ZN(n132) );
  NAND2_X1 U138 ( .A1(b_1_), .A2(n137), .ZN(n136) );
  NOR2_X1 U139 ( .A1(n131), .A2(a_1_), .ZN(n137) );
  NAND2_X1 U140 ( .A1(n138), .A2(operation), .ZN(n125) );
  XNOR2_X1 U141 ( .A(n139), .B(n140), .ZN(n138) );
  XNOR2_X1 U142 ( .A(n141), .B(n142), .ZN(n140) );
  NAND2_X1 U143 ( .A1(n143), .A2(n144), .ZN(Result_4_) );
  NAND2_X1 U144 ( .A1(n145), .A2(n114), .ZN(n144) );
  XOR2_X1 U145 ( .A(n146), .B(n147), .Z(n145) );
  XOR2_X1 U146 ( .A(b_0_), .B(a_0_), .Z(n147) );
  NOR2_X1 U147 ( .A1(n148), .A2(n149), .ZN(n146) );
  NOR2_X1 U148 ( .A1(b_1_), .A2(a_1_), .ZN(n149) );
  NOR2_X1 U149 ( .A1(n130), .A2(n131), .ZN(n148) );
  NAND2_X1 U150 ( .A1(n150), .A2(n151), .ZN(n131) );
  NAND2_X1 U151 ( .A1(n123), .A2(a_3_), .ZN(n151) );
  NOR2_X1 U152 ( .A1(n152), .A2(n153), .ZN(n150) );
  NOR2_X1 U153 ( .A1(n121), .A2(n154), .ZN(n153) );
  NAND2_X1 U154 ( .A1(n155), .A2(operation), .ZN(n143) );
  XNOR2_X1 U155 ( .A(n156), .B(n157), .ZN(n155) );
  NAND2_X1 U156 ( .A1(n158), .A2(n159), .ZN(n156) );
  NOR2_X1 U157 ( .A1(n160), .A2(n114), .ZN(Result_3_) );
  XNOR2_X1 U158 ( .A(n161), .B(n162), .ZN(n160) );
  NOR2_X1 U159 ( .A1(n163), .A2(n114), .ZN(Result_2_) );
  XOR2_X1 U160 ( .A(n164), .B(n165), .Z(n163) );
  NOR2_X1 U161 ( .A1(n166), .A2(n114), .ZN(Result_1_) );
  XNOR2_X1 U162 ( .A(n167), .B(n168), .ZN(n166) );
  NOR2_X1 U163 ( .A1(n169), .A2(n114), .ZN(Result_0_) );
  INV_X1 U164 ( .A(operation), .ZN(n114) );
  NOR2_X1 U165 ( .A1(n170), .A2(n171), .ZN(n169) );
  NAND2_X1 U166 ( .A1(n172), .A2(n173), .ZN(n171) );
  NAND2_X1 U167 ( .A1(a_0_), .A2(n174), .ZN(n172) );
  NAND2_X1 U168 ( .A1(n175), .A2(n176), .ZN(n174) );
  NAND2_X1 U169 ( .A1(b_0_), .A2(n130), .ZN(n176) );
  NOR2_X1 U170 ( .A1(n168), .A2(n167), .ZN(n170) );
  NAND2_X1 U171 ( .A1(n173), .A2(n177), .ZN(n167) );
  NAND2_X1 U172 ( .A1(n178), .A2(n179), .ZN(n177) );
  INV_X1 U173 ( .A(n180), .ZN(n173) );
  NOR2_X1 U174 ( .A1(n179), .A2(n178), .ZN(n180) );
  NAND2_X1 U175 ( .A1(n181), .A2(n182), .ZN(n178) );
  NAND2_X1 U176 ( .A1(n183), .A2(a_0_), .ZN(n182) );
  NAND2_X1 U177 ( .A1(n184), .A2(n175), .ZN(n181) );
  INV_X1 U178 ( .A(n183), .ZN(n175) );
  NOR2_X1 U179 ( .A1(n185), .A2(n186), .ZN(n183) );
  INV_X1 U180 ( .A(n187), .ZN(n186) );
  NAND2_X1 U181 ( .A1(n188), .A2(n189), .ZN(n187) );
  NAND2_X1 U182 ( .A1(n190), .A2(b_0_), .ZN(n184) );
  NOR2_X1 U183 ( .A1(n130), .A2(n191), .ZN(n190) );
  NAND2_X1 U184 ( .A1(n192), .A2(n193), .ZN(n179) );
  NAND2_X1 U185 ( .A1(n194), .A2(n165), .ZN(n168) );
  XOR2_X1 U186 ( .A(n193), .B(n192), .Z(n165) );
  XOR2_X1 U187 ( .A(n188), .B(n195), .Z(n192) );
  XNOR2_X1 U188 ( .A(n185), .B(n189), .ZN(n195) );
  NAND2_X1 U189 ( .A1(a_0_), .A2(b_1_), .ZN(n189) );
  NOR2_X1 U190 ( .A1(n196), .A2(n197), .ZN(n185) );
  NOR2_X1 U191 ( .A1(n198), .A2(n199), .ZN(n197) );
  NAND2_X1 U192 ( .A1(a_2_), .A2(n130), .ZN(n198) );
  NAND2_X1 U193 ( .A1(b_0_), .A2(a_1_), .ZN(n188) );
  NAND2_X1 U194 ( .A1(n200), .A2(n201), .ZN(n193) );
  NAND2_X1 U195 ( .A1(n202), .A2(a_0_), .ZN(n201) );
  NOR2_X1 U196 ( .A1(n203), .A2(n204), .ZN(n202) );
  NOR2_X1 U197 ( .A1(n205), .A2(n206), .ZN(n203) );
  NAND2_X1 U198 ( .A1(n206), .A2(n205), .ZN(n200) );
  INV_X1 U199 ( .A(n164), .ZN(n194) );
  NAND2_X1 U200 ( .A1(n161), .A2(n162), .ZN(n164) );
  NAND2_X1 U201 ( .A1(n158), .A2(n207), .ZN(n162) );
  NAND2_X1 U202 ( .A1(n157), .A2(n159), .ZN(n207) );
  NAND2_X1 U203 ( .A1(n208), .A2(n209), .ZN(n159) );
  NAND2_X1 U204 ( .A1(a_0_), .A2(b_3_), .ZN(n209) );
  XNOR2_X1 U205 ( .A(n210), .B(n211), .ZN(n157) );
  NAND2_X1 U206 ( .A1(n212), .A2(n213), .ZN(n210) );
  INV_X1 U207 ( .A(n214), .ZN(n158) );
  NOR2_X1 U208 ( .A1(n191), .A2(n208), .ZN(n214) );
  NOR2_X1 U209 ( .A1(n215), .A2(n216), .ZN(n208) );
  INV_X1 U210 ( .A(n217), .ZN(n216) );
  NAND2_X1 U211 ( .A1(n141), .A2(n218), .ZN(n217) );
  NAND2_X1 U212 ( .A1(n139), .A2(n142), .ZN(n218) );
  NOR2_X1 U213 ( .A1(n135), .A2(n121), .ZN(n141) );
  NOR2_X1 U214 ( .A1(n142), .A2(n139), .ZN(n215) );
  XNOR2_X1 U215 ( .A(n152), .B(n219), .ZN(n139) );
  NOR2_X1 U216 ( .A1(n120), .A2(n220), .ZN(n219) );
  INV_X1 U217 ( .A(a_3_), .ZN(n120) );
  NOR2_X1 U218 ( .A1(n204), .A2(n221), .ZN(n152) );
  INV_X1 U219 ( .A(b_2_), .ZN(n204) );
  NAND2_X1 U220 ( .A1(n124), .A2(n123), .ZN(n142) );
  NOR2_X1 U221 ( .A1(n221), .A2(n121), .ZN(n123) );
  INV_X1 U222 ( .A(b_3_), .ZN(n121) );
  INV_X1 U223 ( .A(n154), .ZN(n124) );
  INV_X1 U224 ( .A(a_0_), .ZN(n191) );
  XNOR2_X1 U225 ( .A(n206), .B(n222), .ZN(n161) );
  XOR2_X1 U226 ( .A(n205), .B(n223), .Z(n222) );
  NAND2_X1 U227 ( .A1(a_0_), .A2(b_2_), .ZN(n223) );
  NAND2_X1 U228 ( .A1(n212), .A2(n224), .ZN(n205) );
  NAND2_X1 U229 ( .A1(n211), .A2(n213), .ZN(n224) );
  NAND2_X1 U230 ( .A1(n225), .A2(n226), .ZN(n213) );
  NAND2_X1 U231 ( .A1(a_1_), .A2(b_2_), .ZN(n226) );
  INV_X1 U232 ( .A(n227), .ZN(n225) );
  NOR2_X1 U233 ( .A1(n196), .A2(n228), .ZN(n211) );
  INV_X1 U234 ( .A(n229), .ZN(n228) );
  NAND2_X1 U235 ( .A1(n230), .A2(n231), .ZN(n229) );
  NAND2_X1 U236 ( .A1(n227), .A2(a_1_), .ZN(n212) );
  NOR2_X1 U237 ( .A1(n230), .A2(n154), .ZN(n227) );
  NAND2_X1 U238 ( .A1(b_2_), .A2(a_3_), .ZN(n154) );
  XNOR2_X1 U239 ( .A(n232), .B(n233), .ZN(n206) );
  NOR2_X1 U240 ( .A1(n221), .A2(n199), .ZN(n233) );
  INV_X1 U241 ( .A(b_0_), .ZN(n199) );
  INV_X1 U242 ( .A(a_2_), .ZN(n221) );
  XNOR2_X1 U243 ( .A(n130), .B(n196), .ZN(n232) );
  NOR2_X1 U244 ( .A1(n231), .A2(n230), .ZN(n196) );
  NAND2_X1 U245 ( .A1(b_1_), .A2(a_2_), .ZN(n230) );
  NAND2_X1 U246 ( .A1(b_0_), .A2(a_3_), .ZN(n231) );
  NOR2_X1 U247 ( .A1(n135), .A2(n220), .ZN(n130) );
  INV_X1 U248 ( .A(b_1_), .ZN(n220) );
  INV_X1 U249 ( .A(a_1_), .ZN(n135) );
endmodule

