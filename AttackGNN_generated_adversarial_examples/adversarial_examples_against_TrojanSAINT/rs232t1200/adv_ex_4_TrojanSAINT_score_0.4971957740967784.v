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
         rec_dataH_temp_0, iCTRL, xmit_doneH_temp, iXMIT_CRTL, iRECEIVER_CTRL,
         iRECEIVER_state_CTRL, iRECEIVER_bitCell_CTRL, n400, n401, n402, n403,
         iRECEIVER_next_state_2_, iRECEIVER_state_0_, iRECEIVER_state_1_,
         iRECEIVER_state_2_, iXMIT_state_CTRL, iXMIT_N_CTRL_1_,
         iXMIT_N_CTRL_2_, iXMIT_xmit_CTRL, iXMIT_N24, iXMIT_xmit_ShiftRegH_7_,
         iXMIT_xmit_ShiftRegH_6_, iXMIT_xmit_ShiftRegH_5_, iXMIT_N28,
         iXMIT_N27, iXMIT_N26, iXMIT_N25, iXMIT_N46, iXMIT_N45, iXMIT_N44,
         iXMIT_N29, iXMIT_state_0_, iXMIT_state_1_, iXMIT_state_2_, n241, n245,
         n238, n242, n246, n239, n258, n259, rec_dataH_rec_7, rec_dataH_rec_6,
         rec_dataH_rec_5, rec_dataH_rec_4, rec_dataH_rec_3, rec_dataH_rec_2,
         rec_dataH_rec_1, rec_dataH_rec_0, n370, n371, n187, n186, n185, n184,
         n183, n182, n181, n180, n179, n178, n177, n176, n175, n174, n173,
         n172, n171, n170, n169, n168, n167, n166, n164, n163, n162, n161,
         test_point_DOUT, n160, n159, n157, n156, n155, n154, n153, n152, n150,
         n149, n148, n147, n146, n145, n143, n142, n141, n140, n139, n138,
         n136, n135, n134, n133, n132, n131, n129, n128, n127, n126, n125,
         n124, n446, n448, n449, n450, n451, n452, n453, n454, n455, n456,
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
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818;

  AND2X4 TrojanU303 ( .IN1(iCTRL), .IN2(xmit_doneH_temp), .Q(xmit_doneH) );
  OR2X1 TrojanU302 ( .IN1(iXMIT_CRTL), .IN2(iRECEIVER_CTRL), .Q(iCTRL) );
  OR2X1 TrojanU301 ( .IN1(iRECEIVER_state_CTRL), .IN2(iRECEIVER_bitCell_CTRL), 
        .Q(iRECEIVER_CTRL) );
  NAND4X1 TrojanU300 ( .IN1(n400), .IN2(n401), .IN3(n402), .IN4(n403), .QN(
        iRECEIVER_bitCell_CTRL) );
  NAND4X1 TrojanU297 ( .IN1(iRECEIVER_next_state_2_), .IN2(iRECEIVER_state_0_), 
        .IN3(iRECEIVER_state_1_), .IN4(iRECEIVER_state_2_), .QN(
        iRECEIVER_state_CTRL) );
  OR4X4 TrojanU296 ( .IN1(iXMIT_state_CTRL), .IN2(iXMIT_N_CTRL_1_), .IN3(
        iXMIT_N_CTRL_2_), .IN4(iXMIT_xmit_CTRL), .Q(iXMIT_CRTL) );
  NAND4X1 TrojanU295 ( .IN1(iXMIT_N24), .IN2(iXMIT_xmit_ShiftRegH_7_), .IN3(
        iXMIT_xmit_ShiftRegH_6_), .IN4(iXMIT_xmit_ShiftRegH_5_), .QN(
        iXMIT_xmit_CTRL) );
  NAND4X1 TrojanU294 ( .IN1(iXMIT_N28), .IN2(iXMIT_N27), .IN3(iXMIT_N26), 
        .IN4(iXMIT_N25), .QN(iXMIT_N_CTRL_2_) );
  NAND4X1 TrojanU293 ( .IN1(iXMIT_N46), .IN2(iXMIT_N45), .IN3(iXMIT_N44), 
        .IN4(iXMIT_N29), .QN(iXMIT_N_CTRL_1_) );
  NAND4X1 TrojanU292 ( .IN1(n448), .IN2(iXMIT_state_0_), .IN3(iXMIT_state_1_), 
        .IN4(iXMIT_state_2_), .QN(iXMIT_state_CTRL) );
  INVX32 TrojanU290 ( .INP(n370), .ZN(n371) );
  NAND2X4 TrojanU289 ( .IN1(1'b1), .IN2(test_mode), .QN(n370) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n187), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n796), .QN(n471) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n186), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_0_), .QN(n239) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n185), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_2_), .QN(n242) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n184), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_1_), .QN(n246) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n183), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n816), .QN(n453) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n182), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n797), .QN(n470) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n181), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n798), .QN(n450) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n180), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n815), .QN(n456) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n179), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_), .QN(n446) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n178), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_), .QN(n258) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n177), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_), .QN(n259) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n176), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n799), .QN(n465) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n175), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n800), .QN(n466) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n174), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n801), .QN(n467) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n173), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n802), .QN(n468) );
  DFFARX1 iXMIT_xmit_doneH_reg ( .D(n172), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(xmit_doneH_temp) );
  DFFARX1 iRECEIVER_state_reg_1_ ( .D(n171), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_1_), .QN(n241) );
  DFFASX1 iRECEIVER_state_reg_0_ ( .D(n170), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(iRECEIVER_state_0_), .QN(n245) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n803), .QN(n454) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n804) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(n167), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n805), .QN(n455) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n166), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n812) );
  DFFARX1 iRECEIVER_state_reg_2_ ( .D(n164), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_2_), .QN(n238) );
  DFFARX1 iRECEIVER_rec_readyH_reg ( .D(n163), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(rec_readyH) );
  DFFARX1 iRECEIVER_par_dataH_reg_7_ ( .D(n162), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_7), .QN(n457) );
  DFFARX1 rec_dataH_temp_reg_7_ ( .D(n161), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(test_so) );
  DFFARX1 rec_dataH_reg_7_ ( .D(n160), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_7_) );
  DFFARX1 iRECEIVER_par_dataH_reg_6_ ( .D(n159), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_6), .QN(n458) );
  DFFARX1 rec_dataH_temp_reg_6_ ( .D(n157), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_6) );
  DFFARX1 rec_dataH_reg_6_ ( .D(n156), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_6_) );
  DFFARX1 iRECEIVER_par_dataH_reg_5_ ( .D(n155), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_5), .QN(n459) );
  DFFARX1 rec_dataH_temp_reg_5_ ( .D(n154), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_5) );
  DFFARX1 rec_dataH_reg_5_ ( .D(n153), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_5_) );
  DFFARX1 iRECEIVER_par_dataH_reg_4_ ( .D(n152), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_4), .QN(n460) );
  DFFARX1 rec_dataH_temp_reg_4_ ( .D(n150), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_4) );
  DFFARX1 rec_dataH_reg_4_ ( .D(n149), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_4_) );
  DFFARX1 iRECEIVER_par_dataH_reg_3_ ( .D(n148), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_3), .QN(n461) );
  DFFARX1 rec_dataH_temp_reg_3_ ( .D(n147), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_3) );
  DFFARX1 rec_dataH_reg_3_ ( .D(n146), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_3_) );
  DFFARX1 iRECEIVER_par_dataH_reg_2_ ( .D(n145), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_2), .QN(n462) );
  DFFARX1 rec_dataH_temp_reg_2_ ( .D(n143), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_2) );
  DFFARX1 rec_dataH_reg_2_ ( .D(n142), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_2_) );
  DFFARX1 iRECEIVER_par_dataH_reg_1_ ( .D(n141), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_1), .QN(n463) );
  DFFARX1 rec_dataH_temp_reg_1_ ( .D(n140), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_1) );
  DFFARX1 rec_dataH_reg_1_ ( .D(n139), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_1_) );
  DFFARX1 iRECEIVER_par_dataH_reg_0_ ( .D(n138), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_0) );
  DFFARX1 rec_dataH_temp_reg_0_ ( .D(n136), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_0) );
  DFFARX1 rec_dataH_reg_0_ ( .D(n135), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_0_) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_3_ ( .D(n134), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n806) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n133), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n813), .QN(n449) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n132), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n807), .QN(n452) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n131), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n814), .QN(n472) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n129), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n818) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n128), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n808), .QN(n464) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n127), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n817) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n126), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n469), .QN(n809) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n125), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n810) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n124), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n811), .QN(n451) );
  DFFARX1 TrojaniDatasend_reg_1 ( .D(n127), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n400) );
  DFFARX1 TrojaniDatasend_reg_2 ( .D(n126), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n401) );
  DFFASX1 TrojaniDatasend_reg_3 ( .D(n125), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n402) );
  DFFASX1 TrojaniDatasend_reg_4 ( .D(n124), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n403) );
  MUX21X2 TrojanU291 ( .IN1(rec_readyH), .IN2(sys_clk), .S(n371), .Q(
        test_point_DOUT) );
  NAND2X0 U592 ( .IN1(n473), .IN2(n474), .QN(uart_XMIT_dataH) );
  NAND2X0 U593 ( .IN1(n475), .IN2(n469), .QN(n474) );
  NAND2X0 U594 ( .IN1(n242), .IN2(n239), .QN(n475) );
  NOR2X0 U595 ( .IN1(n476), .IN2(n477), .QN(n473) );
  NAND2X0 U596 ( .IN1(n478), .IN2(n479), .QN(n187) );
  NAND2X0 U597 ( .IN1(iXMIT_N28), .IN2(n480), .QN(n479) );
  NAND2X0 U598 ( .IN1(test_se), .IN2(n817), .QN(n478) );
  NAND2X0 U599 ( .IN1(n481), .IN2(n482), .QN(n186) );
  NAND2X0 U600 ( .IN1(n815), .IN2(test_se), .QN(n482) );
  NAND2X0 U601 ( .IN1(n483), .IN2(n480), .QN(n481) );
  NAND2X0 U602 ( .IN1(n484), .IN2(n485), .QN(n483) );
  NAND2X0 U603 ( .IN1(n486), .IN2(n487), .QN(n485) );
  NOR2X0 U604 ( .IN1(n488), .IN2(n489), .QN(n484) );
  NOR2X0 U605 ( .IN1(n490), .IN2(iXMIT_state_0_), .QN(n489) );
  NOR2X0 U606 ( .IN1(n491), .IN2(iXMIT_state_2_), .QN(n490) );
  NOR2X0 U607 ( .IN1(n246), .IN2(n492), .QN(n491) );
  NAND2X0 U608 ( .IN1(n493), .IN2(n494), .QN(n185) );
  NAND2X0 U609 ( .IN1(test_se), .IN2(iXMIT_state_1_), .QN(n494) );
  NAND2X0 U610 ( .IN1(n448), .IN2(n480), .QN(n493) );
  NAND2X0 U611 ( .IN1(n495), .IN2(n496), .QN(n448) );
  NAND2X0 U612 ( .IN1(n486), .IN2(n497), .QN(n496) );
  NAND2X0 U613 ( .IN1(n488), .IN2(iXMIT_state_0_), .QN(n495) );
  NAND2X0 U614 ( .IN1(n498), .IN2(n499), .QN(n184) );
  NAND2X0 U615 ( .IN1(test_se), .IN2(iXMIT_state_0_), .QN(n499) );
  NAND2X0 U616 ( .IN1(n500), .IN2(n480), .QN(n498) );
  NAND2X0 U617 ( .IN1(n501), .IN2(n502), .QN(n500) );
  NAND2X0 U618 ( .IN1(n503), .IN2(iXMIT_state_1_), .QN(n502) );
  NAND2X0 U619 ( .IN1(n497), .IN2(iXMIT_state_0_), .QN(n503) );
  INVX0 U620 ( .INP(n504), .ZN(n501) );
  NAND2X0 U621 ( .IN1(n505), .IN2(n506), .QN(n183) );
  NAND2X0 U622 ( .IN1(test_se), .IN2(n818), .QN(n506) );
  NOR2X0 U623 ( .IN1(n507), .IN2(n508), .QN(n505) );
  NOR2X0 U624 ( .IN1(n509), .IN2(n453), .QN(n508) );
  NOR2X0 U625 ( .IN1(n816), .IN2(n510), .QN(n507) );
  NAND2X0 U626 ( .IN1(n511), .IN2(n512), .QN(n182) );
  NAND2X0 U627 ( .IN1(n816), .IN2(test_se), .QN(n512) );
  NOR2X0 U628 ( .IN1(n513), .IN2(n514), .QN(n511) );
  NOR2X0 U629 ( .IN1(n509), .IN2(n470), .QN(n514) );
  NOR2X0 U630 ( .IN1(n515), .IN2(n510), .QN(n513) );
  INVX0 U631 ( .INP(iXMIT_N44), .ZN(n515) );
  NAND2X0 U632 ( .IN1(n516), .IN2(n517), .QN(n181) );
  NAND2X0 U633 ( .IN1(n797), .IN2(test_se), .QN(n517) );
  NOR2X0 U634 ( .IN1(n518), .IN2(n519), .QN(n516) );
  NOR2X0 U635 ( .IN1(n509), .IN2(n450), .QN(n519) );
  NOR2X0 U636 ( .IN1(n520), .IN2(n510), .QN(n518) );
  INVX0 U637 ( .INP(iXMIT_N45), .ZN(n520) );
  NAND2X0 U638 ( .IN1(n521), .IN2(n522), .QN(n180) );
  NAND2X0 U639 ( .IN1(n798), .IN2(test_se), .QN(n522) );
  NOR2X0 U640 ( .IN1(n523), .IN2(n524), .QN(n521) );
  NOR2X0 U641 ( .IN1(n456), .IN2(n509), .QN(n524) );
  NAND2X0 U642 ( .IN1(n525), .IN2(n526), .QN(n509) );
  NAND2X0 U643 ( .IN1(n527), .IN2(n486), .QN(n526) );
  INVX0 U644 ( .INP(n528), .ZN(n525) );
  NAND2X0 U645 ( .IN1(n480), .IN2(n529), .QN(n528) );
  NOR2X0 U646 ( .IN1(n530), .IN2(n510), .QN(n523) );
  NAND2X0 U647 ( .IN1(n531), .IN2(n527), .QN(n510) );
  INVX0 U648 ( .INP(n487), .ZN(n527) );
  NAND2X0 U649 ( .IN1(n497), .IN2(n532), .QN(n487) );
  NAND2X0 U650 ( .IN1(n533), .IN2(n534), .QN(n532) );
  NOR2X0 U651 ( .IN1(n797), .IN2(n798), .QN(n534) );
  NOR2X0 U652 ( .IN1(n816), .IN2(n456), .QN(n533) );
  NOR2X0 U653 ( .IN1(test_se), .IN2(n535), .QN(n531) );
  INVX0 U654 ( .INP(n486), .ZN(n535) );
  INVX0 U655 ( .INP(iXMIT_N46), .ZN(n530) );
  NAND2X0 U656 ( .IN1(n536), .IN2(n537), .QN(n179) );
  INVX0 U657 ( .INP(n538), .ZN(n537) );
  NOR2X0 U658 ( .IN1(n480), .IN2(n258), .QN(n538) );
  NAND2X0 U659 ( .IN1(n539), .IN2(n480), .QN(n536) );
  NAND2X0 U660 ( .IN1(n540), .IN2(n541), .QN(n539) );
  NOR2X0 U661 ( .IN1(n542), .IN2(n543), .QN(n540) );
  INVX0 U662 ( .INP(n544), .ZN(n543) );
  NAND2X0 U663 ( .IN1(n504), .IN2(xmit_dataH_7_), .QN(n544) );
  NOR2X0 U664 ( .IN1(n446), .IN2(n504), .QN(n542) );
  NAND2X0 U665 ( .IN1(n545), .IN2(n546), .QN(n178) );
  INVX0 U666 ( .INP(n547), .ZN(n546) );
  NOR2X0 U667 ( .IN1(n480), .IN2(n259), .QN(n547) );
  NAND2X0 U668 ( .IN1(n548), .IN2(n480), .QN(n545) );
  NAND2X0 U669 ( .IN1(n549), .IN2(n550), .QN(n548) );
  NAND2X0 U670 ( .IN1(xmit_dataH_6_), .IN2(n551), .QN(n550) );
  NOR2X0 U671 ( .IN1(n552), .IN2(n553), .QN(n549) );
  NOR2X0 U672 ( .IN1(n258), .IN2(n504), .QN(n553) );
  NOR2X0 U673 ( .IN1(n446), .IN2(n541), .QN(n552) );
  NAND2X0 U674 ( .IN1(n554), .IN2(n555), .QN(n177) );
  NAND2X0 U675 ( .IN1(n799), .IN2(test_se), .QN(n555) );
  NAND2X0 U676 ( .IN1(n556), .IN2(n480), .QN(n554) );
  NAND2X0 U677 ( .IN1(n557), .IN2(n558), .QN(n556) );
  NAND2X0 U678 ( .IN1(xmit_dataH_5_), .IN2(n551), .QN(n558) );
  NOR2X0 U679 ( .IN1(n559), .IN2(n560), .QN(n557) );
  NOR2X0 U680 ( .IN1(n259), .IN2(n504), .QN(n560) );
  NOR2X0 U681 ( .IN1(n258), .IN2(n541), .QN(n559) );
  NAND2X0 U682 ( .IN1(n561), .IN2(n562), .QN(n176) );
  NAND2X0 U683 ( .IN1(n800), .IN2(test_se), .QN(n562) );
  NAND2X0 U684 ( .IN1(n563), .IN2(n480), .QN(n561) );
  NAND2X0 U685 ( .IN1(n564), .IN2(n565), .QN(n563) );
  NAND2X0 U686 ( .IN1(xmit_dataH_4_), .IN2(n551), .QN(n565) );
  NOR2X0 U687 ( .IN1(n566), .IN2(n567), .QN(n564) );
  NOR2X0 U688 ( .IN1(n504), .IN2(n465), .QN(n567) );
  NOR2X0 U689 ( .IN1(n259), .IN2(n541), .QN(n566) );
  NAND2X0 U690 ( .IN1(n568), .IN2(n569), .QN(n175) );
  NAND2X0 U691 ( .IN1(n801), .IN2(test_se), .QN(n569) );
  NAND2X0 U692 ( .IN1(n570), .IN2(n480), .QN(n568) );
  NAND2X0 U693 ( .IN1(n571), .IN2(n572), .QN(n570) );
  NAND2X0 U694 ( .IN1(xmit_dataH_3_), .IN2(n551), .QN(n572) );
  NOR2X0 U695 ( .IN1(n573), .IN2(n574), .QN(n571) );
  NOR2X0 U696 ( .IN1(n504), .IN2(n466), .QN(n574) );
  NOR2X0 U697 ( .IN1(n541), .IN2(n465), .QN(n573) );
  NAND2X0 U698 ( .IN1(n575), .IN2(n576), .QN(n174) );
  NAND2X0 U699 ( .IN1(n802), .IN2(test_se), .QN(n576) );
  NAND2X0 U700 ( .IN1(n577), .IN2(n480), .QN(n575) );
  NAND2X0 U701 ( .IN1(n578), .IN2(n579), .QN(n577) );
  NAND2X0 U702 ( .IN1(xmit_dataH_2_), .IN2(n551), .QN(n579) );
  NOR2X0 U703 ( .IN1(n580), .IN2(n581), .QN(n578) );
  NOR2X0 U704 ( .IN1(n504), .IN2(n467), .QN(n581) );
  NOR2X0 U705 ( .IN1(n541), .IN2(n466), .QN(n580) );
  NAND2X0 U706 ( .IN1(n582), .IN2(n583), .QN(n173) );
  NAND2X0 U707 ( .IN1(test_se), .IN2(n469), .QN(n583) );
  NAND2X0 U708 ( .IN1(n584), .IN2(n480), .QN(n582) );
  NAND2X0 U709 ( .IN1(n585), .IN2(n586), .QN(n584) );
  NAND2X0 U710 ( .IN1(xmit_dataH_1_), .IN2(n551), .QN(n586) );
  NOR2X0 U711 ( .IN1(n587), .IN2(n588), .QN(n585) );
  NOR2X0 U712 ( .IN1(n504), .IN2(n468), .QN(n588) );
  NOR2X0 U713 ( .IN1(n541), .IN2(n467), .QN(n587) );
  NAND2X0 U714 ( .IN1(n589), .IN2(n590), .QN(n172) );
  INVX0 U715 ( .INP(n591), .ZN(n590) );
  NOR2X0 U716 ( .IN1(n480), .IN2(n446), .QN(n591) );
  NAND2X0 U717 ( .IN1(n592), .IN2(n480), .QN(n589) );
  NAND2X0 U718 ( .IN1(n529), .IN2(n593), .QN(n592) );
  NAND2X0 U719 ( .IN1(n477), .IN2(n594), .QN(n593) );
  NOR2X0 U720 ( .IN1(n242), .IN2(n239), .QN(n477) );
  NAND2X0 U721 ( .IN1(n595), .IN2(n246), .QN(n529) );
  NOR2X0 U722 ( .IN1(xmitH), .IN2(iXMIT_state_2_), .QN(n595) );
  NAND2X0 U723 ( .IN1(n596), .IN2(n597), .QN(n171) );
  NOR2X0 U724 ( .IN1(n598), .IN2(n599), .QN(n596) );
  NOR2X0 U725 ( .IN1(iRECEIVER_state_0_), .IN2(n600), .QN(n599) );
  NAND2X0 U726 ( .IN1(n601), .IN2(n480), .QN(n600) );
  NAND2X0 U727 ( .IN1(n811), .IN2(n602), .QN(n601) );
  NAND2X0 U728 ( .IN1(n603), .IN2(iRECEIVER_state_1_), .QN(n602) );
  NOR2X0 U729 ( .IN1(n245), .IN2(n604), .QN(n598) );
  NOR2X0 U730 ( .IN1(test_se), .IN2(n605), .QN(n604) );
  NAND2X0 U731 ( .IN1(n606), .IN2(n607), .QN(n605) );
  NAND2X0 U732 ( .IN1(n608), .IN2(iRECEIVER_state_1_), .QN(n607) );
  NAND2X0 U733 ( .IN1(n609), .IN2(n241), .QN(n606) );
  NOR2X0 U734 ( .IN1(n811), .IN2(iRECEIVER_state_2_), .QN(n609) );
  NAND2X0 U735 ( .IN1(n610), .IN2(n611), .QN(n170) );
  NAND2X0 U736 ( .IN1(n806), .IN2(test_se), .QN(n611) );
  NAND2X0 U737 ( .IN1(n612), .IN2(n480), .QN(n610) );
  NAND2X0 U738 ( .IN1(n613), .IN2(n238), .QN(n612) );
  NOR2X0 U739 ( .IN1(n614), .IN2(n615), .QN(n613) );
  NOR2X0 U740 ( .IN1(n241), .IN2(n616), .QN(n615) );
  NOR2X0 U741 ( .IN1(n617), .IN2(n618), .QN(n616) );
  INVX0 U742 ( .INP(n603), .ZN(n618) );
  NOR2X0 U743 ( .IN1(n245), .IN2(n619), .QN(n617) );
  NOR2X0 U744 ( .IN1(n620), .IN2(n608), .QN(n619) );
  NOR2X0 U745 ( .IN1(n621), .IN2(n622), .QN(n620) );
  NAND2X0 U746 ( .IN1(n806), .IN2(n472), .QN(n622) );
  NAND2X0 U747 ( .IN1(n449), .IN2(n452), .QN(n621) );
  NOR2X0 U748 ( .IN1(n451), .IN2(iRECEIVER_state_1_), .QN(n614) );
  NAND2X0 U749 ( .IN1(n623), .IN2(n624), .QN(n169) );
  NAND2X0 U750 ( .IN1(n625), .IN2(n454), .QN(n624) );
  NAND2X0 U751 ( .IN1(test_si), .IN2(test_se), .QN(n623) );
  INVX0 U752 ( .INP(n626), .ZN(n168) );
  NOR2X0 U753 ( .IN1(n627), .IN2(n628), .QN(n626) );
  NOR2X0 U754 ( .IN1(n454), .IN2(n629), .QN(n628) );
  NOR2X0 U755 ( .IN1(test_se), .IN2(n630), .QN(n629) );
  NOR2X0 U756 ( .IN1(n631), .IN2(n804), .QN(n630) );
  NOR2X0 U757 ( .IN1(n632), .IN2(n803), .QN(n627) );
  NAND2X0 U758 ( .IN1(n804), .IN2(n625), .QN(n632) );
  NAND2X0 U759 ( .IN1(n633), .IN2(n634), .QN(n167) );
  NAND2X0 U760 ( .IN1(n625), .IN2(n635), .QN(n634) );
  XNOR2X1 U761 ( .IN1(n805), .IN2(n636), .Q(n635) );
  NAND2X0 U762 ( .IN1(n804), .IN2(test_se), .QN(n633) );
  NAND2X0 U763 ( .IN1(n637), .IN2(n638), .QN(n166) );
  NAND2X0 U764 ( .IN1(n625), .IN2(n639), .QN(n638) );
  XOR2X1 U765 ( .IN1(n812), .IN2(n640), .Q(n639) );
  NOR2X0 U766 ( .IN1(n455), .IN2(n636), .QN(n640) );
  NAND2X0 U767 ( .IN1(n803), .IN2(n804), .QN(n636) );
  NOR2X0 U768 ( .IN1(n631), .IN2(test_se), .QN(n625) );
  NAND2X0 U769 ( .IN1(n641), .IN2(n642), .QN(n631) );
  NOR2X0 U770 ( .IN1(n643), .IN2(n644), .QN(n642) );
  NOR2X0 U771 ( .IN1(iRECEIVER_state_0_), .IN2(n603), .QN(n644) );
  NAND2X0 U772 ( .IN1(n645), .IN2(n646), .QN(n603) );
  NOR2X0 U773 ( .IN1(n803), .IN2(n804), .QN(n646) );
  NOR2X0 U774 ( .IN1(n812), .IN2(n455), .QN(n645) );
  NOR2X0 U775 ( .IN1(n245), .IN2(n608), .QN(n643) );
  INVX0 U776 ( .INP(n647), .ZN(n608) );
  NOR2X0 U777 ( .IN1(n241), .IN2(iRECEIVER_state_2_), .QN(n641) );
  NAND2X0 U778 ( .IN1(n805), .IN2(test_se), .QN(n637) );
  NAND2X0 U779 ( .IN1(n648), .IN2(n649), .QN(n164) );
  NAND2X0 U780 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .QN(n649) );
  NAND2X0 U781 ( .IN1(n650), .IN2(n651), .QN(n163) );
  NAND2X0 U782 ( .IN1(n810), .IN2(test_se), .QN(n651) );
  NAND2X0 U783 ( .IN1(n652), .IN2(n480), .QN(n650) );
  NAND2X0 U784 ( .IN1(n653), .IN2(n654), .QN(n652) );
  NAND2X0 U785 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .QN(n654)
         );
  NAND2X0 U786 ( .IN1(n655), .IN2(n656), .QN(n162) );
  NAND2X0 U787 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .QN(n656) );
  NOR2X0 U788 ( .IN1(n657), .IN2(n658), .QN(n655) );
  NOR2X0 U789 ( .IN1(n451), .IN2(n597), .QN(n658) );
  NOR2X0 U790 ( .IN1(n659), .IN2(n457), .QN(n657) );
  NAND2X0 U791 ( .IN1(n660), .IN2(n661), .QN(n161) );
  NAND2X0 U792 ( .IN1(rec_dataH_rec_7), .IN2(n480), .QN(n661) );
  NAND2X0 U793 ( .IN1(rec_dataH_temp_6), .IN2(test_se), .QN(n660) );
  NAND2X0 U794 ( .IN1(n662), .IN2(n663), .QN(n160) );
  NAND2X0 U795 ( .IN1(test_so), .IN2(n480), .QN(n663) );
  NAND2X0 U796 ( .IN1(rec_dataH_6_), .IN2(test_se), .QN(n662) );
  NAND2X0 U797 ( .IN1(n664), .IN2(n665), .QN(n159) );
  NAND2X0 U798 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .QN(n665) );
  NOR2X0 U799 ( .IN1(n666), .IN2(n667), .QN(n664) );
  NOR2X0 U800 ( .IN1(n457), .IN2(n597), .QN(n667) );
  NOR2X0 U801 ( .IN1(n659), .IN2(n458), .QN(n666) );
  NAND2X0 U802 ( .IN1(n668), .IN2(n669), .QN(n157) );
  NAND2X0 U803 ( .IN1(rec_dataH_rec_6), .IN2(n480), .QN(n669) );
  NAND2X0 U804 ( .IN1(rec_dataH_temp_5), .IN2(test_se), .QN(n668) );
  NAND2X0 U805 ( .IN1(n670), .IN2(n671), .QN(n156) );
  NAND2X0 U806 ( .IN1(rec_dataH_temp_6), .IN2(n480), .QN(n671) );
  NAND2X0 U807 ( .IN1(rec_dataH_5_), .IN2(test_se), .QN(n670) );
  NAND2X0 U808 ( .IN1(n672), .IN2(n673), .QN(n155) );
  NAND2X0 U809 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .QN(n673) );
  NOR2X0 U810 ( .IN1(n674), .IN2(n675), .QN(n672) );
  NOR2X0 U811 ( .IN1(n597), .IN2(n458), .QN(n675) );
  NOR2X0 U812 ( .IN1(n659), .IN2(n459), .QN(n674) );
  NAND2X0 U813 ( .IN1(n676), .IN2(n677), .QN(n154) );
  NAND2X0 U814 ( .IN1(rec_dataH_rec_5), .IN2(n480), .QN(n677) );
  NAND2X0 U815 ( .IN1(rec_dataH_temp_4), .IN2(test_se), .QN(n676) );
  NAND2X0 U816 ( .IN1(n678), .IN2(n679), .QN(n153) );
  NAND2X0 U817 ( .IN1(rec_dataH_temp_5), .IN2(n480), .QN(n679) );
  NAND2X0 U818 ( .IN1(rec_dataH_4_), .IN2(test_se), .QN(n678) );
  NAND2X0 U819 ( .IN1(n680), .IN2(n681), .QN(n152) );
  NAND2X0 U820 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .QN(n681) );
  NOR2X0 U821 ( .IN1(n682), .IN2(n683), .QN(n680) );
  NOR2X0 U822 ( .IN1(n597), .IN2(n459), .QN(n683) );
  NOR2X0 U823 ( .IN1(n659), .IN2(n460), .QN(n682) );
  NAND2X0 U824 ( .IN1(n684), .IN2(n685), .QN(n150) );
  NAND2X0 U825 ( .IN1(rec_dataH_rec_4), .IN2(n480), .QN(n685) );
  NAND2X0 U826 ( .IN1(rec_dataH_temp_3), .IN2(test_se), .QN(n684) );
  NAND2X0 U827 ( .IN1(n686), .IN2(n687), .QN(n149) );
  NAND2X0 U828 ( .IN1(rec_dataH_temp_4), .IN2(n480), .QN(n687) );
  NAND2X0 U829 ( .IN1(rec_dataH_3_), .IN2(test_se), .QN(n686) );
  NAND2X0 U830 ( .IN1(n688), .IN2(n689), .QN(n148) );
  NAND2X0 U831 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .QN(n689) );
  NOR2X0 U832 ( .IN1(n690), .IN2(n691), .QN(n688) );
  NOR2X0 U833 ( .IN1(n597), .IN2(n460), .QN(n691) );
  NOR2X0 U834 ( .IN1(n659), .IN2(n461), .QN(n690) );
  NAND2X0 U835 ( .IN1(n692), .IN2(n693), .QN(n147) );
  NAND2X0 U836 ( .IN1(rec_dataH_rec_3), .IN2(n480), .QN(n693) );
  NAND2X0 U837 ( .IN1(rec_dataH_temp_2), .IN2(test_se), .QN(n692) );
  NAND2X0 U838 ( .IN1(n694), .IN2(n695), .QN(n146) );
  NAND2X0 U839 ( .IN1(rec_dataH_temp_3), .IN2(n480), .QN(n695) );
  NAND2X0 U840 ( .IN1(rec_dataH_2_), .IN2(test_se), .QN(n694) );
  NAND2X0 U841 ( .IN1(n696), .IN2(n697), .QN(n145) );
  NAND2X0 U842 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .QN(n697) );
  NOR2X0 U843 ( .IN1(n698), .IN2(n699), .QN(n696) );
  NOR2X0 U844 ( .IN1(n597), .IN2(n461), .QN(n699) );
  NOR2X0 U845 ( .IN1(n659), .IN2(n462), .QN(n698) );
  NAND2X0 U846 ( .IN1(n700), .IN2(n701), .QN(n143) );
  NAND2X0 U847 ( .IN1(rec_dataH_rec_2), .IN2(n480), .QN(n701) );
  NAND2X0 U848 ( .IN1(rec_dataH_temp_1), .IN2(test_se), .QN(n700) );
  NAND2X0 U849 ( .IN1(n702), .IN2(n703), .QN(n142) );
  NAND2X0 U850 ( .IN1(rec_dataH_temp_2), .IN2(n480), .QN(n703) );
  NAND2X0 U851 ( .IN1(rec_dataH_1_), .IN2(test_se), .QN(n702) );
  NAND2X0 U852 ( .IN1(n704), .IN2(n705), .QN(n141) );
  NAND2X0 U853 ( .IN1(rec_dataH_rec_0), .IN2(test_se), .QN(n705) );
  NOR2X0 U854 ( .IN1(n706), .IN2(n707), .QN(n704) );
  NOR2X0 U855 ( .IN1(n597), .IN2(n462), .QN(n707) );
  NOR2X0 U856 ( .IN1(n659), .IN2(n463), .QN(n706) );
  INVX0 U857 ( .INP(n708), .ZN(n659) );
  NAND2X0 U858 ( .IN1(n709), .IN2(n710), .QN(n140) );
  NAND2X0 U859 ( .IN1(rec_dataH_rec_1), .IN2(n480), .QN(n710) );
  NAND2X0 U860 ( .IN1(rec_dataH_temp_0), .IN2(test_se), .QN(n709) );
  NAND2X0 U861 ( .IN1(n711), .IN2(n712), .QN(n139) );
  NAND2X0 U862 ( .IN1(rec_dataH_temp_1), .IN2(n480), .QN(n712) );
  NAND2X0 U863 ( .IN1(rec_dataH_0_), .IN2(test_se), .QN(n711) );
  NAND2X0 U864 ( .IN1(n713), .IN2(n714), .QN(n138) );
  NAND2X0 U865 ( .IN1(n812), .IN2(test_se), .QN(n714) );
  NOR2X0 U866 ( .IN1(n715), .IN2(n716), .QN(n713) );
  NOR2X0 U867 ( .IN1(n597), .IN2(n463), .QN(n716) );
  INVX0 U868 ( .INP(n717), .ZN(n715) );
  NAND2X0 U869 ( .IN1(n708), .IN2(rec_dataH_rec_0), .QN(n717) );
  NAND2X0 U870 ( .IN1(n718), .IN2(n719), .QN(n136) );
  NAND2X0 U871 ( .IN1(rec_dataH_rec_0), .IN2(n480), .QN(n719) );
  NAND2X0 U872 ( .IN1(rec_dataH_7_), .IN2(test_se), .QN(n718) );
  NAND2X0 U873 ( .IN1(n720), .IN2(n721), .QN(n135) );
  NAND2X0 U874 ( .IN1(rec_dataH_temp_0), .IN2(n480), .QN(n721) );
  NAND2X0 U875 ( .IN1(xmit_doneH_temp), .IN2(test_se), .QN(n720) );
  NAND2X0 U876 ( .IN1(n722), .IN2(n723), .QN(n134) );
  NAND2X0 U877 ( .IN1(n814), .IN2(n724), .QN(n723) );
  NAND2X0 U878 ( .IN1(n480), .IN2(n725), .QN(n724) );
  NAND2X0 U879 ( .IN1(n726), .IN2(n727), .QN(n725) );
  NOR2X0 U880 ( .IN1(n806), .IN2(n597), .QN(n727) );
  NOR2X0 U881 ( .IN1(n449), .IN2(n452), .QN(n726) );
  NAND2X0 U882 ( .IN1(n806), .IN2(n728), .QN(n722) );
  NAND2X0 U883 ( .IN1(n729), .IN2(n730), .QN(n728) );
  INVX0 U884 ( .INP(n731), .ZN(n730) );
  NOR2X0 U885 ( .IN1(n732), .IN2(n733), .QN(n729) );
  NOR2X0 U886 ( .IN1(n814), .IN2(n597), .QN(n733) );
  NAND2X0 U887 ( .IN1(n734), .IN2(n735), .QN(n133) );
  NAND2X0 U888 ( .IN1(rec_readyH), .IN2(test_se), .QN(n735) );
  NOR2X0 U889 ( .IN1(n732), .IN2(n736), .QN(n734) );
  NOR2X0 U890 ( .IN1(n449), .IN2(n737), .QN(n736) );
  NAND2X0 U891 ( .IN1(n738), .IN2(n739), .QN(n132) );
  NAND2X0 U892 ( .IN1(n813), .IN2(n740), .QN(n739) );
  NAND2X0 U893 ( .IN1(n480), .IN2(n741), .QN(n740) );
  NAND2X0 U894 ( .IN1(n742), .IN2(n452), .QN(n741) );
  NAND2X0 U895 ( .IN1(n807), .IN2(n743), .QN(n738) );
  NAND2X0 U896 ( .IN1(n737), .IN2(n744), .QN(n743) );
  INVX0 U897 ( .INP(n732), .ZN(n744) );
  NOR2X0 U898 ( .IN1(n597), .IN2(n813), .QN(n732) );
  INVX0 U899 ( .INP(n745), .ZN(n597) );
  NAND2X0 U900 ( .IN1(n746), .IN2(n747), .QN(n131) );
  NAND2X0 U901 ( .IN1(n807), .IN2(n748), .QN(n747) );
  NAND2X0 U902 ( .IN1(n480), .IN2(n749), .QN(n748) );
  NAND2X0 U903 ( .IN1(n742), .IN2(n750), .QN(n749) );
  XNOR2X1 U904 ( .IN1(n449), .IN2(n814), .Q(n750) );
  NAND2X0 U905 ( .IN1(n814), .IN2(n731), .QN(n746) );
  NAND2X0 U906 ( .IN1(n737), .IN2(n751), .QN(n731) );
  NAND2X0 U907 ( .IN1(n745), .IN2(n452), .QN(n751) );
  NOR2X0 U908 ( .IN1(n752), .IN2(test_se), .QN(n745) );
  INVX0 U909 ( .INP(n742), .ZN(n752) );
  NAND2X0 U910 ( .IN1(n708), .IN2(n653), .QN(n737) );
  NAND2X0 U911 ( .IN1(n753), .IN2(n241), .QN(n653) );
  NOR2X0 U912 ( .IN1(n451), .IN2(iRECEIVER_state_2_), .QN(n753) );
  NOR2X0 U913 ( .IN1(test_se), .IN2(n742), .QN(n708) );
  NOR2X0 U914 ( .IN1(iRECEIVER_state_0_), .IN2(n238), .QN(n742) );
  NAND2X0 U915 ( .IN1(n754), .IN2(n755), .QN(n129) );
  NAND2X0 U916 ( .IN1(iXMIT_N29), .IN2(n480), .QN(n755) );
  NAND2X0 U917 ( .IN1(test_se), .IN2(n796), .QN(n754) );
  NAND2X0 U918 ( .IN1(n756), .IN2(n757), .QN(n128) );
  NAND2X0 U919 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .QN(n757) );
  NAND2X0 U920 ( .IN1(iXMIT_N26), .IN2(n480), .QN(n756) );
  NAND2X0 U921 ( .IN1(n758), .IN2(n759), .QN(n127) );
  NOR2X0 U922 ( .IN1(n760), .IN2(n761), .QN(n758) );
  NOR2X0 U923 ( .IN1(n464), .IN2(n480), .QN(n761) );
  NOR2X0 U924 ( .IN1(test_se), .IN2(n762), .QN(n760) );
  NAND2X0 U925 ( .IN1(n763), .IN2(n764), .QN(n126) );
  NAND2X0 U926 ( .IN1(test_se), .IN2(iXMIT_state_2_), .QN(n764) );
  NAND2X0 U927 ( .IN1(n765), .IN2(n480), .QN(n763) );
  NAND2X0 U928 ( .IN1(n766), .IN2(n767), .QN(n765) );
  NAND2X0 U929 ( .IN1(xmit_dataH_0_), .IN2(n551), .QN(n767) );
  INVX0 U930 ( .INP(n768), .ZN(n551) );
  NOR2X0 U931 ( .IN1(n769), .IN2(n770), .QN(n766) );
  NOR2X0 U932 ( .IN1(n809), .IN2(n504), .QN(n770) );
  NOR2X0 U933 ( .IN1(n541), .IN2(n468), .QN(n769) );
  NAND2X0 U934 ( .IN1(n768), .IN2(n504), .QN(n541) );
  NAND2X0 U935 ( .IN1(n768), .IN2(n771), .QN(n504) );
  NAND2X0 U936 ( .IN1(n239), .IN2(iXMIT_state_2_), .QN(n771) );
  NAND2X0 U937 ( .IN1(n476), .IN2(xmitH), .QN(n768) );
  NOR2X0 U938 ( .IN1(iXMIT_state_2_), .IN2(iXMIT_state_1_), .QN(n476) );
  NAND2X0 U939 ( .IN1(n772), .IN2(n773), .QN(n125) );
  NAND2X0 U940 ( .IN1(uart_REC_dataH), .IN2(n480), .QN(n773) );
  NAND2X0 U941 ( .IN1(n811), .IN2(test_se), .QN(n772) );
  NAND2X0 U942 ( .IN1(n774), .IN2(n775), .QN(n124) );
  NAND2X0 U943 ( .IN1(n810), .IN2(n480), .QN(n775) );
  INVX0 U944 ( .INP(test_se), .ZN(n480) );
  NAND2X0 U945 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .QN(n774) );
  XOR2X1 U946 ( .IN1(n815), .IN2(n776), .Q(iXMIT_N46) );
  NOR2X0 U947 ( .IN1(n450), .IN2(n777), .QN(n776) );
  XOR2X1 U948 ( .IN1(n777), .IN2(n450), .Q(iXMIT_N45) );
  NAND2X0 U949 ( .IN1(n797), .IN2(n816), .QN(n777) );
  XNOR2X1 U950 ( .IN1(n797), .IN2(n453), .Q(iXMIT_N44) );
  INVX0 U951 ( .INP(n778), .ZN(iXMIT_N29) );
  NAND2X0 U952 ( .IN1(iXMIT_N25), .IN2(n779), .QN(n778) );
  NOR2X0 U953 ( .IN1(n780), .IN2(n781), .QN(iXMIT_N28) );
  INVX0 U954 ( .INP(iXMIT_N24), .ZN(n780) );
  NAND2X0 U955 ( .IN1(n759), .IN2(n762), .QN(iXMIT_N27) );
  NAND2X0 U956 ( .IN1(iXMIT_N26), .IN2(n817), .QN(n762) );
  NAND2X0 U957 ( .IN1(n782), .IN2(n808), .QN(n759) );
  NOR2X0 U958 ( .IN1(n817), .IN2(n781), .QN(n782) );
  NOR2X0 U959 ( .IN1(n781), .IN2(n808), .QN(iXMIT_N26) );
  INVX0 U960 ( .INP(n779), .ZN(n781) );
  NAND2X0 U961 ( .IN1(n783), .IN2(n784), .QN(n779) );
  NAND2X0 U962 ( .IN1(n486), .IN2(n785), .QN(n784) );
  INVX0 U963 ( .INP(n497), .ZN(n785) );
  NOR2X0 U964 ( .IN1(n786), .IN2(n787), .QN(n497) );
  NAND2X0 U965 ( .IN1(n464), .IN2(n818), .QN(n787) );
  NAND2X0 U966 ( .IN1(n817), .IN2(n796), .QN(n786) );
  NOR2X0 U967 ( .IN1(n239), .IN2(n246), .QN(n486) );
  NOR2X0 U968 ( .IN1(n788), .IN2(n789), .QN(n783) );
  NOR2X0 U969 ( .IN1(n239), .IN2(n790), .QN(n789) );
  INVX0 U970 ( .INP(n488), .ZN(n790) );
  NOR2X0 U971 ( .IN1(n242), .IN2(n594), .QN(n488) );
  INVX0 U972 ( .INP(n492), .ZN(n594) );
  NAND2X0 U973 ( .IN1(n791), .IN2(n818), .QN(n492) );
  NOR2X0 U974 ( .IN1(n246), .IN2(iXMIT_state_0_), .QN(n788) );
  XOR2X1 U975 ( .IN1(n818), .IN2(n791), .Q(iXMIT_N25) );
  NOR2X0 U976 ( .IN1(n792), .IN2(n471), .QN(n791) );
  XNOR2X1 U977 ( .IN1(n792), .IN2(n796), .Q(iXMIT_N24) );
  NAND2X0 U978 ( .IN1(n808), .IN2(n817), .QN(n792) );
  INVX0 U979 ( .INP(n648), .ZN(iRECEIVER_next_state_2_) );
  NAND2X0 U980 ( .IN1(n793), .IN2(n647), .QN(n648) );
  NOR2X0 U981 ( .IN1(n794), .IN2(n795), .QN(n647) );
  NAND2X0 U982 ( .IN1(n454), .IN2(n805), .QN(n795) );
  NAND2X0 U983 ( .IN1(n812), .IN2(n804), .QN(n794) );
  NOR2X0 U984 ( .IN1(n245), .IN2(n241), .QN(n793) );
endmodule

