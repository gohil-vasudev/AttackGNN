module rs232 ( sys_clk, sys_rst_l, uart_XMIT_dataH, xmitH, xmit_dataH_7_, 
        xmit_dataH_6_, xmit_dataH_5_, xmit_dataH_4_, xmit_dataH_3_, 
        xmit_dataH_2_, xmit_dataH_1_, xmit_dataH_0_, xmit_doneH, 
        uart_REC_dataH, rec_dataH_7_, rec_dataH_6_, rec_dataH_5_, rec_dataH_4_, 
        rec_dataH_3_, rec_dataH_2_, rec_dataH_1_, rec_dataH_0_, rec_readyH, 
        test_mode, test_se, test_si, test_so );
  input sys_clk, sys_rst_l, xmitH, xmit_dataH_7_, xmit_dataH_6_, xmit_dataH_5_,
         xmit_dataH_4_, xmit_dataH_3_, xmit_dataH_2_, xmit_dataH_1_,
         xmit_dataH_0_, uart_REC_dataH, test_mode, test_se, test_si;
  output uart_XMIT_dataH, xmit_doneH, rec_dataH_7_, rec_dataH_6_, rec_dataH_5_,
         rec_dataH_4_, rec_dataH_3_, rec_dataH_2_, rec_dataH_1_, rec_dataH_0_,
         rec_readyH, test_so;
  wire   rec_dataH_temp_6, rec_dataH_temp_5, rec_dataH_temp_4,
         rec_dataH_temp_3, rec_dataH_temp_2, rec_dataH_temp_1,
         rec_dataH_temp_0, iCTRL, rec_readyH_temp, xmit_doneH_temp, iXMIT_CRTL,
         iRECEIVER_CTRL, iRECEIVER_state_CTRL, iRECEIVER_next_state_2_,
         iRECEIVER_state_0_, iRECEIVER_state_1_, iRECEIVER_state_2_,
         iXMIT_N_CTRL_1_, iXMIT_N_CTRL_2_, iXMIT_xmit_CTRL, iXMIT_N24,
         iXMIT_xmit_ShiftRegH_7_, iXMIT_xmit_ShiftRegH_6_,
         iXMIT_xmit_ShiftRegH_5_, iXMIT_N28, iXMIT_N27, iXMIT_N26, iXMIT_N25,
         iXMIT_N46, iXMIT_N45, iXMIT_N44, iXMIT_N29, n241, n245, n238,
         rec_dataH_rec_7, rec_dataH_rec_6, rec_dataH_rec_5, rec_dataH_rec_4,
         rec_dataH_rec_3, rec_dataH_rec_2, rec_dataH_rec_1, rec_dataH_rec_0,
         n180, n179, n178, n177, n176, n175, n174, n173, n172, n171, n170,
         n169, n168, n167, n166, n164, n163, n162, n161, n160, n159, n157,
         n156, n155, n154, n153, test_point_DOUT, n152, n150, n149, n148, n147,
         n146, n145, n143, n142, n141, n140, n139, n138, n136, n135, n134,
         n133, n132, n131, n129, n128, n127, n126, n125, n124, n122, n121,
         n120, n119, n118, n117, n115, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815;

  AND2X4 TrojanU304 ( .IN1(iCTRL), .IN2(rec_readyH_temp), .Q(rec_readyH) );
  AND2X4 TrojanU303 ( .IN1(iCTRL), .IN2(xmit_doneH_temp), .Q(xmit_doneH) );
  OR2X1 TrojanU302 ( .IN1(iXMIT_CRTL), .IN2(iRECEIVER_CTRL), .Q(iCTRL) );
  OR2X1 TrojanU301 ( .IN1(iRECEIVER_state_CTRL), .IN2(1'b0), .Q(iRECEIVER_CTRL) );
  NAND4X1 TrojanU297 ( .IN1(iRECEIVER_next_state_2_), .IN2(iRECEIVER_state_0_), 
        .IN3(iRECEIVER_state_1_), .IN4(iRECEIVER_state_2_), .QN(
        iRECEIVER_state_CTRL) );
  OR4X4 TrojanU296 ( .IN1(1'b0), .IN2(iXMIT_N_CTRL_1_), .IN3(iXMIT_N_CTRL_2_), 
        .IN4(iXMIT_xmit_CTRL), .Q(iXMIT_CRTL) );
  NAND4X1 TrojanU295 ( .IN1(iXMIT_N24), .IN2(iXMIT_xmit_ShiftRegH_7_), .IN3(
        iXMIT_xmit_ShiftRegH_6_), .IN4(iXMIT_xmit_ShiftRegH_5_), .QN(
        iXMIT_xmit_CTRL) );
  NAND4X1 TrojanU294 ( .IN1(iXMIT_N28), .IN2(iXMIT_N27), .IN3(iXMIT_N26), 
        .IN4(iXMIT_N25), .QN(iXMIT_N_CTRL_2_) );
  NAND4X1 TrojanU293 ( .IN1(iXMIT_N46), .IN2(iXMIT_N45), .IN3(iXMIT_N44), 
        .IN4(iXMIT_N29), .QN(iXMIT_N_CTRL_1_) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n180), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n810), .QN(n460) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n179), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n808), .QN(n457) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n178), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n791), .QN(n468) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n177), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n792), .QN(n456) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n176), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n806), .QN(n451) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n175), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n807), .QN(n459) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n174), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n805), .QN(n466) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n173), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n804) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n172), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n171), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n170), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n793) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n794) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n167), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n795) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n166), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n796) );
  DFFARX1 iXMIT_xmit_doneH_reg ( .D(n164), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(xmit_doneH_temp) );
  DFFARX1 iRECEIVER_state_reg_1_ ( .D(n163), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_1_), .QN(n241) );
  DFFASX1 iRECEIVER_state_reg_0_ ( .D(n162), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(iRECEIVER_state_0_), .QN(n245) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(n161), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n799), .QN(n458) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(n160), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n813), .QN(n464) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(n159), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n814), .QN(n452) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n157), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n815) );
  DFFARX1 iRECEIVER_state_reg_2_ ( .D(n156), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_2_), .QN(n238) );
  DFFARX1 iRECEIVER_rec_readyH_reg ( .D(n155), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(rec_readyH_temp) );
  DFFARX1 iRECEIVER_par_dataH_reg_7_ ( .D(n154), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_7) );
  DFFARX1 rec_dataH_temp_reg_7_ ( .D(n153), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(test_so) );
  DFFARX1 rec_dataH_reg_7_ ( .D(n152), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_7_) );
  DFFARX1 iRECEIVER_par_dataH_reg_6_ ( .D(n150), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_6) );
  DFFARX1 rec_dataH_temp_reg_6_ ( .D(n149), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_6) );
  DFFARX1 rec_dataH_reg_6_ ( .D(n148), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_6_) );
  DFFARX1 iRECEIVER_par_dataH_reg_5_ ( .D(n147), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_5) );
  DFFARX1 rec_dataH_temp_reg_5_ ( .D(n146), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_5) );
  DFFARX1 rec_dataH_reg_5_ ( .D(n145), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_5_) );
  DFFARX1 iRECEIVER_par_dataH_reg_4_ ( .D(n143), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_4) );
  DFFARX1 rec_dataH_temp_reg_4_ ( .D(n142), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_4) );
  DFFARX1 rec_dataH_reg_4_ ( .D(n141), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_4_) );
  DFFARX1 iRECEIVER_par_dataH_reg_3_ ( .D(n140), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_3) );
  DFFARX1 rec_dataH_temp_reg_3_ ( .D(n139), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_3) );
  DFFARX1 rec_dataH_reg_3_ ( .D(n138), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_3_) );
  DFFARX1 iRECEIVER_par_dataH_reg_2_ ( .D(n136), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_2) );
  DFFARX1 rec_dataH_temp_reg_2_ ( .D(n135), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_2) );
  DFFARX1 rec_dataH_reg_2_ ( .D(n134), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_2_) );
  DFFARX1 iRECEIVER_par_dataH_reg_1_ ( .D(n133), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_1) );
  DFFARX1 rec_dataH_temp_reg_1_ ( .D(n132), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_1) );
  DFFARX1 rec_dataH_reg_1_ ( .D(n131), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_1_) );
  DFFARX1 iRECEIVER_par_dataH_reg_0_ ( .D(n129), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_0) );
  DFFARX1 rec_dataH_temp_reg_0_ ( .D(n128), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_0) );
  DFFARX1 rec_dataH_reg_0_ ( .D(n127), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_0_) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_3_ ( .D(n126), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n800), .QN(n469) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n125), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n802), .QN(n455) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n124), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n801), .QN(n461) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n122), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n803), .QN(n462) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n121), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n809), .QN(n454) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n120), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n812), .QN(n465) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n119), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n811), .QN(n453) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n118), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n463) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n117), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n797) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n115), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n798), .QN(n467) );
  OR2X1 U599 ( .IN1(n470), .IN2(n471), .Q(uart_XMIT_dataH) );
  OR2X1 U600 ( .IN1(n472), .IN2(n473), .Q(n471) );
  AND2X1 U601 ( .IN1(n474), .IN2(n463), .Q(n473) );
  OR2X1 U602 ( .IN1(n808), .IN2(n791), .Q(n474) );
  OR2X1 U603 ( .IN1(n475), .IN2(n476), .Q(test_point_DOUT) );
  AND2X1 U604 ( .IN1(sys_clk), .IN2(test_mode), .Q(n476) );
  AND2X1 U605 ( .IN1(rec_readyH_temp), .IN2(n477), .Q(n475) );
  INVX0 U606 ( .INP(test_mode), .ZN(n477) );
  OR2X1 U607 ( .IN1(n478), .IN2(n479), .Q(n180) );
  AND2X1 U608 ( .IN1(test_se), .IN2(n811), .Q(n479) );
  AND2X1 U609 ( .IN1(iXMIT_N28), .IN2(n480), .Q(n478) );
  OR2X1 U610 ( .IN1(n481), .IN2(n482), .Q(n179) );
  AND2X1 U611 ( .IN1(n483), .IN2(n480), .Q(n482) );
  OR2X1 U612 ( .IN1(n484), .IN2(n485), .Q(n483) );
  AND2X1 U613 ( .IN1(n791), .IN2(n486), .Q(n485) );
  OR2X1 U614 ( .IN1(n457), .IN2(n487), .Q(n486) );
  AND2X1 U615 ( .IN1(n488), .IN2(n792), .Q(n484) );
  AND2X1 U616 ( .IN1(n489), .IN2(n490), .Q(n488) );
  OR2X1 U617 ( .IN1(n808), .IN2(n491), .Q(n489) );
  AND2X1 U618 ( .IN1(n804), .IN2(test_se), .Q(n481) );
  OR2X1 U619 ( .IN1(n492), .IN2(n493), .Q(n178) );
  AND2X1 U620 ( .IN1(n792), .IN2(n494), .Q(n493) );
  INVX0 U621 ( .INP(n495), .ZN(n494) );
  AND2X1 U622 ( .IN1(n496), .IN2(n480), .Q(n495) );
  AND2X1 U623 ( .IN1(n497), .IN2(n472), .Q(n492) );
  AND2X1 U624 ( .IN1(n487), .IN2(n480), .Q(n497) );
  OR2X1 U625 ( .IN1(n498), .IN2(n499), .Q(n177) );
  AND2X1 U626 ( .IN1(n500), .IN2(n480), .Q(n499) );
  OR2X1 U627 ( .IN1(n501), .IN2(n502), .Q(n500) );
  AND2X1 U628 ( .IN1(test_se), .IN2(n808), .Q(n498) );
  OR2X1 U629 ( .IN1(n503), .IN2(n504), .Q(n176) );
  OR2X1 U630 ( .IN1(n505), .IN2(n506), .Q(n504) );
  AND2X1 U631 ( .IN1(n806), .IN2(n507), .Q(n506) );
  AND2X1 U632 ( .IN1(n508), .IN2(n451), .Q(n505) );
  AND2X1 U633 ( .IN1(n809), .IN2(test_se), .Q(n503) );
  OR2X1 U634 ( .IN1(n509), .IN2(n510), .Q(n175) );
  OR2X1 U635 ( .IN1(n511), .IN2(n512), .Q(n510) );
  AND2X1 U636 ( .IN1(n807), .IN2(n507), .Q(n512) );
  AND2X1 U637 ( .IN1(n508), .IN2(iXMIT_N44), .Q(n511) );
  AND2X1 U638 ( .IN1(n806), .IN2(test_se), .Q(n509) );
  OR2X1 U639 ( .IN1(n513), .IN2(n514), .Q(n174) );
  OR2X1 U640 ( .IN1(n515), .IN2(n516), .Q(n514) );
  AND2X1 U641 ( .IN1(n805), .IN2(n507), .Q(n516) );
  AND2X1 U642 ( .IN1(iXMIT_N45), .IN2(n508), .Q(n515) );
  AND2X1 U643 ( .IN1(n807), .IN2(test_se), .Q(n513) );
  OR2X1 U644 ( .IN1(n517), .IN2(n518), .Q(n173) );
  OR2X1 U645 ( .IN1(n519), .IN2(n520), .Q(n518) );
  AND2X1 U646 ( .IN1(n507), .IN2(n804), .Q(n520) );
  AND2X1 U647 ( .IN1(n521), .IN2(n522), .Q(n507) );
  AND2X1 U648 ( .IN1(n480), .IN2(n523), .Q(n522) );
  AND2X1 U649 ( .IN1(n508), .IN2(iXMIT_N46), .Q(n519) );
  INVX0 U650 ( .INP(n524), .ZN(n508) );
  OR2X1 U651 ( .IN1(test_se), .IN2(n523), .Q(n524) );
  OR2X1 U652 ( .IN1(n490), .IN2(n525), .Q(n523) );
  OR2X1 U653 ( .IN1(n457), .IN2(n456), .Q(n525) );
  OR2X1 U654 ( .IN1(n526), .IN2(n527), .Q(n490) );
  AND2X1 U655 ( .IN1(n528), .IN2(n529), .Q(n526) );
  AND2X1 U656 ( .IN1(n451), .IN2(n466), .Q(n529) );
  AND2X1 U657 ( .IN1(n804), .IN2(n459), .Q(n528) );
  AND2X1 U658 ( .IN1(n805), .IN2(test_se), .Q(n517) );
  OR2X1 U659 ( .IN1(n530), .IN2(n531), .Q(n172) );
  AND2X1 U660 ( .IN1(n532), .IN2(n480), .Q(n531) );
  OR2X1 U661 ( .IN1(n533), .IN2(n534), .Q(n532) );
  OR2X1 U662 ( .IN1(n535), .IN2(n536), .Q(n534) );
  AND2X1 U663 ( .IN1(xmit_dataH_7_), .IN2(n502), .Q(n536) );
  AND2X1 U664 ( .IN1(n537), .IN2(iXMIT_xmit_ShiftRegH_7_), .Q(n535) );
  AND2X1 U665 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_6_), .Q(n530) );
  OR2X1 U666 ( .IN1(n538), .IN2(n539), .Q(n171) );
  AND2X1 U667 ( .IN1(n540), .IN2(n480), .Q(n539) );
  OR2X1 U668 ( .IN1(n541), .IN2(n542), .Q(n540) );
  OR2X1 U669 ( .IN1(n543), .IN2(n544), .Q(n542) );
  AND2X1 U670 ( .IN1(n537), .IN2(iXMIT_xmit_ShiftRegH_6_), .Q(n544) );
  AND2X1 U671 ( .IN1(n533), .IN2(iXMIT_xmit_ShiftRegH_7_), .Q(n543) );
  AND2X1 U672 ( .IN1(xmit_dataH_6_), .IN2(n545), .Q(n541) );
  AND2X1 U673 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_5_), .Q(n538) );
  OR2X1 U674 ( .IN1(n546), .IN2(n547), .Q(n170) );
  AND2X1 U675 ( .IN1(n548), .IN2(n480), .Q(n547) );
  OR2X1 U676 ( .IN1(n549), .IN2(n550), .Q(n548) );
  OR2X1 U677 ( .IN1(n551), .IN2(n552), .Q(n550) );
  AND2X1 U678 ( .IN1(n537), .IN2(iXMIT_xmit_ShiftRegH_5_), .Q(n552) );
  AND2X1 U679 ( .IN1(n533), .IN2(iXMIT_xmit_ShiftRegH_6_), .Q(n551) );
  AND2X1 U680 ( .IN1(xmit_dataH_5_), .IN2(n545), .Q(n549) );
  AND2X1 U681 ( .IN1(n793), .IN2(test_se), .Q(n546) );
  OR2X1 U682 ( .IN1(n553), .IN2(n554), .Q(n169) );
  AND2X1 U683 ( .IN1(n555), .IN2(n480), .Q(n554) );
  OR2X1 U684 ( .IN1(n556), .IN2(n557), .Q(n555) );
  OR2X1 U685 ( .IN1(n558), .IN2(n559), .Q(n557) );
  AND2X1 U686 ( .IN1(n793), .IN2(n537), .Q(n559) );
  AND2X1 U687 ( .IN1(n533), .IN2(iXMIT_xmit_ShiftRegH_5_), .Q(n558) );
  AND2X1 U688 ( .IN1(xmit_dataH_4_), .IN2(n545), .Q(n556) );
  AND2X1 U689 ( .IN1(n794), .IN2(test_se), .Q(n553) );
  OR2X1 U690 ( .IN1(n560), .IN2(n561), .Q(n168) );
  AND2X1 U691 ( .IN1(n562), .IN2(n480), .Q(n561) );
  OR2X1 U692 ( .IN1(n563), .IN2(n564), .Q(n562) );
  OR2X1 U693 ( .IN1(n565), .IN2(n566), .Q(n564) );
  AND2X1 U694 ( .IN1(n794), .IN2(n537), .Q(n566) );
  AND2X1 U695 ( .IN1(n793), .IN2(n533), .Q(n565) );
  AND2X1 U696 ( .IN1(xmit_dataH_3_), .IN2(n545), .Q(n563) );
  AND2X1 U697 ( .IN1(n795), .IN2(test_se), .Q(n560) );
  OR2X1 U698 ( .IN1(n567), .IN2(n568), .Q(n167) );
  AND2X1 U699 ( .IN1(n569), .IN2(n480), .Q(n568) );
  OR2X1 U700 ( .IN1(n570), .IN2(n571), .Q(n569) );
  OR2X1 U701 ( .IN1(n572), .IN2(n573), .Q(n571) );
  AND2X1 U702 ( .IN1(n795), .IN2(n537), .Q(n573) );
  AND2X1 U703 ( .IN1(n794), .IN2(n533), .Q(n572) );
  AND2X1 U704 ( .IN1(xmit_dataH_2_), .IN2(n545), .Q(n570) );
  AND2X1 U705 ( .IN1(n796), .IN2(test_se), .Q(n567) );
  OR2X1 U706 ( .IN1(n574), .IN2(n575), .Q(n166) );
  AND2X1 U707 ( .IN1(n576), .IN2(n480), .Q(n575) );
  OR2X1 U708 ( .IN1(n577), .IN2(n578), .Q(n576) );
  OR2X1 U709 ( .IN1(n579), .IN2(n580), .Q(n578) );
  AND2X1 U710 ( .IN1(n796), .IN2(n537), .Q(n580) );
  AND2X1 U711 ( .IN1(n795), .IN2(n533), .Q(n579) );
  AND2X1 U712 ( .IN1(xmit_dataH_1_), .IN2(n545), .Q(n577) );
  AND2X1 U713 ( .IN1(test_se), .IN2(n463), .Q(n574) );
  OR2X1 U714 ( .IN1(n581), .IN2(n582), .Q(n164) );
  AND2X1 U715 ( .IN1(n583), .IN2(n480), .Q(n582) );
  OR2X1 U716 ( .IN1(n584), .IN2(n585), .Q(n583) );
  INVX0 U717 ( .INP(n521), .ZN(n585) );
  OR2X1 U718 ( .IN1(n792), .IN2(n586), .Q(n521) );
  OR2X1 U719 ( .IN1(xmitH), .IN2(n791), .Q(n586) );
  AND2X1 U720 ( .IN1(n472), .IN2(n491), .Q(n584) );
  INVX0 U721 ( .INP(n487), .ZN(n491) );
  OR2X1 U722 ( .IN1(n454), .IN2(n587), .Q(n487) );
  AND2X1 U723 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .Q(n581) );
  OR2X1 U724 ( .IN1(n588), .IN2(n589), .Q(n163) );
  OR2X1 U725 ( .IN1(n590), .IN2(n591), .Q(n589) );
  AND2X1 U726 ( .IN1(n592), .IN2(n245), .Q(n591) );
  AND2X1 U727 ( .IN1(n593), .IN2(n480), .Q(n592) );
  OR2X1 U728 ( .IN1(n594), .IN2(n467), .Q(n593) );
  AND2X1 U729 ( .IN1(n595), .IN2(iRECEIVER_state_1_), .Q(n594) );
  AND2X1 U730 ( .IN1(n596), .IN2(iRECEIVER_state_0_), .Q(n590) );
  OR2X1 U731 ( .IN1(test_se), .IN2(n597), .Q(n596) );
  OR2X1 U732 ( .IN1(n598), .IN2(n599), .Q(n597) );
  AND2X1 U733 ( .IN1(n600), .IN2(n241), .Q(n599) );
  AND2X1 U734 ( .IN1(n238), .IN2(n467), .Q(n600) );
  AND2X1 U735 ( .IN1(n601), .IN2(iRECEIVER_state_1_), .Q(n598) );
  OR2X1 U736 ( .IN1(n602), .IN2(n603), .Q(n162) );
  AND2X1 U737 ( .IN1(n604), .IN2(n480), .Q(n603) );
  OR2X1 U738 ( .IN1(iRECEIVER_state_2_), .IN2(n605), .Q(n604) );
  OR2X1 U739 ( .IN1(n606), .IN2(n607), .Q(n605) );
  AND2X1 U740 ( .IN1(n608), .IN2(iRECEIVER_state_1_), .Q(n607) );
  OR2X1 U741 ( .IN1(n609), .IN2(n610), .Q(n608) );
  INVX0 U742 ( .INP(n595), .ZN(n610) );
  AND2X1 U743 ( .IN1(n611), .IN2(iRECEIVER_state_0_), .Q(n609) );
  OR2X1 U744 ( .IN1(n612), .IN2(n601), .Q(n611) );
  AND2X1 U745 ( .IN1(n613), .IN2(n614), .Q(n612) );
  AND2X1 U746 ( .IN1(n455), .IN2(n461), .Q(n614) );
  AND2X1 U747 ( .IN1(n800), .IN2(n462), .Q(n613) );
  AND2X1 U748 ( .IN1(n800), .IN2(test_se), .Q(n602) );
  OR2X1 U749 ( .IN1(n615), .IN2(n616), .Q(n161) );
  AND2X1 U750 ( .IN1(test_si), .IN2(test_se), .Q(n616) );
  AND2X1 U751 ( .IN1(n617), .IN2(n458), .Q(n615) );
  OR2X1 U752 ( .IN1(n618), .IN2(n619), .Q(n160) );
  AND2X1 U753 ( .IN1(n620), .IN2(n458), .Q(n619) );
  AND2X1 U754 ( .IN1(n617), .IN2(n813), .Q(n620) );
  AND2X1 U755 ( .IN1(n799), .IN2(n621), .Q(n618) );
  OR2X1 U756 ( .IN1(n622), .IN2(test_se), .Q(n621) );
  AND2X1 U757 ( .IN1(n623), .IN2(n464), .Q(n622) );
  OR2X1 U758 ( .IN1(n624), .IN2(n625), .Q(n159) );
  AND2X1 U759 ( .IN1(n813), .IN2(test_se), .Q(n625) );
  AND2X1 U760 ( .IN1(n626), .IN2(n617), .Q(n624) );
  AND2X1 U761 ( .IN1(n627), .IN2(n628), .Q(n626) );
  OR2X1 U762 ( .IN1(n629), .IN2(n814), .Q(n627) );
  AND2X1 U763 ( .IN1(n799), .IN2(n813), .Q(n629) );
  OR2X1 U764 ( .IN1(n630), .IN2(n631), .Q(n157) );
  AND2X1 U765 ( .IN1(n814), .IN2(test_se), .Q(n631) );
  AND2X1 U766 ( .IN1(n617), .IN2(n632), .Q(n630) );
  OR2X1 U767 ( .IN1(n633), .IN2(n634), .Q(n632) );
  INVX0 U768 ( .INP(n635), .ZN(n634) );
  OR2X1 U769 ( .IN1(n628), .IN2(n815), .Q(n635) );
  AND2X1 U770 ( .IN1(n815), .IN2(n628), .Q(n633) );
  OR2X1 U771 ( .IN1(n458), .IN2(n636), .Q(n628) );
  OR2X1 U772 ( .IN1(n452), .IN2(n464), .Q(n636) );
  AND2X1 U773 ( .IN1(n480), .IN2(n623), .Q(n617) );
  AND2X1 U774 ( .IN1(n637), .IN2(n638), .Q(n623) );
  AND2X1 U775 ( .IN1(n639), .IN2(n238), .Q(n638) );
  OR2X1 U776 ( .IN1(n595), .IN2(iRECEIVER_state_0_), .Q(n639) );
  OR2X1 U777 ( .IN1(n640), .IN2(n641), .Q(n595) );
  OR2X1 U778 ( .IN1(n815), .IN2(n452), .Q(n641) );
  OR2X1 U779 ( .IN1(n799), .IN2(n813), .Q(n640) );
  AND2X1 U780 ( .IN1(iRECEIVER_state_1_), .IN2(n642), .Q(n637) );
  OR2X1 U781 ( .IN1(n643), .IN2(iRECEIVER_next_state_2_), .Q(n156) );
  AND2X1 U782 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .Q(n643) );
  OR2X1 U783 ( .IN1(n644), .IN2(n645), .Q(n155) );
  AND2X1 U784 ( .IN1(n797), .IN2(test_se), .Q(n645) );
  AND2X1 U785 ( .IN1(n646), .IN2(n480), .Q(n644) );
  OR2X1 U786 ( .IN1(n647), .IN2(n648), .Q(n646) );
  AND2X1 U787 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .Q(n647)
         );
  OR2X1 U788 ( .IN1(n649), .IN2(n650), .Q(n154) );
  OR2X1 U789 ( .IN1(n651), .IN2(n652), .Q(n650) );
  AND2X1 U790 ( .IN1(n588), .IN2(n798), .Q(n652) );
  AND2X1 U791 ( .IN1(rec_dataH_rec_7), .IN2(n653), .Q(n651) );
  AND2X1 U792 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .Q(n649) );
  OR2X1 U793 ( .IN1(n654), .IN2(n655), .Q(n153) );
  AND2X1 U794 ( .IN1(rec_dataH_temp_6), .IN2(test_se), .Q(n655) );
  AND2X1 U795 ( .IN1(rec_dataH_rec_7), .IN2(n480), .Q(n654) );
  OR2X1 U796 ( .IN1(n656), .IN2(n657), .Q(n152) );
  AND2X1 U797 ( .IN1(rec_dataH_6_), .IN2(test_se), .Q(n657) );
  AND2X1 U798 ( .IN1(test_so), .IN2(n480), .Q(n656) );
  OR2X1 U799 ( .IN1(n658), .IN2(n659), .Q(n150) );
  OR2X1 U800 ( .IN1(n660), .IN2(n661), .Q(n659) );
  AND2X1 U801 ( .IN1(n588), .IN2(rec_dataH_rec_7), .Q(n661) );
  AND2X1 U802 ( .IN1(rec_dataH_rec_6), .IN2(n653), .Q(n660) );
  AND2X1 U803 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .Q(n658) );
  OR2X1 U804 ( .IN1(n662), .IN2(n663), .Q(n149) );
  AND2X1 U805 ( .IN1(rec_dataH_temp_5), .IN2(test_se), .Q(n663) );
  AND2X1 U806 ( .IN1(rec_dataH_rec_6), .IN2(n480), .Q(n662) );
  OR2X1 U807 ( .IN1(n664), .IN2(n665), .Q(n148) );
  AND2X1 U808 ( .IN1(rec_dataH_5_), .IN2(test_se), .Q(n665) );
  AND2X1 U809 ( .IN1(rec_dataH_temp_6), .IN2(n480), .Q(n664) );
  OR2X1 U810 ( .IN1(n666), .IN2(n667), .Q(n147) );
  OR2X1 U811 ( .IN1(n668), .IN2(n669), .Q(n667) );
  AND2X1 U812 ( .IN1(rec_dataH_rec_6), .IN2(n588), .Q(n669) );
  AND2X1 U813 ( .IN1(rec_dataH_rec_5), .IN2(n653), .Q(n668) );
  AND2X1 U814 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .Q(n666) );
  OR2X1 U815 ( .IN1(n670), .IN2(n671), .Q(n146) );
  AND2X1 U816 ( .IN1(rec_dataH_temp_4), .IN2(test_se), .Q(n671) );
  AND2X1 U817 ( .IN1(rec_dataH_rec_5), .IN2(n480), .Q(n670) );
  OR2X1 U818 ( .IN1(n672), .IN2(n673), .Q(n145) );
  AND2X1 U819 ( .IN1(rec_dataH_4_), .IN2(test_se), .Q(n673) );
  AND2X1 U820 ( .IN1(rec_dataH_temp_5), .IN2(n480), .Q(n672) );
  OR2X1 U821 ( .IN1(n674), .IN2(n675), .Q(n143) );
  OR2X1 U822 ( .IN1(n676), .IN2(n677), .Q(n675) );
  AND2X1 U823 ( .IN1(rec_dataH_rec_5), .IN2(n588), .Q(n677) );
  AND2X1 U824 ( .IN1(rec_dataH_rec_4), .IN2(n653), .Q(n676) );
  AND2X1 U825 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .Q(n674) );
  OR2X1 U826 ( .IN1(n678), .IN2(n679), .Q(n142) );
  AND2X1 U827 ( .IN1(rec_dataH_temp_3), .IN2(test_se), .Q(n679) );
  AND2X1 U828 ( .IN1(rec_dataH_rec_4), .IN2(n480), .Q(n678) );
  OR2X1 U829 ( .IN1(n680), .IN2(n681), .Q(n141) );
  AND2X1 U830 ( .IN1(rec_dataH_3_), .IN2(test_se), .Q(n681) );
  AND2X1 U831 ( .IN1(rec_dataH_temp_4), .IN2(n480), .Q(n680) );
  OR2X1 U832 ( .IN1(n682), .IN2(n683), .Q(n140) );
  OR2X1 U833 ( .IN1(n684), .IN2(n685), .Q(n683) );
  AND2X1 U834 ( .IN1(rec_dataH_rec_4), .IN2(n588), .Q(n685) );
  AND2X1 U835 ( .IN1(rec_dataH_rec_3), .IN2(n653), .Q(n684) );
  AND2X1 U836 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .Q(n682) );
  OR2X1 U837 ( .IN1(n686), .IN2(n687), .Q(n139) );
  AND2X1 U838 ( .IN1(rec_dataH_temp_2), .IN2(test_se), .Q(n687) );
  AND2X1 U839 ( .IN1(rec_dataH_rec_3), .IN2(n480), .Q(n686) );
  OR2X1 U840 ( .IN1(n688), .IN2(n689), .Q(n138) );
  AND2X1 U841 ( .IN1(rec_dataH_2_), .IN2(test_se), .Q(n689) );
  AND2X1 U842 ( .IN1(rec_dataH_temp_3), .IN2(n480), .Q(n688) );
  OR2X1 U843 ( .IN1(n690), .IN2(n691), .Q(n136) );
  OR2X1 U844 ( .IN1(n692), .IN2(n693), .Q(n691) );
  AND2X1 U845 ( .IN1(rec_dataH_rec_3), .IN2(n588), .Q(n693) );
  AND2X1 U846 ( .IN1(rec_dataH_rec_2), .IN2(n653), .Q(n692) );
  AND2X1 U847 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .Q(n690) );
  OR2X1 U848 ( .IN1(n694), .IN2(n695), .Q(n135) );
  AND2X1 U849 ( .IN1(rec_dataH_temp_1), .IN2(test_se), .Q(n695) );
  AND2X1 U850 ( .IN1(rec_dataH_rec_2), .IN2(n480), .Q(n694) );
  OR2X1 U851 ( .IN1(n696), .IN2(n697), .Q(n134) );
  AND2X1 U852 ( .IN1(rec_dataH_1_), .IN2(test_se), .Q(n697) );
  AND2X1 U853 ( .IN1(rec_dataH_temp_2), .IN2(n480), .Q(n696) );
  OR2X1 U854 ( .IN1(n698), .IN2(n699), .Q(n133) );
  OR2X1 U855 ( .IN1(n700), .IN2(n701), .Q(n699) );
  AND2X1 U856 ( .IN1(rec_dataH_rec_2), .IN2(n588), .Q(n701) );
  AND2X1 U857 ( .IN1(rec_dataH_rec_1), .IN2(n653), .Q(n700) );
  AND2X1 U858 ( .IN1(rec_dataH_rec_0), .IN2(test_se), .Q(n698) );
  OR2X1 U859 ( .IN1(n702), .IN2(n703), .Q(n132) );
  AND2X1 U860 ( .IN1(rec_dataH_temp_0), .IN2(test_se), .Q(n703) );
  AND2X1 U861 ( .IN1(rec_dataH_rec_1), .IN2(n480), .Q(n702) );
  OR2X1 U862 ( .IN1(n704), .IN2(n705), .Q(n131) );
  AND2X1 U863 ( .IN1(rec_dataH_0_), .IN2(test_se), .Q(n705) );
  AND2X1 U864 ( .IN1(rec_dataH_temp_1), .IN2(n480), .Q(n704) );
  OR2X1 U865 ( .IN1(n706), .IN2(n707), .Q(n129) );
  OR2X1 U866 ( .IN1(n708), .IN2(n709), .Q(n707) );
  AND2X1 U867 ( .IN1(rec_dataH_rec_1), .IN2(n588), .Q(n709) );
  AND2X1 U868 ( .IN1(rec_dataH_rec_0), .IN2(n653), .Q(n708) );
  AND2X1 U869 ( .IN1(n480), .IN2(n710), .Q(n653) );
  AND2X1 U870 ( .IN1(n815), .IN2(test_se), .Q(n706) );
  OR2X1 U871 ( .IN1(n711), .IN2(n712), .Q(n128) );
  AND2X1 U872 ( .IN1(rec_dataH_7_), .IN2(test_se), .Q(n712) );
  AND2X1 U873 ( .IN1(rec_dataH_rec_0), .IN2(n480), .Q(n711) );
  OR2X1 U874 ( .IN1(n713), .IN2(n714), .Q(n127) );
  AND2X1 U875 ( .IN1(xmit_doneH_temp), .IN2(test_se), .Q(n714) );
  AND2X1 U876 ( .IN1(rec_dataH_temp_0), .IN2(n480), .Q(n713) );
  OR2X1 U877 ( .IN1(n715), .IN2(n716), .Q(n126) );
  AND2X1 U878 ( .IN1(n800), .IN2(n717), .Q(n716) );
  OR2X1 U879 ( .IN1(n718), .IN2(n719), .Q(n717) );
  OR2X1 U880 ( .IN1(n720), .IN2(n721), .Q(n719) );
  AND2X1 U881 ( .IN1(n588), .IN2(n462), .Q(n721) );
  AND2X1 U882 ( .IN1(n803), .IN2(n722), .Q(n715) );
  OR2X1 U883 ( .IN1(n723), .IN2(test_se), .Q(n722) );
  AND2X1 U884 ( .IN1(n724), .IN2(n725), .Q(n723) );
  AND2X1 U885 ( .IN1(n588), .IN2(n469), .Q(n725) );
  AND2X1 U886 ( .IN1(n801), .IN2(n802), .Q(n724) );
  OR2X1 U887 ( .IN1(n726), .IN2(n727), .Q(n125) );
  OR2X1 U888 ( .IN1(n720), .IN2(n728), .Q(n727) );
  AND2X1 U889 ( .IN1(n729), .IN2(n802), .Q(n728) );
  AND2X1 U890 ( .IN1(test_se), .IN2(rec_readyH_temp), .Q(n726) );
  OR2X1 U891 ( .IN1(n730), .IN2(n731), .Q(n124) );
  AND2X1 U892 ( .IN1(n801), .IN2(n732), .Q(n731) );
  OR2X1 U893 ( .IN1(n720), .IN2(n729), .Q(n732) );
  AND2X1 U894 ( .IN1(n455), .IN2(n588), .Q(n720) );
  AND2X1 U895 ( .IN1(n802), .IN2(n733), .Q(n730) );
  OR2X1 U896 ( .IN1(n734), .IN2(test_se), .Q(n733) );
  AND2X1 U897 ( .IN1(n735), .IN2(n461), .Q(n734) );
  OR2X1 U898 ( .IN1(n736), .IN2(n737), .Q(n122) );
  AND2X1 U899 ( .IN1(n803), .IN2(n718), .Q(n737) );
  OR2X1 U900 ( .IN1(n738), .IN2(n729), .Q(n718) );
  AND2X1 U901 ( .IN1(n480), .IN2(n739), .Q(n729) );
  INVX0 U902 ( .INP(n740), .ZN(n739) );
  OR2X1 U903 ( .IN1(n741), .IN2(n648), .Q(n740) );
  AND2X1 U904 ( .IN1(n606), .IN2(n238), .Q(n648) );
  AND2X1 U905 ( .IN1(n241), .IN2(n798), .Q(n606) );
  AND2X1 U906 ( .IN1(n245), .IN2(iRECEIVER_state_2_), .Q(n741) );
  AND2X1 U907 ( .IN1(n588), .IN2(n461), .Q(n738) );
  AND2X1 U908 ( .IN1(n480), .IN2(n735), .Q(n588) );
  AND2X1 U909 ( .IN1(n801), .IN2(n742), .Q(n736) );
  OR2X1 U910 ( .IN1(n743), .IN2(test_se), .Q(n742) );
  AND2X1 U911 ( .IN1(n735), .IN2(n744), .Q(n743) );
  OR2X1 U912 ( .IN1(n745), .IN2(n746), .Q(n744) );
  AND2X1 U913 ( .IN1(n803), .IN2(n455), .Q(n746) );
  AND2X1 U914 ( .IN1(n802), .IN2(n462), .Q(n745) );
  INVX0 U915 ( .INP(n710), .ZN(n735) );
  OR2X1 U916 ( .IN1(n238), .IN2(iRECEIVER_state_0_), .Q(n710) );
  OR2X1 U917 ( .IN1(n747), .IN2(n748), .Q(n121) );
  AND2X1 U918 ( .IN1(n810), .IN2(test_se), .Q(n748) );
  AND2X1 U919 ( .IN1(iXMIT_N29), .IN2(n480), .Q(n747) );
  OR2X1 U920 ( .IN1(n749), .IN2(n750), .Q(n120) );
  AND2X1 U921 ( .IN1(iXMIT_N26), .IN2(n480), .Q(n750) );
  AND2X1 U922 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .Q(n749) );
  OR2X1 U923 ( .IN1(n751), .IN2(n752), .Q(n119) );
  AND2X1 U924 ( .IN1(n812), .IN2(test_se), .Q(n752) );
  AND2X1 U925 ( .IN1(iXMIT_N27), .IN2(n480), .Q(n751) );
  OR2X1 U926 ( .IN1(n753), .IN2(n754), .Q(n118) );
  AND2X1 U927 ( .IN1(n755), .IN2(n480), .Q(n754) );
  OR2X1 U928 ( .IN1(n756), .IN2(n757), .Q(n755) );
  OR2X1 U929 ( .IN1(n758), .IN2(n759), .Q(n757) );
  AND2X1 U930 ( .IN1(n537), .IN2(n463), .Q(n759) );
  INVX0 U931 ( .INP(n502), .ZN(n537) );
  AND2X1 U932 ( .IN1(n796), .IN2(n533), .Q(n758) );
  AND2X1 U933 ( .IN1(n502), .IN2(n760), .Q(n533) );
  INVX0 U934 ( .INP(n545), .ZN(n760) );
  OR2X1 U935 ( .IN1(n761), .IN2(n545), .Q(n502) );
  AND2X1 U936 ( .IN1(n791), .IN2(n457), .Q(n761) );
  AND2X1 U937 ( .IN1(xmit_dataH_0_), .IN2(n545), .Q(n756) );
  AND2X1 U938 ( .IN1(xmitH), .IN2(n470), .Q(n545) );
  AND2X1 U939 ( .IN1(n468), .IN2(n456), .Q(n470) );
  AND2X1 U940 ( .IN1(test_se), .IN2(n791), .Q(n753) );
  OR2X1 U941 ( .IN1(n762), .IN2(n763), .Q(n117) );
  AND2X1 U942 ( .IN1(n798), .IN2(test_se), .Q(n763) );
  AND2X1 U943 ( .IN1(uart_REC_dataH), .IN2(n480), .Q(n762) );
  OR2X1 U944 ( .IN1(n764), .IN2(n765), .Q(n115) );
  AND2X1 U945 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .Q(n765) );
  AND2X1 U946 ( .IN1(n797), .IN2(n480), .Q(n764) );
  INVX0 U947 ( .INP(test_se), .ZN(n480) );
  OR2X1 U948 ( .IN1(n766), .IN2(n767), .Q(iXMIT_N46) );
  INVX0 U949 ( .INP(n768), .ZN(n767) );
  OR2X1 U950 ( .IN1(n769), .IN2(n804), .Q(n768) );
  AND2X1 U951 ( .IN1(n804), .IN2(n769), .Q(n766) );
  AND2X1 U952 ( .IN1(n769), .IN2(n770), .Q(iXMIT_N45) );
  OR2X1 U953 ( .IN1(n805), .IN2(n771), .Q(n770) );
  AND2X1 U954 ( .IN1(n806), .IN2(n807), .Q(n771) );
  OR2X1 U955 ( .IN1(n466), .IN2(n772), .Q(n769) );
  OR2X1 U956 ( .IN1(n451), .IN2(n459), .Q(n772) );
  OR2X1 U957 ( .IN1(n773), .IN2(n774), .Q(iXMIT_N44) );
  AND2X1 U958 ( .IN1(n807), .IN2(n451), .Q(n774) );
  AND2X1 U959 ( .IN1(n806), .IN2(n459), .Q(n773) );
  AND2X1 U960 ( .IN1(n775), .IN2(iXMIT_N25), .Q(iXMIT_N29) );
  AND2X1 U961 ( .IN1(n775), .IN2(iXMIT_N24), .Q(iXMIT_N28) );
  OR2X1 U962 ( .IN1(n776), .IN2(n777), .Q(iXMIT_N27) );
  AND2X1 U963 ( .IN1(iXMIT_N26), .IN2(n811), .Q(n777) );
  AND2X1 U964 ( .IN1(n778), .IN2(n453), .Q(n776) );
  AND2X1 U965 ( .IN1(n812), .IN2(n775), .Q(n778) );
  AND2X1 U966 ( .IN1(n465), .IN2(n775), .Q(iXMIT_N26) );
  OR2X1 U967 ( .IN1(n501), .IN2(n472), .Q(n775) );
  AND2X1 U968 ( .IN1(n808), .IN2(n791), .Q(n472) );
  AND2X1 U969 ( .IN1(n792), .IN2(n496), .Q(n501) );
  OR2X1 U970 ( .IN1(n457), .IN2(n527), .Q(n496) );
  OR2X1 U971 ( .IN1(n779), .IN2(n780), .Q(n527) );
  OR2X1 U972 ( .IN1(n460), .IN2(n454), .Q(n780) );
  OR2X1 U973 ( .IN1(n812), .IN2(n453), .Q(n779) );
  OR2X1 U974 ( .IN1(n781), .IN2(n782), .Q(iXMIT_N25) );
  INVX0 U975 ( .INP(n783), .ZN(n782) );
  OR2X1 U976 ( .IN1(n587), .IN2(n809), .Q(n783) );
  AND2X1 U977 ( .IN1(n809), .IN2(n587), .Q(n781) );
  AND2X1 U978 ( .IN1(n587), .IN2(n784), .Q(iXMIT_N24) );
  OR2X1 U979 ( .IN1(n810), .IN2(n785), .Q(n784) );
  AND2X1 U980 ( .IN1(n811), .IN2(n812), .Q(n785) );
  OR2X1 U981 ( .IN1(n460), .IN2(n786), .Q(n587) );
  OR2X1 U982 ( .IN1(n453), .IN2(n465), .Q(n786) );
  AND2X1 U983 ( .IN1(iRECEIVER_state_1_), .IN2(n787), .Q(
        iRECEIVER_next_state_2_) );
  INVX0 U984 ( .INP(n642), .ZN(n787) );
  OR2X1 U985 ( .IN1(n245), .IN2(n601), .Q(n642) );
  OR2X1 U986 ( .IN1(n788), .IN2(n789), .Q(n601) );
  INVX0 U987 ( .INP(n790), .ZN(n789) );
  AND2X1 U988 ( .IN1(n815), .IN2(n813), .Q(n790) );
  OR2X1 U989 ( .IN1(n799), .IN2(n452), .Q(n788) );
endmodule

