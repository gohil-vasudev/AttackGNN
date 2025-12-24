module add_mul_combine_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        Result_mul_0_, Result_mul_1_, Result_mul_2_, Result_mul_3_, 
        Result_mul_4_, Result_mul_5_, Result_mul_6_, Result_mul_7_, 
        Result_add_0_, Result_add_1_, Result_add_2_, Result_add_3_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_;
  output Result_mul_0_, Result_mul_1_, Result_mul_2_, Result_mul_3_,
         Result_mul_4_, Result_mul_5_, Result_mul_6_, Result_mul_7_,
         Result_add_0_, Result_add_1_, Result_add_2_, Result_add_3_;
  wire   n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180;

  XOR2_X1 U95 ( .A(n85), .B(n86), .Z(Result_mul_6_) );
  AND2_X1 U96 ( .A1(a_2_), .A2(b_3_), .ZN(n86) );
  AND2_X1 U97 ( .A1(b_2_), .A2(a_3_), .ZN(n85) );
  XNOR2_X1 U98 ( .A(n87), .B(n88), .ZN(Result_mul_5_) );
  XOR2_X1 U99 ( .A(n89), .B(n90), .Z(n88) );
  XNOR2_X1 U100 ( .A(n91), .B(n92), .ZN(Result_mul_4_) );
  XOR2_X1 U101 ( .A(n93), .B(n94), .Z(n92) );
  XOR2_X1 U102 ( .A(n95), .B(n96), .Z(Result_mul_3_) );
  XOR2_X1 U103 ( .A(n97), .B(n98), .Z(Result_mul_2_) );
  XOR2_X1 U104 ( .A(n99), .B(n100), .Z(Result_mul_1_) );
  INV_X1 U105 ( .A(n101), .ZN(Result_mul_0_) );
  AND3_X1 U106 ( .A1(n102), .A2(n103), .A3(n104), .ZN(n101) );
  OR2_X1 U107 ( .A1(n105), .A2(n106), .ZN(n104) );
  OR2_X1 U108 ( .A1(n100), .A2(n99), .ZN(n103) );
  OR2_X1 U109 ( .A1(n107), .A2(n108), .ZN(n99) );
  INV_X1 U110 ( .A(n102), .ZN(n108) );
  AND2_X1 U111 ( .A1(n109), .A2(n110), .ZN(n107) );
  OR2_X1 U112 ( .A1(n111), .A2(n112), .ZN(n110) );
  OR2_X1 U113 ( .A1(n97), .A2(n98), .ZN(n100) );
  OR2_X1 U114 ( .A1(n96), .A2(n95), .ZN(n98) );
  OR2_X1 U115 ( .A1(n113), .A2(n114), .ZN(n95) );
  AND2_X1 U116 ( .A1(n94), .A2(n93), .ZN(n114) );
  AND2_X1 U117 ( .A1(n91), .A2(n115), .ZN(n113) );
  OR2_X1 U118 ( .A1(n93), .A2(n94), .ZN(n115) );
  OR2_X1 U119 ( .A1(n116), .A2(n106), .ZN(n94) );
  OR2_X1 U120 ( .A1(n117), .A2(n118), .ZN(n93) );
  AND2_X1 U121 ( .A1(n87), .A2(n90), .ZN(n118) );
  AND2_X1 U122 ( .A1(n119), .A2(n89), .ZN(n117) );
  OR2_X1 U123 ( .A1(n120), .A2(n121), .ZN(n89) );
  INV_X1 U124 ( .A(n122), .ZN(n121) );
  AND2_X1 U125 ( .A1(n123), .A2(n124), .ZN(n120) );
  OR2_X1 U126 ( .A1(n125), .A2(n126), .ZN(n123) );
  OR2_X1 U127 ( .A1(n90), .A2(n87), .ZN(n119) );
  OR2_X1 U128 ( .A1(n116), .A2(n127), .ZN(n90) );
  XNOR2_X1 U129 ( .A(n128), .B(n129), .ZN(n91) );
  XNOR2_X1 U130 ( .A(n130), .B(n122), .ZN(n128) );
  XNOR2_X1 U131 ( .A(n131), .B(n132), .ZN(n96) );
  XNOR2_X1 U132 ( .A(n133), .B(n134), .ZN(n131) );
  XNOR2_X1 U133 ( .A(n111), .B(n112), .ZN(n97) );
  OR3_X1 U134 ( .A1(n109), .A2(n111), .A3(n112), .ZN(n102) );
  OR2_X1 U135 ( .A1(n135), .A2(n136), .ZN(n112) );
  AND2_X1 U136 ( .A1(n134), .A2(n133), .ZN(n136) );
  AND2_X1 U137 ( .A1(n132), .A2(n137), .ZN(n135) );
  OR2_X1 U138 ( .A1(n133), .A2(n134), .ZN(n137) );
  OR2_X1 U139 ( .A1(n138), .A2(n139), .ZN(n134) );
  AND2_X1 U140 ( .A1(n129), .A2(n122), .ZN(n139) );
  AND2_X1 U141 ( .A1(n140), .A2(n130), .ZN(n138) );
  OR2_X1 U142 ( .A1(n141), .A2(n142), .ZN(n130) );
  AND2_X1 U143 ( .A1(n143), .A2(n144), .ZN(n141) );
  OR2_X1 U144 ( .A1(n145), .A2(n126), .ZN(n143) );
  OR2_X1 U145 ( .A1(n122), .A2(n129), .ZN(n140) );
  OR2_X1 U146 ( .A1(n146), .A2(n127), .ZN(n129) );
  OR3_X1 U147 ( .A1(n125), .A2(n124), .A3(n126), .ZN(n122) );
  OR2_X1 U148 ( .A1(n146), .A2(n106), .ZN(n133) );
  XNOR2_X1 U149 ( .A(n147), .B(n148), .ZN(n132) );
  OR2_X1 U150 ( .A1(n149), .A2(n150), .ZN(n147) );
  AND2_X1 U151 ( .A1(n151), .A2(n152), .ZN(n149) );
  INV_X1 U152 ( .A(n153), .ZN(n152) );
  OR2_X1 U153 ( .A1(n145), .A2(n154), .ZN(n151) );
  XOR2_X1 U154 ( .A(n155), .B(n156), .Z(n111) );
  XNOR2_X1 U155 ( .A(n157), .B(n158), .ZN(n155) );
  XNOR2_X1 U156 ( .A(n159), .B(n105), .ZN(n109) );
  OR2_X1 U157 ( .A1(n160), .A2(n161), .ZN(n105) );
  AND2_X1 U158 ( .A1(n156), .A2(n158), .ZN(n161) );
  AND2_X1 U159 ( .A1(n162), .A2(n163), .ZN(n160) );
  OR2_X1 U160 ( .A1(n158), .A2(n156), .ZN(n163) );
  OR2_X1 U161 ( .A1(n127), .A2(n154), .ZN(n156) );
  OR2_X1 U162 ( .A1(n126), .A2(n106), .ZN(n158) );
  INV_X1 U163 ( .A(n157), .ZN(n162) );
  OR2_X1 U164 ( .A1(n150), .A2(n142), .ZN(n157) );
  INV_X1 U165 ( .A(n148), .ZN(n142) );
  OR3_X1 U166 ( .A1(n145), .A2(n126), .A3(n144), .ZN(n148) );
  OR2_X1 U167 ( .A1(n125), .A2(n154), .ZN(n144) );
  INV_X1 U168 ( .A(a_3_), .ZN(n125) );
  AND3_X1 U169 ( .A1(a_2_), .A2(b_0_), .A3(n153), .ZN(n150) );
  OR2_X1 U170 ( .A1(n154), .A2(n106), .ZN(n159) );
  INV_X1 U171 ( .A(a_0_), .ZN(n106) );
  XNOR2_X1 U172 ( .A(n116), .B(a_3_), .ZN(Result_add_3_) );
  INV_X1 U173 ( .A(b_3_), .ZN(n116) );
  OR3_X1 U174 ( .A1(n164), .A2(n165), .A3(n166), .ZN(Result_add_2_) );
  INV_X1 U175 ( .A(n87), .ZN(n166) );
  OR2_X1 U176 ( .A1(n124), .A2(n167), .ZN(n87) );
  AND2_X1 U177 ( .A1(n168), .A2(Result_mul_7_), .ZN(n165) );
  AND2_X1 U178 ( .A1(n169), .A2(n167), .ZN(n164) );
  XNOR2_X1 U179 ( .A(n146), .B(a_2_), .ZN(n169) );
  OR3_X1 U180 ( .A1(n170), .A2(n171), .A3(n172), .ZN(Result_add_1_) );
  AND2_X1 U181 ( .A1(n173), .A2(n126), .ZN(n172) );
  INV_X1 U182 ( .A(b_1_), .ZN(n126) );
  XNOR2_X1 U183 ( .A(n127), .B(n174), .ZN(n173) );
  AND2_X1 U184 ( .A1(n174), .A2(n153), .ZN(n171) );
  AND3_X1 U185 ( .A1(b_1_), .A2(n127), .A3(n175), .ZN(n170) );
  INV_X1 U186 ( .A(a_1_), .ZN(n127) );
  XOR2_X1 U187 ( .A(n176), .B(n177), .Z(Result_add_0_) );
  XNOR2_X1 U188 ( .A(n154), .B(a_0_), .ZN(n177) );
  INV_X1 U189 ( .A(b_0_), .ZN(n154) );
  OR2_X1 U190 ( .A1(n178), .A2(n153), .ZN(n176) );
  AND2_X1 U191 ( .A1(b_1_), .A2(a_1_), .ZN(n153) );
  AND2_X1 U192 ( .A1(n174), .A2(n179), .ZN(n178) );
  OR2_X1 U193 ( .A1(a_1_), .A2(b_1_), .ZN(n179) );
  INV_X1 U194 ( .A(n175), .ZN(n174) );
  OR2_X1 U195 ( .A1(n168), .A2(n180), .ZN(n175) );
  AND2_X1 U196 ( .A1(n167), .A2(n124), .ZN(n180) );
  OR2_X1 U197 ( .A1(n146), .A2(n145), .ZN(n124) );
  INV_X1 U198 ( .A(Result_mul_7_), .ZN(n167) );
  AND2_X1 U199 ( .A1(a_3_), .A2(b_3_), .ZN(Result_mul_7_) );
  AND2_X1 U200 ( .A1(n145), .A2(n146), .ZN(n168) );
  INV_X1 U201 ( .A(b_2_), .ZN(n146) );
  INV_X1 U202 ( .A(a_2_), .ZN(n145) );
endmodule

