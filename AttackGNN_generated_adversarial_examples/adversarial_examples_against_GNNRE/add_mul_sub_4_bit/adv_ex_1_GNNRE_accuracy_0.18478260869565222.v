module add_mul_sub_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        operation_0_, operation_1_, Result_0_, Result_1_, Result_2_, Result_3_, 
        Result_4_, Result_5_, Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, operation_0_,
         operation_1_;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
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
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353;

  NAND2_X1 U186 ( .A1(n178), .A2(n179), .ZN(Result_7_) );
  NAND2_X1 U187 ( .A1(n180), .A2(n181), .ZN(n179) );
  NAND2_X1 U188 ( .A1(n182), .A2(n183), .ZN(n178) );
  NAND2_X1 U189 ( .A1(n184), .A2(n185), .ZN(n182) );
  NAND3_X1 U190 ( .A1(n186), .A2(n187), .A3(n188), .ZN(Result_6_) );
  NAND2_X1 U191 ( .A1(n180), .A2(n189), .ZN(n188) );
  NAND4_X1 U192 ( .A1(n190), .A2(n191), .A3(n192), .A4(n193), .ZN(n189) );
  NAND2_X1 U193 ( .A1(n194), .A2(b_3_), .ZN(n193) );
  NAND2_X1 U194 ( .A1(n195), .A2(a_3_), .ZN(n192) );
  INV_X1 U195 ( .A(n196), .ZN(n195) );
  NAND2_X1 U196 ( .A1(n197), .A2(b_2_), .ZN(n191) );
  NAND2_X1 U197 ( .A1(n198), .A2(a_2_), .ZN(n190) );
  NAND2_X1 U198 ( .A1(n199), .A2(n200), .ZN(n187) );
  XOR2_X1 U199 ( .A(n201), .B(n198), .Z(n199) );
  INV_X1 U200 ( .A(n184), .ZN(n198) );
  NAND3_X1 U201 ( .A1(n202), .A2(n203), .A3(n204), .ZN(n186) );
  NAND2_X1 U202 ( .A1(n205), .A2(n206), .ZN(n203) );
  XOR2_X1 U203 ( .A(n207), .B(n201), .Z(n205) );
  NAND2_X1 U204 ( .A1(n208), .A2(operation_0_), .ZN(n202) );
  XOR2_X1 U205 ( .A(n185), .B(n201), .Z(n208) );
  NAND2_X1 U206 ( .A1(n196), .A2(n209), .ZN(n201) );
  NAND3_X1 U207 ( .A1(n210), .A2(n211), .A3(n212), .ZN(Result_5_) );
  NAND3_X1 U208 ( .A1(n213), .A2(n214), .A3(n204), .ZN(n212) );
  NAND2_X1 U209 ( .A1(n215), .A2(n206), .ZN(n214) );
  XNOR2_X1 U210 ( .A(n216), .B(n217), .ZN(n215) );
  NAND2_X1 U211 ( .A1(n218), .A2(operation_0_), .ZN(n213) );
  XNOR2_X1 U212 ( .A(n219), .B(n217), .ZN(n218) );
  NAND2_X1 U213 ( .A1(n180), .A2(n220), .ZN(n211) );
  XOR2_X1 U214 ( .A(n221), .B(n222), .Z(n220) );
  NOR2_X1 U215 ( .A1(n223), .A2(n224), .ZN(n221) );
  NOR2_X1 U216 ( .A1(n225), .A2(n226), .ZN(n223) );
  NOR2_X1 U217 ( .A1(n207), .A2(n227), .ZN(n226) );
  INV_X1 U218 ( .A(n228), .ZN(n225) );
  NAND2_X1 U219 ( .A1(n200), .A2(n229), .ZN(n210) );
  XOR2_X1 U220 ( .A(n217), .B(n230), .Z(n229) );
  NAND2_X1 U221 ( .A1(n231), .A2(n232), .ZN(n217) );
  NAND3_X1 U222 ( .A1(n233), .A2(n234), .A3(n235), .ZN(Result_4_) );
  NAND3_X1 U223 ( .A1(n236), .A2(n237), .A3(n204), .ZN(n235) );
  NAND2_X1 U224 ( .A1(n238), .A2(n206), .ZN(n237) );
  INV_X1 U225 ( .A(operation_0_), .ZN(n206) );
  XOR2_X1 U226 ( .A(n239), .B(n240), .Z(n238) );
  NAND2_X1 U227 ( .A1(n232), .A2(n241), .ZN(n239) );
  NAND2_X1 U228 ( .A1(n216), .A2(n231), .ZN(n241) );
  NOR2_X1 U229 ( .A1(n242), .A2(n243), .ZN(n216) );
  NOR2_X1 U230 ( .A1(n207), .A2(n244), .ZN(n242) );
  NOR2_X1 U231 ( .A1(a_2_), .A2(b_2_), .ZN(n244) );
  NAND2_X1 U232 ( .A1(n245), .A2(n246), .ZN(n232) );
  NAND2_X1 U233 ( .A1(n247), .A2(operation_0_), .ZN(n236) );
  XNOR2_X1 U234 ( .A(n248), .B(n240), .ZN(n247) );
  NAND2_X1 U235 ( .A1(n180), .A2(n249), .ZN(n234) );
  XNOR2_X1 U236 ( .A(n250), .B(n251), .ZN(n249) );
  NAND2_X1 U237 ( .A1(n252), .A2(n253), .ZN(n250) );
  NAND2_X1 U238 ( .A1(n254), .A2(n200), .ZN(n233) );
  XOR2_X1 U239 ( .A(n255), .B(n240), .Z(n254) );
  XOR2_X1 U240 ( .A(n256), .B(n257), .Z(n240) );
  NAND2_X1 U241 ( .A1(n258), .A2(n259), .ZN(Result_3_) );
  NAND2_X1 U242 ( .A1(n180), .A2(n260), .ZN(n259) );
  XNOR2_X1 U243 ( .A(n261), .B(n262), .ZN(n260) );
  NAND2_X1 U244 ( .A1(n258), .A2(n263), .ZN(Result_2_) );
  NAND2_X1 U245 ( .A1(n180), .A2(n264), .ZN(n263) );
  XOR2_X1 U246 ( .A(n265), .B(n266), .Z(n264) );
  NAND2_X1 U247 ( .A1(n258), .A2(n267), .ZN(Result_1_) );
  NAND2_X1 U248 ( .A1(n180), .A2(n268), .ZN(n267) );
  XOR2_X1 U249 ( .A(n269), .B(n270), .Z(n268) );
  NAND2_X1 U250 ( .A1(n271), .A2(n272), .ZN(n270) );
  NAND2_X1 U251 ( .A1(n258), .A2(n273), .ZN(Result_0_) );
  NAND2_X1 U252 ( .A1(n180), .A2(n274), .ZN(n273) );
  NAND3_X1 U253 ( .A1(n275), .A2(n271), .A3(n276), .ZN(n274) );
  NAND2_X1 U254 ( .A1(a_0_), .A2(n277), .ZN(n276) );
  NAND4_X1 U255 ( .A1(a_0_), .A2(n278), .A3(b_0_), .A4(n279), .ZN(n271) );
  NOR2_X1 U256 ( .A1(n277), .A2(n280), .ZN(n279) );
  INV_X1 U257 ( .A(n281), .ZN(n280) );
  NAND2_X1 U258 ( .A1(n282), .A2(n272), .ZN(n275) );
  NAND3_X1 U259 ( .A1(n283), .A2(n284), .A3(n285), .ZN(n272) );
  NAND2_X1 U260 ( .A1(n281), .A2(n278), .ZN(n285) );
  NAND2_X1 U261 ( .A1(n277), .A2(n257), .ZN(n284) );
  INV_X1 U262 ( .A(n286), .ZN(n277) );
  NAND3_X1 U263 ( .A1(n286), .A2(b_0_), .A3(a_0_), .ZN(n283) );
  NOR2_X1 U264 ( .A1(n287), .A2(n288), .ZN(n286) );
  NOR3_X1 U265 ( .A1(n246), .A2(n289), .A3(n257), .ZN(n288) );
  NOR2_X1 U266 ( .A1(n290), .A2(n291), .ZN(n289) );
  INV_X1 U267 ( .A(n292), .ZN(n287) );
  NAND2_X1 U268 ( .A1(n291), .A2(n290), .ZN(n292) );
  INV_X1 U269 ( .A(n269), .ZN(n282) );
  NAND2_X1 U270 ( .A1(n265), .A2(n266), .ZN(n269) );
  XOR2_X1 U271 ( .A(n278), .B(n281), .Z(n266) );
  XOR2_X1 U272 ( .A(n293), .B(n294), .Z(n281) );
  NOR2_X1 U273 ( .A1(n246), .A2(n257), .ZN(n294) );
  XOR2_X1 U274 ( .A(n291), .B(n290), .Z(n293) );
  NAND2_X1 U275 ( .A1(n295), .A2(n296), .ZN(n290) );
  NAND2_X1 U276 ( .A1(n297), .A2(n298), .ZN(n296) );
  NOR2_X1 U277 ( .A1(n256), .A2(n245), .ZN(n291) );
  NAND2_X1 U278 ( .A1(n299), .A2(n300), .ZN(n278) );
  NAND3_X1 U279 ( .A1(b_2_), .A2(n301), .A3(a_0_), .ZN(n300) );
  INV_X1 U280 ( .A(n302), .ZN(n301) );
  NOR2_X1 U281 ( .A1(n303), .A2(n304), .ZN(n302) );
  NAND2_X1 U282 ( .A1(n303), .A2(n304), .ZN(n299) );
  NOR2_X1 U283 ( .A1(n262), .A2(n305), .ZN(n265) );
  INV_X1 U284 ( .A(n261), .ZN(n305) );
  NAND2_X1 U285 ( .A1(n252), .A2(n306), .ZN(n261) );
  NAND2_X1 U286 ( .A1(n251), .A2(n253), .ZN(n306) );
  NAND2_X1 U287 ( .A1(n307), .A2(n308), .ZN(n253) );
  NAND2_X1 U288 ( .A1(a_0_), .A2(b_3_), .ZN(n308) );
  XNOR2_X1 U289 ( .A(n309), .B(n310), .ZN(n251) );
  NAND2_X1 U290 ( .A1(n311), .A2(n312), .ZN(n309) );
  INV_X1 U291 ( .A(n313), .ZN(n252) );
  NOR2_X1 U292 ( .A1(n257), .A2(n307), .ZN(n313) );
  NOR2_X1 U293 ( .A1(n224), .A2(n314), .ZN(n307) );
  INV_X1 U294 ( .A(n315), .ZN(n314) );
  NAND2_X1 U295 ( .A1(n222), .A2(n316), .ZN(n315) );
  NAND2_X1 U296 ( .A1(n228), .A2(n317), .ZN(n316) );
  NAND2_X1 U297 ( .A1(n243), .A2(n181), .ZN(n317) );
  XOR2_X1 U298 ( .A(n243), .B(n318), .Z(n222) );
  NOR3_X1 U299 ( .A1(n227), .A2(n207), .A3(n228), .ZN(n224) );
  NAND2_X1 U300 ( .A1(a_1_), .A2(b_3_), .ZN(n228) );
  INV_X1 U301 ( .A(n181), .ZN(n207) );
  NOR2_X1 U302 ( .A1(n319), .A2(n320), .ZN(n181) );
  INV_X1 U303 ( .A(b_3_), .ZN(n319) );
  XOR2_X1 U304 ( .A(n303), .B(n321), .Z(n262) );
  XOR2_X1 U305 ( .A(n304), .B(n322), .Z(n321) );
  NAND2_X1 U306 ( .A1(a_0_), .A2(b_2_), .ZN(n322) );
  NAND2_X1 U307 ( .A1(n311), .A2(n323), .ZN(n304) );
  NAND2_X1 U308 ( .A1(n310), .A2(n312), .ZN(n323) );
  NAND2_X1 U309 ( .A1(n324), .A2(n325), .ZN(n312) );
  NAND2_X1 U310 ( .A1(a_1_), .A2(b_2_), .ZN(n325) );
  XOR2_X1 U311 ( .A(n326), .B(n327), .Z(n310) );
  NAND2_X1 U312 ( .A1(n328), .A2(a_1_), .ZN(n311) );
  INV_X1 U313 ( .A(n324), .ZN(n328) );
  NAND2_X1 U314 ( .A1(n318), .A2(n243), .ZN(n324) );
  INV_X1 U315 ( .A(n227), .ZN(n243) );
  NAND2_X1 U316 ( .A1(b_2_), .A2(a_2_), .ZN(n227) );
  NOR2_X1 U317 ( .A1(n246), .A2(n320), .ZN(n318) );
  XNOR2_X1 U318 ( .A(n295), .B(n329), .ZN(n303) );
  XOR2_X1 U319 ( .A(n298), .B(n297), .Z(n329) );
  INV_X1 U320 ( .A(n231), .ZN(n297) );
  NAND2_X1 U321 ( .A1(b_1_), .A2(a_1_), .ZN(n231) );
  NOR2_X1 U322 ( .A1(n256), .A2(n330), .ZN(n298) );
  NAND2_X1 U323 ( .A1(n326), .A2(n327), .ZN(n295) );
  NOR2_X1 U324 ( .A1(n256), .A2(n320), .ZN(n327) );
  NOR2_X1 U325 ( .A1(n246), .A2(n330), .ZN(n326) );
  INV_X1 U326 ( .A(n183), .ZN(n180) );
  NAND2_X1 U327 ( .A1(operation_1_), .A2(operation_0_), .ZN(n183) );
  INV_X1 U328 ( .A(n331), .ZN(n258) );
  NAND2_X1 U329 ( .A1(n332), .A2(n333), .ZN(n331) );
  NAND3_X1 U330 ( .A1(n334), .A2(n204), .A3(operation_0_), .ZN(n333) );
  NAND2_X1 U331 ( .A1(n335), .A2(n336), .ZN(n334) );
  NAND2_X1 U332 ( .A1(n337), .A2(n256), .ZN(n336) );
  INV_X1 U333 ( .A(b_0_), .ZN(n256) );
  INV_X1 U334 ( .A(n338), .ZN(n337) );
  NOR2_X1 U335 ( .A1(n248), .A2(a_0_), .ZN(n338) );
  NAND2_X1 U336 ( .A1(a_0_), .A2(n248), .ZN(n335) );
  NAND2_X1 U337 ( .A1(n339), .A2(n340), .ZN(n248) );
  NAND2_X1 U338 ( .A1(n341), .A2(n246), .ZN(n340) );
  NAND2_X1 U339 ( .A1(n245), .A2(n219), .ZN(n341) );
  INV_X1 U340 ( .A(n342), .ZN(n339) );
  NOR2_X1 U341 ( .A1(n219), .A2(n245), .ZN(n342) );
  INV_X1 U342 ( .A(a_1_), .ZN(n245) );
  NAND2_X1 U343 ( .A1(n196), .A2(n343), .ZN(n219) );
  NAND2_X1 U344 ( .A1(n209), .A2(n185), .ZN(n343) );
  INV_X1 U345 ( .A(n197), .ZN(n185) );
  NOR2_X1 U346 ( .A1(n320), .A2(b_3_), .ZN(n197) );
  NAND2_X1 U347 ( .A1(n200), .A2(n344), .ZN(n332) );
  NAND2_X1 U348 ( .A1(n345), .A2(n346), .ZN(n344) );
  NAND2_X1 U349 ( .A1(b_0_), .A2(n347), .ZN(n346) );
  NAND2_X1 U350 ( .A1(n348), .A2(a_0_), .ZN(n347) );
  NAND2_X1 U351 ( .A1(n255), .A2(n257), .ZN(n345) );
  INV_X1 U352 ( .A(a_0_), .ZN(n257) );
  INV_X1 U353 ( .A(n348), .ZN(n255) );
  NOR2_X1 U354 ( .A1(n349), .A2(n350), .ZN(n348) );
  NOR2_X1 U355 ( .A1(n246), .A2(n351), .ZN(n350) );
  INV_X1 U356 ( .A(n352), .ZN(n351) );
  NAND2_X1 U357 ( .A1(a_1_), .A2(n230), .ZN(n352) );
  INV_X1 U358 ( .A(b_1_), .ZN(n246) );
  NOR2_X1 U359 ( .A1(n230), .A2(a_1_), .ZN(n349) );
  NAND2_X1 U360 ( .A1(n209), .A2(n353), .ZN(n230) );
  NAND2_X1 U361 ( .A1(n196), .A2(n184), .ZN(n353) );
  NAND2_X1 U362 ( .A1(b_3_), .A2(n320), .ZN(n184) );
  INV_X1 U363 ( .A(a_3_), .ZN(n320) );
  NAND2_X1 U364 ( .A1(b_2_), .A2(n330), .ZN(n196) );
  INV_X1 U365 ( .A(n194), .ZN(n209) );
  NOR2_X1 U366 ( .A1(n330), .A2(b_2_), .ZN(n194) );
  INV_X1 U367 ( .A(a_2_), .ZN(n330) );
  NOR2_X1 U368 ( .A1(n204), .A2(operation_0_), .ZN(n200) );
  INV_X1 U369 ( .A(operation_1_), .ZN(n204) );
endmodule

