module add_mul_combine_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        Result_mul_0_, Result_mul_1_, Result_mul_2_, Result_mul_3_, 
        Result_mul_4_, Result_mul_5_, Result_mul_6_, Result_mul_7_, 
        Result_add_0_, Result_add_1_, Result_add_2_, Result_add_3_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_;
  output Result_mul_0_, Result_mul_1_, Result_mul_2_, Result_mul_3_,
         Result_mul_4_, Result_mul_5_, Result_mul_6_, Result_mul_7_,
         Result_add_0_, Result_add_1_, Result_add_2_, Result_add_3_;
  wire   n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188;

  XNOR2_X1 U99 ( .A(n88), .B(n89), .ZN(Result_mul_6_) );
  AND2_X1 U100 ( .A1(a_2_), .A2(b_3_), .ZN(n89) );
  XNOR2_X1 U101 ( .A(n90), .B(n91), .ZN(Result_mul_5_) );
  XOR2_X1 U102 ( .A(n92), .B(n93), .Z(n91) );
  XOR2_X1 U103 ( .A(n94), .B(n95), .Z(Result_mul_4_) );
  XNOR2_X1 U104 ( .A(n96), .B(n97), .ZN(n95) );
  XOR2_X1 U105 ( .A(n98), .B(n99), .Z(Result_mul_3_) );
  XOR2_X1 U106 ( .A(n100), .B(n101), .Z(Result_mul_2_) );
  XOR2_X1 U107 ( .A(n102), .B(n103), .Z(Result_mul_1_) );
  OR2_X1 U108 ( .A1(n104), .A2(n105), .ZN(Result_mul_0_) );
  OR2_X1 U109 ( .A1(n106), .A2(n107), .ZN(n105) );
  AND2_X1 U110 ( .A1(n102), .A2(n103), .ZN(n107) );
  XNOR2_X1 U111 ( .A(n108), .B(n109), .ZN(n103) );
  AND2_X1 U112 ( .A1(n100), .A2(n101), .ZN(n102) );
  AND2_X1 U113 ( .A1(n99), .A2(n98), .ZN(n101) );
  INV_X1 U114 ( .A(n110), .ZN(n98) );
  OR2_X1 U115 ( .A1(n111), .A2(n112), .ZN(n110) );
  AND2_X1 U116 ( .A1(n96), .A2(n97), .ZN(n112) );
  AND2_X1 U117 ( .A1(n94), .A2(n113), .ZN(n111) );
  OR2_X1 U118 ( .A1(n97), .A2(n96), .ZN(n113) );
  OR2_X1 U119 ( .A1(n114), .A2(n115), .ZN(n96) );
  OR2_X1 U120 ( .A1(n116), .A2(n117), .ZN(n97) );
  AND2_X1 U121 ( .A1(n93), .A2(n92), .ZN(n117) );
  AND2_X1 U122 ( .A1(n90), .A2(n118), .ZN(n116) );
  OR2_X1 U123 ( .A1(n92), .A2(n93), .ZN(n118) );
  INV_X1 U124 ( .A(n119), .ZN(n93) );
  OR2_X1 U125 ( .A1(n114), .A2(n120), .ZN(n92) );
  XOR2_X1 U126 ( .A(n121), .B(n122), .Z(n90) );
  OR2_X1 U127 ( .A1(n123), .A2(n124), .ZN(n121) );
  XNOR2_X1 U128 ( .A(n125), .B(n126), .ZN(n94) );
  XNOR2_X1 U129 ( .A(n127), .B(n128), .ZN(n125) );
  XOR2_X1 U130 ( .A(n129), .B(n130), .Z(n99) );
  XNOR2_X1 U131 ( .A(n131), .B(n132), .ZN(n129) );
  AND2_X1 U132 ( .A1(n133), .A2(n109), .ZN(n100) );
  INV_X1 U133 ( .A(n134), .ZN(n133) );
  AND2_X1 U134 ( .A1(n135), .A2(n136), .ZN(n134) );
  AND2_X1 U135 ( .A1(n137), .A2(n108), .ZN(n106) );
  XNOR2_X1 U136 ( .A(n138), .B(n139), .ZN(n108) );
  AND2_X1 U137 ( .A1(b_0_), .A2(a_0_), .ZN(n138) );
  INV_X1 U138 ( .A(n109), .ZN(n137) );
  OR2_X1 U139 ( .A1(n135), .A2(n136), .ZN(n109) );
  OR2_X1 U140 ( .A1(n140), .A2(n141), .ZN(n136) );
  AND2_X1 U141 ( .A1(n131), .A2(n132), .ZN(n141) );
  AND2_X1 U142 ( .A1(n130), .A2(n142), .ZN(n140) );
  OR2_X1 U143 ( .A1(n132), .A2(n131), .ZN(n142) );
  OR2_X1 U144 ( .A1(n143), .A2(n144), .ZN(n131) );
  AND2_X1 U145 ( .A1(n126), .A2(n128), .ZN(n144) );
  AND2_X1 U146 ( .A1(n145), .A2(n127), .ZN(n143) );
  OR2_X1 U147 ( .A1(n146), .A2(n147), .ZN(n127) );
  AND2_X1 U148 ( .A1(n148), .A2(n149), .ZN(n146) );
  OR2_X1 U149 ( .A1(n123), .A2(n150), .ZN(n148) );
  OR2_X1 U150 ( .A1(n128), .A2(n126), .ZN(n145) );
  OR2_X1 U151 ( .A1(n151), .A2(n120), .ZN(n126) );
  OR2_X1 U152 ( .A1(n88), .A2(n149), .ZN(n128) );
  INV_X1 U153 ( .A(n152), .ZN(n149) );
  OR2_X1 U154 ( .A1(n123), .A2(n151), .ZN(n88) );
  OR2_X1 U155 ( .A1(n151), .A2(n115), .ZN(n132) );
  XOR2_X1 U156 ( .A(n153), .B(n147), .Z(n130) );
  OR2_X1 U157 ( .A1(n154), .A2(n155), .ZN(n153) );
  INV_X1 U158 ( .A(n156), .ZN(n154) );
  OR2_X1 U159 ( .A1(n157), .A2(n158), .ZN(n156) );
  XOR2_X1 U160 ( .A(n159), .B(n160), .Z(n135) );
  XOR2_X1 U161 ( .A(n161), .B(n162), .Z(n160) );
  INV_X1 U162 ( .A(n163), .ZN(n104) );
  OR2_X1 U163 ( .A1(n139), .A2(n115), .ZN(n163) );
  OR2_X1 U164 ( .A1(n164), .A2(n165), .ZN(n139) );
  AND2_X1 U165 ( .A1(n162), .A2(n161), .ZN(n165) );
  AND2_X1 U166 ( .A1(n159), .A2(n166), .ZN(n164) );
  OR2_X1 U167 ( .A1(n161), .A2(n162), .ZN(n166) );
  OR2_X1 U168 ( .A1(n120), .A2(n150), .ZN(n162) );
  INV_X1 U169 ( .A(b_0_), .ZN(n150) );
  OR2_X1 U170 ( .A1(n124), .A2(n115), .ZN(n161) );
  INV_X1 U171 ( .A(a_0_), .ZN(n115) );
  INV_X1 U172 ( .A(n167), .ZN(n159) );
  OR2_X1 U173 ( .A1(n155), .A2(n147), .ZN(n167) );
  AND2_X1 U174 ( .A1(b_0_), .A2(n168), .ZN(n147) );
  AND2_X1 U175 ( .A1(a_3_), .A2(n152), .ZN(n168) );
  AND2_X1 U176 ( .A1(a_2_), .A2(b_1_), .ZN(n152) );
  AND2_X1 U177 ( .A1(n158), .A2(n157), .ZN(n155) );
  AND2_X1 U178 ( .A1(a_2_), .A2(b_0_), .ZN(n157) );
  XOR2_X1 U179 ( .A(n114), .B(n123), .Z(Result_add_3_) );
  INV_X1 U180 ( .A(a_3_), .ZN(n123) );
  INV_X1 U181 ( .A(b_3_), .ZN(n114) );
  OR2_X1 U182 ( .A1(n119), .A2(n169), .ZN(Result_add_2_) );
  OR2_X1 U183 ( .A1(n170), .A2(n171), .ZN(n169) );
  AND2_X1 U184 ( .A1(n172), .A2(b_2_), .ZN(n171) );
  INV_X1 U185 ( .A(n173), .ZN(n172) );
  OR2_X1 U186 ( .A1(Result_mul_7_), .A2(a_2_), .ZN(n173) );
  AND2_X1 U187 ( .A1(n174), .A2(n151), .ZN(n170) );
  INV_X1 U188 ( .A(b_2_), .ZN(n151) );
  XOR2_X1 U189 ( .A(a_2_), .B(Result_mul_7_), .Z(n174) );
  AND2_X1 U190 ( .A1(n122), .A2(Result_mul_7_), .ZN(n119) );
  OR2_X1 U191 ( .A1(n175), .A2(n176), .ZN(Result_add_1_) );
  OR2_X1 U192 ( .A1(n177), .A2(n178), .ZN(n176) );
  AND2_X1 U193 ( .A1(n179), .A2(n124), .ZN(n178) );
  INV_X1 U194 ( .A(b_1_), .ZN(n124) );
  XNOR2_X1 U195 ( .A(n180), .B(n120), .ZN(n179) );
  INV_X1 U196 ( .A(a_1_), .ZN(n120) );
  AND2_X1 U197 ( .A1(n181), .A2(b_1_), .ZN(n177) );
  INV_X1 U198 ( .A(n182), .ZN(n181) );
  OR2_X1 U199 ( .A1(n180), .A2(a_1_), .ZN(n182) );
  AND2_X1 U200 ( .A1(n158), .A2(n180), .ZN(n175) );
  XOR2_X1 U201 ( .A(n183), .B(n184), .Z(Result_add_0_) );
  XOR2_X1 U202 ( .A(b_0_), .B(a_0_), .Z(n184) );
  OR2_X1 U203 ( .A1(n185), .A2(n158), .ZN(n183) );
  AND2_X1 U204 ( .A1(b_1_), .A2(a_1_), .ZN(n158) );
  AND2_X1 U205 ( .A1(n186), .A2(n180), .ZN(n185) );
  OR2_X1 U206 ( .A1(n187), .A2(n122), .ZN(n180) );
  AND2_X1 U207 ( .A1(b_2_), .A2(a_2_), .ZN(n122) );
  AND2_X1 U208 ( .A1(Result_mul_7_), .A2(n188), .ZN(n187) );
  OR2_X1 U209 ( .A1(a_2_), .A2(b_2_), .ZN(n188) );
  AND2_X1 U210 ( .A1(a_3_), .A2(b_3_), .ZN(Result_mul_7_) );
  OR2_X1 U211 ( .A1(a_1_), .A2(b_1_), .ZN(n186) );
endmodule

