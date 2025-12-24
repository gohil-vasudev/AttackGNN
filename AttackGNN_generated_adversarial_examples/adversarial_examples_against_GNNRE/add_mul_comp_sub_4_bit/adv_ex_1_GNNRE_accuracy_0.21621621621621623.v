module add_mul_comp_sub_4_bit ( a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_, 
        Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_, 
        Result_6_, Result_7_ );
  input a_0_, a_1_, a_2_, a_3_, b_0_, b_1_, b_2_, b_3_;
  output Result_0_, Result_1_, Result_2_, Result_3_, Result_4_, Result_5_,
         Result_6_, Result_7_;
  wire   Result_3_, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134;
  assign Result_2_ = Result_3_;
  assign Result_0_ = Result_3_;
  assign Result_1_ = Result_3_;

  OR2_X1 U74 ( .A1(n69), .A2(n70), .ZN(Result_7_) );
  AND2_X1 U75 ( .A1(b_3_), .A2(n71), .ZN(n69) );
  OR2_X1 U76 ( .A1(n72), .A2(n73), .ZN(Result_6_) );
  AND4_X1 U77 ( .A1(n74), .A2(n75), .A3(a_3_), .A4(n76), .ZN(n73) );
  OR2_X1 U78 ( .A1(b_3_), .A2(Result_3_), .ZN(n75) );
  OR2_X1 U79 ( .A1(n77), .A2(n78), .ZN(n74) );
  AND2_X1 U80 ( .A1(n79), .A2(n80), .ZN(n72) );
  INV_X1 U81 ( .A(n76), .ZN(n80) );
  AND2_X1 U82 ( .A1(n81), .A2(n82), .ZN(n76) );
  OR3_X1 U83 ( .A1(n83), .A2(n84), .A3(n71), .ZN(n79) );
  AND2_X1 U84 ( .A1(n77), .A2(n78), .ZN(n84) );
  AND2_X1 U85 ( .A1(b_3_), .A2(Result_3_), .ZN(n83) );
  OR2_X1 U86 ( .A1(n85), .A2(n86), .ZN(Result_5_) );
  AND2_X1 U87 ( .A1(n87), .A2(Result_3_), .ZN(n86) );
  OR2_X1 U88 ( .A1(n88), .A2(n89), .ZN(n87) );
  AND2_X1 U89 ( .A1(n90), .A2(n91), .ZN(n89) );
  INV_X1 U90 ( .A(n92), .ZN(n88) );
  OR2_X1 U91 ( .A1(n91), .A2(n90), .ZN(n92) );
  AND3_X1 U92 ( .A1(n93), .A2(n94), .A3(n77), .ZN(n85) );
  OR2_X1 U93 ( .A1(n95), .A2(n96), .ZN(n94) );
  OR2_X1 U94 ( .A1(n90), .A2(n97), .ZN(n93) );
  INV_X1 U95 ( .A(n96), .ZN(n90) );
  OR2_X1 U96 ( .A1(n98), .A2(n99), .ZN(n96) );
  OR2_X1 U97 ( .A1(n100), .A2(n101), .ZN(Result_4_) );
  AND2_X1 U98 ( .A1(n102), .A2(Result_3_), .ZN(n101) );
  OR3_X1 U99 ( .A1(n103), .A2(n99), .A3(n104), .ZN(n102) );
  INV_X1 U100 ( .A(n105), .ZN(n104) );
  OR2_X1 U101 ( .A1(n91), .A2(n98), .ZN(n105) );
  AND2_X1 U102 ( .A1(n106), .A2(a_1_), .ZN(n98) );
  OR2_X1 U103 ( .A1(n107), .A2(n108), .ZN(n91) );
  AND2_X1 U104 ( .A1(n70), .A2(n82), .ZN(n107) );
  INV_X1 U105 ( .A(n109), .ZN(n99) );
  AND2_X1 U106 ( .A1(n77), .A2(n110), .ZN(n100) );
  OR2_X1 U107 ( .A1(n111), .A2(n112), .ZN(n110) );
  INV_X1 U108 ( .A(n113), .ZN(n112) );
  OR2_X1 U109 ( .A1(n114), .A2(n103), .ZN(n113) );
  AND2_X1 U110 ( .A1(n103), .A2(n114), .ZN(n111) );
  OR2_X1 U111 ( .A1(n115), .A2(n116), .ZN(n114) );
  AND2_X1 U112 ( .A1(n95), .A2(a_1_), .ZN(n116) );
  AND2_X1 U113 ( .A1(b_1_), .A2(n117), .ZN(n115) );
  OR2_X1 U114 ( .A1(n95), .A2(a_1_), .ZN(n117) );
  INV_X1 U115 ( .A(n97), .ZN(n95) );
  OR2_X1 U116 ( .A1(n118), .A2(n119), .ZN(n97) );
  AND2_X1 U117 ( .A1(n120), .A2(n121), .ZN(n119) );
  AND2_X1 U118 ( .A1(n122), .A2(n123), .ZN(n118) );
  OR2_X1 U119 ( .A1(n121), .A2(n120), .ZN(n122) );
  OR2_X1 U120 ( .A1(n78), .A2(n71), .ZN(n120) );
  INV_X1 U121 ( .A(a_3_), .ZN(n71) );
  AND2_X1 U122 ( .A1(n124), .A2(n125), .ZN(n103) );
  INV_X1 U123 ( .A(n126), .ZN(n125) );
  INV_X1 U124 ( .A(n127), .ZN(n77) );
  OR2_X1 U125 ( .A1(Result_3_), .A2(n128), .ZN(n127) );
  AND2_X1 U126 ( .A1(n129), .A2(n130), .ZN(n128) );
  OR2_X1 U127 ( .A1(a_3_), .A2(n78), .ZN(n130) );
  OR3_X1 U128 ( .A1(n131), .A2(n132), .A3(n126), .ZN(Result_3_) );
  AND2_X1 U129 ( .A1(a_0_), .A2(n133), .ZN(n126) );
  AND2_X1 U130 ( .A1(n129), .A2(n134), .ZN(n132) );
  OR2_X1 U131 ( .A1(n70), .A2(n108), .ZN(n134) );
  INV_X1 U132 ( .A(n81), .ZN(n108) );
  OR2_X1 U133 ( .A1(b_2_), .A2(n121), .ZN(n81) );
  INV_X1 U134 ( .A(a_2_), .ZN(n121) );
  AND2_X1 U135 ( .A1(n78), .A2(a_3_), .ZN(n70) );
  INV_X1 U136 ( .A(b_3_), .ZN(n78) );
  AND3_X1 U137 ( .A1(n82), .A2(n124), .A3(n109), .ZN(n129) );
  OR2_X1 U138 ( .A1(a_1_), .A2(n106), .ZN(n109) );
  OR2_X1 U139 ( .A1(a_2_), .A2(n123), .ZN(n82) );
  INV_X1 U140 ( .A(b_2_), .ZN(n123) );
  AND3_X1 U141 ( .A1(n124), .A2(n106), .A3(a_1_), .ZN(n131) );
  INV_X1 U142 ( .A(b_1_), .ZN(n106) );
  OR2_X1 U143 ( .A1(a_0_), .A2(n133), .ZN(n124) );
  INV_X1 U144 ( .A(b_0_), .ZN(n133) );
endmodule

