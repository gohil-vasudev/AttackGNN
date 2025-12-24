module add_mul_combine_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        Result_mul_0_, Result_mul_1_, Result_mul_2_, Result_mul_3_, 
        Result_mul_4_, Result_mul_5_, Result_mul_6_, Result_mul_7_, 
        Result_add_0_, Result_add_1_, Result_add_2_, Result_add_3_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_;
  output Result_mul_0_, Result_mul_1_, Result_mul_2_, Result_mul_3_,
         Result_mul_4_, Result_mul_5_, Result_mul_6_, Result_mul_7_,
         Result_add_0_, Result_add_1_, Result_add_2_, Result_add_3_;
  wire   n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180;

  XOR2_X1 U97 ( .A(n86), .B(n87), .Z(Result_mul_6_) );
  NAND2_X1 U98 ( .A1(a_2_), .A2(b_3_), .ZN(n87) );
  NAND2_X1 U99 ( .A1(b_2_), .A2(a_3_), .ZN(n86) );
  XNOR2_X1 U100 ( .A(n88), .B(n89), .ZN(Result_mul_5_) );
  NAND2_X1 U101 ( .A1(n90), .A2(n91), .ZN(n88) );
  XNOR2_X1 U102 ( .A(n92), .B(n93), .ZN(Result_mul_4_) );
  XNOR2_X1 U103 ( .A(n94), .B(n95), .ZN(n93) );
  XOR2_X1 U104 ( .A(n96), .B(n97), .Z(Result_mul_3_) );
  XNOR2_X1 U105 ( .A(n98), .B(n99), .ZN(Result_mul_2_) );
  NAND2_X1 U106 ( .A1(n97), .A2(n96), .ZN(n99) );
  XOR2_X1 U107 ( .A(n100), .B(n101), .Z(Result_mul_1_) );
  NAND2_X1 U108 ( .A1(n102), .A2(n103), .ZN(Result_mul_0_) );
  NOR2_X1 U109 ( .A1(n104), .A2(n105), .ZN(n102) );
  NOR2_X1 U110 ( .A1(n100), .A2(n101), .ZN(n105) );
  NAND2_X1 U111 ( .A1(n106), .A2(n98), .ZN(n101) );
  AND2_X1 U112 ( .A1(n107), .A2(n108), .ZN(n98) );
  NAND2_X1 U113 ( .A1(n109), .A2(n110), .ZN(n108) );
  AND2_X1 U114 ( .A1(n96), .A2(n97), .ZN(n106) );
  XNOR2_X1 U115 ( .A(n111), .B(n112), .ZN(n97) );
  XOR2_X1 U116 ( .A(n113), .B(n114), .Z(n112) );
  NAND2_X1 U117 ( .A1(a_0_), .A2(b_2_), .ZN(n114) );
  NAND2_X1 U118 ( .A1(n115), .A2(n116), .ZN(n96) );
  NAND2_X1 U119 ( .A1(n95), .A2(n117), .ZN(n116) );
  OR2_X1 U120 ( .A1(n92), .A2(n94), .ZN(n117) );
  AND2_X1 U121 ( .A1(a_0_), .A2(b_3_), .ZN(n95) );
  NAND2_X1 U122 ( .A1(n92), .A2(n94), .ZN(n115) );
  NAND2_X1 U123 ( .A1(n90), .A2(n118), .ZN(n94) );
  NAND2_X1 U124 ( .A1(n89), .A2(n91), .ZN(n118) );
  NAND2_X1 U125 ( .A1(n119), .A2(n120), .ZN(n91) );
  NAND2_X1 U126 ( .A1(a_1_), .A2(b_3_), .ZN(n120) );
  XOR2_X1 U127 ( .A(n121), .B(n122), .Z(n89) );
  OR2_X1 U128 ( .A1(n119), .A2(n123), .ZN(n90) );
  XNOR2_X1 U129 ( .A(n124), .B(n125), .ZN(n92) );
  NAND2_X1 U130 ( .A1(n126), .A2(n127), .ZN(n124) );
  OR2_X1 U131 ( .A1(n128), .A2(n104), .ZN(n100) );
  AND2_X1 U132 ( .A1(n129), .A2(n107), .ZN(n128) );
  NOR2_X1 U133 ( .A1(n107), .A2(n129), .ZN(n104) );
  NAND2_X1 U134 ( .A1(n130), .A2(n103), .ZN(n129) );
  NAND2_X1 U135 ( .A1(a_0_), .A2(n131), .ZN(n103) );
  NAND2_X1 U136 ( .A1(n132), .A2(n133), .ZN(n130) );
  NAND2_X1 U137 ( .A1(a_0_), .A2(b_0_), .ZN(n133) );
  INV_X1 U138 ( .A(n131), .ZN(n132) );
  NAND2_X1 U139 ( .A1(n134), .A2(n135), .ZN(n131) );
  NAND2_X1 U140 ( .A1(n136), .A2(a_0_), .ZN(n135) );
  NOR2_X1 U141 ( .A1(n137), .A2(n138), .ZN(n136) );
  NOR2_X1 U142 ( .A1(n139), .A2(n140), .ZN(n137) );
  NAND2_X1 U143 ( .A1(n139), .A2(n140), .ZN(n134) );
  OR2_X1 U144 ( .A1(n110), .A2(n109), .ZN(n107) );
  AND2_X1 U145 ( .A1(n141), .A2(n142), .ZN(n109) );
  NAND2_X1 U146 ( .A1(n143), .A2(a_0_), .ZN(n142) );
  NOR2_X1 U147 ( .A1(n144), .A2(n145), .ZN(n143) );
  NOR2_X1 U148 ( .A1(n113), .A2(n111), .ZN(n144) );
  NAND2_X1 U149 ( .A1(n111), .A2(n113), .ZN(n141) );
  NAND2_X1 U150 ( .A1(n126), .A2(n146), .ZN(n113) );
  NAND2_X1 U151 ( .A1(n125), .A2(n127), .ZN(n146) );
  NAND2_X1 U152 ( .A1(n147), .A2(n148), .ZN(n127) );
  NAND2_X1 U153 ( .A1(a_1_), .A2(b_2_), .ZN(n148) );
  AND2_X1 U154 ( .A1(n149), .A2(n150), .ZN(n125) );
  NAND2_X1 U155 ( .A1(n151), .A2(n152), .ZN(n150) );
  OR2_X1 U156 ( .A1(n147), .A2(n123), .ZN(n126) );
  NAND2_X1 U157 ( .A1(n122), .A2(n121), .ZN(n147) );
  AND2_X1 U158 ( .A1(b_1_), .A2(a_3_), .ZN(n122) );
  XOR2_X1 U159 ( .A(n153), .B(n154), .Z(n111) );
  AND2_X1 U160 ( .A1(n149), .A2(n155), .ZN(n154) );
  XNOR2_X1 U161 ( .A(n156), .B(n157), .ZN(n110) );
  AND2_X1 U162 ( .A1(b_1_), .A2(a_0_), .ZN(n157) );
  XOR2_X1 U163 ( .A(n139), .B(n140), .Z(n156) );
  NAND2_X1 U164 ( .A1(n149), .A2(n158), .ZN(n140) );
  NAND2_X1 U165 ( .A1(n153), .A2(n155), .ZN(n158) );
  NOR2_X1 U166 ( .A1(n159), .A2(n160), .ZN(n155) );
  OR2_X1 U167 ( .A1(n152), .A2(n151), .ZN(n149) );
  NAND2_X1 U168 ( .A1(b_1_), .A2(a_2_), .ZN(n151) );
  NAND2_X1 U169 ( .A1(b_0_), .A2(a_3_), .ZN(n152) );
  NOR2_X1 U170 ( .A1(n159), .A2(n123), .ZN(n139) );
  XOR2_X1 U171 ( .A(b_3_), .B(a_3_), .Z(Result_add_3_) );
  NAND2_X1 U172 ( .A1(n161), .A2(n119), .ZN(Result_add_2_) );
  NAND2_X1 U173 ( .A1(Result_mul_7_), .A2(n121), .ZN(n119) );
  NOR2_X1 U174 ( .A1(n162), .A2(n163), .ZN(n161) );
  NOR2_X1 U175 ( .A1(n145), .A2(n164), .ZN(n163) );
  NAND2_X1 U176 ( .A1(n165), .A2(n160), .ZN(n164) );
  NOR2_X1 U177 ( .A1(b_2_), .A2(n166), .ZN(n162) );
  XOR2_X1 U178 ( .A(n165), .B(a_2_), .Z(n166) );
  NAND2_X1 U179 ( .A1(n167), .A2(n168), .ZN(Result_add_1_) );
  NAND2_X1 U180 ( .A1(n153), .A2(n169), .ZN(n168) );
  NOR2_X1 U181 ( .A1(n170), .A2(n171), .ZN(n167) );
  NOR2_X1 U182 ( .A1(b_1_), .A2(n172), .ZN(n171) );
  XOR2_X1 U183 ( .A(a_1_), .B(n173), .Z(n172) );
  NOR2_X1 U184 ( .A1(n138), .A2(n174), .ZN(n170) );
  NAND2_X1 U185 ( .A1(n173), .A2(n123), .ZN(n174) );
  XOR2_X1 U186 ( .A(n175), .B(n176), .Z(Result_add_0_) );
  XOR2_X1 U187 ( .A(n159), .B(a_0_), .Z(n176) );
  INV_X1 U188 ( .A(b_0_), .ZN(n159) );
  NAND2_X1 U189 ( .A1(n177), .A2(n178), .ZN(n175) );
  OR2_X1 U190 ( .A1(n169), .A2(n153), .ZN(n178) );
  NOR2_X1 U191 ( .A1(n138), .A2(n123), .ZN(n153) );
  INV_X1 U192 ( .A(n173), .ZN(n169) );
  NOR2_X1 U193 ( .A1(n179), .A2(n121), .ZN(n173) );
  NOR2_X1 U194 ( .A1(n160), .A2(n145), .ZN(n121) );
  AND2_X1 U195 ( .A1(Result_mul_7_), .A2(n180), .ZN(n179) );
  NAND2_X1 U196 ( .A1(n160), .A2(n145), .ZN(n180) );
  INV_X1 U197 ( .A(b_2_), .ZN(n145) );
  INV_X1 U198 ( .A(a_2_), .ZN(n160) );
  INV_X1 U199 ( .A(n165), .ZN(Result_mul_7_) );
  NAND2_X1 U200 ( .A1(b_3_), .A2(a_3_), .ZN(n165) );
  NAND2_X1 U201 ( .A1(n123), .A2(n138), .ZN(n177) );
  INV_X1 U202 ( .A(b_1_), .ZN(n138) );
  INV_X1 U203 ( .A(a_1_), .ZN(n123) );
endmodule

