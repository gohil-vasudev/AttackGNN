module add_mul_comp_sub_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_, 
        Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   Result_3_, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131;
  assign Result_2_ = Result_3_;
  assign Result_0_ = Result_3_;
  assign Result_1_ = Result_3_;

  OR2_X1 U72 ( .A1(n67), .A2(n68), .ZN(Result_7_) );
  NAND2_X1 U73 ( .A1(n69), .A2(n70), .ZN(Result_6_) );
  NAND2_X1 U74 ( .A1(n71), .A2(n72), .ZN(n70) );
  NAND2_X1 U75 ( .A1(n73), .A2(a_3_), .ZN(n72) );
  XNOR2_X1 U76 ( .A(n74), .B(b_3_), .ZN(n73) );
  NAND2_X1 U77 ( .A1(n75), .A2(n76), .ZN(n69) );
  INV_X1 U78 ( .A(n71), .ZN(n76) );
  XOR2_X1 U79 ( .A(b_2_), .B(a_2_), .Z(n71) );
  NOR2_X1 U80 ( .A1(n77), .A2(n78), .ZN(n75) );
  NAND2_X1 U81 ( .A1(n79), .A2(n80), .ZN(n77) );
  NAND2_X1 U82 ( .A1(b_3_), .A2(n81), .ZN(n80) );
  NAND2_X1 U83 ( .A1(n74), .A2(n82), .ZN(n79) );
  NAND2_X1 U84 ( .A1(n83), .A2(n84), .ZN(Result_5_) );
  NAND2_X1 U85 ( .A1(n85), .A2(n86), .ZN(n84) );
  XOR2_X1 U86 ( .A(n87), .B(n88), .Z(n86) );
  INV_X1 U87 ( .A(n81), .ZN(n85) );
  NAND2_X1 U88 ( .A1(n89), .A2(n90), .ZN(n83) );
  XNOR2_X1 U89 ( .A(n91), .B(n87), .ZN(n89) );
  NAND2_X1 U90 ( .A1(n92), .A2(n93), .ZN(n87) );
  NAND2_X1 U91 ( .A1(n94), .A2(n95), .ZN(Result_4_) );
  NAND2_X1 U92 ( .A1(n96), .A2(n90), .ZN(n95) );
  INV_X1 U93 ( .A(n74), .ZN(n90) );
  NAND2_X1 U94 ( .A1(n97), .A2(n98), .ZN(n96) );
  NOR2_X1 U95 ( .A1(n99), .A2(n100), .ZN(n97) );
  NOR2_X1 U96 ( .A1(n101), .A2(n102), .ZN(n94) );
  NOR2_X1 U97 ( .A1(n103), .A2(n104), .ZN(n102) );
  OR2_X1 U98 ( .A1(n81), .A2(n100), .ZN(n104) );
  NAND2_X1 U99 ( .A1(n74), .A2(n105), .ZN(n81) );
  NOR2_X1 U100 ( .A1(n106), .A2(n107), .ZN(n74) );
  AND2_X1 U101 ( .A1(n108), .A2(n109), .ZN(n107) );
  NAND2_X1 U102 ( .A1(n92), .A2(n110), .ZN(n108) );
  OR2_X1 U103 ( .A1(n91), .A2(n99), .ZN(n110) );
  NOR2_X1 U104 ( .A1(n111), .A2(n112), .ZN(n101) );
  NAND2_X1 U105 ( .A1(n100), .A2(n105), .ZN(n112) );
  NAND2_X1 U106 ( .A1(n113), .A2(n114), .ZN(n105) );
  NOR2_X1 U107 ( .A1(n99), .A2(n68), .ZN(n114) );
  NOR2_X1 U108 ( .A1(n82), .A2(a_3_), .ZN(n68) );
  INV_X1 U109 ( .A(n93), .ZN(n99) );
  NOR2_X1 U110 ( .A1(n115), .A2(n116), .ZN(n113) );
  NOR2_X1 U111 ( .A1(a_2_), .A2(n117), .ZN(n116) );
  INV_X1 U112 ( .A(b_2_), .ZN(n117) );
  NOR2_X1 U113 ( .A1(n115), .A2(n106), .ZN(n100) );
  INV_X1 U114 ( .A(n103), .ZN(n111) );
  NAND2_X1 U115 ( .A1(n118), .A2(n119), .ZN(n103) );
  NAND2_X1 U116 ( .A1(b_1_), .A2(n120), .ZN(n119) );
  OR2_X1 U117 ( .A1(n88), .A2(a_1_), .ZN(n120) );
  NAND2_X1 U118 ( .A1(a_1_), .A2(n88), .ZN(n118) );
  NAND2_X1 U119 ( .A1(n121), .A2(n122), .ZN(n88) );
  NAND2_X1 U120 ( .A1(n123), .A2(a_3_), .ZN(n122) );
  NOR2_X1 U121 ( .A1(n124), .A2(n82), .ZN(n123) );
  INV_X1 U122 ( .A(b_3_), .ZN(n82) );
  NOR2_X1 U123 ( .A1(a_2_), .A2(b_2_), .ZN(n124) );
  NAND2_X1 U124 ( .A1(a_2_), .A2(b_2_), .ZN(n121) );
  NOR2_X1 U125 ( .A1(n115), .A2(n125), .ZN(Result_3_) );
  NOR2_X1 U126 ( .A1(n126), .A2(n106), .ZN(n125) );
  NOR2_X1 U127 ( .A1(n127), .A2(b_0_), .ZN(n106) );
  AND2_X1 U128 ( .A1(n93), .A2(n98), .ZN(n126) );
  NAND2_X1 U129 ( .A1(n91), .A2(n92), .ZN(n98) );
  OR2_X1 U130 ( .A1(n128), .A2(b_1_), .ZN(n92) );
  NAND2_X1 U131 ( .A1(n129), .A2(n130), .ZN(n91) );
  NAND2_X1 U132 ( .A1(b_2_), .A2(n131), .ZN(n130) );
  NAND2_X1 U133 ( .A1(n67), .A2(a_2_), .ZN(n131) );
  OR2_X1 U134 ( .A1(n67), .A2(a_2_), .ZN(n129) );
  NOR2_X1 U135 ( .A1(n78), .A2(b_3_), .ZN(n67) );
  INV_X1 U136 ( .A(a_3_), .ZN(n78) );
  NAND2_X1 U137 ( .A1(b_1_), .A2(n128), .ZN(n93) );
  INV_X1 U138 ( .A(a_1_), .ZN(n128) );
  INV_X1 U139 ( .A(n109), .ZN(n115) );
  NAND2_X1 U140 ( .A1(b_0_), .A2(n127), .ZN(n109) );
  INV_X1 U141 ( .A(a_0_), .ZN(n127) );
endmodule

