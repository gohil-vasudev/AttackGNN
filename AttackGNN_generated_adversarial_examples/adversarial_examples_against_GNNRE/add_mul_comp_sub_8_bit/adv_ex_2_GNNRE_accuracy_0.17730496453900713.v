module add_mul_comp_sub_8_bit ( a_0_, a_1_, a_2_, a_3_, a_4_, a_5_, a_6_, a_7_, 
        b_0_, b_1_, b_2_, b_3_, b_4_, b_5_, b_6_, b_7_, Result_0_, Result_1_, 
        Result_2_, Result_3_, Result_4_, Result_5_, Result_6_, Result_7_, 
        Result_8_, Result_9_, Result_10_, Result_11_, Result_12_, Result_13_, 
        Result_14_, Result_15_ );
  input a_0_, a_1_, a_2_, a_3_, a_4_, a_5_, a_6_, a_7_, b_0_, b_1_, b_2_, b_3_,
         b_4_, b_5_, b_6_, b_7_;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_, Result_8_, Result_9_, Result_10_, Result_11_,
         Result_12_, Result_13_, Result_14_, Result_15_;
  wire   Result_7_, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257;
  assign Result_6_ = Result_7_;
  assign Result_4_ = Result_7_;
  assign Result_2_ = Result_7_;
  assign Result_0_ = Result_7_;
  assign Result_1_ = Result_7_;
  assign Result_3_ = Result_7_;
  assign Result_5_ = Result_7_;

  OR2_X1 U141 ( .A1(n133), .A2(n134), .ZN(Result_9_) );
  AND2_X1 U142 ( .A1(n135), .A2(Result_7_), .ZN(n134) );
  XOR2_X1 U143 ( .A(n136), .B(n137), .Z(n135) );
  AND2_X1 U144 ( .A1(n138), .A2(n139), .ZN(n133) );
  XOR2_X1 U145 ( .A(n137), .B(n140), .Z(n138) );
  OR2_X1 U146 ( .A1(n141), .A2(n142), .ZN(n137) );
  INV_X1 U147 ( .A(n143), .ZN(n142) );
  OR2_X1 U148 ( .A1(n144), .A2(n145), .ZN(Result_8_) );
  AND2_X1 U149 ( .A1(n146), .A2(Result_7_), .ZN(n145) );
  OR2_X1 U150 ( .A1(n147), .A2(n148), .ZN(n146) );
  INV_X1 U151 ( .A(n149), .ZN(n147) );
  OR2_X1 U152 ( .A1(n141), .A2(n150), .ZN(n149) );
  AND2_X1 U153 ( .A1(n136), .A2(n143), .ZN(n150) );
  OR2_X1 U154 ( .A1(n151), .A2(n152), .ZN(n136) );
  AND2_X1 U155 ( .A1(n153), .A2(n154), .ZN(n151) );
  AND2_X1 U156 ( .A1(n155), .A2(n139), .ZN(n144) );
  XNOR2_X1 U157 ( .A(n148), .B(n156), .ZN(n155) );
  AND2_X1 U158 ( .A1(n157), .A2(n158), .ZN(n156) );
  OR2_X1 U159 ( .A1(b_1_), .A2(n159), .ZN(n158) );
  AND2_X1 U160 ( .A1(n140), .A2(a_1_), .ZN(n159) );
  OR2_X1 U161 ( .A1(a_1_), .A2(n140), .ZN(n157) );
  INV_X1 U162 ( .A(n160), .ZN(n140) );
  OR2_X1 U163 ( .A1(n161), .A2(n162), .ZN(n160) );
  AND2_X1 U164 ( .A1(n163), .A2(n164), .ZN(n162) );
  AND2_X1 U165 ( .A1(n165), .A2(n166), .ZN(n161) );
  OR2_X1 U166 ( .A1(n164), .A2(n163), .ZN(n165) );
  INV_X1 U167 ( .A(a_2_), .ZN(n164) );
  AND2_X1 U168 ( .A1(n167), .A2(n168), .ZN(n148) );
  OR2_X1 U169 ( .A1(n169), .A2(b_0_), .ZN(n168) );
  INV_X1 U170 ( .A(a_0_), .ZN(n169) );
  OR2_X1 U171 ( .A1(n170), .A2(n171), .ZN(Result_15_) );
  INV_X1 U172 ( .A(n172), .ZN(n170) );
  OR2_X1 U173 ( .A1(n173), .A2(n174), .ZN(Result_14_) );
  AND2_X1 U174 ( .A1(n175), .A2(n139), .ZN(n174) );
  XOR2_X1 U175 ( .A(n176), .B(n177), .Z(n175) );
  AND2_X1 U176 ( .A1(b_7_), .A2(a_7_), .ZN(n177) );
  AND2_X1 U177 ( .A1(n178), .A2(Result_7_), .ZN(n173) );
  XOR2_X1 U178 ( .A(n176), .B(n171), .Z(n178) );
  OR2_X1 U179 ( .A1(n179), .A2(n180), .ZN(n176) );
  INV_X1 U180 ( .A(n181), .ZN(n180) );
  OR2_X1 U181 ( .A1(n182), .A2(n183), .ZN(Result_13_) );
  AND2_X1 U182 ( .A1(n184), .A2(Result_7_), .ZN(n183) );
  XOR2_X1 U183 ( .A(n185), .B(n186), .Z(n184) );
  AND2_X1 U184 ( .A1(n139), .A2(n187), .ZN(n182) );
  XOR2_X1 U185 ( .A(n188), .B(n186), .Z(n187) );
  OR2_X1 U186 ( .A1(n189), .A2(n190), .ZN(n186) );
  INV_X1 U187 ( .A(n191), .ZN(n190) );
  OR2_X1 U188 ( .A1(n192), .A2(n193), .ZN(Result_12_) );
  AND2_X1 U189 ( .A1(n194), .A2(Result_7_), .ZN(n193) );
  XOR2_X1 U190 ( .A(n195), .B(n196), .Z(n194) );
  AND2_X1 U191 ( .A1(n197), .A2(n139), .ZN(n192) );
  XNOR2_X1 U192 ( .A(n196), .B(n198), .ZN(n197) );
  OR2_X1 U193 ( .A1(n199), .A2(n200), .ZN(n196) );
  INV_X1 U194 ( .A(n201), .ZN(n200) );
  OR2_X1 U195 ( .A1(n202), .A2(n203), .ZN(Result_11_) );
  AND2_X1 U196 ( .A1(n204), .A2(Result_7_), .ZN(n203) );
  XOR2_X1 U197 ( .A(n205), .B(n206), .Z(n204) );
  AND2_X1 U198 ( .A1(n207), .A2(n139), .ZN(n202) );
  XNOR2_X1 U199 ( .A(n206), .B(n208), .ZN(n207) );
  OR2_X1 U200 ( .A1(n209), .A2(n210), .ZN(n206) );
  INV_X1 U201 ( .A(n211), .ZN(n210) );
  OR2_X1 U202 ( .A1(n212), .A2(n213), .ZN(Result_10_) );
  AND2_X1 U203 ( .A1(n214), .A2(Result_7_), .ZN(n213) );
  XOR2_X1 U204 ( .A(n153), .B(n215), .Z(n214) );
  OR2_X1 U205 ( .A1(n216), .A2(n209), .ZN(n153) );
  AND2_X1 U206 ( .A1(n205), .A2(n211), .ZN(n216) );
  OR2_X1 U207 ( .A1(n217), .A2(n199), .ZN(n205) );
  AND2_X1 U208 ( .A1(n195), .A2(n201), .ZN(n217) );
  OR2_X1 U209 ( .A1(n218), .A2(n189), .ZN(n195) );
  AND2_X1 U210 ( .A1(n185), .A2(n191), .ZN(n218) );
  OR2_X1 U211 ( .A1(n219), .A2(n179), .ZN(n185) );
  AND2_X1 U212 ( .A1(n171), .A2(n181), .ZN(n219) );
  AND2_X1 U213 ( .A1(n220), .A2(n139), .ZN(n212) );
  INV_X1 U214 ( .A(n221), .ZN(n139) );
  OR2_X1 U215 ( .A1(Result_7_), .A2(n222), .ZN(n221) );
  AND4_X1 U216 ( .A1(n172), .A2(n181), .A3(n223), .A4(n224), .ZN(n222) );
  AND4_X1 U217 ( .A1(n167), .A2(n191), .A3(n201), .A4(n211), .ZN(n224) );
  OR2_X1 U218 ( .A1(a_7_), .A2(n225), .ZN(n172) );
  OR2_X1 U219 ( .A1(n226), .A2(n227), .ZN(Result_7_) );
  AND2_X1 U220 ( .A1(a_0_), .A2(n228), .ZN(n227) );
  AND2_X1 U221 ( .A1(n229), .A2(n167), .ZN(n226) );
  OR2_X1 U222 ( .A1(a_0_), .A2(n228), .ZN(n167) );
  INV_X1 U223 ( .A(b_0_), .ZN(n228) );
  OR2_X1 U224 ( .A1(n230), .A2(n141), .ZN(n229) );
  AND2_X1 U225 ( .A1(n231), .A2(a_1_), .ZN(n141) );
  AND2_X1 U226 ( .A1(n223), .A2(n232), .ZN(n230) );
  OR3_X1 U227 ( .A1(n152), .A2(n209), .A3(n233), .ZN(n232) );
  AND3_X1 U228 ( .A1(n201), .A2(n211), .A3(n234), .ZN(n233) );
  OR3_X1 U229 ( .A1(n189), .A2(n199), .A3(n235), .ZN(n234) );
  AND3_X1 U230 ( .A1(n181), .A2(n191), .A3(n236), .ZN(n235) );
  OR2_X1 U231 ( .A1(n179), .A2(n171), .ZN(n236) );
  AND2_X1 U232 ( .A1(n225), .A2(a_7_), .ZN(n171) );
  INV_X1 U233 ( .A(b_7_), .ZN(n225) );
  AND2_X1 U234 ( .A1(n237), .A2(a_6_), .ZN(n179) );
  OR2_X1 U235 ( .A1(a_5_), .A2(n238), .ZN(n191) );
  OR2_X1 U236 ( .A1(a_6_), .A2(n237), .ZN(n181) );
  INV_X1 U237 ( .A(b_6_), .ZN(n237) );
  AND2_X1 U238 ( .A1(n239), .A2(a_4_), .ZN(n199) );
  AND2_X1 U239 ( .A1(n238), .A2(a_5_), .ZN(n189) );
  OR2_X1 U240 ( .A1(a_3_), .A2(n240), .ZN(n211) );
  OR2_X1 U241 ( .A1(a_4_), .A2(n239), .ZN(n201) );
  AND2_X1 U242 ( .A1(n240), .A2(a_3_), .ZN(n209) );
  AND2_X1 U243 ( .A1(n143), .A2(n154), .ZN(n223) );
  OR2_X1 U244 ( .A1(a_1_), .A2(n231), .ZN(n143) );
  INV_X1 U245 ( .A(b_1_), .ZN(n231) );
  XNOR2_X1 U246 ( .A(n215), .B(n163), .ZN(n220) );
  OR2_X1 U247 ( .A1(n241), .A2(n242), .ZN(n163) );
  AND2_X1 U248 ( .A1(n208), .A2(n243), .ZN(n242) );
  AND2_X1 U249 ( .A1(n244), .A2(n240), .ZN(n241) );
  INV_X1 U250 ( .A(b_3_), .ZN(n240) );
  OR2_X1 U251 ( .A1(n243), .A2(n208), .ZN(n244) );
  OR2_X1 U252 ( .A1(n245), .A2(n246), .ZN(n208) );
  AND2_X1 U253 ( .A1(n198), .A2(n247), .ZN(n246) );
  AND2_X1 U254 ( .A1(n248), .A2(n239), .ZN(n245) );
  INV_X1 U255 ( .A(b_4_), .ZN(n239) );
  OR2_X1 U256 ( .A1(n247), .A2(n198), .ZN(n248) );
  OR2_X1 U257 ( .A1(n249), .A2(n250), .ZN(n198) );
  AND2_X1 U258 ( .A1(n251), .A2(n252), .ZN(n250) );
  AND2_X1 U259 ( .A1(n253), .A2(n238), .ZN(n249) );
  INV_X1 U260 ( .A(b_5_), .ZN(n238) );
  OR2_X1 U261 ( .A1(n251), .A2(n252), .ZN(n253) );
  INV_X1 U262 ( .A(a_5_), .ZN(n252) );
  INV_X1 U263 ( .A(n188), .ZN(n251) );
  OR2_X1 U264 ( .A1(n254), .A2(n255), .ZN(n188) );
  AND2_X1 U265 ( .A1(a_6_), .A2(b_6_), .ZN(n255) );
  AND3_X1 U266 ( .A1(a_7_), .A2(n256), .A3(b_7_), .ZN(n254) );
  OR2_X1 U267 ( .A1(a_6_), .A2(b_6_), .ZN(n256) );
  INV_X1 U268 ( .A(a_4_), .ZN(n247) );
  INV_X1 U269 ( .A(a_3_), .ZN(n243) );
  OR2_X1 U270 ( .A1(n152), .A2(n257), .ZN(n215) );
  INV_X1 U271 ( .A(n154), .ZN(n257) );
  OR2_X1 U272 ( .A1(a_2_), .A2(n166), .ZN(n154) );
  AND2_X1 U273 ( .A1(n166), .A2(a_2_), .ZN(n152) );
  INV_X1 U274 ( .A(b_2_), .ZN(n166) );
endmodule

