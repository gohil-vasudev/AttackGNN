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
  wire   iCTRL, rec_readyH_temp, xmit_doneH_temp, iXMIT_CRTL,
         iRECEIVER_state_CTRL, iRECEIVER_next_state_2_, iRECEIVER_state_0_,
         iRECEIVER_state_1_, iRECEIVER_state_2_, iXMIT_state_CTRL,
         iXMIT_N_CTRL_1_, iXMIT_N_CTRL_2_, iXMIT_xmit_CTRL, iXMIT_N24,
         iXMIT_xmit_ShiftRegH_7_, iXMIT_xmit_ShiftRegH_6_,
         iXMIT_xmit_ShiftRegH_5_, iXMIT_N28, iXMIT_N27, iXMIT_N26, iXMIT_N44,
         iXMIT_N29, iXMIT_state_0_, iXMIT_state_1_, iXMIT_state_2_, n241, n245,
         n238, n242, n246, n239, n258, n259, rec_dataH_rec_7, rec_dataH_rec_6,
         rec_dataH_rec_5, rec_dataH_rec_4, rec_dataH_rec_3, rec_dataH_rec_2,
         rec_dataH_rec_1, rec_dataH_rec_0, n180, n179, n178, n177, n176, n175,
         n174, n173, n172, n171, n170, n169, n168, n167, n166, n164, n163,
         n162, n161, n160, n159, n157, n156, n155, n154, n153, test_point_DOUT,
         rec_dataH_temp_6_, rec_dataH_temp_5_, rec_dataH_temp_4_,
         rec_dataH_temp_3_, rec_dataH_temp_2_, rec_dataH_temp_1_,
         rec_dataH_temp_0_, n152, n150, n149, n148, n147, n146, n145, n143,
         n142, n141, n140, n139, n138, n136, n135, n134, n133, n132, n131,
         n129, n128, n127, n126, n125, n124, n122, n121, n120, n119, n118,
         n117, n115, n4, n16, n17, n465, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597,
         n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608,
         n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619,
         n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630,
         n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, n641,
         n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, n652,
         n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663,
         n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
         n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
         n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864;

  AND2X4 TrojanU304 ( .IN1(iCTRL), .IN2(rec_readyH_temp), .Q(rec_readyH) );
  AND2X4 TrojanU303 ( .IN1(iCTRL), .IN2(xmit_doneH_temp), .Q(xmit_doneH) );
  OR2X1 TrojanU302 ( .IN1(iXMIT_CRTL), .IN2(iRECEIVER_state_CTRL), .Q(iCTRL)
         );
  NAND4X1 TrojanU297 ( .IN1(iRECEIVER_next_state_2_), .IN2(iRECEIVER_state_0_), 
        .IN3(iRECEIVER_state_1_), .IN4(iRECEIVER_state_2_), .QN(
        iRECEIVER_state_CTRL) );
  OR4X4 TrojanU296 ( .IN1(iXMIT_state_CTRL), .IN2(iXMIT_N_CTRL_1_), .IN3(
        iXMIT_N_CTRL_2_), .IN4(iXMIT_xmit_CTRL), .Q(iXMIT_CRTL) );
  NAND4X1 TrojanU295 ( .IN1(iXMIT_N24), .IN2(iXMIT_xmit_ShiftRegH_7_), .IN3(
        iXMIT_xmit_ShiftRegH_6_), .IN4(iXMIT_xmit_ShiftRegH_5_), .QN(
        iXMIT_xmit_CTRL) );
  NAND4X1 TrojanU294 ( .IN1(iXMIT_N28), .IN2(iXMIT_N27), .IN3(iXMIT_N26), 
        .IN4(n4), .QN(iXMIT_N_CTRL_2_) );
  NAND4X1 TrojanU293 ( .IN1(n17), .IN2(n16), .IN3(iXMIT_N44), .IN4(iXMIT_N29), 
        .QN(iXMIT_N_CTRL_1_) );
  NAND4X1 TrojanU292 ( .IN1(n471), .IN2(iXMIT_state_0_), .IN3(iXMIT_state_1_), 
        .IN4(iXMIT_state_2_), .QN(iXMIT_state_CTRL) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n180), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n850), .QN(n475) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n179), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_0_), .QN(n239) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n178), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_2_), .QN(n242) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n177), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_1_), .QN(n246) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n176), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n851), .QN(n474) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n175), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n852), .QN(n481) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n174), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n853), .QN(n478) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n173), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n847), .QN(n482) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n172), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_), .QN(n465) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n171), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_), .QN(n258) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n170), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_), .QN(n259) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n842), .QN(n493) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n843), .QN(n494) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n167), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n844), .QN(n495) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n166), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n846), .QN(n496) );
  DFFARX1 iXMIT_xmit_doneH_reg ( .D(n164), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(xmit_doneH_temp) );
  DFFARX1 iRECEIVER_state_reg_1_ ( .D(n163), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_1_), .QN(n241) );
  DFFASX1 iRECEIVER_state_reg_0_ ( .D(n162), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(iRECEIVER_state_0_), .QN(n245) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(n161), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n854), .QN(n480) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(n160), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n855), .QN(n472) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(n159), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n849), .QN(n479) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n157), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n856), .QN(n497) );
  DFFARX1 iRECEIVER_state_reg_2_ ( .D(n156), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_2_), .QN(n238) );
  DFFARX1 iRECEIVER_rec_readyH_reg ( .D(n155), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(rec_readyH_temp) );
  DFFARX1 iRECEIVER_par_dataH_reg_7_ ( .D(n154), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_7), .QN(n485) );
  DFFARX1 rec_dataH_temp_reg_7_ ( .D(n153), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(test_so) );
  DFFARX1 rec_dataH_reg_7_ ( .D(n152), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_7_) );
  DFFARX1 iRECEIVER_par_dataH_reg_6_ ( .D(n150), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_6), .QN(n487) );
  DFFARX1 rec_dataH_temp_reg_6_ ( .D(n149), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_6_) );
  DFFARX1 rec_dataH_reg_6_ ( .D(n148), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_6_) );
  DFFARX1 iRECEIVER_par_dataH_reg_5_ ( .D(n147), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_5), .QN(n488) );
  DFFARX1 rec_dataH_temp_reg_5_ ( .D(n146), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_5_) );
  DFFARX1 rec_dataH_reg_5_ ( .D(n145), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_5_) );
  DFFARX1 iRECEIVER_par_dataH_reg_4_ ( .D(n143), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_4), .QN(n489) );
  DFFARX1 rec_dataH_temp_reg_4_ ( .D(n142), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_4_) );
  DFFARX1 rec_dataH_reg_4_ ( .D(n141), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_4_) );
  DFFARX1 iRECEIVER_par_dataH_reg_3_ ( .D(n140), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_3), .QN(n490) );
  DFFARX1 rec_dataH_temp_reg_3_ ( .D(n139), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_3_) );
  DFFARX1 rec_dataH_reg_3_ ( .D(n138), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_3_) );
  DFFARX1 iRECEIVER_par_dataH_reg_2_ ( .D(n136), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_2), .QN(n491) );
  DFFARX1 rec_dataH_temp_reg_2_ ( .D(n135), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_2_) );
  DFFARX1 rec_dataH_reg_2_ ( .D(n134), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_2_) );
  DFFARX1 iRECEIVER_par_dataH_reg_1_ ( .D(n133), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_1), .QN(n492) );
  DFFARX1 rec_dataH_temp_reg_1_ ( .D(n132), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_1_) );
  DFFARX1 rec_dataH_reg_1_ ( .D(n131), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_1_) );
  DFFARX1 iRECEIVER_par_dataH_reg_0_ ( .D(n129), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_0), .QN(n501) );
  DFFARX1 rec_dataH_temp_reg_0_ ( .D(n128), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_0_) );
  DFFARX1 rec_dataH_reg_0_ ( .D(n127), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_0_) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_3_ ( .D(n126), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n857), .QN(n500) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n125), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n858), .QN(n476) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n124), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n859), .QN(n473) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n122), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n860), .QN(n483) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n121), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n848), .QN(n486) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n120), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n861), .QN(n499) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n119), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n862), .QN(n484) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n118), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n498), .QN(n845) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n117), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n863) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n115), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n864), .QN(n477) );
  NAND2X0 U616 ( .IN1(n502), .IN2(n503), .QN(uart_XMIT_dataH) );
  NAND2X0 U617 ( .IN1(n504), .IN2(n498), .QN(n503) );
  NAND2X0 U618 ( .IN1(n242), .IN2(n239), .QN(n504) );
  NOR2X0 U619 ( .IN1(n505), .IN2(n506), .QN(n502) );
  NAND2X0 U620 ( .IN1(n507), .IN2(n508), .QN(test_point_DOUT) );
  NAND2X0 U621 ( .IN1(rec_readyH_temp), .IN2(n509), .QN(n508) );
  INVX0 U622 ( .INP(test_mode), .ZN(n509) );
  NAND2X0 U623 ( .IN1(sys_clk), .IN2(test_mode), .QN(n507) );
  NAND2X0 U624 ( .IN1(n510), .IN2(n511), .QN(n180) );
  NAND2X0 U625 ( .IN1(iXMIT_N28), .IN2(n512), .QN(n511) );
  NAND2X0 U626 ( .IN1(test_se), .IN2(n862), .QN(n510) );
  NAND2X0 U627 ( .IN1(n513), .IN2(n514), .QN(n179) );
  NAND2X0 U628 ( .IN1(n847), .IN2(test_se), .QN(n514) );
  NAND2X0 U629 ( .IN1(n515), .IN2(n512), .QN(n513) );
  NAND2X0 U630 ( .IN1(n516), .IN2(n517), .QN(n515) );
  NAND2X0 U631 ( .IN1(n518), .IN2(n519), .QN(n517) );
  NOR2X0 U632 ( .IN1(n520), .IN2(n521), .QN(n516) );
  NOR2X0 U633 ( .IN1(n522), .IN2(iXMIT_state_0_), .QN(n521) );
  NOR2X0 U634 ( .IN1(n523), .IN2(iXMIT_state_2_), .QN(n522) );
  NOR2X0 U635 ( .IN1(n246), .IN2(n524), .QN(n523) );
  INVX0 U636 ( .INP(n525), .ZN(n524) );
  NAND2X0 U637 ( .IN1(n526), .IN2(n527), .QN(n178) );
  NAND2X0 U638 ( .IN1(test_se), .IN2(iXMIT_state_1_), .QN(n527) );
  NAND2X0 U639 ( .IN1(n471), .IN2(n512), .QN(n526) );
  NAND2X0 U640 ( .IN1(n528), .IN2(n529), .QN(n471) );
  NAND2X0 U641 ( .IN1(n518), .IN2(n530), .QN(n529) );
  NAND2X0 U642 ( .IN1(n520), .IN2(iXMIT_state_0_), .QN(n528) );
  NAND2X0 U643 ( .IN1(n531), .IN2(n532), .QN(n177) );
  NAND2X0 U644 ( .IN1(test_se), .IN2(iXMIT_state_0_), .QN(n532) );
  NAND2X0 U645 ( .IN1(n533), .IN2(n512), .QN(n531) );
  NAND2X0 U646 ( .IN1(n534), .IN2(n535), .QN(n533) );
  NAND2X0 U647 ( .IN1(n536), .IN2(iXMIT_state_1_), .QN(n535) );
  NAND2X0 U648 ( .IN1(n530), .IN2(iXMIT_state_0_), .QN(n536) );
  NAND2X0 U649 ( .IN1(n537), .IN2(n538), .QN(n176) );
  NAND2X0 U650 ( .IN1(test_se), .IN2(n848), .QN(n538) );
  NOR2X0 U651 ( .IN1(n539), .IN2(n540), .QN(n537) );
  NOR2X0 U652 ( .IN1(n541), .IN2(n474), .QN(n540) );
  NOR2X0 U653 ( .IN1(n851), .IN2(n542), .QN(n539) );
  NAND2X0 U654 ( .IN1(n543), .IN2(n544), .QN(n175) );
  NAND2X0 U655 ( .IN1(n851), .IN2(test_se), .QN(n544) );
  NOR2X0 U656 ( .IN1(n545), .IN2(n546), .QN(n543) );
  NOR2X0 U657 ( .IN1(n541), .IN2(n481), .QN(n546) );
  NOR2X0 U658 ( .IN1(n547), .IN2(n542), .QN(n545) );
  INVX0 U659 ( .INP(iXMIT_N44), .ZN(n547) );
  NAND2X0 U660 ( .IN1(n548), .IN2(n549), .QN(n174) );
  NAND2X0 U661 ( .IN1(n852), .IN2(test_se), .QN(n549) );
  NOR2X0 U662 ( .IN1(n550), .IN2(n551), .QN(n548) );
  NOR2X0 U663 ( .IN1(n541), .IN2(n478), .QN(n551) );
  NOR2X0 U664 ( .IN1(n552), .IN2(n542), .QN(n550) );
  NAND2X0 U665 ( .IN1(n553), .IN2(n554), .QN(n173) );
  NAND2X0 U666 ( .IN1(n853), .IN2(test_se), .QN(n554) );
  NOR2X0 U667 ( .IN1(n555), .IN2(n556), .QN(n553) );
  NOR2X0 U668 ( .IN1(n482), .IN2(n541), .QN(n556) );
  NAND2X0 U669 ( .IN1(n557), .IN2(n558), .QN(n541) );
  NAND2X0 U670 ( .IN1(n559), .IN2(n518), .QN(n558) );
  NOR2X0 U671 ( .IN1(test_se), .IN2(n560), .QN(n557) );
  INVX0 U672 ( .INP(n561), .ZN(n560) );
  NOR2X0 U673 ( .IN1(n562), .IN2(n542), .QN(n555) );
  NAND2X0 U674 ( .IN1(n563), .IN2(n559), .QN(n542) );
  INVX0 U675 ( .INP(n519), .ZN(n559) );
  NAND2X0 U676 ( .IN1(n530), .IN2(n564), .QN(n519) );
  NAND2X0 U677 ( .IN1(n565), .IN2(n566), .QN(n564) );
  NOR2X0 U678 ( .IN1(n851), .IN2(n852), .QN(n566) );
  NOR2X0 U679 ( .IN1(n853), .IN2(n482), .QN(n565) );
  INVX0 U680 ( .INP(n567), .ZN(n530) );
  NOR2X0 U681 ( .IN1(test_se), .IN2(n568), .QN(n563) );
  INVX0 U682 ( .INP(n518), .ZN(n568) );
  INVX0 U683 ( .INP(n17), .ZN(n562) );
  NAND2X0 U684 ( .IN1(n569), .IN2(n570), .QN(n172) );
  NAND2X0 U685 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n570) );
  NAND2X0 U686 ( .IN1(n571), .IN2(n512), .QN(n569) );
  NAND2X0 U687 ( .IN1(n572), .IN2(n573), .QN(n571) );
  NOR2X0 U688 ( .IN1(n574), .IN2(n575), .QN(n572) );
  NOR2X0 U689 ( .IN1(n534), .IN2(n576), .QN(n575) );
  INVX0 U690 ( .INP(xmit_dataH_7_), .ZN(n576) );
  INVX0 U691 ( .INP(n577), .ZN(n534) );
  NOR2X0 U692 ( .IN1(n465), .IN2(n577), .QN(n574) );
  NAND2X0 U693 ( .IN1(n578), .IN2(n579), .QN(n171) );
  NAND2X0 U694 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n579) );
  NAND2X0 U695 ( .IN1(n580), .IN2(n512), .QN(n578) );
  NAND2X0 U696 ( .IN1(n581), .IN2(n582), .QN(n580) );
  NAND2X0 U697 ( .IN1(xmit_dataH_6_), .IN2(n583), .QN(n582) );
  NOR2X0 U698 ( .IN1(n584), .IN2(n585), .QN(n581) );
  NOR2X0 U699 ( .IN1(n258), .IN2(n577), .QN(n585) );
  NOR2X0 U700 ( .IN1(n465), .IN2(n573), .QN(n584) );
  NAND2X0 U701 ( .IN1(n586), .IN2(n587), .QN(n170) );
  NAND2X0 U702 ( .IN1(n842), .IN2(test_se), .QN(n587) );
  NAND2X0 U703 ( .IN1(n588), .IN2(n512), .QN(n586) );
  NAND2X0 U704 ( .IN1(n589), .IN2(n590), .QN(n588) );
  NAND2X0 U705 ( .IN1(xmit_dataH_5_), .IN2(n583), .QN(n590) );
  NOR2X0 U706 ( .IN1(n591), .IN2(n592), .QN(n589) );
  NOR2X0 U707 ( .IN1(n259), .IN2(n577), .QN(n592) );
  NOR2X0 U708 ( .IN1(n258), .IN2(n573), .QN(n591) );
  NAND2X0 U709 ( .IN1(n593), .IN2(n594), .QN(n17) );
  NAND2X0 U710 ( .IN1(n847), .IN2(n595), .QN(n594) );
  INVX0 U711 ( .INP(n596), .ZN(n595) );
  NAND2X0 U712 ( .IN1(n596), .IN2(n482), .QN(n593) );
  NOR2X0 U713 ( .IN1(n597), .IN2(n478), .QN(n596) );
  NAND2X0 U714 ( .IN1(n598), .IN2(n599), .QN(n169) );
  NAND2X0 U715 ( .IN1(n843), .IN2(test_se), .QN(n599) );
  NAND2X0 U716 ( .IN1(n600), .IN2(n512), .QN(n598) );
  NAND2X0 U717 ( .IN1(n601), .IN2(n602), .QN(n600) );
  NAND2X0 U718 ( .IN1(xmit_dataH_4_), .IN2(n583), .QN(n602) );
  NOR2X0 U719 ( .IN1(n603), .IN2(n604), .QN(n601) );
  NOR2X0 U720 ( .IN1(n577), .IN2(n493), .QN(n604) );
  NOR2X0 U721 ( .IN1(n259), .IN2(n573), .QN(n603) );
  NAND2X0 U722 ( .IN1(n605), .IN2(n606), .QN(n168) );
  NAND2X0 U723 ( .IN1(n844), .IN2(test_se), .QN(n606) );
  NAND2X0 U724 ( .IN1(n607), .IN2(n512), .QN(n605) );
  NAND2X0 U725 ( .IN1(n608), .IN2(n609), .QN(n607) );
  NAND2X0 U726 ( .IN1(xmit_dataH_3_), .IN2(n583), .QN(n609) );
  NOR2X0 U727 ( .IN1(n610), .IN2(n611), .QN(n608) );
  NOR2X0 U728 ( .IN1(n577), .IN2(n494), .QN(n611) );
  NOR2X0 U729 ( .IN1(n573), .IN2(n493), .QN(n610) );
  NAND2X0 U730 ( .IN1(n612), .IN2(n613), .QN(n167) );
  NAND2X0 U731 ( .IN1(n846), .IN2(test_se), .QN(n613) );
  NAND2X0 U732 ( .IN1(n614), .IN2(n512), .QN(n612) );
  NAND2X0 U733 ( .IN1(n615), .IN2(n616), .QN(n614) );
  NAND2X0 U734 ( .IN1(xmit_dataH_2_), .IN2(n583), .QN(n616) );
  NOR2X0 U735 ( .IN1(n617), .IN2(n618), .QN(n615) );
  NOR2X0 U736 ( .IN1(n577), .IN2(n495), .QN(n618) );
  NOR2X0 U737 ( .IN1(n573), .IN2(n494), .QN(n617) );
  NAND2X0 U738 ( .IN1(n619), .IN2(n620), .QN(n166) );
  NAND2X0 U739 ( .IN1(test_se), .IN2(n498), .QN(n620) );
  NAND2X0 U740 ( .IN1(n621), .IN2(n512), .QN(n619) );
  NAND2X0 U741 ( .IN1(n622), .IN2(n623), .QN(n621) );
  NAND2X0 U742 ( .IN1(xmit_dataH_1_), .IN2(n583), .QN(n623) );
  NOR2X0 U743 ( .IN1(n624), .IN2(n625), .QN(n622) );
  NOR2X0 U744 ( .IN1(n577), .IN2(n496), .QN(n625) );
  NOR2X0 U745 ( .IN1(n573), .IN2(n495), .QN(n624) );
  NAND2X0 U746 ( .IN1(n626), .IN2(n627), .QN(n164) );
  NAND2X0 U747 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n627) );
  NAND2X0 U748 ( .IN1(n628), .IN2(n512), .QN(n626) );
  NAND2X0 U749 ( .IN1(n561), .IN2(n629), .QN(n628) );
  NAND2X0 U750 ( .IN1(n506), .IN2(n525), .QN(n629) );
  NOR2X0 U751 ( .IN1(n242), .IN2(n239), .QN(n506) );
  NAND2X0 U752 ( .IN1(n630), .IN2(n246), .QN(n561) );
  NOR2X0 U753 ( .IN1(xmitH), .IN2(iXMIT_state_2_), .QN(n630) );
  NAND2X0 U754 ( .IN1(n631), .IN2(n632), .QN(n163) );
  NOR2X0 U755 ( .IN1(n633), .IN2(n634), .QN(n631) );
  NOR2X0 U756 ( .IN1(iRECEIVER_state_0_), .IN2(n635), .QN(n634) );
  NAND2X0 U757 ( .IN1(n636), .IN2(n512), .QN(n635) );
  NAND2X0 U758 ( .IN1(n864), .IN2(n637), .QN(n636) );
  NAND2X0 U759 ( .IN1(n638), .IN2(iRECEIVER_state_1_), .QN(n637) );
  NOR2X0 U760 ( .IN1(n245), .IN2(n639), .QN(n633) );
  NOR2X0 U761 ( .IN1(test_se), .IN2(n640), .QN(n639) );
  NAND2X0 U762 ( .IN1(n641), .IN2(n642), .QN(n640) );
  NAND2X0 U763 ( .IN1(n643), .IN2(iRECEIVER_state_1_), .QN(n642) );
  NAND2X0 U764 ( .IN1(n644), .IN2(n241), .QN(n641) );
  NOR2X0 U765 ( .IN1(n864), .IN2(iRECEIVER_state_2_), .QN(n644) );
  NAND2X0 U766 ( .IN1(n645), .IN2(n646), .QN(n162) );
  NAND2X0 U767 ( .IN1(n857), .IN2(test_se), .QN(n646) );
  NAND2X0 U768 ( .IN1(n647), .IN2(n512), .QN(n645) );
  NAND2X0 U769 ( .IN1(n648), .IN2(n238), .QN(n647) );
  NOR2X0 U770 ( .IN1(n649), .IN2(n650), .QN(n648) );
  NOR2X0 U771 ( .IN1(n241), .IN2(n651), .QN(n650) );
  NOR2X0 U772 ( .IN1(n652), .IN2(n653), .QN(n651) );
  INVX0 U773 ( .INP(n638), .ZN(n653) );
  NOR2X0 U774 ( .IN1(n245), .IN2(n654), .QN(n652) );
  NOR2X0 U775 ( .IN1(n655), .IN2(n643), .QN(n654) );
  NOR2X0 U776 ( .IN1(n656), .IN2(n657), .QN(n655) );
  NAND2X0 U777 ( .IN1(n857), .IN2(n483), .QN(n657) );
  NAND2X0 U778 ( .IN1(n473), .IN2(n476), .QN(n656) );
  NOR2X0 U779 ( .IN1(n477), .IN2(iRECEIVER_state_1_), .QN(n649) );
  NAND2X0 U780 ( .IN1(n658), .IN2(n659), .QN(n161) );
  NAND2X0 U781 ( .IN1(n660), .IN2(n480), .QN(n659) );
  NAND2X0 U782 ( .IN1(test_si), .IN2(test_se), .QN(n658) );
  INVX0 U783 ( .INP(n661), .ZN(n160) );
  NOR2X0 U784 ( .IN1(n662), .IN2(n663), .QN(n661) );
  NOR2X0 U785 ( .IN1(n480), .IN2(n664), .QN(n663) );
  NOR2X0 U786 ( .IN1(test_se), .IN2(n665), .QN(n664) );
  NOR2X0 U787 ( .IN1(n666), .IN2(n855), .QN(n665) );
  NOR2X0 U788 ( .IN1(n667), .IN2(n854), .QN(n662) );
  NAND2X0 U789 ( .IN1(n855), .IN2(n660), .QN(n667) );
  INVX0 U790 ( .INP(n552), .ZN(n16) );
  NOR2X0 U791 ( .IN1(n668), .IN2(n669), .QN(n552) );
  NOR2X0 U792 ( .IN1(n478), .IN2(n670), .QN(n669) );
  NOR2X0 U793 ( .IN1(n597), .IN2(n853), .QN(n668) );
  INVX0 U794 ( .INP(n670), .ZN(n597) );
  NOR2X0 U795 ( .IN1(n481), .IN2(n474), .QN(n670) );
  NAND2X0 U796 ( .IN1(n671), .IN2(n672), .QN(n159) );
  NAND2X0 U797 ( .IN1(n673), .IN2(n660), .QN(n672) );
  NOR2X0 U798 ( .IN1(n674), .IN2(n675), .QN(n673) );
  NOR2X0 U799 ( .IN1(n676), .IN2(n849), .QN(n675) );
  NOR2X0 U800 ( .IN1(n472), .IN2(n480), .QN(n676) );
  NAND2X0 U801 ( .IN1(n855), .IN2(test_se), .QN(n671) );
  NAND2X0 U802 ( .IN1(n677), .IN2(n678), .QN(n157) );
  NAND2X0 U803 ( .IN1(n660), .IN2(n679), .QN(n678) );
  NAND2X0 U804 ( .IN1(n680), .IN2(n681), .QN(n679) );
  NAND2X0 U805 ( .IN1(n856), .IN2(n682), .QN(n681) );
  NAND2X0 U806 ( .IN1(n674), .IN2(n497), .QN(n680) );
  INVX0 U807 ( .INP(n682), .ZN(n674) );
  NAND2X0 U808 ( .IN1(n683), .IN2(n854), .QN(n682) );
  NOR2X0 U809 ( .IN1(n479), .IN2(n472), .QN(n683) );
  NOR2X0 U810 ( .IN1(n666), .IN2(test_se), .QN(n660) );
  NAND2X0 U811 ( .IN1(n684), .IN2(n685), .QN(n666) );
  NOR2X0 U812 ( .IN1(n686), .IN2(n687), .QN(n685) );
  NOR2X0 U813 ( .IN1(iRECEIVER_state_0_), .IN2(n638), .QN(n687) );
  NAND2X0 U814 ( .IN1(n688), .IN2(n689), .QN(n638) );
  NOR2X0 U815 ( .IN1(n854), .IN2(n855), .QN(n689) );
  NOR2X0 U816 ( .IN1(n856), .IN2(n479), .QN(n688) );
  NOR2X0 U817 ( .IN1(n245), .IN2(n643), .QN(n686) );
  NOR2X0 U818 ( .IN1(n241), .IN2(iRECEIVER_state_2_), .QN(n684) );
  NAND2X0 U819 ( .IN1(n849), .IN2(test_se), .QN(n677) );
  NAND2X0 U820 ( .IN1(n690), .IN2(n691), .QN(n156) );
  NAND2X0 U821 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .QN(n691) );
  INVX0 U822 ( .INP(iRECEIVER_next_state_2_), .ZN(n690) );
  NAND2X0 U823 ( .IN1(n692), .IN2(n693), .QN(n155) );
  NAND2X0 U824 ( .IN1(n863), .IN2(test_se), .QN(n693) );
  NAND2X0 U825 ( .IN1(n694), .IN2(n512), .QN(n692) );
  NAND2X0 U826 ( .IN1(n695), .IN2(n696), .QN(n694) );
  NAND2X0 U827 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .QN(n696)
         );
  NAND2X0 U828 ( .IN1(n697), .IN2(n698), .QN(n154) );
  NAND2X0 U829 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .QN(n698) );
  NOR2X0 U830 ( .IN1(n699), .IN2(n700), .QN(n697) );
  NOR2X0 U831 ( .IN1(n477), .IN2(n632), .QN(n700) );
  NOR2X0 U832 ( .IN1(n701), .IN2(n485), .QN(n699) );
  NAND2X0 U833 ( .IN1(n702), .IN2(n703), .QN(n153) );
  NAND2X0 U834 ( .IN1(rec_dataH_rec_7), .IN2(n512), .QN(n703) );
  NAND2X0 U835 ( .IN1(rec_dataH_temp_6_), .IN2(test_se), .QN(n702) );
  NAND2X0 U836 ( .IN1(n704), .IN2(n705), .QN(n152) );
  NAND2X0 U837 ( .IN1(test_so), .IN2(n512), .QN(n705) );
  NAND2X0 U838 ( .IN1(rec_dataH_6_), .IN2(test_se), .QN(n704) );
  NAND2X0 U839 ( .IN1(n706), .IN2(n707), .QN(n150) );
  NAND2X0 U840 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .QN(n707) );
  NOR2X0 U841 ( .IN1(n708), .IN2(n709), .QN(n706) );
  NOR2X0 U842 ( .IN1(n485), .IN2(n632), .QN(n709) );
  NOR2X0 U843 ( .IN1(n701), .IN2(n487), .QN(n708) );
  NAND2X0 U844 ( .IN1(n710), .IN2(n711), .QN(n149) );
  NAND2X0 U845 ( .IN1(rec_dataH_rec_6), .IN2(n512), .QN(n711) );
  NAND2X0 U846 ( .IN1(rec_dataH_temp_5_), .IN2(test_se), .QN(n710) );
  NAND2X0 U847 ( .IN1(n712), .IN2(n713), .QN(n148) );
  NAND2X0 U848 ( .IN1(rec_dataH_temp_6_), .IN2(n512), .QN(n713) );
  NAND2X0 U849 ( .IN1(rec_dataH_5_), .IN2(test_se), .QN(n712) );
  NAND2X0 U850 ( .IN1(n714), .IN2(n715), .QN(n147) );
  NAND2X0 U851 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .QN(n715) );
  NOR2X0 U852 ( .IN1(n716), .IN2(n717), .QN(n714) );
  NOR2X0 U853 ( .IN1(n632), .IN2(n487), .QN(n717) );
  NOR2X0 U854 ( .IN1(n701), .IN2(n488), .QN(n716) );
  NAND2X0 U855 ( .IN1(n718), .IN2(n719), .QN(n146) );
  NAND2X0 U856 ( .IN1(rec_dataH_rec_5), .IN2(n512), .QN(n719) );
  NAND2X0 U857 ( .IN1(rec_dataH_temp_4_), .IN2(test_se), .QN(n718) );
  NAND2X0 U858 ( .IN1(n720), .IN2(n721), .QN(n145) );
  NAND2X0 U859 ( .IN1(rec_dataH_temp_5_), .IN2(n512), .QN(n721) );
  NAND2X0 U860 ( .IN1(rec_dataH_4_), .IN2(test_se), .QN(n720) );
  NAND2X0 U861 ( .IN1(n722), .IN2(n723), .QN(n143) );
  NAND2X0 U862 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .QN(n723) );
  NOR2X0 U863 ( .IN1(n724), .IN2(n725), .QN(n722) );
  NOR2X0 U864 ( .IN1(n632), .IN2(n488), .QN(n725) );
  NOR2X0 U865 ( .IN1(n701), .IN2(n489), .QN(n724) );
  NAND2X0 U866 ( .IN1(n726), .IN2(n727), .QN(n142) );
  NAND2X0 U867 ( .IN1(rec_dataH_rec_4), .IN2(n512), .QN(n727) );
  NAND2X0 U868 ( .IN1(rec_dataH_temp_3_), .IN2(test_se), .QN(n726) );
  NAND2X0 U869 ( .IN1(n728), .IN2(n729), .QN(n141) );
  NAND2X0 U870 ( .IN1(rec_dataH_temp_4_), .IN2(n512), .QN(n729) );
  NAND2X0 U871 ( .IN1(rec_dataH_3_), .IN2(test_se), .QN(n728) );
  NAND2X0 U872 ( .IN1(n730), .IN2(n731), .QN(n140) );
  NAND2X0 U873 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .QN(n731) );
  NOR2X0 U874 ( .IN1(n732), .IN2(n733), .QN(n730) );
  NOR2X0 U875 ( .IN1(n632), .IN2(n489), .QN(n733) );
  NOR2X0 U876 ( .IN1(n701), .IN2(n490), .QN(n732) );
  NAND2X0 U877 ( .IN1(n734), .IN2(n735), .QN(n139) );
  NAND2X0 U878 ( .IN1(rec_dataH_rec_3), .IN2(n512), .QN(n735) );
  NAND2X0 U879 ( .IN1(rec_dataH_temp_2_), .IN2(test_se), .QN(n734) );
  NAND2X0 U880 ( .IN1(n736), .IN2(n737), .QN(n138) );
  NAND2X0 U881 ( .IN1(rec_dataH_temp_3_), .IN2(n512), .QN(n737) );
  NAND2X0 U882 ( .IN1(rec_dataH_2_), .IN2(test_se), .QN(n736) );
  NAND2X0 U883 ( .IN1(n738), .IN2(n739), .QN(n136) );
  NAND2X0 U884 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .QN(n739) );
  NOR2X0 U885 ( .IN1(n740), .IN2(n741), .QN(n738) );
  NOR2X0 U886 ( .IN1(n632), .IN2(n490), .QN(n741) );
  NOR2X0 U887 ( .IN1(n701), .IN2(n491), .QN(n740) );
  NAND2X0 U888 ( .IN1(n742), .IN2(n743), .QN(n135) );
  NAND2X0 U889 ( .IN1(rec_dataH_rec_2), .IN2(n512), .QN(n743) );
  NAND2X0 U890 ( .IN1(rec_dataH_temp_1_), .IN2(test_se), .QN(n742) );
  NAND2X0 U891 ( .IN1(n744), .IN2(n745), .QN(n134) );
  NAND2X0 U892 ( .IN1(rec_dataH_temp_2_), .IN2(n512), .QN(n745) );
  NAND2X0 U893 ( .IN1(rec_dataH_1_), .IN2(test_se), .QN(n744) );
  NAND2X0 U894 ( .IN1(n746), .IN2(n747), .QN(n133) );
  NAND2X0 U895 ( .IN1(rec_dataH_rec_0), .IN2(test_se), .QN(n747) );
  NOR2X0 U896 ( .IN1(n748), .IN2(n749), .QN(n746) );
  NOR2X0 U897 ( .IN1(n632), .IN2(n491), .QN(n749) );
  NOR2X0 U898 ( .IN1(n701), .IN2(n492), .QN(n748) );
  NAND2X0 U899 ( .IN1(n750), .IN2(n751), .QN(n132) );
  NAND2X0 U900 ( .IN1(rec_dataH_rec_1), .IN2(n512), .QN(n751) );
  NAND2X0 U901 ( .IN1(rec_dataH_temp_0_), .IN2(test_se), .QN(n750) );
  NAND2X0 U902 ( .IN1(n752), .IN2(n753), .QN(n131) );
  NAND2X0 U903 ( .IN1(rec_dataH_temp_1_), .IN2(n512), .QN(n753) );
  NAND2X0 U904 ( .IN1(rec_dataH_0_), .IN2(test_se), .QN(n752) );
  NAND2X0 U905 ( .IN1(n754), .IN2(n755), .QN(n129) );
  NAND2X0 U906 ( .IN1(n856), .IN2(test_se), .QN(n755) );
  NOR2X0 U907 ( .IN1(n756), .IN2(n757), .QN(n754) );
  NOR2X0 U908 ( .IN1(n632), .IN2(n492), .QN(n757) );
  NOR2X0 U909 ( .IN1(n701), .IN2(n501), .QN(n756) );
  NAND2X0 U910 ( .IN1(n758), .IN2(n759), .QN(n128) );
  NAND2X0 U911 ( .IN1(rec_dataH_rec_0), .IN2(n512), .QN(n759) );
  NAND2X0 U912 ( .IN1(rec_dataH_7_), .IN2(test_se), .QN(n758) );
  NAND2X0 U913 ( .IN1(n760), .IN2(n761), .QN(n127) );
  NAND2X0 U914 ( .IN1(rec_dataH_temp_0_), .IN2(n512), .QN(n761) );
  NAND2X0 U915 ( .IN1(xmit_doneH_temp), .IN2(test_se), .QN(n760) );
  NAND2X0 U916 ( .IN1(n762), .IN2(n763), .QN(n126) );
  NAND2X0 U917 ( .IN1(n860), .IN2(test_se), .QN(n763) );
  NOR2X0 U918 ( .IN1(n764), .IN2(n765), .QN(n762) );
  NOR2X0 U919 ( .IN1(n857), .IN2(n766), .QN(n765) );
  NAND2X0 U920 ( .IN1(n767), .IN2(n858), .QN(n766) );
  NOR2X0 U921 ( .IN1(n632), .IN2(n768), .QN(n767) );
  INVX0 U922 ( .INP(n769), .ZN(n768) );
  NOR2X0 U923 ( .IN1(n770), .IN2(n500), .QN(n764) );
  NOR2X0 U924 ( .IN1(n771), .IN2(n772), .QN(n770) );
  NOR2X0 U925 ( .IN1(n769), .IN2(n632), .QN(n771) );
  NOR2X0 U926 ( .IN1(n473), .IN2(n483), .QN(n769) );
  NAND2X0 U927 ( .IN1(n773), .IN2(n774), .QN(n125) );
  NAND2X0 U928 ( .IN1(test_se), .IN2(rec_readyH_temp), .QN(n774) );
  NOR2X0 U929 ( .IN1(n775), .IN2(n776), .QN(n773) );
  NOR2X0 U930 ( .IN1(n476), .IN2(n777), .QN(n776) );
  NOR2X0 U931 ( .IN1(n858), .IN2(n632), .QN(n775) );
  NAND2X0 U932 ( .IN1(n778), .IN2(n779), .QN(n124) );
  NAND2X0 U933 ( .IN1(n858), .IN2(n780), .QN(n779) );
  NAND2X0 U934 ( .IN1(n512), .IN2(n781), .QN(n780) );
  NAND2X0 U935 ( .IN1(n782), .IN2(n473), .QN(n781) );
  NAND2X0 U936 ( .IN1(n859), .IN2(n772), .QN(n778) );
  NAND2X0 U937 ( .IN1(n777), .IN2(n783), .QN(n772) );
  NAND2X0 U938 ( .IN1(n784), .IN2(n476), .QN(n783) );
  NAND2X0 U939 ( .IN1(n785), .IN2(n786), .QN(n122) );
  NAND2X0 U940 ( .IN1(n860), .IN2(n787), .QN(n786) );
  NAND2X0 U941 ( .IN1(n777), .IN2(n788), .QN(n787) );
  NAND2X0 U942 ( .IN1(n784), .IN2(n473), .QN(n788) );
  INVX0 U943 ( .INP(n632), .ZN(n784) );
  NAND2X0 U944 ( .IN1(n782), .IN2(n512), .QN(n632) );
  NAND2X0 U945 ( .IN1(n789), .IN2(n695), .QN(n777) );
  NAND2X0 U946 ( .IN1(n790), .IN2(n241), .QN(n695) );
  NOR2X0 U947 ( .IN1(n477), .IN2(iRECEIVER_state_2_), .QN(n790) );
  INVX0 U948 ( .INP(n701), .ZN(n789) );
  NAND2X0 U949 ( .IN1(n512), .IN2(n791), .QN(n701) );
  NAND2X0 U950 ( .IN1(n859), .IN2(n792), .QN(n785) );
  NAND2X0 U951 ( .IN1(n512), .IN2(n793), .QN(n792) );
  NAND2X0 U952 ( .IN1(n782), .IN2(n794), .QN(n793) );
  NAND2X0 U953 ( .IN1(n795), .IN2(n796), .QN(n794) );
  NAND2X0 U954 ( .IN1(n858), .IN2(n483), .QN(n796) );
  NAND2X0 U955 ( .IN1(n860), .IN2(n476), .QN(n795) );
  INVX0 U956 ( .INP(n791), .ZN(n782) );
  NAND2X0 U957 ( .IN1(n245), .IN2(iRECEIVER_state_2_), .QN(n791) );
  NAND2X0 U958 ( .IN1(n797), .IN2(n798), .QN(n121) );
  NAND2X0 U959 ( .IN1(iXMIT_N29), .IN2(n512), .QN(n798) );
  NAND2X0 U960 ( .IN1(test_se), .IN2(n850), .QN(n797) );
  NAND2X0 U961 ( .IN1(n799), .IN2(n800), .QN(n120) );
  NAND2X0 U962 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .QN(n800) );
  NAND2X0 U963 ( .IN1(iXMIT_N26), .IN2(n512), .QN(n799) );
  NAND2X0 U964 ( .IN1(n801), .IN2(n802), .QN(n119) );
  NOR2X0 U965 ( .IN1(n803), .IN2(n804), .QN(n801) );
  NOR2X0 U966 ( .IN1(n499), .IN2(n512), .QN(n804) );
  NOR2X0 U967 ( .IN1(test_se), .IN2(n805), .QN(n803) );
  NAND2X0 U968 ( .IN1(n806), .IN2(n807), .QN(n118) );
  NAND2X0 U969 ( .IN1(test_se), .IN2(iXMIT_state_2_), .QN(n807) );
  NAND2X0 U970 ( .IN1(n808), .IN2(n512), .QN(n806) );
  NAND2X0 U971 ( .IN1(n809), .IN2(n810), .QN(n808) );
  NAND2X0 U972 ( .IN1(xmit_dataH_0_), .IN2(n583), .QN(n810) );
  INVX0 U973 ( .INP(n811), .ZN(n583) );
  NOR2X0 U974 ( .IN1(n812), .IN2(n813), .QN(n809) );
  NOR2X0 U975 ( .IN1(n845), .IN2(n577), .QN(n813) );
  NOR2X0 U976 ( .IN1(n573), .IN2(n496), .QN(n812) );
  NAND2X0 U977 ( .IN1(n811), .IN2(n577), .QN(n573) );
  NAND2X0 U978 ( .IN1(n811), .IN2(n814), .QN(n577) );
  NAND2X0 U979 ( .IN1(n239), .IN2(iXMIT_state_2_), .QN(n814) );
  NAND2X0 U980 ( .IN1(n505), .IN2(xmitH), .QN(n811) );
  NOR2X0 U981 ( .IN1(iXMIT_state_2_), .IN2(iXMIT_state_1_), .QN(n505) );
  NAND2X0 U982 ( .IN1(n815), .IN2(n816), .QN(n117) );
  NAND2X0 U983 ( .IN1(uart_REC_dataH), .IN2(n512), .QN(n816) );
  NAND2X0 U984 ( .IN1(n864), .IN2(test_se), .QN(n815) );
  NAND2X0 U985 ( .IN1(n817), .IN2(n818), .QN(n115) );
  NAND2X0 U986 ( .IN1(n863), .IN2(n512), .QN(n818) );
  INVX0 U987 ( .INP(test_se), .ZN(n512) );
  NAND2X0 U988 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .QN(n817) );
  NAND2X0 U989 ( .IN1(n819), .IN2(n820), .QN(iXMIT_N44) );
  NAND2X0 U990 ( .IN1(n851), .IN2(n481), .QN(n820) );
  NAND2X0 U991 ( .IN1(n852), .IN2(n474), .QN(n819) );
  INVX0 U992 ( .INP(n821), .ZN(iXMIT_N29) );
  NAND2X0 U993 ( .IN1(n4), .IN2(n822), .QN(n821) );
  NOR2X0 U994 ( .IN1(n525), .IN2(n823), .QN(n4) );
  NOR2X0 U995 ( .IN1(n824), .IN2(n848), .QN(n823) );
  INVX0 U996 ( .INP(n825), .ZN(n824) );
  NOR2X0 U997 ( .IN1(n826), .IN2(n827), .QN(iXMIT_N28) );
  NAND2X0 U998 ( .IN1(n802), .IN2(n805), .QN(iXMIT_N27) );
  NAND2X0 U999 ( .IN1(iXMIT_N26), .IN2(n862), .QN(n805) );
  NAND2X0 U1000 ( .IN1(n828), .IN2(n861), .QN(n802) );
  NOR2X0 U1001 ( .IN1(n862), .IN2(n827), .QN(n828) );
  NOR2X0 U1002 ( .IN1(n827), .IN2(n861), .QN(iXMIT_N26) );
  INVX0 U1003 ( .INP(n822), .ZN(n827) );
  NAND2X0 U1004 ( .IN1(n829), .IN2(n830), .QN(n822) );
  NAND2X0 U1005 ( .IN1(n518), .IN2(n567), .QN(n830) );
  NAND2X0 U1006 ( .IN1(n831), .IN2(n832), .QN(n567) );
  NOR2X0 U1007 ( .IN1(n861), .IN2(n484), .QN(n832) );
  NOR2X0 U1008 ( .IN1(n475), .IN2(n486), .QN(n831) );
  NOR2X0 U1009 ( .IN1(n239), .IN2(n246), .QN(n518) );
  NOR2X0 U1010 ( .IN1(n833), .IN2(n834), .QN(n829) );
  NOR2X0 U1011 ( .IN1(n239), .IN2(n835), .QN(n834) );
  INVX0 U1012 ( .INP(n520), .ZN(n835) );
  NOR2X0 U1013 ( .IN1(n242), .IN2(n525), .QN(n520) );
  NOR2X0 U1014 ( .IN1(n825), .IN2(n486), .QN(n525) );
  NOR2X0 U1015 ( .IN1(n246), .IN2(iXMIT_state_0_), .QN(n833) );
  INVX0 U1016 ( .INP(n826), .ZN(iXMIT_N24) );
  NAND2X0 U1017 ( .IN1(n836), .IN2(n825), .QN(n826) );
  NAND2X0 U1018 ( .IN1(n837), .IN2(n861), .QN(n825) );
  NOR2X0 U1019 ( .IN1(n484), .IN2(n475), .QN(n837) );
  NAND2X0 U1020 ( .IN1(n475), .IN2(n838), .QN(n836) );
  NAND2X0 U1021 ( .IN1(n861), .IN2(n862), .QN(n838) );
  NOR2X0 U1022 ( .IN1(n839), .IN2(n643), .QN(iRECEIVER_next_state_2_) );
  NAND2X0 U1023 ( .IN1(n840), .IN2(n841), .QN(n643) );
  NOR2X0 U1024 ( .IN1(n854), .IN2(n479), .QN(n841) );
  NOR2X0 U1025 ( .IN1(n497), .IN2(n472), .QN(n840) );
  NAND2X0 U1026 ( .IN1(iRECEIVER_state_0_), .IN2(iRECEIVER_state_1_), .QN(n839) );
endmodule

