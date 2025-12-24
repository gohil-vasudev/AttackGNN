module add_mul_sub_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        operation_0_, operation_1_, Result_0_, Result_1_, Result_2_, Result_3_, 
        Result_4_, Result_5_, Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, operation_0_,
         operation_1_;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373;

  XOR2_X1 U197 ( .A(n300), .B(n301), .Z(n189) );
  NAND2_X1 U198 ( .A1(n190), .A2(n191), .ZN(Result_7_) );
  NAND2_X1 U199 ( .A1(n192), .A2(n193), .ZN(n191) );
  NAND2_X1 U200 ( .A1(n194), .A2(n195), .ZN(n190) );
  NAND2_X1 U201 ( .A1(n196), .A2(n197), .ZN(n194) );
  NAND2_X1 U202 ( .A1(n198), .A2(n199), .ZN(Result_6_) );
  NAND2_X1 U203 ( .A1(n192), .A2(n200), .ZN(n199) );
  NAND2_X1 U204 ( .A1(n201), .A2(n202), .ZN(n200) );
  NOR2_X1 U205 ( .A1(n203), .A2(n204), .ZN(n202) );
  NOR2_X1 U206 ( .A1(n205), .A2(n206), .ZN(n204) );
  NOR2_X1 U207 ( .A1(n207), .A2(n208), .ZN(n203) );
  NOR2_X1 U208 ( .A1(n209), .A2(n210), .ZN(n201) );
  NOR2_X1 U209 ( .A1(n211), .A2(n196), .ZN(n210) );
  NOR2_X1 U210 ( .A1(n212), .A2(n197), .ZN(n209) );
  NOR2_X1 U211 ( .A1(n213), .A2(n214), .ZN(n198) );
  NOR2_X1 U212 ( .A1(operation_1_), .A2(n215), .ZN(n214) );
  NAND2_X1 U213 ( .A1(n216), .A2(n217), .ZN(n215) );
  NAND2_X1 U214 ( .A1(n218), .A2(n219), .ZN(n217) );
  XNOR2_X1 U215 ( .A(n193), .B(n220), .ZN(n218) );
  NAND2_X1 U216 ( .A1(n221), .A2(operation_0_), .ZN(n216) );
  XOR2_X1 U217 ( .A(n197), .B(n220), .Z(n221) );
  NOR2_X1 U218 ( .A1(n222), .A2(n223), .ZN(n213) );
  XOR2_X1 U219 ( .A(n196), .B(n220), .Z(n223) );
  NAND2_X1 U220 ( .A1(n206), .A2(n208), .ZN(n220) );
  NAND2_X1 U221 ( .A1(n224), .A2(n225), .ZN(Result_5_) );
  NAND2_X1 U222 ( .A1(n226), .A2(n227), .ZN(n225) );
  NOR2_X1 U223 ( .A1(n228), .A2(n229), .ZN(n226) );
  NOR2_X1 U224 ( .A1(n219), .A2(n230), .ZN(n229) );
  XNOR2_X1 U225 ( .A(n231), .B(n232), .ZN(n230) );
  NOR2_X1 U226 ( .A1(operation_0_), .A2(n233), .ZN(n228) );
  XOR2_X1 U227 ( .A(n232), .B(n234), .Z(n233) );
  NOR2_X1 U228 ( .A1(n235), .A2(n236), .ZN(n224) );
  NOR2_X1 U229 ( .A1(n237), .A2(n222), .ZN(n236) );
  XNOR2_X1 U230 ( .A(n238), .B(n232), .ZN(n237) );
  XNOR2_X1 U231 ( .A(b_1_), .B(n239), .ZN(n232) );
  NOR2_X1 U232 ( .A1(n240), .A2(n195), .ZN(n235) );
  XOR2_X1 U233 ( .A(n241), .B(n242), .Z(n240) );
  XOR2_X1 U234 ( .A(n243), .B(n244), .Z(n242) );
  NAND2_X1 U235 ( .A1(n245), .A2(n246), .ZN(Result_4_) );
  NAND2_X1 U236 ( .A1(n247), .A2(n227), .ZN(n246) );
  NOR2_X1 U237 ( .A1(n248), .A2(n249), .ZN(n247) );
  NOR2_X1 U238 ( .A1(n219), .A2(n250), .ZN(n249) );
  XNOR2_X1 U239 ( .A(n251), .B(n252), .ZN(n250) );
  NOR2_X1 U240 ( .A1(operation_0_), .A2(n253), .ZN(n248) );
  XNOR2_X1 U241 ( .A(n254), .B(n252), .ZN(n253) );
  NAND2_X1 U242 ( .A1(n255), .A2(n256), .ZN(n254) );
  INV_X1 U243 ( .A(n257), .ZN(n256) );
  NOR2_X1 U244 ( .A1(n234), .A2(n258), .ZN(n257) );
  NAND2_X1 U245 ( .A1(n259), .A2(n260), .ZN(n234) );
  NAND2_X1 U246 ( .A1(n193), .A2(n261), .ZN(n259) );
  NAND2_X1 U247 ( .A1(n211), .A2(n212), .ZN(n261) );
  NAND2_X1 U248 ( .A1(n239), .A2(n262), .ZN(n255) );
  NOR2_X1 U249 ( .A1(n263), .A2(n264), .ZN(n245) );
  NOR2_X1 U250 ( .A1(n222), .A2(n265), .ZN(n264) );
  XOR2_X1 U251 ( .A(n266), .B(n252), .Z(n265) );
  XOR2_X1 U252 ( .A(b_0_), .B(a_0_), .Z(n252) );
  INV_X1 U253 ( .A(n267), .ZN(n222) );
  NOR2_X1 U254 ( .A1(n268), .A2(n195), .ZN(n263) );
  INV_X1 U255 ( .A(n192), .ZN(n195) );
  XNOR2_X1 U256 ( .A(n269), .B(n189), .ZN(n268) );
  XOR2_X1 U257 ( .A(n270), .B(n271), .Z(n269) );
  NAND2_X1 U258 ( .A1(n272), .A2(n273), .ZN(Result_3_) );
  NAND2_X1 U259 ( .A1(n192), .A2(n274), .ZN(n273) );
  XOR2_X1 U260 ( .A(n275), .B(n276), .Z(n274) );
  NAND2_X1 U261 ( .A1(n272), .A2(n277), .ZN(Result_2_) );
  NAND2_X1 U262 ( .A1(n192), .A2(n278), .ZN(n277) );
  XNOR2_X1 U263 ( .A(n279), .B(n280), .ZN(n278) );
  NAND2_X1 U264 ( .A1(n272), .A2(n281), .ZN(Result_1_) );
  NAND2_X1 U265 ( .A1(n192), .A2(n282), .ZN(n281) );
  XOR2_X1 U266 ( .A(n283), .B(n284), .Z(n282) );
  NAND2_X1 U267 ( .A1(n272), .A2(n285), .ZN(Result_0_) );
  NAND2_X1 U268 ( .A1(n192), .A2(n286), .ZN(n285) );
  NAND2_X1 U269 ( .A1(n287), .A2(n288), .ZN(n286) );
  NAND2_X1 U270 ( .A1(a_0_), .A2(n289), .ZN(n288) );
  NOR2_X1 U271 ( .A1(n290), .A2(n291), .ZN(n287) );
  NOR2_X1 U272 ( .A1(n283), .A2(n284), .ZN(n291) );
  NAND2_X1 U273 ( .A1(n292), .A2(n280), .ZN(n284) );
  XOR2_X1 U274 ( .A(n293), .B(n294), .Z(n280) );
  INV_X1 U275 ( .A(n279), .ZN(n292) );
  NAND2_X1 U276 ( .A1(n276), .A2(n275), .ZN(n279) );
  NAND2_X1 U277 ( .A1(n295), .A2(n296), .ZN(n275) );
  NAND2_X1 U278 ( .A1(n271), .A2(n297), .ZN(n296) );
  NAND2_X1 U279 ( .A1(n189), .A2(n270), .ZN(n297) );
  NOR2_X1 U280 ( .A1(n298), .A2(n207), .ZN(n271) );
  INV_X1 U281 ( .A(n299), .ZN(n295) );
  NOR2_X1 U282 ( .A1(n270), .A2(n189), .ZN(n299) );
  NAND2_X1 U283 ( .A1(n302), .A2(n303), .ZN(n300) );
  NAND2_X1 U284 ( .A1(n304), .A2(n305), .ZN(n270) );
  NAND2_X1 U285 ( .A1(n306), .A2(n244), .ZN(n305) );
  NAND2_X1 U286 ( .A1(a_1_), .A2(b_3_), .ZN(n244) );
  INV_X1 U287 ( .A(n307), .ZN(n306) );
  NOR2_X1 U288 ( .A1(n241), .A2(n243), .ZN(n307) );
  NAND2_X1 U289 ( .A1(n241), .A2(n243), .ZN(n304) );
  NAND2_X1 U290 ( .A1(n308), .A2(n309), .ZN(n243) );
  NAND2_X1 U291 ( .A1(n310), .A2(n260), .ZN(n309) );
  NAND2_X1 U292 ( .A1(n311), .A2(n193), .ZN(n241) );
  NOR2_X1 U293 ( .A1(n207), .A2(n205), .ZN(n193) );
  XNOR2_X1 U294 ( .A(n312), .B(n313), .ZN(n276) );
  XOR2_X1 U295 ( .A(n314), .B(n315), .Z(n313) );
  NAND2_X1 U296 ( .A1(a_0_), .A2(b_2_), .ZN(n315) );
  NAND2_X1 U297 ( .A1(n316), .A2(n317), .ZN(n283) );
  NAND2_X1 U298 ( .A1(n318), .A2(n319), .ZN(n316) );
  NAND2_X1 U299 ( .A1(n294), .A2(n293), .ZN(n319) );
  INV_X1 U300 ( .A(n317), .ZN(n290) );
  NAND2_X1 U301 ( .A1(n320), .A2(n294), .ZN(n317) );
  XOR2_X1 U302 ( .A(n321), .B(n322), .Z(n294) );
  NOR2_X1 U303 ( .A1(n262), .A2(n298), .ZN(n322) );
  XOR2_X1 U304 ( .A(n323), .B(n324), .Z(n321) );
  NOR2_X1 U305 ( .A1(n325), .A2(n318), .ZN(n320) );
  INV_X1 U306 ( .A(n326), .ZN(n318) );
  NAND2_X1 U307 ( .A1(n327), .A2(n328), .ZN(n326) );
  NAND2_X1 U308 ( .A1(n289), .A2(n298), .ZN(n328) );
  NAND2_X1 U309 ( .A1(n329), .A2(a_0_), .ZN(n327) );
  NOR2_X1 U310 ( .A1(n330), .A2(n289), .ZN(n329) );
  NAND2_X1 U311 ( .A1(n331), .A2(n332), .ZN(n289) );
  NAND2_X1 U312 ( .A1(n333), .A2(a_0_), .ZN(n332) );
  NOR2_X1 U313 ( .A1(n334), .A2(n262), .ZN(n333) );
  NOR2_X1 U314 ( .A1(n323), .A2(n324), .ZN(n334) );
  NAND2_X1 U315 ( .A1(n323), .A2(n324), .ZN(n331) );
  NAND2_X1 U316 ( .A1(n335), .A2(n336), .ZN(n324) );
  NAND2_X1 U317 ( .A1(n258), .A2(n337), .ZN(n336) );
  NOR2_X1 U318 ( .A1(n330), .A2(n239), .ZN(n323) );
  INV_X1 U319 ( .A(n293), .ZN(n325) );
  NAND2_X1 U320 ( .A1(n338), .A2(n339), .ZN(n293) );
  NAND2_X1 U321 ( .A1(n340), .A2(a_0_), .ZN(n339) );
  NOR2_X1 U322 ( .A1(n341), .A2(n212), .ZN(n340) );
  NOR2_X1 U323 ( .A1(n314), .A2(n312), .ZN(n341) );
  NAND2_X1 U324 ( .A1(n312), .A2(n314), .ZN(n338) );
  NAND2_X1 U325 ( .A1(n302), .A2(n342), .ZN(n314) );
  NAND2_X1 U326 ( .A1(n301), .A2(n303), .ZN(n342) );
  NAND2_X1 U327 ( .A1(n308), .A2(n343), .ZN(n303) );
  NAND2_X1 U328 ( .A1(a_1_), .A2(b_2_), .ZN(n343) );
  INV_X1 U329 ( .A(n344), .ZN(n308) );
  NOR2_X1 U330 ( .A1(n345), .A2(n346), .ZN(n301) );
  NOR2_X1 U331 ( .A1(n347), .A2(n348), .ZN(n346) );
  NAND2_X1 U332 ( .A1(n344), .A2(a_1_), .ZN(n302) );
  NOR2_X1 U333 ( .A1(n310), .A2(n260), .ZN(n344) );
  INV_X1 U334 ( .A(n311), .ZN(n260) );
  NOR2_X1 U335 ( .A1(n212), .A2(n211), .ZN(n311) );
  NAND2_X1 U336 ( .A1(b_1_), .A2(a_3_), .ZN(n310) );
  XOR2_X1 U337 ( .A(n345), .B(n349), .Z(n312) );
  XOR2_X1 U338 ( .A(n337), .B(n258), .Z(n349) );
  NOR2_X1 U339 ( .A1(n239), .A2(n262), .ZN(n258) );
  NOR2_X1 U340 ( .A1(n330), .A2(n211), .ZN(n337) );
  INV_X1 U341 ( .A(n335), .ZN(n345) );
  NAND2_X1 U342 ( .A1(n348), .A2(n347), .ZN(n335) );
  NOR2_X1 U343 ( .A1(n262), .A2(n211), .ZN(n347) );
  NOR2_X1 U344 ( .A1(n330), .A2(n205), .ZN(n348) );
  INV_X1 U345 ( .A(b_0_), .ZN(n330) );
  NOR2_X1 U346 ( .A1(n227), .A2(n219), .ZN(n192) );
  INV_X1 U347 ( .A(operation_0_), .ZN(n219) );
  INV_X1 U348 ( .A(n350), .ZN(n272) );
  NAND2_X1 U349 ( .A1(n351), .A2(n352), .ZN(n350) );
  NAND2_X1 U350 ( .A1(n353), .A2(operation_0_), .ZN(n352) );
  NOR2_X1 U351 ( .A1(operation_1_), .A2(n354), .ZN(n353) );
  NOR2_X1 U352 ( .A1(n355), .A2(n356), .ZN(n354) );
  NOR2_X1 U353 ( .A1(n251), .A2(n298), .ZN(n356) );
  INV_X1 U354 ( .A(a_0_), .ZN(n298) );
  INV_X1 U355 ( .A(n357), .ZN(n251) );
  NOR2_X1 U356 ( .A1(b_0_), .A2(n358), .ZN(n355) );
  NOR2_X1 U357 ( .A1(a_0_), .A2(n357), .ZN(n358) );
  NAND2_X1 U358 ( .A1(n359), .A2(n360), .ZN(n357) );
  NAND2_X1 U359 ( .A1(n361), .A2(n262), .ZN(n360) );
  NAND2_X1 U360 ( .A1(n239), .A2(n231), .ZN(n361) );
  INV_X1 U361 ( .A(n362), .ZN(n359) );
  NOR2_X1 U362 ( .A1(n231), .A2(n239), .ZN(n362) );
  NAND2_X1 U363 ( .A1(n206), .A2(n363), .ZN(n231) );
  NAND2_X1 U364 ( .A1(n197), .A2(n208), .ZN(n363) );
  NAND2_X1 U365 ( .A1(a_3_), .A2(n207), .ZN(n197) );
  INV_X1 U366 ( .A(b_3_), .ZN(n207) );
  NAND2_X1 U367 ( .A1(n267), .A2(n364), .ZN(n351) );
  NAND2_X1 U368 ( .A1(n365), .A2(n366), .ZN(n364) );
  NAND2_X1 U369 ( .A1(b_0_), .A2(n367), .ZN(n366) );
  NAND2_X1 U370 ( .A1(n266), .A2(a_0_), .ZN(n367) );
  INV_X1 U371 ( .A(n368), .ZN(n365) );
  NOR2_X1 U372 ( .A1(n266), .A2(a_0_), .ZN(n368) );
  NOR2_X1 U373 ( .A1(n369), .A2(n370), .ZN(n266) );
  NOR2_X1 U374 ( .A1(n262), .A2(n371), .ZN(n370) );
  NOR2_X1 U375 ( .A1(n239), .A2(n238), .ZN(n371) );
  INV_X1 U376 ( .A(n372), .ZN(n238) );
  INV_X1 U377 ( .A(a_1_), .ZN(n239) );
  INV_X1 U378 ( .A(b_1_), .ZN(n262) );
  NOR2_X1 U379 ( .A1(n372), .A2(a_1_), .ZN(n369) );
  NAND2_X1 U380 ( .A1(n208), .A2(n373), .ZN(n372) );
  NAND2_X1 U381 ( .A1(n196), .A2(n206), .ZN(n373) );
  NAND2_X1 U382 ( .A1(b_2_), .A2(n211), .ZN(n206) );
  INV_X1 U383 ( .A(a_2_), .ZN(n211) );
  NAND2_X1 U384 ( .A1(b_3_), .A2(n205), .ZN(n196) );
  INV_X1 U385 ( .A(a_3_), .ZN(n205) );
  NAND2_X1 U386 ( .A1(a_2_), .A2(n212), .ZN(n208) );
  INV_X1 U387 ( .A(b_2_), .ZN(n212) );
  NOR2_X1 U388 ( .A1(n227), .A2(operation_0_), .ZN(n267) );
  INV_X1 U389 ( .A(operation_1_), .ZN(n227) );
endmodule

