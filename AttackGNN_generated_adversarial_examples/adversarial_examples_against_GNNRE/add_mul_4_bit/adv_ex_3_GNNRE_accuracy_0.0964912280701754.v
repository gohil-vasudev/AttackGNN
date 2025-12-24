module add_mul_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        operation, Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, 
        Result_5_, Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, operation;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205;

  NAND2_X1 U108 ( .A1(n100), .A2(n101), .ZN(Result_7_) );
  NAND2_X1 U109 ( .A1(n102), .A2(n103), .ZN(n101) );
  XOR2_X1 U110 ( .A(b_3_), .B(a_3_), .Z(n102) );
  NAND2_X1 U111 ( .A1(operation), .A2(n104), .ZN(n100) );
  NAND2_X1 U112 ( .A1(n105), .A2(n106), .ZN(Result_6_) );
  NAND2_X1 U113 ( .A1(n107), .A2(n103), .ZN(n106) );
  XOR2_X1 U114 ( .A(n104), .B(n108), .Z(n107) );
  XOR2_X1 U115 ( .A(b_2_), .B(a_2_), .Z(n108) );
  NAND2_X1 U116 ( .A1(n109), .A2(operation), .ZN(n105) );
  XNOR2_X1 U117 ( .A(n110), .B(n111), .ZN(n109) );
  NAND2_X1 U118 ( .A1(b_2_), .A2(a_3_), .ZN(n111) );
  NAND2_X1 U119 ( .A1(n112), .A2(n113), .ZN(Result_5_) );
  NAND2_X1 U120 ( .A1(n114), .A2(n103), .ZN(n113) );
  NAND3_X1 U121 ( .A1(n115), .A2(n116), .A3(n117), .ZN(n114) );
  NAND2_X1 U122 ( .A1(n118), .A2(n119), .ZN(n117) );
  NAND3_X1 U123 ( .A1(n120), .A2(n121), .A3(b_1_), .ZN(n116) );
  NAND2_X1 U124 ( .A1(n122), .A2(n123), .ZN(n115) );
  XNOR2_X1 U125 ( .A(a_1_), .B(n120), .ZN(n122) );
  INV_X1 U126 ( .A(n119), .ZN(n120) );
  NAND2_X1 U127 ( .A1(n124), .A2(operation), .ZN(n112) );
  XNOR2_X1 U128 ( .A(n125), .B(n126), .ZN(n124) );
  NAND2_X1 U129 ( .A1(n127), .A2(n128), .ZN(n125) );
  NAND2_X1 U130 ( .A1(n129), .A2(n130), .ZN(Result_4_) );
  NAND2_X1 U131 ( .A1(n131), .A2(n103), .ZN(n130) );
  XOR2_X1 U132 ( .A(n132), .B(n133), .Z(n131) );
  XNOR2_X1 U133 ( .A(b_0_), .B(a_0_), .ZN(n133) );
  NAND2_X1 U134 ( .A1(n134), .A2(n135), .ZN(n132) );
  OR2_X1 U135 ( .A1(n119), .A2(n118), .ZN(n135) );
  NAND2_X1 U136 ( .A1(n136), .A2(n137), .ZN(n119) );
  NAND2_X1 U137 ( .A1(n104), .A2(n138), .ZN(n136) );
  OR2_X1 U138 ( .A1(a_2_), .A2(b_2_), .ZN(n138) );
  AND2_X1 U139 ( .A1(b_3_), .A2(a_3_), .ZN(n104) );
  NAND2_X1 U140 ( .A1(n121), .A2(n123), .ZN(n134) );
  NAND2_X1 U141 ( .A1(n139), .A2(operation), .ZN(n129) );
  XNOR2_X1 U142 ( .A(n140), .B(n141), .ZN(n139) );
  NAND2_X1 U143 ( .A1(n142), .A2(n143), .ZN(n140) );
  NOR2_X1 U144 ( .A1(n144), .A2(n103), .ZN(Result_3_) );
  XNOR2_X1 U145 ( .A(n145), .B(n146), .ZN(n144) );
  NOR2_X1 U146 ( .A1(n147), .A2(n103), .ZN(Result_2_) );
  XNOR2_X1 U147 ( .A(n148), .B(n149), .ZN(n147) );
  NOR2_X1 U148 ( .A1(n150), .A2(n103), .ZN(Result_1_) );
  XNOR2_X1 U149 ( .A(n151), .B(n152), .ZN(n150) );
  NOR2_X1 U150 ( .A1(n153), .A2(n103), .ZN(Result_0_) );
  INV_X1 U151 ( .A(operation), .ZN(n103) );
  NOR3_X1 U152 ( .A1(n154), .A2(n155), .A3(n156), .ZN(n153) );
  NOR2_X1 U153 ( .A1(n151), .A2(n152), .ZN(n156) );
  OR2_X1 U154 ( .A1(n155), .A2(n157), .ZN(n152) );
  AND2_X1 U155 ( .A1(n158), .A2(n159), .ZN(n157) );
  NAND2_X1 U156 ( .A1(n160), .A2(n161), .ZN(n159) );
  NAND2_X1 U157 ( .A1(n149), .A2(n148), .ZN(n151) );
  XOR2_X1 U158 ( .A(n161), .B(n160), .Z(n148) );
  INV_X1 U159 ( .A(n162), .ZN(n160) );
  AND2_X1 U160 ( .A1(n146), .A2(n145), .ZN(n149) );
  NAND2_X1 U161 ( .A1(n142), .A2(n163), .ZN(n145) );
  NAND2_X1 U162 ( .A1(n141), .A2(n143), .ZN(n163) );
  NAND2_X1 U163 ( .A1(n164), .A2(n165), .ZN(n143) );
  NAND2_X1 U164 ( .A1(a_0_), .A2(b_3_), .ZN(n165) );
  INV_X1 U165 ( .A(n166), .ZN(n164) );
  XNOR2_X1 U166 ( .A(n167), .B(n168), .ZN(n141) );
  NAND2_X1 U167 ( .A1(n169), .A2(n170), .ZN(n167) );
  NAND2_X1 U168 ( .A1(a_0_), .A2(n166), .ZN(n142) );
  NAND2_X1 U169 ( .A1(n127), .A2(n171), .ZN(n166) );
  NAND2_X1 U170 ( .A1(n126), .A2(n128), .ZN(n171) );
  NAND2_X1 U171 ( .A1(n172), .A2(n173), .ZN(n128) );
  NAND2_X1 U172 ( .A1(a_1_), .A2(b_3_), .ZN(n173) );
  XOR2_X1 U173 ( .A(n174), .B(n137), .Z(n126) );
  OR2_X1 U174 ( .A1(n172), .A2(n121), .ZN(n127) );
  NAND3_X1 U175 ( .A1(b_2_), .A2(a_3_), .A3(n110), .ZN(n172) );
  AND2_X1 U176 ( .A1(a_2_), .A2(b_3_), .ZN(n110) );
  XNOR2_X1 U177 ( .A(n175), .B(n176), .ZN(n146) );
  XOR2_X1 U178 ( .A(n177), .B(n178), .Z(n176) );
  NAND2_X1 U179 ( .A1(a_0_), .A2(b_2_), .ZN(n178) );
  NOR3_X1 U180 ( .A1(n162), .A2(n179), .A3(n158), .ZN(n155) );
  NAND2_X1 U181 ( .A1(n180), .A2(n181), .ZN(n158) );
  NAND2_X1 U182 ( .A1(a_0_), .A2(n182), .ZN(n181) );
  NAND2_X1 U183 ( .A1(n183), .A2(n184), .ZN(n180) );
  NAND2_X1 U184 ( .A1(b_0_), .A2(a_0_), .ZN(n184) );
  INV_X1 U185 ( .A(n161), .ZN(n179) );
  NAND2_X1 U186 ( .A1(n185), .A2(n186), .ZN(n161) );
  NAND3_X1 U187 ( .A1(b_2_), .A2(n187), .A3(a_0_), .ZN(n186) );
  OR2_X1 U188 ( .A1(n175), .A2(n177), .ZN(n187) );
  NAND2_X1 U189 ( .A1(n175), .A2(n177), .ZN(n185) );
  NAND2_X1 U190 ( .A1(n169), .A2(n188), .ZN(n177) );
  NAND2_X1 U191 ( .A1(n168), .A2(n170), .ZN(n188) );
  NAND2_X1 U192 ( .A1(n189), .A2(n190), .ZN(n170) );
  NAND2_X1 U193 ( .A1(a_1_), .A2(b_2_), .ZN(n190) );
  INV_X1 U194 ( .A(n191), .ZN(n189) );
  XOR2_X1 U195 ( .A(n192), .B(n193), .Z(n168) );
  NAND2_X1 U196 ( .A1(n191), .A2(a_1_), .ZN(n169) );
  NOR2_X1 U197 ( .A1(n174), .A2(n137), .ZN(n191) );
  NAND2_X1 U198 ( .A1(b_2_), .A2(a_2_), .ZN(n137) );
  NAND2_X1 U199 ( .A1(b_1_), .A2(a_3_), .ZN(n174) );
  XNOR2_X1 U200 ( .A(n194), .B(n195), .ZN(n175) );
  XOR2_X1 U201 ( .A(n196), .B(n118), .Z(n195) );
  XNOR2_X1 U202 ( .A(n197), .B(n198), .ZN(n162) );
  NOR2_X1 U203 ( .A1(n123), .A2(n199), .ZN(n198) );
  XOR2_X1 U204 ( .A(n200), .B(n201), .Z(n197) );
  NOR2_X1 U205 ( .A1(n183), .A2(n199), .ZN(n154) );
  INV_X1 U206 ( .A(a_0_), .ZN(n199) );
  INV_X1 U207 ( .A(n182), .ZN(n183) );
  NAND2_X1 U208 ( .A1(n202), .A2(n203), .ZN(n182) );
  NAND3_X1 U209 ( .A1(b_1_), .A2(n204), .A3(a_0_), .ZN(n203) );
  NAND2_X1 U210 ( .A1(n201), .A2(n200), .ZN(n204) );
  OR2_X1 U211 ( .A1(n200), .A2(n201), .ZN(n202) );
  AND2_X1 U212 ( .A1(n194), .A2(n205), .ZN(n201) );
  NAND2_X1 U213 ( .A1(n196), .A2(n118), .ZN(n205) );
  NOR2_X1 U214 ( .A1(n123), .A2(n121), .ZN(n118) );
  INV_X1 U215 ( .A(a_1_), .ZN(n121) );
  INV_X1 U216 ( .A(b_1_), .ZN(n123) );
  AND2_X1 U217 ( .A1(b_0_), .A2(a_2_), .ZN(n196) );
  NAND2_X1 U218 ( .A1(n192), .A2(n193), .ZN(n194) );
  AND2_X1 U219 ( .A1(b_0_), .A2(a_3_), .ZN(n193) );
  AND2_X1 U220 ( .A1(b_1_), .A2(a_2_), .ZN(n192) );
  NAND2_X1 U221 ( .A1(b_0_), .A2(a_1_), .ZN(n200) );
endmodule

