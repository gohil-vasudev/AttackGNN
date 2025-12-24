module add_mul_mix_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        c_0_, c_1_, c_2_, c_3_, d_0_, d_1_, d_2_, d_3_, Result_0_, Result_1_, 
        Result_2_, Result_3_, Result_4_, Result_5_, Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, c_0_, c_1_, c_2_, c_3_,
         d_0_, d_1_, d_2_, d_3_;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232;

  XOR2_X1 U119 ( .A(n112), .B(n113), .Z(Result_6_) );
  NOR2_X1 U120 ( .A1(n114), .A2(n115), .ZN(n112) );
  XNOR2_X1 U121 ( .A(n116), .B(n117), .ZN(Result_5_) );
  XOR2_X1 U122 ( .A(n118), .B(n119), .Z(n117) );
  NAND2_X1 U123 ( .A1(n120), .A2(n121), .ZN(n119) );
  XNOR2_X1 U124 ( .A(n122), .B(n123), .ZN(Result_4_) );
  XNOR2_X1 U125 ( .A(n124), .B(n125), .ZN(n122) );
  INV_X1 U126 ( .A(n126), .ZN(n125) );
  XOR2_X1 U127 ( .A(n127), .B(n128), .Z(Result_3_) );
  XNOR2_X1 U128 ( .A(n129), .B(n130), .ZN(Result_2_) );
  XNOR2_X1 U129 ( .A(n131), .B(n132), .ZN(Result_1_) );
  NAND3_X1 U130 ( .A1(n133), .A2(n134), .A3(n135), .ZN(Result_0_) );
  NAND2_X1 U131 ( .A1(n132), .A2(n136), .ZN(n135) );
  INV_X1 U132 ( .A(n131), .ZN(n136) );
  NAND2_X1 U133 ( .A1(n134), .A2(n137), .ZN(n131) );
  NAND2_X1 U134 ( .A1(n138), .A2(n139), .ZN(n137) );
  NAND2_X1 U135 ( .A1(n140), .A2(n141), .ZN(n139) );
  NOR2_X1 U136 ( .A1(n142), .A2(n130), .ZN(n132) );
  XNOR2_X1 U137 ( .A(n141), .B(n140), .ZN(n130) );
  INV_X1 U138 ( .A(n129), .ZN(n142) );
  NOR2_X1 U139 ( .A1(n127), .A2(n128), .ZN(n129) );
  XOR2_X1 U140 ( .A(n143), .B(n144), .Z(n128) );
  NAND2_X1 U141 ( .A1(n145), .A2(n146), .ZN(n143) );
  NAND2_X1 U142 ( .A1(n147), .A2(n148), .ZN(n127) );
  NAND2_X1 U143 ( .A1(n123), .A2(n149), .ZN(n148) );
  INV_X1 U144 ( .A(n150), .ZN(n149) );
  NOR2_X1 U145 ( .A1(n126), .A2(n124), .ZN(n150) );
  XNOR2_X1 U146 ( .A(n151), .B(n152), .ZN(n123) );
  XOR2_X1 U147 ( .A(n153), .B(n154), .Z(n151) );
  NOR2_X1 U148 ( .A1(n155), .A2(n156), .ZN(n154) );
  NAND2_X1 U149 ( .A1(n124), .A2(n126), .ZN(n147) );
  NAND2_X1 U150 ( .A1(n157), .A2(n121), .ZN(n126) );
  INV_X1 U151 ( .A(n115), .ZN(n121) );
  NOR2_X1 U152 ( .A1(n158), .A2(n159), .ZN(n124) );
  NOR3_X1 U153 ( .A1(n115), .A2(n160), .A3(n156), .ZN(n159) );
  INV_X1 U154 ( .A(n161), .ZN(n160) );
  NAND2_X1 U155 ( .A1(n116), .A2(n118), .ZN(n161) );
  NOR2_X1 U156 ( .A1(n118), .A2(n116), .ZN(n158) );
  XOR2_X1 U157 ( .A(n162), .B(n163), .Z(n116) );
  NAND2_X1 U158 ( .A1(n164), .A2(n165), .ZN(n162) );
  NAND2_X1 U159 ( .A1(Result_7_), .A2(n163), .ZN(n118) );
  NOR2_X1 U160 ( .A1(n155), .A2(n114), .ZN(n163) );
  NOR2_X1 U161 ( .A1(n115), .A2(n166), .ZN(Result_7_) );
  XNOR2_X1 U162 ( .A(c_3_), .B(d_3_), .ZN(n115) );
  NAND3_X1 U163 ( .A1(n140), .A2(n141), .A3(n167), .ZN(n134) );
  INV_X1 U164 ( .A(n138), .ZN(n167) );
  NAND2_X1 U165 ( .A1(n168), .A2(n169), .ZN(n138) );
  NAND2_X1 U166 ( .A1(n170), .A2(n171), .ZN(n169) );
  NAND3_X1 U167 ( .A1(n172), .A2(n173), .A3(n157), .ZN(n171) );
  NAND2_X1 U168 ( .A1(n157), .A2(n174), .ZN(n168) );
  NAND2_X1 U169 ( .A1(n145), .A2(n175), .ZN(n141) );
  NAND2_X1 U170 ( .A1(n144), .A2(n146), .ZN(n175) );
  NAND2_X1 U171 ( .A1(n176), .A2(n177), .ZN(n146) );
  NAND2_X1 U172 ( .A1(n157), .A2(n178), .ZN(n177) );
  XNOR2_X1 U173 ( .A(n179), .B(n180), .ZN(n144) );
  XNOR2_X1 U174 ( .A(n181), .B(n173), .ZN(n179) );
  NAND2_X1 U175 ( .A1(n157), .A2(n182), .ZN(n145) );
  INV_X1 U176 ( .A(n176), .ZN(n182) );
  NOR2_X1 U177 ( .A1(n183), .A2(n184), .ZN(n176) );
  INV_X1 U178 ( .A(n185), .ZN(n184) );
  NAND3_X1 U179 ( .A1(n178), .A2(n186), .A3(n120), .ZN(n185) );
  NAND2_X1 U180 ( .A1(n152), .A2(n153), .ZN(n186) );
  NOR2_X1 U181 ( .A1(n153), .A2(n152), .ZN(n183) );
  XNOR2_X1 U182 ( .A(n187), .B(n188), .ZN(n152) );
  NOR2_X1 U183 ( .A1(n166), .A2(n189), .ZN(n188) );
  NAND2_X1 U184 ( .A1(n187), .A2(n113), .ZN(n153) );
  NOR2_X1 U185 ( .A1(n155), .A2(n166), .ZN(n113) );
  INV_X1 U186 ( .A(n165), .ZN(n166) );
  INV_X1 U187 ( .A(n178), .ZN(n155) );
  XNOR2_X1 U188 ( .A(n190), .B(n191), .ZN(n178) );
  XOR2_X1 U189 ( .A(d_2_), .B(c_2_), .Z(n191) );
  NAND2_X1 U190 ( .A1(c_3_), .A2(d_3_), .ZN(n190) );
  XNOR2_X1 U191 ( .A(n192), .B(n193), .ZN(n140) );
  NOR2_X1 U192 ( .A1(n189), .A2(n156), .ZN(n193) );
  NAND2_X1 U193 ( .A1(n194), .A2(n195), .ZN(n192) );
  NAND2_X1 U194 ( .A1(n196), .A2(n197), .ZN(n195) );
  NAND2_X1 U195 ( .A1(n164), .A2(n157), .ZN(n197) );
  INV_X1 U196 ( .A(n198), .ZN(n196) );
  NAND2_X1 U197 ( .A1(n157), .A2(n199), .ZN(n133) );
  NAND2_X1 U198 ( .A1(n170), .A2(n200), .ZN(n199) );
  NAND2_X1 U199 ( .A1(n201), .A2(n172), .ZN(n200) );
  INV_X1 U200 ( .A(n174), .ZN(n170) );
  NAND2_X1 U201 ( .A1(n194), .A2(n202), .ZN(n174) );
  NAND2_X1 U202 ( .A1(n120), .A2(n198), .ZN(n202) );
  NAND2_X1 U203 ( .A1(n157), .A2(n198), .ZN(n194) );
  NAND2_X1 U204 ( .A1(n203), .A2(n181), .ZN(n198) );
  NAND3_X1 U205 ( .A1(n172), .A2(n165), .A3(n187), .ZN(n181) );
  NOR2_X1 U206 ( .A1(n204), .A2(n114), .ZN(n187) );
  XOR2_X1 U207 ( .A(a_3_), .B(b_3_), .Z(n165) );
  NAND2_X1 U208 ( .A1(n180), .A2(n201), .ZN(n203) );
  INV_X1 U209 ( .A(n173), .ZN(n201) );
  NAND2_X1 U210 ( .A1(n120), .A2(n164), .ZN(n173) );
  INV_X1 U211 ( .A(n204), .ZN(n164) );
  XNOR2_X1 U212 ( .A(n205), .B(n206), .ZN(n204) );
  XNOR2_X1 U213 ( .A(n207), .B(c_1_), .ZN(n206) );
  INV_X1 U214 ( .A(n156), .ZN(n120) );
  XNOR2_X1 U215 ( .A(n208), .B(n209), .ZN(n156) );
  XNOR2_X1 U216 ( .A(n210), .B(a_1_), .ZN(n209) );
  NOR2_X1 U217 ( .A1(n189), .A2(n114), .ZN(n180) );
  XOR2_X1 U218 ( .A(n211), .B(n212), .Z(n114) );
  XOR2_X1 U219 ( .A(b_2_), .B(a_2_), .Z(n212) );
  NAND2_X1 U220 ( .A1(a_3_), .A2(b_3_), .ZN(n211) );
  INV_X1 U221 ( .A(n172), .ZN(n189) );
  XNOR2_X1 U222 ( .A(n213), .B(n214), .ZN(n172) );
  XOR2_X1 U223 ( .A(d_0_), .B(c_0_), .Z(n214) );
  NAND2_X1 U224 ( .A1(n215), .A2(n216), .ZN(n213) );
  NAND2_X1 U225 ( .A1(n217), .A2(n207), .ZN(n216) );
  INV_X1 U226 ( .A(d_1_), .ZN(n207) );
  NAND2_X1 U227 ( .A1(c_1_), .A2(n205), .ZN(n217) );
  INV_X1 U228 ( .A(n218), .ZN(n215) );
  NOR2_X1 U229 ( .A1(n205), .A2(c_1_), .ZN(n218) );
  NAND2_X1 U230 ( .A1(n219), .A2(n220), .ZN(n205) );
  NAND3_X1 U231 ( .A1(d_3_), .A2(n221), .A3(c_3_), .ZN(n220) );
  INV_X1 U232 ( .A(n222), .ZN(n221) );
  NOR2_X1 U233 ( .A1(d_2_), .A2(c_2_), .ZN(n222) );
  NAND2_X1 U234 ( .A1(c_2_), .A2(d_2_), .ZN(n219) );
  XNOR2_X1 U235 ( .A(n223), .B(n224), .ZN(n157) );
  XOR2_X1 U236 ( .A(b_0_), .B(a_0_), .Z(n224) );
  NAND2_X1 U237 ( .A1(n225), .A2(n226), .ZN(n223) );
  NAND2_X1 U238 ( .A1(n227), .A2(n210), .ZN(n226) );
  INV_X1 U239 ( .A(b_1_), .ZN(n210) );
  NAND2_X1 U240 ( .A1(a_1_), .A2(n208), .ZN(n227) );
  INV_X1 U241 ( .A(n228), .ZN(n225) );
  NOR2_X1 U242 ( .A1(n208), .A2(a_1_), .ZN(n228) );
  NAND2_X1 U243 ( .A1(n229), .A2(n230), .ZN(n208) );
  NAND3_X1 U244 ( .A1(b_3_), .A2(n231), .A3(a_3_), .ZN(n230) );
  INV_X1 U245 ( .A(n232), .ZN(n231) );
  NOR2_X1 U246 ( .A1(b_2_), .A2(a_2_), .ZN(n232) );
  NAND2_X1 U247 ( .A1(a_2_), .A2(b_2_), .ZN(n229) );
endmodule

