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
  wire   Result_7_, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269;
  assign Result_6_ = Result_7_;
  assign Result_4_ = Result_7_;
  assign Result_2_ = Result_7_;
  assign Result_0_ = Result_7_;
  assign Result_1_ = Result_7_;
  assign Result_3_ = Result_7_;
  assign Result_5_ = Result_7_;

  OR2_X1 U147 ( .A1(n139), .A2(n140), .ZN(Result_9_) );
  AND2_X1 U148 ( .A1(n141), .A2(Result_7_), .ZN(n140) );
  XOR2_X1 U149 ( .A(n142), .B(n143), .Z(n141) );
  AND2_X1 U150 ( .A1(n144), .A2(n145), .ZN(n139) );
  XOR2_X1 U151 ( .A(n143), .B(n146), .Z(n144) );
  OR2_X1 U152 ( .A1(n147), .A2(n148), .ZN(n143) );
  INV_X1 U153 ( .A(n149), .ZN(n148) );
  OR2_X1 U154 ( .A1(n150), .A2(n151), .ZN(Result_8_) );
  AND2_X1 U155 ( .A1(n152), .A2(Result_7_), .ZN(n151) );
  OR2_X1 U156 ( .A1(n153), .A2(n154), .ZN(n152) );
  INV_X1 U157 ( .A(n155), .ZN(n153) );
  OR2_X1 U158 ( .A1(n147), .A2(n156), .ZN(n155) );
  AND2_X1 U159 ( .A1(n142), .A2(n149), .ZN(n156) );
  OR2_X1 U160 ( .A1(n157), .A2(n158), .ZN(n142) );
  AND2_X1 U161 ( .A1(n159), .A2(n160), .ZN(n157) );
  AND2_X1 U162 ( .A1(n161), .A2(n145), .ZN(n150) );
  XNOR2_X1 U163 ( .A(n154), .B(n162), .ZN(n161) );
  AND2_X1 U164 ( .A1(n163), .A2(n164), .ZN(n162) );
  OR2_X1 U165 ( .A1(b_1_), .A2(n165), .ZN(n164) );
  AND2_X1 U166 ( .A1(n146), .A2(a_1_), .ZN(n165) );
  OR2_X1 U167 ( .A1(a_1_), .A2(n146), .ZN(n163) );
  INV_X1 U168 ( .A(n166), .ZN(n146) );
  OR2_X1 U169 ( .A1(n167), .A2(n168), .ZN(n166) );
  AND2_X1 U170 ( .A1(n169), .A2(n170), .ZN(n168) );
  AND2_X1 U171 ( .A1(n171), .A2(n172), .ZN(n167) );
  OR2_X1 U172 ( .A1(n170), .A2(n169), .ZN(n171) );
  INV_X1 U173 ( .A(a_2_), .ZN(n170) );
  AND2_X1 U174 ( .A1(n173), .A2(n174), .ZN(n154) );
  OR2_X1 U175 ( .A1(n175), .A2(b_0_), .ZN(n174) );
  INV_X1 U176 ( .A(a_0_), .ZN(n175) );
  OR2_X1 U177 ( .A1(n176), .A2(n177), .ZN(Result_15_) );
  INV_X1 U178 ( .A(n178), .ZN(n176) );
  OR2_X1 U179 ( .A1(n179), .A2(n180), .ZN(Result_14_) );
  AND2_X1 U180 ( .A1(n181), .A2(n145), .ZN(n180) );
  XOR2_X1 U181 ( .A(n182), .B(n183), .Z(n181) );
  AND2_X1 U182 ( .A1(b_7_), .A2(a_7_), .ZN(n183) );
  AND2_X1 U183 ( .A1(n184), .A2(Result_7_), .ZN(n179) );
  XOR2_X1 U184 ( .A(n182), .B(n177), .Z(n184) );
  OR2_X1 U185 ( .A1(n185), .A2(n186), .ZN(n182) );
  INV_X1 U186 ( .A(n187), .ZN(n186) );
  OR2_X1 U187 ( .A1(n188), .A2(n189), .ZN(Result_13_) );
  AND2_X1 U188 ( .A1(n190), .A2(Result_7_), .ZN(n189) );
  XOR2_X1 U189 ( .A(n191), .B(n192), .Z(n190) );
  AND2_X1 U190 ( .A1(n145), .A2(n193), .ZN(n188) );
  XOR2_X1 U191 ( .A(n194), .B(n192), .Z(n193) );
  OR2_X1 U192 ( .A1(n195), .A2(n196), .ZN(n192) );
  INV_X1 U193 ( .A(n197), .ZN(n196) );
  OR2_X1 U194 ( .A1(n198), .A2(n199), .ZN(Result_12_) );
  AND2_X1 U195 ( .A1(n200), .A2(Result_7_), .ZN(n199) );
  XOR2_X1 U196 ( .A(n201), .B(n202), .Z(n200) );
  AND2_X1 U197 ( .A1(n203), .A2(n145), .ZN(n198) );
  XNOR2_X1 U198 ( .A(n202), .B(n204), .ZN(n203) );
  OR2_X1 U199 ( .A1(n205), .A2(n206), .ZN(n202) );
  INV_X1 U200 ( .A(n207), .ZN(n206) );
  OR2_X1 U201 ( .A1(n208), .A2(n209), .ZN(Result_11_) );
  AND2_X1 U202 ( .A1(n210), .A2(Result_7_), .ZN(n209) );
  XOR2_X1 U203 ( .A(n211), .B(n212), .Z(n210) );
  AND2_X1 U204 ( .A1(n213), .A2(n145), .ZN(n208) );
  XNOR2_X1 U205 ( .A(n212), .B(n214), .ZN(n213) );
  OR2_X1 U206 ( .A1(n215), .A2(n216), .ZN(n212) );
  INV_X1 U207 ( .A(n217), .ZN(n216) );
  OR2_X1 U208 ( .A1(n218), .A2(n219), .ZN(Result_10_) );
  AND2_X1 U209 ( .A1(n220), .A2(Result_7_), .ZN(n219) );
  XOR2_X1 U210 ( .A(n159), .B(n221), .Z(n220) );
  OR2_X1 U211 ( .A1(n222), .A2(n215), .ZN(n159) );
  AND2_X1 U212 ( .A1(n211), .A2(n217), .ZN(n222) );
  OR2_X1 U213 ( .A1(n223), .A2(n205), .ZN(n211) );
  AND2_X1 U214 ( .A1(n201), .A2(n207), .ZN(n223) );
  AND2_X1 U215 ( .A1(n224), .A2(n145), .ZN(n218) );
  INV_X1 U216 ( .A(n225), .ZN(n145) );
  OR2_X1 U217 ( .A1(Result_7_), .A2(n226), .ZN(n225) );
  AND2_X1 U218 ( .A1(n227), .A2(n228), .ZN(n226) );
  AND2_X1 U219 ( .A1(n229), .A2(n230), .ZN(n228) );
  AND2_X1 U220 ( .A1(n217), .A2(n160), .ZN(n230) );
  AND2_X1 U221 ( .A1(n149), .A2(n207), .ZN(n229) );
  AND2_X1 U222 ( .A1(n231), .A2(n232), .ZN(n227) );
  AND2_X1 U223 ( .A1(n187), .A2(n173), .ZN(n232) );
  AND2_X1 U224 ( .A1(n178), .A2(n197), .ZN(n231) );
  OR2_X1 U225 ( .A1(a_7_), .A2(n233), .ZN(n178) );
  OR2_X1 U226 ( .A1(n234), .A2(n235), .ZN(Result_7_) );
  AND2_X1 U227 ( .A1(a_0_), .A2(n236), .ZN(n235) );
  AND2_X1 U228 ( .A1(n237), .A2(n173), .ZN(n234) );
  OR2_X1 U229 ( .A1(a_0_), .A2(n236), .ZN(n173) );
  INV_X1 U230 ( .A(b_0_), .ZN(n236) );
  OR2_X1 U231 ( .A1(n238), .A2(n147), .ZN(n237) );
  AND2_X1 U232 ( .A1(n239), .A2(a_1_), .ZN(n147) );
  AND2_X1 U233 ( .A1(n240), .A2(n241), .ZN(n238) );
  OR2_X1 U234 ( .A1(n242), .A2(n243), .ZN(n241) );
  OR2_X1 U235 ( .A1(n158), .A2(n215), .ZN(n243) );
  AND2_X1 U236 ( .A1(n244), .A2(a_3_), .ZN(n215) );
  AND2_X1 U237 ( .A1(n245), .A2(n246), .ZN(n242) );
  OR2_X1 U238 ( .A1(n205), .A2(n201), .ZN(n246) );
  OR2_X1 U239 ( .A1(n247), .A2(n195), .ZN(n201) );
  AND2_X1 U240 ( .A1(a_5_), .A2(n248), .ZN(n195) );
  AND2_X1 U241 ( .A1(n197), .A2(n191), .ZN(n247) );
  OR2_X1 U242 ( .A1(n249), .A2(n185), .ZN(n191) );
  AND2_X1 U243 ( .A1(a_6_), .A2(n250), .ZN(n185) );
  AND2_X1 U244 ( .A1(n177), .A2(n187), .ZN(n249) );
  OR2_X1 U245 ( .A1(a_6_), .A2(n250), .ZN(n187) );
  INV_X1 U246 ( .A(b_6_), .ZN(n250) );
  AND2_X1 U247 ( .A1(n233), .A2(a_7_), .ZN(n177) );
  INV_X1 U248 ( .A(b_7_), .ZN(n233) );
  OR2_X1 U249 ( .A1(a_5_), .A2(n248), .ZN(n197) );
  AND2_X1 U250 ( .A1(n251), .A2(a_4_), .ZN(n205) );
  AND2_X1 U251 ( .A1(n207), .A2(n217), .ZN(n245) );
  OR2_X1 U252 ( .A1(a_3_), .A2(n244), .ZN(n217) );
  OR2_X1 U253 ( .A1(a_4_), .A2(n251), .ZN(n207) );
  AND2_X1 U254 ( .A1(n149), .A2(n160), .ZN(n240) );
  OR2_X1 U255 ( .A1(a_1_), .A2(n239), .ZN(n149) );
  INV_X1 U256 ( .A(b_1_), .ZN(n239) );
  XNOR2_X1 U257 ( .A(n221), .B(n169), .ZN(n224) );
  OR2_X1 U258 ( .A1(n252), .A2(n253), .ZN(n169) );
  AND2_X1 U259 ( .A1(n214), .A2(n254), .ZN(n253) );
  AND2_X1 U260 ( .A1(n255), .A2(n244), .ZN(n252) );
  INV_X1 U261 ( .A(b_3_), .ZN(n244) );
  OR2_X1 U262 ( .A1(n254), .A2(n214), .ZN(n255) );
  OR2_X1 U263 ( .A1(n256), .A2(n257), .ZN(n214) );
  AND2_X1 U264 ( .A1(n204), .A2(n258), .ZN(n257) );
  AND2_X1 U265 ( .A1(n259), .A2(n251), .ZN(n256) );
  INV_X1 U266 ( .A(b_4_), .ZN(n251) );
  OR2_X1 U267 ( .A1(n258), .A2(n204), .ZN(n259) );
  OR2_X1 U268 ( .A1(n260), .A2(n261), .ZN(n204) );
  AND2_X1 U269 ( .A1(n262), .A2(n263), .ZN(n261) );
  AND2_X1 U270 ( .A1(n264), .A2(n248), .ZN(n260) );
  INV_X1 U271 ( .A(b_5_), .ZN(n248) );
  OR2_X1 U272 ( .A1(n262), .A2(n263), .ZN(n264) );
  INV_X1 U273 ( .A(a_5_), .ZN(n263) );
  INV_X1 U274 ( .A(n194), .ZN(n262) );
  OR2_X1 U275 ( .A1(n265), .A2(n266), .ZN(n194) );
  AND2_X1 U276 ( .A1(a_6_), .A2(b_6_), .ZN(n266) );
  AND2_X1 U277 ( .A1(n267), .A2(b_7_), .ZN(n265) );
  AND2_X1 U278 ( .A1(a_7_), .A2(n268), .ZN(n267) );
  OR2_X1 U279 ( .A1(a_6_), .A2(b_6_), .ZN(n268) );
  INV_X1 U280 ( .A(a_4_), .ZN(n258) );
  INV_X1 U281 ( .A(a_3_), .ZN(n254) );
  OR2_X1 U282 ( .A1(n158), .A2(n269), .ZN(n221) );
  INV_X1 U283 ( .A(n160), .ZN(n269) );
  OR2_X1 U284 ( .A1(a_2_), .A2(n172), .ZN(n160) );
  AND2_X1 U285 ( .A1(n172), .A2(a_2_), .ZN(n158) );
  INV_X1 U286 ( .A(b_2_), .ZN(n172) );
endmodule

