module add_mul_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        operation, Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, 
        Result_5_, Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, operation;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214;

  NAND2_X1 U109 ( .A1(n101), .A2(n102), .ZN(Result_7_) );
  NAND2_X1 U110 ( .A1(n103), .A2(n104), .ZN(n102) );
  XOR2_X1 U111 ( .A(b_3_), .B(a_3_), .Z(n103) );
  NAND2_X1 U112 ( .A1(operation), .A2(n105), .ZN(n101) );
  NAND2_X1 U113 ( .A1(n106), .A2(n107), .ZN(Result_6_) );
  NAND2_X1 U114 ( .A1(n108), .A2(n104), .ZN(n107) );
  XOR2_X1 U115 ( .A(n105), .B(n109), .Z(n108) );
  XOR2_X1 U116 ( .A(b_2_), .B(a_2_), .Z(n109) );
  NAND2_X1 U117 ( .A1(n110), .A2(operation), .ZN(n106) );
  XNOR2_X1 U118 ( .A(n111), .B(n112), .ZN(n110) );
  NAND2_X1 U119 ( .A1(b_2_), .A2(a_3_), .ZN(n112) );
  NAND2_X1 U120 ( .A1(n113), .A2(n114), .ZN(Result_5_) );
  NAND2_X1 U121 ( .A1(n115), .A2(n104), .ZN(n114) );
  NAND2_X1 U122 ( .A1(n116), .A2(n117), .ZN(n115) );
  NAND2_X1 U123 ( .A1(n118), .A2(n119), .ZN(n117) );
  NOR2_X1 U124 ( .A1(n120), .A2(n121), .ZN(n116) );
  NOR2_X1 U125 ( .A1(b_1_), .A2(n122), .ZN(n121) );
  XOR2_X1 U126 ( .A(a_1_), .B(n123), .Z(n122) );
  NOR2_X1 U127 ( .A1(n124), .A2(n125), .ZN(n120) );
  NAND2_X1 U128 ( .A1(n123), .A2(n126), .ZN(n125) );
  INV_X1 U129 ( .A(n119), .ZN(n123) );
  NAND2_X1 U130 ( .A1(n127), .A2(operation), .ZN(n113) );
  XNOR2_X1 U131 ( .A(n128), .B(n129), .ZN(n127) );
  NAND2_X1 U132 ( .A1(n130), .A2(n131), .ZN(n128) );
  NAND2_X1 U133 ( .A1(n132), .A2(n133), .ZN(Result_4_) );
  NAND2_X1 U134 ( .A1(n134), .A2(n104), .ZN(n133) );
  XOR2_X1 U135 ( .A(n135), .B(n136), .Z(n134) );
  XOR2_X1 U136 ( .A(n137), .B(a_0_), .Z(n136) );
  NAND2_X1 U137 ( .A1(n138), .A2(n139), .ZN(n135) );
  OR2_X1 U138 ( .A1(n119), .A2(n118), .ZN(n139) );
  NAND2_X1 U139 ( .A1(n140), .A2(n141), .ZN(n119) );
  NAND2_X1 U140 ( .A1(n105), .A2(n142), .ZN(n140) );
  NAND2_X1 U141 ( .A1(n143), .A2(n144), .ZN(n142) );
  AND2_X1 U142 ( .A1(b_3_), .A2(a_3_), .ZN(n105) );
  NAND2_X1 U143 ( .A1(n126), .A2(n124), .ZN(n138) );
  NAND2_X1 U144 ( .A1(n145), .A2(operation), .ZN(n132) );
  XNOR2_X1 U145 ( .A(n146), .B(n147), .ZN(n145) );
  XNOR2_X1 U146 ( .A(n148), .B(n149), .ZN(n147) );
  NOR2_X1 U147 ( .A1(n150), .A2(n104), .ZN(Result_3_) );
  XNOR2_X1 U148 ( .A(n151), .B(n152), .ZN(n150) );
  NOR2_X1 U149 ( .A1(n153), .A2(n104), .ZN(Result_2_) );
  XNOR2_X1 U150 ( .A(n154), .B(n155), .ZN(n153) );
  NOR2_X1 U151 ( .A1(n156), .A2(n104), .ZN(Result_1_) );
  XNOR2_X1 U152 ( .A(n157), .B(n158), .ZN(n156) );
  AND2_X1 U153 ( .A1(n159), .A2(n160), .ZN(n158) );
  NOR2_X1 U154 ( .A1(n161), .A2(n104), .ZN(Result_0_) );
  INV_X1 U155 ( .A(operation), .ZN(n104) );
  NOR2_X1 U156 ( .A1(n162), .A2(n163), .ZN(n161) );
  NAND2_X1 U157 ( .A1(n164), .A2(n160), .ZN(n163) );
  NAND2_X1 U158 ( .A1(n165), .A2(n166), .ZN(n160) );
  NOR2_X1 U159 ( .A1(n167), .A2(n168), .ZN(n166) );
  NAND2_X1 U160 ( .A1(b_0_), .A2(n169), .ZN(n168) );
  AND2_X1 U161 ( .A1(n170), .A2(n171), .ZN(n165) );
  NAND2_X1 U162 ( .A1(n157), .A2(n159), .ZN(n164) );
  NAND2_X1 U163 ( .A1(n172), .A2(n173), .ZN(n159) );
  NAND2_X1 U164 ( .A1(n171), .A2(n169), .ZN(n173) );
  NOR2_X1 U165 ( .A1(n174), .A2(n175), .ZN(n172) );
  NOR2_X1 U166 ( .A1(n167), .A2(n176), .ZN(n175) );
  NAND2_X1 U167 ( .A1(n170), .A2(b_0_), .ZN(n176) );
  NOR2_X1 U168 ( .A1(a_0_), .A2(n170), .ZN(n174) );
  AND2_X1 U169 ( .A1(n154), .A2(n155), .ZN(n157) );
  XOR2_X1 U170 ( .A(n169), .B(n171), .Z(n155) );
  XOR2_X1 U171 ( .A(n177), .B(n178), .Z(n171) );
  NOR2_X1 U172 ( .A1(n124), .A2(n167), .ZN(n178) );
  XOR2_X1 U173 ( .A(n179), .B(n180), .Z(n177) );
  NAND2_X1 U174 ( .A1(n181), .A2(n182), .ZN(n169) );
  NAND2_X1 U175 ( .A1(n183), .A2(n184), .ZN(n182) );
  OR2_X1 U176 ( .A1(n185), .A2(n186), .ZN(n184) );
  NAND2_X1 U177 ( .A1(n186), .A2(n185), .ZN(n181) );
  AND2_X1 U178 ( .A1(n152), .A2(n151), .ZN(n154) );
  NAND2_X1 U179 ( .A1(n187), .A2(n188), .ZN(n151) );
  NAND2_X1 U180 ( .A1(n149), .A2(n189), .ZN(n188) );
  OR2_X1 U181 ( .A1(n146), .A2(n148), .ZN(n189) );
  AND2_X1 U182 ( .A1(a_0_), .A2(b_3_), .ZN(n149) );
  NAND2_X1 U183 ( .A1(n146), .A2(n148), .ZN(n187) );
  NAND2_X1 U184 ( .A1(n130), .A2(n190), .ZN(n148) );
  NAND2_X1 U185 ( .A1(n129), .A2(n131), .ZN(n190) );
  NAND2_X1 U186 ( .A1(n191), .A2(n192), .ZN(n131) );
  NAND2_X1 U187 ( .A1(a_1_), .A2(b_3_), .ZN(n192) );
  XOR2_X1 U188 ( .A(n193), .B(n194), .Z(n129) );
  OR2_X1 U189 ( .A1(n191), .A2(n126), .ZN(n130) );
  NAND2_X1 U190 ( .A1(n195), .A2(n111), .ZN(n191) );
  AND2_X1 U191 ( .A1(a_2_), .A2(b_3_), .ZN(n111) );
  NOR2_X1 U192 ( .A1(n196), .A2(n144), .ZN(n195) );
  XNOR2_X1 U193 ( .A(n197), .B(n198), .ZN(n146) );
  NAND2_X1 U194 ( .A1(n199), .A2(n200), .ZN(n197) );
  XNOR2_X1 U195 ( .A(n185), .B(n201), .ZN(n152) );
  XNOR2_X1 U196 ( .A(n183), .B(n186), .ZN(n201) );
  NOR2_X1 U197 ( .A1(n167), .A2(n144), .ZN(n186) );
  INV_X1 U198 ( .A(b_2_), .ZN(n144) );
  NAND2_X1 U199 ( .A1(n199), .A2(n202), .ZN(n183) );
  NAND2_X1 U200 ( .A1(n198), .A2(n200), .ZN(n202) );
  NAND2_X1 U201 ( .A1(n203), .A2(n204), .ZN(n200) );
  NAND2_X1 U202 ( .A1(a_1_), .A2(b_2_), .ZN(n204) );
  XOR2_X1 U203 ( .A(n205), .B(n206), .Z(n198) );
  OR2_X1 U204 ( .A1(n203), .A2(n126), .ZN(n199) );
  NAND2_X1 U205 ( .A1(n193), .A2(n194), .ZN(n203) );
  INV_X1 U206 ( .A(n141), .ZN(n194) );
  NAND2_X1 U207 ( .A1(b_2_), .A2(a_2_), .ZN(n141) );
  NOR2_X1 U208 ( .A1(n124), .A2(n196), .ZN(n193) );
  XNOR2_X1 U209 ( .A(n207), .B(n208), .ZN(n185) );
  XOR2_X1 U210 ( .A(n209), .B(n118), .Z(n208) );
  NOR2_X1 U211 ( .A1(n170), .A2(n167), .ZN(n162) );
  INV_X1 U212 ( .A(a_0_), .ZN(n167) );
  AND2_X1 U213 ( .A1(n210), .A2(n211), .ZN(n170) );
  NAND2_X1 U214 ( .A1(n212), .A2(a_0_), .ZN(n211) );
  NOR2_X1 U215 ( .A1(n213), .A2(n124), .ZN(n212) );
  NOR2_X1 U216 ( .A1(n179), .A2(n180), .ZN(n213) );
  NAND2_X1 U217 ( .A1(n179), .A2(n180), .ZN(n210) );
  NAND2_X1 U218 ( .A1(n207), .A2(n214), .ZN(n180) );
  NAND2_X1 U219 ( .A1(n209), .A2(n118), .ZN(n214) );
  NOR2_X1 U220 ( .A1(n124), .A2(n126), .ZN(n118) );
  NOR2_X1 U221 ( .A1(n137), .A2(n143), .ZN(n209) );
  NAND2_X1 U222 ( .A1(n205), .A2(n206), .ZN(n207) );
  NOR2_X1 U223 ( .A1(n137), .A2(n196), .ZN(n206) );
  INV_X1 U224 ( .A(a_3_), .ZN(n196) );
  NOR2_X1 U225 ( .A1(n124), .A2(n143), .ZN(n205) );
  INV_X1 U226 ( .A(a_2_), .ZN(n143) );
  INV_X1 U227 ( .A(b_1_), .ZN(n124) );
  NOR2_X1 U228 ( .A1(n137), .A2(n126), .ZN(n179) );
  INV_X1 U229 ( .A(a_1_), .ZN(n126) );
  INV_X1 U230 ( .A(b_0_), .ZN(n137) );
endmodule

