module add_mul_sub_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        operation_0_, operation_1_, Result_0_, Result_1_, Result_2_, Result_3_, 
        Result_4_, Result_5_, Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, operation_0_,
         operation_1_;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360;

  NAND2_X1 U190 ( .A1(n182), .A2(n183), .ZN(Result_7_) );
  NAND2_X1 U191 ( .A1(n184), .A2(n185), .ZN(n183) );
  NAND2_X1 U192 ( .A1(n186), .A2(n187), .ZN(n182) );
  NAND2_X1 U193 ( .A1(n188), .A2(n189), .ZN(n186) );
  NAND2_X1 U194 ( .A1(n190), .A2(n191), .ZN(Result_6_) );
  NAND2_X1 U195 ( .A1(n184), .A2(n192), .ZN(n191) );
  NAND2_X1 U196 ( .A1(n193), .A2(n194), .ZN(n192) );
  NAND2_X1 U197 ( .A1(a_2_), .A2(n195), .ZN(n194) );
  NAND2_X1 U198 ( .A1(n189), .A2(n196), .ZN(n195) );
  NAND2_X1 U199 ( .A1(b_3_), .A2(n197), .ZN(n196) );
  NAND2_X1 U200 ( .A1(b_2_), .A2(n198), .ZN(n193) );
  NAND2_X1 U201 ( .A1(n188), .A2(n199), .ZN(n198) );
  NAND2_X1 U202 ( .A1(a_3_), .A2(n200), .ZN(n199) );
  NOR2_X1 U203 ( .A1(n201), .A2(n202), .ZN(n190) );
  NOR2_X1 U204 ( .A1(operation_1_), .A2(n203), .ZN(n202) );
  NAND2_X1 U205 ( .A1(n204), .A2(n205), .ZN(n203) );
  NAND2_X1 U206 ( .A1(n206), .A2(n207), .ZN(n205) );
  XOR2_X1 U207 ( .A(n208), .B(n185), .Z(n206) );
  NAND2_X1 U208 ( .A1(n209), .A2(operation_0_), .ZN(n204) );
  XOR2_X1 U209 ( .A(n208), .B(n210), .Z(n209) );
  NOR2_X1 U210 ( .A1(n211), .A2(n212), .ZN(n201) );
  XNOR2_X1 U211 ( .A(n208), .B(n189), .ZN(n211) );
  NAND2_X1 U212 ( .A1(n213), .A2(n214), .ZN(n208) );
  NAND2_X1 U213 ( .A1(n215), .A2(n216), .ZN(Result_5_) );
  NAND2_X1 U214 ( .A1(n217), .A2(n218), .ZN(n216) );
  NOR2_X1 U215 ( .A1(n219), .A2(n220), .ZN(n217) );
  NOR2_X1 U216 ( .A1(n207), .A2(n221), .ZN(n220) );
  XNOR2_X1 U217 ( .A(n222), .B(n223), .ZN(n221) );
  NOR2_X1 U218 ( .A1(operation_0_), .A2(n224), .ZN(n219) );
  XNOR2_X1 U219 ( .A(n223), .B(n225), .ZN(n224) );
  NOR2_X1 U220 ( .A1(n226), .A2(n227), .ZN(n215) );
  NOR2_X1 U221 ( .A1(n228), .A2(n212), .ZN(n227) );
  XOR2_X1 U222 ( .A(n229), .B(n223), .Z(n228) );
  XOR2_X1 U223 ( .A(n230), .B(n231), .Z(n223) );
  NOR2_X1 U224 ( .A1(n232), .A2(n187), .ZN(n226) );
  XOR2_X1 U225 ( .A(n233), .B(n234), .Z(n232) );
  XNOR2_X1 U226 ( .A(n235), .B(n236), .ZN(n233) );
  NOR2_X1 U227 ( .A1(n237), .A2(n213), .ZN(n236) );
  NAND2_X1 U228 ( .A1(n238), .A2(n239), .ZN(Result_4_) );
  NAND2_X1 U229 ( .A1(n240), .A2(n218), .ZN(n239) );
  INV_X1 U230 ( .A(operation_1_), .ZN(n218) );
  NOR2_X1 U231 ( .A1(n241), .A2(n242), .ZN(n240) );
  NOR2_X1 U232 ( .A1(n207), .A2(n243), .ZN(n242) );
  XNOR2_X1 U233 ( .A(n244), .B(n245), .ZN(n243) );
  NOR2_X1 U234 ( .A1(operation_0_), .A2(n246), .ZN(n241) );
  XNOR2_X1 U235 ( .A(n247), .B(n245), .ZN(n246) );
  NAND2_X1 U236 ( .A1(n248), .A2(n249), .ZN(n247) );
  NAND2_X1 U237 ( .A1(n225), .A2(n250), .ZN(n249) );
  AND2_X1 U238 ( .A1(n251), .A2(n213), .ZN(n225) );
  NAND2_X1 U239 ( .A1(n185), .A2(n214), .ZN(n251) );
  NAND2_X1 U240 ( .A1(n200), .A2(n197), .ZN(n214) );
  INV_X1 U241 ( .A(n237), .ZN(n185) );
  NAND2_X1 U242 ( .A1(n231), .A2(n230), .ZN(n248) );
  NOR2_X1 U243 ( .A1(n252), .A2(n253), .ZN(n238) );
  NOR2_X1 U244 ( .A1(n254), .A2(n212), .ZN(n253) );
  XOR2_X1 U245 ( .A(n255), .B(n245), .Z(n254) );
  XOR2_X1 U246 ( .A(n256), .B(n257), .Z(n245) );
  NOR2_X1 U247 ( .A1(n187), .A2(n258), .ZN(n252) );
  XOR2_X1 U248 ( .A(n259), .B(n260), .Z(n258) );
  XNOR2_X1 U249 ( .A(n261), .B(n262), .ZN(n260) );
  NAND2_X1 U250 ( .A1(n263), .A2(n264), .ZN(Result_3_) );
  NAND2_X1 U251 ( .A1(n184), .A2(n265), .ZN(n264) );
  XOR2_X1 U252 ( .A(n266), .B(n267), .Z(n265) );
  NAND2_X1 U253 ( .A1(n263), .A2(n268), .ZN(Result_2_) );
  NAND2_X1 U254 ( .A1(n184), .A2(n269), .ZN(n268) );
  XNOR2_X1 U255 ( .A(n270), .B(n271), .ZN(n269) );
  NOR2_X1 U256 ( .A1(n266), .A2(n267), .ZN(n270) );
  INV_X1 U257 ( .A(n272), .ZN(n267) );
  NAND2_X1 U258 ( .A1(n263), .A2(n273), .ZN(Result_1_) );
  NAND2_X1 U259 ( .A1(n184), .A2(n274), .ZN(n273) );
  XOR2_X1 U260 ( .A(n275), .B(n276), .Z(n274) );
  NAND2_X1 U261 ( .A1(n263), .A2(n277), .ZN(Result_0_) );
  NAND2_X1 U262 ( .A1(n184), .A2(n278), .ZN(n277) );
  NAND2_X1 U263 ( .A1(n279), .A2(n280), .ZN(n278) );
  OR2_X1 U264 ( .A1(n276), .A2(n275), .ZN(n280) );
  NAND2_X1 U265 ( .A1(n281), .A2(n282), .ZN(n275) );
  NAND2_X1 U266 ( .A1(n283), .A2(n284), .ZN(n281) );
  NAND2_X1 U267 ( .A1(n285), .A2(n286), .ZN(n284) );
  INV_X1 U268 ( .A(n287), .ZN(n285) );
  NAND2_X1 U269 ( .A1(n288), .A2(n289), .ZN(n283) );
  NAND2_X1 U270 ( .A1(n290), .A2(n272), .ZN(n276) );
  XNOR2_X1 U271 ( .A(n291), .B(n292), .ZN(n272) );
  XOR2_X1 U272 ( .A(n293), .B(n294), .Z(n292) );
  NAND2_X1 U273 ( .A1(a_0_), .A2(b_2_), .ZN(n294) );
  NOR2_X1 U274 ( .A1(n266), .A2(n271), .ZN(n290) );
  XOR2_X1 U275 ( .A(n289), .B(n295), .Z(n271) );
  AND2_X1 U276 ( .A1(n296), .A2(n297), .ZN(n266) );
  NAND2_X1 U277 ( .A1(n259), .A2(n298), .ZN(n297) );
  NAND2_X1 U278 ( .A1(n261), .A2(n262), .ZN(n298) );
  XNOR2_X1 U279 ( .A(n299), .B(n300), .ZN(n259) );
  NAND2_X1 U280 ( .A1(n301), .A2(n302), .ZN(n299) );
  OR2_X1 U281 ( .A1(n262), .A2(n261), .ZN(n296) );
  AND2_X1 U282 ( .A1(n303), .A2(n304), .ZN(n261) );
  NAND2_X1 U283 ( .A1(n305), .A2(n306), .ZN(n304) );
  NOR2_X1 U284 ( .A1(n307), .A2(n237), .ZN(n305) );
  NAND2_X1 U285 ( .A1(a_3_), .A2(b_3_), .ZN(n237) );
  NOR2_X1 U286 ( .A1(n235), .A2(n234), .ZN(n307) );
  NAND2_X1 U287 ( .A1(n235), .A2(n234), .ZN(n303) );
  XOR2_X1 U288 ( .A(n306), .B(n308), .Z(n234) );
  AND2_X1 U289 ( .A1(a_1_), .A2(b_3_), .ZN(n235) );
  NAND2_X1 U290 ( .A1(a_0_), .A2(b_3_), .ZN(n262) );
  AND2_X1 U291 ( .A1(n286), .A2(n282), .ZN(n279) );
  NAND2_X1 U292 ( .A1(n309), .A2(n310), .ZN(n282) );
  AND2_X1 U293 ( .A1(n286), .A2(n289), .ZN(n310) );
  NAND2_X1 U294 ( .A1(n311), .A2(n312), .ZN(n289) );
  NAND2_X1 U295 ( .A1(n313), .A2(a_0_), .ZN(n312) );
  NOR2_X1 U296 ( .A1(n314), .A2(n197), .ZN(n313) );
  NOR2_X1 U297 ( .A1(n293), .A2(n291), .ZN(n314) );
  NAND2_X1 U298 ( .A1(n291), .A2(n293), .ZN(n311) );
  NAND2_X1 U299 ( .A1(n301), .A2(n315), .ZN(n293) );
  NAND2_X1 U300 ( .A1(n300), .A2(n302), .ZN(n315) );
  NAND2_X1 U301 ( .A1(n316), .A2(n317), .ZN(n302) );
  NAND2_X1 U302 ( .A1(a_1_), .A2(b_2_), .ZN(n317) );
  XOR2_X1 U303 ( .A(n318), .B(n319), .Z(n300) );
  OR2_X1 U304 ( .A1(n316), .A2(n231), .ZN(n301) );
  NAND2_X1 U305 ( .A1(n308), .A2(n306), .ZN(n316) );
  INV_X1 U306 ( .A(n213), .ZN(n306) );
  NAND2_X1 U307 ( .A1(b_2_), .A2(a_2_), .ZN(n213) );
  NOR2_X1 U308 ( .A1(n320), .A2(n230), .ZN(n308) );
  XNOR2_X1 U309 ( .A(n321), .B(n322), .ZN(n291) );
  XOR2_X1 U310 ( .A(n323), .B(n324), .Z(n322) );
  NOR2_X1 U311 ( .A1(n287), .A2(n295), .ZN(n309) );
  INV_X1 U312 ( .A(n288), .ZN(n295) );
  XOR2_X1 U313 ( .A(n325), .B(n326), .Z(n288) );
  XOR2_X1 U314 ( .A(n327), .B(n328), .Z(n325) );
  NOR2_X1 U315 ( .A1(n329), .A2(n330), .ZN(n287) );
  NOR2_X1 U316 ( .A1(n257), .A2(n256), .ZN(n330) );
  NAND2_X1 U317 ( .A1(a_0_), .A2(n329), .ZN(n286) );
  NAND2_X1 U318 ( .A1(n331), .A2(n332), .ZN(n329) );
  NAND2_X1 U319 ( .A1(n328), .A2(n333), .ZN(n332) );
  NAND2_X1 U320 ( .A1(n334), .A2(n335), .ZN(n333) );
  NAND2_X1 U321 ( .A1(n321), .A2(n336), .ZN(n328) );
  NAND2_X1 U322 ( .A1(n324), .A2(n323), .ZN(n336) );
  NOR2_X1 U323 ( .A1(n256), .A2(n200), .ZN(n323) );
  INV_X1 U324 ( .A(n250), .ZN(n324) );
  NAND2_X1 U325 ( .A1(a_1_), .A2(b_1_), .ZN(n250) );
  NAND2_X1 U326 ( .A1(n318), .A2(n319), .ZN(n321) );
  NOR2_X1 U327 ( .A1(n256), .A2(n320), .ZN(n319) );
  NOR2_X1 U328 ( .A1(n230), .A2(n200), .ZN(n318) );
  NAND2_X1 U329 ( .A1(n326), .A2(n327), .ZN(n331) );
  INV_X1 U330 ( .A(n335), .ZN(n327) );
  NAND2_X1 U331 ( .A1(a_0_), .A2(b_1_), .ZN(n335) );
  INV_X1 U332 ( .A(n334), .ZN(n326) );
  NAND2_X1 U333 ( .A1(b_0_), .A2(a_1_), .ZN(n334) );
  INV_X1 U334 ( .A(n187), .ZN(n184) );
  NAND2_X1 U335 ( .A1(operation_1_), .A2(operation_0_), .ZN(n187) );
  AND2_X1 U336 ( .A1(n337), .A2(n338), .ZN(n263) );
  NAND2_X1 U337 ( .A1(n339), .A2(n340), .ZN(n338) );
  INV_X1 U338 ( .A(n212), .ZN(n340) );
  NAND2_X1 U339 ( .A1(operation_1_), .A2(n207), .ZN(n212) );
  NOR2_X1 U340 ( .A1(n341), .A2(n342), .ZN(n339) );
  AND2_X1 U341 ( .A1(n255), .A2(a_0_), .ZN(n342) );
  NOR2_X1 U342 ( .A1(b_0_), .A2(n343), .ZN(n341) );
  NOR2_X1 U343 ( .A1(a_0_), .A2(n255), .ZN(n343) );
  NAND2_X1 U344 ( .A1(n344), .A2(n345), .ZN(n255) );
  NAND2_X1 U345 ( .A1(n346), .A2(n230), .ZN(n345) );
  INV_X1 U346 ( .A(b_1_), .ZN(n230) );
  OR2_X1 U347 ( .A1(n229), .A2(a_1_), .ZN(n346) );
  NAND2_X1 U348 ( .A1(a_1_), .A2(n229), .ZN(n344) );
  NAND2_X1 U349 ( .A1(n347), .A2(n348), .ZN(n229) );
  NAND2_X1 U350 ( .A1(n349), .A2(n197), .ZN(n348) );
  INV_X1 U351 ( .A(b_2_), .ZN(n197) );
  OR2_X1 U352 ( .A1(n189), .A2(a_2_), .ZN(n349) );
  NAND2_X1 U353 ( .A1(a_2_), .A2(n189), .ZN(n347) );
  NAND2_X1 U354 ( .A1(b_3_), .A2(n320), .ZN(n189) );
  NAND2_X1 U355 ( .A1(n350), .A2(n351), .ZN(n337) );
  NOR2_X1 U356 ( .A1(operation_1_), .A2(n352), .ZN(n351) );
  NOR2_X1 U357 ( .A1(n353), .A2(n256), .ZN(n352) );
  INV_X1 U358 ( .A(b_0_), .ZN(n256) );
  NOR2_X1 U359 ( .A1(n257), .A2(n244), .ZN(n353) );
  NOR2_X1 U360 ( .A1(n354), .A2(n207), .ZN(n350) );
  INV_X1 U361 ( .A(operation_0_), .ZN(n207) );
  AND2_X1 U362 ( .A1(n257), .A2(n244), .ZN(n354) );
  NAND2_X1 U363 ( .A1(n355), .A2(n356), .ZN(n244) );
  NAND2_X1 U364 ( .A1(b_1_), .A2(n357), .ZN(n356) );
  OR2_X1 U365 ( .A1(n222), .A2(n231), .ZN(n357) );
  NAND2_X1 U366 ( .A1(n222), .A2(n231), .ZN(n355) );
  INV_X1 U367 ( .A(a_1_), .ZN(n231) );
  NAND2_X1 U368 ( .A1(n358), .A2(n359), .ZN(n222) );
  NAND2_X1 U369 ( .A1(b_2_), .A2(n360), .ZN(n359) );
  NAND2_X1 U370 ( .A1(n210), .A2(a_2_), .ZN(n360) );
  NAND2_X1 U371 ( .A1(n188), .A2(n200), .ZN(n358) );
  INV_X1 U372 ( .A(a_2_), .ZN(n200) );
  INV_X1 U373 ( .A(n210), .ZN(n188) );
  NOR2_X1 U374 ( .A1(n320), .A2(b_3_), .ZN(n210) );
  INV_X1 U375 ( .A(a_3_), .ZN(n320) );
  INV_X1 U376 ( .A(a_0_), .ZN(n257) );
endmodule

