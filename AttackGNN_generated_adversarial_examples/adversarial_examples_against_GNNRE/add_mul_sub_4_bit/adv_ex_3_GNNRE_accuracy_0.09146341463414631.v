module add_mul_sub_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        operation_0_, operation_1_, Result_0_, Result_1_, Result_2_, Result_3_, 
        Result_4_, Result_5_, Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, operation_0_,
         operation_1_;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319;

  NAND2_X1 U172 ( .A1(n164), .A2(n165), .ZN(Result_7_) );
  NAND2_X1 U173 ( .A1(n166), .A2(n167), .ZN(n165) );
  NAND2_X1 U174 ( .A1(n168), .A2(n169), .ZN(n164) );
  NAND2_X1 U175 ( .A1(n170), .A2(n171), .ZN(n168) );
  NAND3_X1 U176 ( .A1(n172), .A2(n173), .A3(n174), .ZN(Result_6_) );
  NAND2_X1 U177 ( .A1(n166), .A2(n175), .ZN(n174) );
  NAND4_X1 U178 ( .A1(n176), .A2(n177), .A3(n178), .A4(n179), .ZN(n175) );
  NAND2_X1 U179 ( .A1(n180), .A2(b_3_), .ZN(n179) );
  INV_X1 U180 ( .A(n181), .ZN(n180) );
  OR2_X1 U181 ( .A1(n182), .A2(n183), .ZN(n178) );
  OR2_X1 U182 ( .A1(n171), .A2(n184), .ZN(n177) );
  NAND2_X1 U183 ( .A1(n185), .A2(b_2_), .ZN(n176) );
  NAND2_X1 U184 ( .A1(n186), .A2(n187), .ZN(n173) );
  XNOR2_X1 U185 ( .A(n188), .B(n171), .ZN(n186) );
  NAND3_X1 U186 ( .A1(n189), .A2(n190), .A3(n191), .ZN(n172) );
  NAND2_X1 U187 ( .A1(n192), .A2(n193), .ZN(n190) );
  XNOR2_X1 U188 ( .A(n167), .B(n188), .ZN(n192) );
  NAND2_X1 U189 ( .A1(n194), .A2(operation_0_), .ZN(n189) );
  XOR2_X1 U190 ( .A(n170), .B(n188), .Z(n194) );
  NAND2_X1 U191 ( .A1(n182), .A2(n181), .ZN(n188) );
  NAND3_X1 U192 ( .A1(n195), .A2(n196), .A3(n197), .ZN(Result_5_) );
  NAND3_X1 U193 ( .A1(n198), .A2(n199), .A3(n191), .ZN(n197) );
  NAND2_X1 U194 ( .A1(n200), .A2(n193), .ZN(n199) );
  XNOR2_X1 U195 ( .A(n201), .B(n202), .ZN(n200) );
  NAND2_X1 U196 ( .A1(n203), .A2(operation_0_), .ZN(n198) );
  XNOR2_X1 U197 ( .A(n204), .B(n202), .ZN(n203) );
  NAND2_X1 U198 ( .A1(n166), .A2(n205), .ZN(n196) );
  XNOR2_X1 U199 ( .A(n206), .B(n207), .ZN(n205) );
  NAND2_X1 U200 ( .A1(n208), .A2(n209), .ZN(n206) );
  NAND2_X1 U201 ( .A1(n187), .A2(n210), .ZN(n195) );
  XOR2_X1 U202 ( .A(n202), .B(n211), .Z(n210) );
  NAND2_X1 U203 ( .A1(n212), .A2(n213), .ZN(n202) );
  NAND3_X1 U204 ( .A1(n214), .A2(n215), .A3(n216), .ZN(Result_4_) );
  NAND3_X1 U205 ( .A1(n217), .A2(n218), .A3(n191), .ZN(n216) );
  NAND2_X1 U206 ( .A1(n219), .A2(n193), .ZN(n218) );
  INV_X1 U207 ( .A(operation_0_), .ZN(n193) );
  XOR2_X1 U208 ( .A(n220), .B(n221), .Z(n219) );
  NAND2_X1 U209 ( .A1(n213), .A2(n222), .ZN(n220) );
  NAND2_X1 U210 ( .A1(n201), .A2(n212), .ZN(n222) );
  NOR2_X1 U211 ( .A1(n223), .A2(n224), .ZN(n201) );
  AND2_X1 U212 ( .A1(n167), .A2(n225), .ZN(n223) );
  NAND2_X1 U213 ( .A1(n184), .A2(n226), .ZN(n225) );
  NAND2_X1 U214 ( .A1(n227), .A2(n228), .ZN(n213) );
  NAND2_X1 U215 ( .A1(n229), .A2(operation_0_), .ZN(n217) );
  XOR2_X1 U216 ( .A(n221), .B(n230), .Z(n229) );
  NAND2_X1 U217 ( .A1(n166), .A2(n231), .ZN(n215) );
  XNOR2_X1 U218 ( .A(n232), .B(n233), .ZN(n231) );
  NAND2_X1 U219 ( .A1(n234), .A2(n235), .ZN(n232) );
  NAND2_X1 U220 ( .A1(n187), .A2(n236), .ZN(n214) );
  XNOR2_X1 U221 ( .A(n237), .B(n221), .ZN(n236) );
  XOR2_X1 U222 ( .A(n238), .B(n239), .Z(n221) );
  NAND2_X1 U223 ( .A1(n240), .A2(n241), .ZN(Result_3_) );
  NAND2_X1 U224 ( .A1(n166), .A2(n242), .ZN(n241) );
  XOR2_X1 U225 ( .A(n243), .B(n244), .Z(n242) );
  NAND2_X1 U226 ( .A1(n240), .A2(n245), .ZN(Result_2_) );
  NAND2_X1 U227 ( .A1(n166), .A2(n246), .ZN(n245) );
  XOR2_X1 U228 ( .A(n247), .B(n248), .Z(n246) );
  NAND2_X1 U229 ( .A1(n240), .A2(n249), .ZN(Result_1_) );
  NAND2_X1 U230 ( .A1(n166), .A2(n250), .ZN(n249) );
  XNOR2_X1 U231 ( .A(n251), .B(n252), .ZN(n250) );
  NAND2_X1 U232 ( .A1(n253), .A2(n254), .ZN(n252) );
  NAND2_X1 U233 ( .A1(n240), .A2(n255), .ZN(Result_0_) );
  NAND2_X1 U234 ( .A1(n166), .A2(n256), .ZN(n255) );
  NAND3_X1 U235 ( .A1(n257), .A2(n253), .A3(n258), .ZN(n256) );
  NAND2_X1 U236 ( .A1(a_0_), .A2(n259), .ZN(n258) );
  NAND4_X1 U237 ( .A1(a_0_), .A2(n260), .A3(b_0_), .A4(n261), .ZN(n253) );
  NOR2_X1 U238 ( .A1(n259), .A2(n262), .ZN(n261) );
  INV_X1 U239 ( .A(n263), .ZN(n262) );
  NAND2_X1 U240 ( .A1(n251), .A2(n254), .ZN(n257) );
  NAND3_X1 U241 ( .A1(n264), .A2(n265), .A3(n266), .ZN(n254) );
  NAND2_X1 U242 ( .A1(n263), .A2(n260), .ZN(n266) );
  NAND2_X1 U243 ( .A1(n259), .A2(n239), .ZN(n265) );
  OR3_X1 U244 ( .A1(n259), .A2(n238), .A3(n239), .ZN(n264) );
  NAND2_X1 U245 ( .A1(n267), .A2(n268), .ZN(n259) );
  NAND3_X1 U246 ( .A1(b_1_), .A2(n269), .A3(a_0_), .ZN(n268) );
  OR2_X1 U247 ( .A1(n270), .A2(n271), .ZN(n269) );
  NAND2_X1 U248 ( .A1(n271), .A2(n270), .ZN(n267) );
  AND2_X1 U249 ( .A1(n247), .A2(n248), .ZN(n251) );
  XOR2_X1 U250 ( .A(n260), .B(n263), .Z(n248) );
  XOR2_X1 U251 ( .A(n272), .B(n273), .Z(n263) );
  NOR2_X1 U252 ( .A1(n228), .A2(n239), .ZN(n273) );
  XOR2_X1 U253 ( .A(n271), .B(n270), .Z(n272) );
  NAND2_X1 U254 ( .A1(n274), .A2(n275), .ZN(n270) );
  NAND2_X1 U255 ( .A1(n276), .A2(n277), .ZN(n275) );
  NOR2_X1 U256 ( .A1(n238), .A2(n227), .ZN(n271) );
  NAND2_X1 U257 ( .A1(n278), .A2(n279), .ZN(n260) );
  NAND3_X1 U258 ( .A1(b_2_), .A2(n280), .A3(a_0_), .ZN(n279) );
  OR2_X1 U259 ( .A1(n281), .A2(n282), .ZN(n280) );
  NAND2_X1 U260 ( .A1(n281), .A2(n282), .ZN(n278) );
  NOR2_X1 U261 ( .A1(n244), .A2(n243), .ZN(n247) );
  AND2_X1 U262 ( .A1(n234), .A2(n283), .ZN(n243) );
  NAND2_X1 U263 ( .A1(n233), .A2(n235), .ZN(n283) );
  NAND2_X1 U264 ( .A1(n284), .A2(n285), .ZN(n235) );
  NAND2_X1 U265 ( .A1(a_0_), .A2(b_3_), .ZN(n285) );
  INV_X1 U266 ( .A(n286), .ZN(n284) );
  XNOR2_X1 U267 ( .A(n287), .B(n288), .ZN(n233) );
  NAND2_X1 U268 ( .A1(n289), .A2(n290), .ZN(n287) );
  NAND2_X1 U269 ( .A1(a_0_), .A2(n286), .ZN(n234) );
  NAND2_X1 U270 ( .A1(n208), .A2(n291), .ZN(n286) );
  NAND2_X1 U271 ( .A1(n207), .A2(n209), .ZN(n291) );
  NAND2_X1 U272 ( .A1(n292), .A2(n293), .ZN(n209) );
  NAND2_X1 U273 ( .A1(a_1_), .A2(b_3_), .ZN(n293) );
  XOR2_X1 U274 ( .A(n224), .B(n294), .Z(n207) );
  OR2_X1 U275 ( .A1(n292), .A2(n227), .ZN(n208) );
  NAND2_X1 U276 ( .A1(n224), .A2(n167), .ZN(n292) );
  AND2_X1 U277 ( .A1(a_3_), .A2(b_3_), .ZN(n167) );
  XOR2_X1 U278 ( .A(n281), .B(n295), .Z(n244) );
  XOR2_X1 U279 ( .A(n282), .B(n296), .Z(n295) );
  NAND2_X1 U280 ( .A1(a_0_), .A2(b_2_), .ZN(n296) );
  NAND2_X1 U281 ( .A1(n289), .A2(n297), .ZN(n282) );
  NAND2_X1 U282 ( .A1(n288), .A2(n290), .ZN(n297) );
  NAND2_X1 U283 ( .A1(n298), .A2(n299), .ZN(n290) );
  NAND2_X1 U284 ( .A1(a_1_), .A2(b_2_), .ZN(n299) );
  AND2_X1 U285 ( .A1(n274), .A2(n300), .ZN(n288) );
  OR2_X1 U286 ( .A1(n301), .A2(n302), .ZN(n300) );
  OR2_X1 U287 ( .A1(n298), .A2(n227), .ZN(n289) );
  NAND2_X1 U288 ( .A1(n294), .A2(n224), .ZN(n298) );
  NOR2_X1 U289 ( .A1(n226), .A2(n184), .ZN(n224) );
  NOR2_X1 U290 ( .A1(n228), .A2(n183), .ZN(n294) );
  XNOR2_X1 U291 ( .A(n274), .B(n303), .ZN(n281) );
  XOR2_X1 U292 ( .A(n277), .B(n276), .Z(n303) );
  INV_X1 U293 ( .A(n212), .ZN(n276) );
  NAND2_X1 U294 ( .A1(b_1_), .A2(a_1_), .ZN(n212) );
  NOR2_X1 U295 ( .A1(n238), .A2(n184), .ZN(n277) );
  NAND2_X1 U296 ( .A1(n302), .A2(n301), .ZN(n274) );
  NOR2_X1 U297 ( .A1(n228), .A2(n184), .ZN(n301) );
  NOR2_X1 U298 ( .A1(n238), .A2(n183), .ZN(n302) );
  INV_X1 U299 ( .A(n169), .ZN(n166) );
  NAND2_X1 U300 ( .A1(operation_1_), .A2(operation_0_), .ZN(n169) );
  AND2_X1 U301 ( .A1(n304), .A2(n305), .ZN(n240) );
  NAND3_X1 U302 ( .A1(n306), .A2(n307), .A3(n187), .ZN(n305) );
  NOR2_X1 U303 ( .A1(n191), .A2(operation_0_), .ZN(n187) );
  NAND2_X1 U304 ( .A1(n308), .A2(n238), .ZN(n307) );
  INV_X1 U305 ( .A(b_0_), .ZN(n238) );
  OR2_X1 U306 ( .A1(n237), .A2(a_0_), .ZN(n308) );
  NAND2_X1 U307 ( .A1(a_0_), .A2(n237), .ZN(n306) );
  NAND2_X1 U308 ( .A1(n309), .A2(n310), .ZN(n237) );
  NAND2_X1 U309 ( .A1(n311), .A2(n228), .ZN(n310) );
  INV_X1 U310 ( .A(b_1_), .ZN(n228) );
  OR2_X1 U311 ( .A1(n211), .A2(a_1_), .ZN(n311) );
  NAND2_X1 U312 ( .A1(a_1_), .A2(n211), .ZN(n309) );
  NAND2_X1 U313 ( .A1(n181), .A2(n312), .ZN(n211) );
  NAND2_X1 U314 ( .A1(n182), .A2(n171), .ZN(n312) );
  NAND2_X1 U315 ( .A1(b_3_), .A2(n183), .ZN(n171) );
  NAND4_X1 U316 ( .A1(operation_0_), .A2(n313), .A3(n314), .A4(n191), .ZN(n304) );
  INV_X1 U317 ( .A(operation_1_), .ZN(n191) );
  NAND2_X1 U318 ( .A1(b_0_), .A2(n315), .ZN(n314) );
  OR2_X1 U319 ( .A1(n230), .A2(n239), .ZN(n315) );
  NAND2_X1 U320 ( .A1(n230), .A2(n239), .ZN(n313) );
  INV_X1 U321 ( .A(a_0_), .ZN(n239) );
  NAND2_X1 U322 ( .A1(n316), .A2(n317), .ZN(n230) );
  NAND2_X1 U323 ( .A1(b_1_), .A2(n318), .ZN(n317) );
  OR2_X1 U324 ( .A1(n204), .A2(n227), .ZN(n318) );
  NAND2_X1 U325 ( .A1(n204), .A2(n227), .ZN(n316) );
  INV_X1 U326 ( .A(a_1_), .ZN(n227) );
  NAND2_X1 U327 ( .A1(n182), .A2(n319), .ZN(n204) );
  NAND2_X1 U328 ( .A1(n181), .A2(n170), .ZN(n319) );
  INV_X1 U329 ( .A(n185), .ZN(n170) );
  NOR2_X1 U330 ( .A1(n183), .A2(b_3_), .ZN(n185) );
  INV_X1 U331 ( .A(a_3_), .ZN(n183) );
  NAND2_X1 U332 ( .A1(a_2_), .A2(n226), .ZN(n181) );
  INV_X1 U333 ( .A(b_2_), .ZN(n226) );
  NAND2_X1 U334 ( .A1(b_2_), .A2(n184), .ZN(n182) );
  INV_X1 U335 ( .A(a_2_), .ZN(n184) );
endmodule

