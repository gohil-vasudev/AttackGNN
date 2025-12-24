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
  wire   iCTRL, iXMIT_state_1_temp, iXMIT_state_1_, iXMIT_CRTL, iRECEIVER_CTRL,
         iRECEIVER_state_CTRL, iRECEIVER_N_CTRL_1_, iRECEIVER_N_CTRL_2_,
         iRECEIVER_bitCell_CTRL, iRECEIVER_N18, iRECEIVER_N17,
         iRECEIVER_bitCell_cntrH_0_, iRECEIVER_bitCell_cntrH_1_, iRECEIVER_N22,
         iRECEIVER_N21, iRECEIVER_N20, iRECEIVER_N19, iRECEIVER_N28,
         iRECEIVER_N27, iRECEIVER_N23, iRECEIVER_next_state_2_,
         iRECEIVER_state_0_, iRECEIVER_state_1_, iRECEIVER_state_2_,
         iXMIT_N_CTRL_1_, iXMIT_N_CTRL_2_, iXMIT_xmit_CTRL, iXMIT_N24,
         iXMIT_xmit_ShiftRegH_7_, iXMIT_xmit_ShiftRegH_6_,
         iXMIT_xmit_ShiftRegH_5_, iXMIT_N27, iXMIT_N26, iXMIT_N25, n401, n239,
         n242, n246, n255, n241, n244, n245, n238, n258, n259, rec_dataH_rec_7,
         rec_dataH_rec_6, rec_dataH_rec_5, rec_dataH_rec_4, rec_dataH_rec_3,
         rec_dataH_rec_2, rec_dataH_rec_1, rec_dataH_rec_0, n182, n181, n180,
         n179, n177, n176, n175, n174, n173, n172, n171, n170, n169, n168,
         n167, n166, n164, n163, n162, n161, n160, n159, n157, n156, n155,
         test_point_DOUT, rec_dataH_temp_6_, rec_dataH_temp_5_,
         rec_dataH_temp_4_, rec_dataH_temp_3_, rec_dataH_temp_2_,
         rec_dataH_temp_1_, rec_dataH_temp_0_, n154, n153, n152, n150, n149,
         n148, n147, n146, n145, n143, n142, n141, n140, n139, n138, n136,
         n135, n134, n133, n132, n131, n129, n128, n127, n126, n125, n124,
         n122, n121, n120, n119, n118, n5, n6, n55, n447, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
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
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817;

  AND2X4 TrojanU305 ( .IN1(iCTRL), .IN2(iXMIT_state_1_temp), .Q(iXMIT_state_1_) );
  OR2X1 TrojanU302 ( .IN1(iXMIT_CRTL), .IN2(iRECEIVER_CTRL), .Q(iCTRL) );
  OR4X4 TrojanU301 ( .IN1(iRECEIVER_state_CTRL), .IN2(iRECEIVER_N_CTRL_1_), 
        .IN3(iRECEIVER_N_CTRL_2_), .IN4(iRECEIVER_bitCell_CTRL), .Q(
        iRECEIVER_CTRL) );
  NAND4X1 TrojanU300 ( .IN1(iRECEIVER_N18), .IN2(iRECEIVER_N17), .IN3(
        iRECEIVER_bitCell_cntrH_0_), .IN4(iRECEIVER_bitCell_cntrH_1_), .QN(
        iRECEIVER_bitCell_CTRL) );
  NAND4X1 TrojanU299 ( .IN1(iRECEIVER_N22), .IN2(iRECEIVER_N21), .IN3(
        iRECEIVER_N20), .IN4(iRECEIVER_N19), .QN(iRECEIVER_N_CTRL_2_) );
  NAND4X1 TrojanU298 ( .IN1(iRECEIVER_N28), .IN2(iRECEIVER_N27), .IN3(n55), 
        .IN4(iRECEIVER_N23), .QN(iRECEIVER_N_CTRL_1_) );
  NAND4X1 TrojanU297 ( .IN1(iRECEIVER_next_state_2_), .IN2(iRECEIVER_state_0_), 
        .IN3(iRECEIVER_state_1_), .IN4(iRECEIVER_state_2_), .QN(
        iRECEIVER_state_CTRL) );
  OR4X4 TrojanU296 ( .IN1(1'b0), .IN2(iXMIT_N_CTRL_1_), .IN3(iXMIT_N_CTRL_2_), 
        .IN4(iXMIT_xmit_CTRL), .Q(iXMIT_CRTL) );
  NAND4X1 TrojanU295 ( .IN1(iXMIT_N24), .IN2(iXMIT_xmit_ShiftRegH_7_), .IN3(
        iXMIT_xmit_ShiftRegH_6_), .IN4(iXMIT_xmit_ShiftRegH_5_), .QN(
        iXMIT_xmit_CTRL) );
  NAND4X1 TrojanU294 ( .IN1(n5), .IN2(iXMIT_N27), .IN3(iXMIT_N26), .IN4(
        iXMIT_N25), .QN(iXMIT_N_CTRL_2_) );
  NAND4X1 TrojanU293 ( .IN1(n401), .IN2(n239), .IN3(n242), .IN4(n246), .QN(
        iXMIT_N_CTRL_1_) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n182), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n795), .QN(n457) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n181), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n796), .QN(n239) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n180), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n797), .QN(n242) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n179), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_1_temp), .QN(n246) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n6), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n798) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n177), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n799) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n176), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n800), .QN(n472) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n175), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n801), .QN(n456) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n174), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_), .QN(n447) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n173), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_), .QN(n258) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n172), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_), .QN(n259) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n171), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n802), .QN(n467) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n170), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n803), .QN(n468) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n804), .QN(n469) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n805), .QN(n470) );
  DFFARX1 iXMIT_xmit_doneH_reg ( .D(n167), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(xmit_doneH) );
  DFFARX1 iRECEIVER_state_reg_1_ ( .D(n166), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_1_), .QN(n241) );
  DFFASX1 iRECEIVER_state_reg_0_ ( .D(n164), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(iRECEIVER_state_0_), .QN(n245) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(n163), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iRECEIVER_bitCell_cntrH_0_), .QN(n255) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(n162), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iRECEIVER_bitCell_cntrH_1_), .QN(n244) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(n161), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n806) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n160), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n817), .QN(n458) );
  DFFARX1 iRECEIVER_state_reg_2_ ( .D(n159), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_2_), .QN(n238) );
  DFFARX1 iRECEIVER_rec_readyH_reg ( .D(n157), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(rec_readyH) );
  DFFARX1 iRECEIVER_par_dataH_reg_7_ ( .D(n156), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_7), .QN(n460) );
  DFFARX1 rec_dataH_temp_reg_7_ ( .D(n155), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(test_so) );
  DFFARX1 rec_dataH_reg_7_ ( .D(n154), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_7_) );
  DFFARX1 iRECEIVER_par_dataH_reg_6_ ( .D(n153), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_6), .QN(n461) );
  DFFARX1 rec_dataH_temp_reg_6_ ( .D(n152), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_6_) );
  DFFARX1 rec_dataH_reg_6_ ( .D(n150), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_6_) );
  DFFARX1 iRECEIVER_par_dataH_reg_5_ ( .D(n149), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_5), .QN(n462) );
  DFFARX1 rec_dataH_temp_reg_5_ ( .D(n148), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_5_) );
  DFFARX1 rec_dataH_reg_5_ ( .D(n147), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_5_) );
  DFFARX1 iRECEIVER_par_dataH_reg_4_ ( .D(n146), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_4), .QN(n463) );
  DFFARX1 rec_dataH_temp_reg_4_ ( .D(n145), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_4_) );
  DFFARX1 rec_dataH_reg_4_ ( .D(n143), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_4_) );
  DFFARX1 iRECEIVER_par_dataH_reg_3_ ( .D(n142), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_3), .QN(n464) );
  DFFARX1 rec_dataH_temp_reg_3_ ( .D(n141), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_3_) );
  DFFARX1 rec_dataH_reg_3_ ( .D(n140), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_3_) );
  DFFARX1 iRECEIVER_par_dataH_reg_2_ ( .D(n139), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_2), .QN(n465) );
  DFFARX1 rec_dataH_temp_reg_2_ ( .D(n138), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_2_) );
  DFFARX1 rec_dataH_reg_2_ ( .D(n136), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_2_) );
  DFFARX1 iRECEIVER_par_dataH_reg_1_ ( .D(n135), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_1), .QN(n466) );
  DFFARX1 rec_dataH_temp_reg_1_ ( .D(n134), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_1_) );
  DFFARX1 rec_dataH_reg_1_ ( .D(n133), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_1_) );
  DFFARX1 iRECEIVER_par_dataH_reg_0_ ( .D(n132), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_0), .QN(n473) );
  DFFARX1 rec_dataH_temp_reg_0_ ( .D(n131), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_0_) );
  DFFARX1 rec_dataH_reg_0_ ( .D(n129), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_0_) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_3_ ( .D(n128), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n814), .QN(n455) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n127), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n815), .QN(n459) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n126), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n816), .QN(n454) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n125), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n807), .QN(n452) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n124), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n813) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n122), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n808), .QN(n471) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n121), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n812) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n120), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n474), .QN(n809) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n119), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n810) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n118), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n811), .QN(n453) );
  DFFARX1 TrojaniDatasend_reg_2_ ( .D(n182), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .QN(n401) );
  NAND2X0 U604 ( .IN1(n475), .IN2(n476), .QN(uart_XMIT_dataH) );
  INVX0 U605 ( .INP(n477), .ZN(n476) );
  NOR2X0 U606 ( .IN1(n797), .IN2(iXMIT_state_1_), .QN(n477) );
  NOR2X0 U607 ( .IN1(n478), .IN2(n479), .QN(n475) );
  NOR2X0 U608 ( .IN1(n809), .IN2(n480), .QN(n479) );
  NOR2X0 U609 ( .IN1(n797), .IN2(n796), .QN(n480) );
  NAND2X0 U610 ( .IN1(n481), .IN2(n482), .QN(test_point_DOUT) );
  NAND2X0 U611 ( .IN1(rec_readyH), .IN2(n483), .QN(n482) );
  INVX0 U612 ( .INP(test_mode), .ZN(n483) );
  NAND2X0 U613 ( .IN1(sys_clk), .IN2(test_mode), .QN(n481) );
  NAND2X0 U614 ( .IN1(n484), .IN2(n485), .QN(n6) );
  NAND2X0 U615 ( .IN1(test_se), .IN2(n813), .QN(n485) );
  NAND2X0 U616 ( .IN1(n486), .IN2(n487), .QN(n484) );
  NAND2X0 U617 ( .IN1(n488), .IN2(n489), .QN(n486) );
  NAND2X0 U618 ( .IN1(n798), .IN2(n490), .QN(n489) );
  NAND2X0 U619 ( .IN1(n491), .IN2(n492), .QN(n182) );
  NAND2X0 U620 ( .IN1(n5), .IN2(n487), .QN(n492) );
  NOR2X0 U621 ( .IN1(n493), .IN2(n494), .QN(n5) );
  INVX0 U622 ( .INP(iXMIT_N24), .ZN(n493) );
  NAND2X0 U623 ( .IN1(test_se), .IN2(n812), .QN(n491) );
  NAND2X0 U624 ( .IN1(n495), .IN2(n496), .QN(n181) );
  NAND2X0 U625 ( .IN1(test_se), .IN2(n801), .QN(n496) );
  NAND2X0 U626 ( .IN1(n497), .IN2(n487), .QN(n495) );
  NAND2X0 U627 ( .IN1(n498), .IN2(n499), .QN(n497) );
  NAND2X0 U628 ( .IN1(n797), .IN2(n500), .QN(n499) );
  NOR2X0 U629 ( .IN1(n501), .IN2(n502), .QN(n498) );
  NOR2X0 U630 ( .IN1(n239), .IN2(n503), .QN(n502) );
  NAND2X0 U631 ( .IN1(n504), .IN2(iXMIT_state_1_temp), .QN(n503) );
  NOR2X0 U632 ( .IN1(n796), .IN2(n505), .QN(n501) );
  NOR2X0 U633 ( .IN1(n506), .IN2(n797), .QN(n505) );
  NOR2X0 U634 ( .IN1(n246), .IN2(n500), .QN(n506) );
  NAND2X0 U635 ( .IN1(n507), .IN2(n508), .QN(n180) );
  NAND2X0 U636 ( .IN1(n509), .IN2(n478), .QN(n508) );
  NOR2X0 U637 ( .IN1(test_se), .IN2(n510), .QN(n509) );
  NAND2X0 U638 ( .IN1(n511), .IN2(iXMIT_state_1_temp), .QN(n507) );
  NAND2X0 U639 ( .IN1(n487), .IN2(n512), .QN(n511) );
  NAND2X0 U640 ( .IN1(n513), .IN2(n514), .QN(n179) );
  NAND2X0 U641 ( .IN1(test_se), .IN2(n796), .QN(n514) );
  NAND2X0 U642 ( .IN1(n515), .IN2(n487), .QN(n513) );
  NAND2X0 U643 ( .IN1(n516), .IN2(n517), .QN(n515) );
  NAND2X0 U644 ( .IN1(n518), .IN2(n519), .QN(n177) );
  NAND2X0 U645 ( .IN1(n520), .IN2(n799), .QN(n519) );
  NOR2X0 U646 ( .IN1(test_se), .IN2(n521), .QN(n520) );
  NOR2X0 U647 ( .IN1(n522), .IN2(n490), .QN(n521) );
  NAND2X0 U648 ( .IN1(n798), .IN2(n523), .QN(n518) );
  INVX0 U649 ( .INP(n524), .ZN(n523) );
  NOR2X0 U650 ( .IN1(test_se), .IN2(n525), .QN(n524) );
  NAND2X0 U651 ( .IN1(n526), .IN2(n527), .QN(n176) );
  NAND2X0 U652 ( .IN1(n528), .IN2(n800), .QN(n527) );
  NOR2X0 U653 ( .IN1(test_se), .IN2(n529), .QN(n528) );
  NOR2X0 U654 ( .IN1(n525), .IN2(n490), .QN(n529) );
  NOR2X0 U655 ( .IN1(n799), .IN2(n530), .QN(n525) );
  NAND2X0 U656 ( .IN1(n799), .IN2(n531), .QN(n526) );
  NAND2X0 U657 ( .IN1(n532), .IN2(n487), .QN(n531) );
  NOR2X0 U658 ( .IN1(n533), .IN2(n534), .QN(n532) );
  NOR2X0 U659 ( .IN1(n472), .IN2(n488), .QN(n534) );
  INVX0 U660 ( .INP(n522), .ZN(n488) );
  NOR2X0 U661 ( .IN1(n530), .IN2(n798), .QN(n522) );
  NOR2X0 U662 ( .IN1(n800), .IN2(n535), .QN(n533) );
  NAND2X0 U663 ( .IN1(n536), .IN2(n798), .QN(n535) );
  NAND2X0 U664 ( .IN1(n537), .IN2(n538), .QN(n175) );
  NAND2X0 U665 ( .IN1(n539), .IN2(n801), .QN(n538) );
  NOR2X0 U666 ( .IN1(test_se), .IN2(n540), .QN(n539) );
  NOR2X0 U667 ( .IN1(n541), .IN2(n490), .QN(n540) );
  INVX0 U668 ( .INP(n542), .ZN(n490) );
  NAND2X0 U669 ( .IN1(n530), .IN2(n543), .QN(n542) );
  NOR2X0 U670 ( .IN1(n800), .IN2(n530), .QN(n541) );
  INVX0 U671 ( .INP(n536), .ZN(n530) );
  NAND2X0 U672 ( .IN1(n800), .IN2(n544), .QN(n537) );
  NAND2X0 U673 ( .IN1(n487), .IN2(n545), .QN(n544) );
  NAND2X0 U674 ( .IN1(n536), .IN2(n546), .QN(n545) );
  XOR2X1 U675 ( .IN1(n456), .IN2(n547), .Q(n546) );
  NAND2X0 U676 ( .IN1(n799), .IN2(n798), .QN(n547) );
  NOR2X0 U677 ( .IN1(n548), .IN2(n504), .QN(n536) );
  NAND2X0 U678 ( .IN1(n549), .IN2(n550), .QN(n504) );
  NAND2X0 U679 ( .IN1(n551), .IN2(n552), .QN(n550) );
  NOR2X0 U680 ( .IN1(n798), .IN2(n799), .QN(n552) );
  NOR2X0 U681 ( .IN1(n800), .IN2(n456), .QN(n551) );
  NAND2X0 U682 ( .IN1(iXMIT_state_1_temp), .IN2(n796), .QN(n548) );
  NAND2X0 U683 ( .IN1(n553), .IN2(n554), .QN(n174) );
  NAND2X0 U684 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n554) );
  NAND2X0 U685 ( .IN1(n555), .IN2(n487), .QN(n553) );
  NAND2X0 U686 ( .IN1(n556), .IN2(n557), .QN(n555) );
  NOR2X0 U687 ( .IN1(n558), .IN2(n559), .QN(n556) );
  NOR2X0 U688 ( .IN1(n516), .IN2(n560), .QN(n559) );
  INVX0 U689 ( .INP(xmit_dataH_7_), .ZN(n560) );
  INVX0 U690 ( .INP(n561), .ZN(n516) );
  NOR2X0 U691 ( .IN1(n447), .IN2(n561), .QN(n558) );
  NAND2X0 U692 ( .IN1(n562), .IN2(n563), .QN(n173) );
  NAND2X0 U693 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n563) );
  NAND2X0 U694 ( .IN1(n564), .IN2(n487), .QN(n562) );
  NAND2X0 U695 ( .IN1(n565), .IN2(n566), .QN(n564) );
  NAND2X0 U696 ( .IN1(xmit_dataH_6_), .IN2(n567), .QN(n566) );
  NOR2X0 U697 ( .IN1(n568), .IN2(n569), .QN(n565) );
  NOR2X0 U698 ( .IN1(n258), .IN2(n561), .QN(n569) );
  NOR2X0 U699 ( .IN1(n447), .IN2(n557), .QN(n568) );
  NAND2X0 U700 ( .IN1(n570), .IN2(n571), .QN(n172) );
  NAND2X0 U701 ( .IN1(n802), .IN2(test_se), .QN(n571) );
  NAND2X0 U702 ( .IN1(n572), .IN2(n487), .QN(n570) );
  NAND2X0 U703 ( .IN1(n573), .IN2(n574), .QN(n572) );
  NAND2X0 U704 ( .IN1(xmit_dataH_5_), .IN2(n567), .QN(n574) );
  NOR2X0 U705 ( .IN1(n575), .IN2(n576), .QN(n573) );
  NOR2X0 U706 ( .IN1(n259), .IN2(n561), .QN(n576) );
  NOR2X0 U707 ( .IN1(n258), .IN2(n557), .QN(n575) );
  NAND2X0 U708 ( .IN1(n577), .IN2(n578), .QN(n171) );
  NAND2X0 U709 ( .IN1(n803), .IN2(test_se), .QN(n578) );
  NAND2X0 U710 ( .IN1(n579), .IN2(n487), .QN(n577) );
  NAND2X0 U711 ( .IN1(n580), .IN2(n581), .QN(n579) );
  NAND2X0 U712 ( .IN1(xmit_dataH_4_), .IN2(n567), .QN(n581) );
  NOR2X0 U713 ( .IN1(n582), .IN2(n583), .QN(n580) );
  NOR2X0 U714 ( .IN1(n561), .IN2(n467), .QN(n583) );
  NOR2X0 U715 ( .IN1(n259), .IN2(n557), .QN(n582) );
  NAND2X0 U716 ( .IN1(n584), .IN2(n585), .QN(n170) );
  NAND2X0 U717 ( .IN1(n804), .IN2(test_se), .QN(n585) );
  NAND2X0 U718 ( .IN1(n586), .IN2(n487), .QN(n584) );
  NAND2X0 U719 ( .IN1(n587), .IN2(n588), .QN(n586) );
  NAND2X0 U720 ( .IN1(xmit_dataH_3_), .IN2(n567), .QN(n588) );
  NOR2X0 U721 ( .IN1(n589), .IN2(n590), .QN(n587) );
  NOR2X0 U722 ( .IN1(n561), .IN2(n468), .QN(n590) );
  NOR2X0 U723 ( .IN1(n557), .IN2(n467), .QN(n589) );
  NAND2X0 U724 ( .IN1(n591), .IN2(n592), .QN(n169) );
  NAND2X0 U725 ( .IN1(n805), .IN2(test_se), .QN(n592) );
  NAND2X0 U726 ( .IN1(n593), .IN2(n487), .QN(n591) );
  NAND2X0 U727 ( .IN1(n594), .IN2(n595), .QN(n593) );
  NAND2X0 U728 ( .IN1(xmit_dataH_2_), .IN2(n567), .QN(n595) );
  NOR2X0 U729 ( .IN1(n596), .IN2(n597), .QN(n594) );
  NOR2X0 U730 ( .IN1(n561), .IN2(n469), .QN(n597) );
  NOR2X0 U731 ( .IN1(n557), .IN2(n468), .QN(n596) );
  NAND2X0 U732 ( .IN1(n598), .IN2(n599), .QN(n168) );
  NAND2X0 U733 ( .IN1(test_se), .IN2(n474), .QN(n599) );
  NAND2X0 U734 ( .IN1(n600), .IN2(n487), .QN(n598) );
  NAND2X0 U735 ( .IN1(n601), .IN2(n602), .QN(n600) );
  NAND2X0 U736 ( .IN1(xmit_dataH_1_), .IN2(n567), .QN(n602) );
  NOR2X0 U737 ( .IN1(n603), .IN2(n604), .QN(n601) );
  NOR2X0 U738 ( .IN1(n561), .IN2(n470), .QN(n604) );
  NOR2X0 U739 ( .IN1(n557), .IN2(n469), .QN(n603) );
  NAND2X0 U740 ( .IN1(n605), .IN2(n606), .QN(n167) );
  NAND2X0 U741 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n606) );
  NAND2X0 U742 ( .IN1(n607), .IN2(n487), .QN(n605) );
  NAND2X0 U743 ( .IN1(n543), .IN2(n608), .QN(n607) );
  NAND2X0 U744 ( .IN1(n478), .IN2(n510), .QN(n608) );
  INVX0 U745 ( .INP(n500), .ZN(n510) );
  NAND2X0 U746 ( .IN1(n609), .IN2(n813), .QN(n500) );
  NAND2X0 U747 ( .IN1(n610), .IN2(n246), .QN(n543) );
  NOR2X0 U748 ( .IN1(xmitH), .IN2(n797), .QN(n610) );
  NAND2X0 U749 ( .IN1(n611), .IN2(n612), .QN(n166) );
  NOR2X0 U750 ( .IN1(n613), .IN2(n614), .QN(n611) );
  NOR2X0 U751 ( .IN1(iRECEIVER_state_0_), .IN2(n615), .QN(n614) );
  NAND2X0 U752 ( .IN1(n616), .IN2(n487), .QN(n615) );
  NAND2X0 U753 ( .IN1(n811), .IN2(n617), .QN(n616) );
  NAND2X0 U754 ( .IN1(n618), .IN2(iRECEIVER_state_1_), .QN(n617) );
  NOR2X0 U755 ( .IN1(n245), .IN2(n619), .QN(n613) );
  NOR2X0 U756 ( .IN1(test_se), .IN2(n620), .QN(n619) );
  NAND2X0 U757 ( .IN1(n621), .IN2(n622), .QN(n620) );
  NAND2X0 U758 ( .IN1(n623), .IN2(iRECEIVER_state_1_), .QN(n622) );
  NAND2X0 U759 ( .IN1(n624), .IN2(n241), .QN(n621) );
  NOR2X0 U760 ( .IN1(n811), .IN2(iRECEIVER_state_2_), .QN(n624) );
  NAND2X0 U761 ( .IN1(n625), .IN2(n626), .QN(n164) );
  NAND2X0 U762 ( .IN1(n814), .IN2(test_se), .QN(n626) );
  NAND2X0 U763 ( .IN1(n627), .IN2(n487), .QN(n625) );
  NAND2X0 U764 ( .IN1(n628), .IN2(n238), .QN(n627) );
  NOR2X0 U765 ( .IN1(n629), .IN2(n630), .QN(n628) );
  NOR2X0 U766 ( .IN1(n241), .IN2(n631), .QN(n630) );
  NOR2X0 U767 ( .IN1(n632), .IN2(n633), .QN(n631) );
  NOR2X0 U768 ( .IN1(n245), .IN2(n634), .QN(n632) );
  NOR2X0 U769 ( .IN1(n635), .IN2(n623), .QN(n634) );
  NOR2X0 U770 ( .IN1(n636), .IN2(n637), .QN(n635) );
  NAND2X0 U771 ( .IN1(n814), .IN2(n454), .QN(n637) );
  NAND2X0 U772 ( .IN1(n459), .IN2(n452), .QN(n636) );
  NOR2X0 U773 ( .IN1(n453), .IN2(iRECEIVER_state_1_), .QN(n629) );
  NAND2X0 U774 ( .IN1(n638), .IN2(n639), .QN(n163) );
  NAND2X0 U775 ( .IN1(iRECEIVER_N20), .IN2(n487), .QN(n639) );
  NAND2X0 U776 ( .IN1(test_si), .IN2(test_se), .QN(n638) );
  NAND2X0 U777 ( .IN1(n640), .IN2(n641), .QN(n162) );
  NAND2X0 U778 ( .IN1(n642), .IN2(iRECEIVER_N20), .QN(n641) );
  NOR2X0 U779 ( .IN1(test_se), .IN2(n244), .QN(n642) );
  NAND2X0 U780 ( .IN1(n643), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(n640) );
  NAND2X0 U781 ( .IN1(n487), .IN2(n644), .QN(n643) );
  NAND2X0 U782 ( .IN1(n645), .IN2(n244), .QN(n644) );
  INVX0 U783 ( .INP(n646), .ZN(n645) );
  NAND2X0 U784 ( .IN1(n647), .IN2(n648), .QN(n161) );
  NAND2X0 U785 ( .IN1(test_se), .IN2(iRECEIVER_bitCell_cntrH_1_), .QN(n648) );
  NAND2X0 U786 ( .IN1(iRECEIVER_N22), .IN2(n487), .QN(n647) );
  NAND2X0 U787 ( .IN1(n649), .IN2(n650), .QN(n160) );
  NAND2X0 U788 ( .IN1(iRECEIVER_N23), .IN2(n487), .QN(n650) );
  NAND2X0 U789 ( .IN1(n806), .IN2(test_se), .QN(n649) );
  NAND2X0 U790 ( .IN1(n651), .IN2(n652), .QN(n159) );
  NAND2X0 U791 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .QN(n652) );
  NAND2X0 U792 ( .IN1(n653), .IN2(n654), .QN(n157) );
  NAND2X0 U793 ( .IN1(n810), .IN2(test_se), .QN(n654) );
  NAND2X0 U794 ( .IN1(n655), .IN2(n487), .QN(n653) );
  NAND2X0 U795 ( .IN1(n656), .IN2(n657), .QN(n655) );
  NAND2X0 U796 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .QN(n657)
         );
  NAND2X0 U797 ( .IN1(n658), .IN2(n659), .QN(n156) );
  NAND2X0 U798 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .QN(n659) );
  NOR2X0 U799 ( .IN1(n660), .IN2(n661), .QN(n658) );
  NOR2X0 U800 ( .IN1(n453), .IN2(n612), .QN(n661) );
  NOR2X0 U801 ( .IN1(n662), .IN2(n460), .QN(n660) );
  NAND2X0 U802 ( .IN1(n663), .IN2(n664), .QN(n155) );
  NAND2X0 U803 ( .IN1(rec_dataH_rec_7), .IN2(n487), .QN(n664) );
  NAND2X0 U804 ( .IN1(rec_dataH_temp_6_), .IN2(test_se), .QN(n663) );
  NAND2X0 U805 ( .IN1(n665), .IN2(n666), .QN(n154) );
  NAND2X0 U806 ( .IN1(test_so), .IN2(n487), .QN(n666) );
  NAND2X0 U807 ( .IN1(rec_dataH_6_), .IN2(test_se), .QN(n665) );
  NAND2X0 U808 ( .IN1(n667), .IN2(n668), .QN(n153) );
  NAND2X0 U809 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .QN(n668) );
  NOR2X0 U810 ( .IN1(n669), .IN2(n670), .QN(n667) );
  NOR2X0 U811 ( .IN1(n460), .IN2(n612), .QN(n670) );
  NOR2X0 U812 ( .IN1(n662), .IN2(n461), .QN(n669) );
  NAND2X0 U813 ( .IN1(n671), .IN2(n672), .QN(n152) );
  NAND2X0 U814 ( .IN1(rec_dataH_rec_6), .IN2(n487), .QN(n672) );
  NAND2X0 U815 ( .IN1(rec_dataH_temp_5_), .IN2(test_se), .QN(n671) );
  NAND2X0 U816 ( .IN1(n673), .IN2(n674), .QN(n150) );
  NAND2X0 U817 ( .IN1(rec_dataH_temp_6_), .IN2(n487), .QN(n674) );
  NAND2X0 U818 ( .IN1(rec_dataH_5_), .IN2(test_se), .QN(n673) );
  NAND2X0 U819 ( .IN1(n675), .IN2(n676), .QN(n149) );
  NAND2X0 U820 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .QN(n676) );
  NOR2X0 U821 ( .IN1(n677), .IN2(n678), .QN(n675) );
  NOR2X0 U822 ( .IN1(n612), .IN2(n461), .QN(n678) );
  NOR2X0 U823 ( .IN1(n662), .IN2(n462), .QN(n677) );
  NAND2X0 U824 ( .IN1(n679), .IN2(n680), .QN(n148) );
  NAND2X0 U825 ( .IN1(rec_dataH_rec_5), .IN2(n487), .QN(n680) );
  NAND2X0 U826 ( .IN1(rec_dataH_temp_4_), .IN2(test_se), .QN(n679) );
  NAND2X0 U827 ( .IN1(n681), .IN2(n682), .QN(n147) );
  NAND2X0 U828 ( .IN1(rec_dataH_temp_5_), .IN2(n487), .QN(n682) );
  NAND2X0 U829 ( .IN1(rec_dataH_4_), .IN2(test_se), .QN(n681) );
  NAND2X0 U830 ( .IN1(n683), .IN2(n684), .QN(n146) );
  NAND2X0 U831 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .QN(n684) );
  NOR2X0 U832 ( .IN1(n685), .IN2(n686), .QN(n683) );
  NOR2X0 U833 ( .IN1(n612), .IN2(n462), .QN(n686) );
  NOR2X0 U834 ( .IN1(n662), .IN2(n463), .QN(n685) );
  NAND2X0 U835 ( .IN1(n687), .IN2(n688), .QN(n145) );
  NAND2X0 U836 ( .IN1(rec_dataH_rec_4), .IN2(n487), .QN(n688) );
  NAND2X0 U837 ( .IN1(rec_dataH_temp_3_), .IN2(test_se), .QN(n687) );
  NAND2X0 U838 ( .IN1(n689), .IN2(n690), .QN(n143) );
  NAND2X0 U839 ( .IN1(rec_dataH_temp_4_), .IN2(n487), .QN(n690) );
  NAND2X0 U840 ( .IN1(rec_dataH_3_), .IN2(test_se), .QN(n689) );
  NAND2X0 U841 ( .IN1(n691), .IN2(n692), .QN(n142) );
  NAND2X0 U842 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .QN(n692) );
  NOR2X0 U843 ( .IN1(n693), .IN2(n694), .QN(n691) );
  NOR2X0 U844 ( .IN1(n612), .IN2(n463), .QN(n694) );
  NOR2X0 U845 ( .IN1(n662), .IN2(n464), .QN(n693) );
  NAND2X0 U846 ( .IN1(n695), .IN2(n696), .QN(n141) );
  NAND2X0 U847 ( .IN1(rec_dataH_rec_3), .IN2(n487), .QN(n696) );
  NAND2X0 U848 ( .IN1(rec_dataH_temp_2_), .IN2(test_se), .QN(n695) );
  NAND2X0 U849 ( .IN1(n697), .IN2(n698), .QN(n140) );
  NAND2X0 U850 ( .IN1(rec_dataH_temp_3_), .IN2(n487), .QN(n698) );
  NAND2X0 U851 ( .IN1(rec_dataH_2_), .IN2(test_se), .QN(n697) );
  NAND2X0 U852 ( .IN1(n699), .IN2(n700), .QN(n139) );
  NAND2X0 U853 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .QN(n700) );
  NOR2X0 U854 ( .IN1(n701), .IN2(n702), .QN(n699) );
  NOR2X0 U855 ( .IN1(n612), .IN2(n464), .QN(n702) );
  NOR2X0 U856 ( .IN1(n662), .IN2(n465), .QN(n701) );
  NAND2X0 U857 ( .IN1(n703), .IN2(n704), .QN(n138) );
  NAND2X0 U858 ( .IN1(rec_dataH_rec_2), .IN2(n487), .QN(n704) );
  NAND2X0 U859 ( .IN1(rec_dataH_temp_1_), .IN2(test_se), .QN(n703) );
  NAND2X0 U860 ( .IN1(n705), .IN2(n706), .QN(n136) );
  NAND2X0 U861 ( .IN1(rec_dataH_temp_2_), .IN2(n487), .QN(n706) );
  NAND2X0 U862 ( .IN1(rec_dataH_1_), .IN2(test_se), .QN(n705) );
  NAND2X0 U863 ( .IN1(n707), .IN2(n708), .QN(n135) );
  NAND2X0 U864 ( .IN1(rec_dataH_rec_0), .IN2(test_se), .QN(n708) );
  NOR2X0 U865 ( .IN1(n709), .IN2(n710), .QN(n707) );
  NOR2X0 U866 ( .IN1(n612), .IN2(n465), .QN(n710) );
  NOR2X0 U867 ( .IN1(n662), .IN2(n466), .QN(n709) );
  NAND2X0 U868 ( .IN1(n711), .IN2(n712), .QN(n134) );
  NAND2X0 U869 ( .IN1(rec_dataH_rec_1), .IN2(n487), .QN(n712) );
  NAND2X0 U870 ( .IN1(rec_dataH_temp_0_), .IN2(test_se), .QN(n711) );
  NAND2X0 U871 ( .IN1(n713), .IN2(n714), .QN(n133) );
  NAND2X0 U872 ( .IN1(rec_dataH_temp_1_), .IN2(n487), .QN(n714) );
  NAND2X0 U873 ( .IN1(rec_dataH_0_), .IN2(test_se), .QN(n713) );
  NAND2X0 U874 ( .IN1(n715), .IN2(n716), .QN(n132) );
  NAND2X0 U875 ( .IN1(n817), .IN2(test_se), .QN(n716) );
  NOR2X0 U876 ( .IN1(n717), .IN2(n718), .QN(n715) );
  NOR2X0 U877 ( .IN1(n612), .IN2(n466), .QN(n718) );
  NOR2X0 U878 ( .IN1(n662), .IN2(n473), .QN(n717) );
  NAND2X0 U879 ( .IN1(n719), .IN2(n720), .QN(n131) );
  NAND2X0 U880 ( .IN1(rec_dataH_rec_0), .IN2(n487), .QN(n720) );
  NAND2X0 U881 ( .IN1(rec_dataH_7_), .IN2(test_se), .QN(n719) );
  NAND2X0 U882 ( .IN1(n721), .IN2(n722), .QN(n129) );
  NAND2X0 U883 ( .IN1(rec_dataH_temp_0_), .IN2(n487), .QN(n722) );
  NAND2X0 U884 ( .IN1(xmit_doneH), .IN2(test_se), .QN(n721) );
  NAND2X0 U885 ( .IN1(n723), .IN2(n724), .QN(n128) );
  NAND2X0 U886 ( .IN1(n807), .IN2(test_se), .QN(n724) );
  NOR2X0 U887 ( .IN1(n725), .IN2(n726), .QN(n723) );
  NOR2X0 U888 ( .IN1(n455), .IN2(n727), .QN(n726) );
  NOR2X0 U889 ( .IN1(n728), .IN2(n612), .QN(n725) );
  NAND2X0 U890 ( .IN1(n729), .IN2(n730), .QN(n127) );
  NAND2X0 U891 ( .IN1(test_se), .IN2(rec_readyH), .QN(n730) );
  NOR2X0 U892 ( .IN1(n731), .IN2(n732), .QN(n729) );
  NOR2X0 U893 ( .IN1(n459), .IN2(n727), .QN(n732) );
  NOR2X0 U894 ( .IN1(n815), .IN2(n612), .QN(n731) );
  NAND2X0 U895 ( .IN1(n733), .IN2(n734), .QN(n126) );
  NAND2X0 U896 ( .IN1(n815), .IN2(test_se), .QN(n734) );
  NOR2X0 U897 ( .IN1(n735), .IN2(n736), .QN(n733) );
  NOR2X0 U898 ( .IN1(n454), .IN2(n727), .QN(n736) );
  NOR2X0 U899 ( .IN1(n737), .IN2(n612), .QN(n735) );
  INVX0 U900 ( .INP(n55), .ZN(n737) );
  XNOR2X1 U901 ( .IN1(n454), .IN2(n815), .Q(n55) );
  NAND2X0 U902 ( .IN1(n738), .IN2(n739), .QN(n125) );
  NAND2X0 U903 ( .IN1(n816), .IN2(test_se), .QN(n739) );
  NOR2X0 U904 ( .IN1(n740), .IN2(n741), .QN(n738) );
  NOR2X0 U905 ( .IN1(n452), .IN2(n727), .QN(n741) );
  NAND2X0 U906 ( .IN1(n742), .IN2(n656), .QN(n727) );
  NAND2X0 U907 ( .IN1(n743), .IN2(n241), .QN(n656) );
  NOR2X0 U908 ( .IN1(n453), .IN2(iRECEIVER_state_2_), .QN(n743) );
  INVX0 U909 ( .INP(n662), .ZN(n742) );
  NAND2X0 U910 ( .IN1(n487), .IN2(n744), .QN(n662) );
  NAND2X0 U911 ( .IN1(n245), .IN2(iRECEIVER_state_2_), .QN(n744) );
  NOR2X0 U912 ( .IN1(n745), .IN2(n612), .QN(n740) );
  NAND2X0 U913 ( .IN1(n746), .IN2(n245), .QN(n612) );
  NOR2X0 U914 ( .IN1(test_se), .IN2(n238), .QN(n746) );
  NAND2X0 U915 ( .IN1(n747), .IN2(n748), .QN(n124) );
  NAND2X0 U916 ( .IN1(n749), .IN2(n487), .QN(n748) );
  NOR2X0 U917 ( .IN1(n494), .IN2(n750), .QN(n749) );
  NAND2X0 U918 ( .IN1(test_se), .IN2(n795), .QN(n747) );
  NAND2X0 U919 ( .IN1(n751), .IN2(n752), .QN(n122) );
  NAND2X0 U920 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .QN(n752) );
  NAND2X0 U921 ( .IN1(iXMIT_N26), .IN2(n487), .QN(n751) );
  NAND2X0 U922 ( .IN1(n753), .IN2(n754), .QN(n121) );
  NOR2X0 U923 ( .IN1(n755), .IN2(n756), .QN(n753) );
  NOR2X0 U924 ( .IN1(n487), .IN2(n471), .QN(n756) );
  NOR2X0 U925 ( .IN1(test_se), .IN2(n757), .QN(n755) );
  NAND2X0 U926 ( .IN1(n758), .IN2(n759), .QN(n120) );
  NAND2X0 U927 ( .IN1(test_se), .IN2(n797), .QN(n759) );
  NAND2X0 U928 ( .IN1(n760), .IN2(n487), .QN(n758) );
  NAND2X0 U929 ( .IN1(n761), .IN2(n762), .QN(n760) );
  NAND2X0 U930 ( .IN1(xmit_dataH_0_), .IN2(n567), .QN(n762) );
  INVX0 U931 ( .INP(n763), .ZN(n567) );
  NOR2X0 U932 ( .IN1(n764), .IN2(n765), .QN(n761) );
  NOR2X0 U933 ( .IN1(n809), .IN2(n561), .QN(n765) );
  NOR2X0 U934 ( .IN1(n557), .IN2(n470), .QN(n764) );
  NAND2X0 U935 ( .IN1(n763), .IN2(n561), .QN(n557) );
  NAND2X0 U936 ( .IN1(n763), .IN2(n766), .QN(n561) );
  NAND2X0 U937 ( .IN1(n797), .IN2(n239), .QN(n766) );
  NAND2X0 U938 ( .IN1(n767), .IN2(xmitH), .QN(n763) );
  NOR2X0 U939 ( .IN1(n797), .IN2(iXMIT_state_1_temp), .QN(n767) );
  NAND2X0 U940 ( .IN1(n768), .IN2(n769), .QN(n119) );
  NAND2X0 U941 ( .IN1(uart_REC_dataH), .IN2(n487), .QN(n769) );
  NAND2X0 U942 ( .IN1(n811), .IN2(test_se), .QN(n768) );
  NAND2X0 U943 ( .IN1(n770), .IN2(n771), .QN(n118) );
  NAND2X0 U944 ( .IN1(n810), .IN2(n487), .QN(n771) );
  INVX0 U945 ( .INP(test_se), .ZN(n487) );
  NAND2X0 U946 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .QN(n770) );
  NAND2X0 U947 ( .IN1(n754), .IN2(n757), .QN(iXMIT_N27) );
  NAND2X0 U948 ( .IN1(iXMIT_N26), .IN2(n812), .QN(n757) );
  NAND2X0 U949 ( .IN1(n772), .IN2(n808), .QN(n754) );
  NOR2X0 U950 ( .IN1(n812), .IN2(n494), .QN(n772) );
  NOR2X0 U951 ( .IN1(n494), .IN2(n808), .QN(iXMIT_N26) );
  NOR2X0 U952 ( .IN1(n478), .IN2(n773), .QN(n494) );
  INVX0 U953 ( .INP(n517), .ZN(n773) );
  NAND2X0 U954 ( .IN1(n512), .IN2(iXMIT_state_1_temp), .QN(n517) );
  NAND2X0 U955 ( .IN1(n549), .IN2(n796), .QN(n512) );
  NOR2X0 U956 ( .IN1(n774), .IN2(n775), .QN(n549) );
  NAND2X0 U957 ( .IN1(n471), .IN2(n813), .QN(n775) );
  NAND2X0 U958 ( .IN1(n812), .IN2(n795), .QN(n774) );
  INVX0 U959 ( .INP(n776), .ZN(n478) );
  NAND2X0 U960 ( .IN1(n796), .IN2(n797), .QN(n776) );
  INVX0 U961 ( .INP(n750), .ZN(iXMIT_N25) );
  XNOR2X1 U962 ( .IN1(n813), .IN2(n609), .Q(n750) );
  NOR2X0 U963 ( .IN1(n777), .IN2(n457), .QN(n609) );
  XOR2X1 U964 ( .IN1(n777), .IN2(n457), .Q(iXMIT_N24) );
  NAND2X0 U965 ( .IN1(n808), .IN2(n812), .QN(n777) );
  INVX0 U966 ( .INP(n651), .ZN(iRECEIVER_next_state_2_) );
  NAND2X0 U967 ( .IN1(n778), .IN2(n779), .QN(n651) );
  NOR2X0 U968 ( .IN1(n245), .IN2(n241), .QN(n778) );
  INVX0 U969 ( .INP(n728), .ZN(iRECEIVER_N28) );
  XOR2X1 U970 ( .IN1(n455), .IN2(n780), .Q(n728) );
  NOR2X0 U971 ( .IN1(n781), .IN2(n452), .QN(n780) );
  INVX0 U972 ( .INP(n745), .ZN(iRECEIVER_N27) );
  XOR2X1 U973 ( .IN1(n781), .IN2(n807), .Q(n745) );
  NAND2X0 U974 ( .IN1(n816), .IN2(n815), .QN(n781) );
  NOR2X0 U975 ( .IN1(n646), .IN2(n782), .QN(iRECEIVER_N23) );
  INVX0 U976 ( .INP(iRECEIVER_N19), .ZN(n782) );
  NOR2X0 U977 ( .IN1(n646), .IN2(n783), .QN(iRECEIVER_N22) );
  NOR2X0 U978 ( .IN1(n784), .IN2(n646), .QN(iRECEIVER_N21) );
  NOR2X0 U979 ( .IN1(n646), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(
        iRECEIVER_N20) );
  NAND2X0 U980 ( .IN1(n785), .IN2(n786), .QN(n646) );
  NOR2X0 U981 ( .IN1(n787), .IN2(n788), .QN(n786) );
  NOR2X0 U982 ( .IN1(iRECEIVER_state_0_), .IN2(n618), .QN(n788) );
  INVX0 U983 ( .INP(n633), .ZN(n618) );
  NOR2X0 U984 ( .IN1(n789), .IN2(n790), .QN(n633) );
  NAND2X0 U985 ( .IN1(n458), .IN2(n244), .QN(n790) );
  NAND2X0 U986 ( .IN1(n255), .IN2(n806), .QN(n789) );
  NOR2X0 U987 ( .IN1(n245), .IN2(n623), .QN(n787) );
  INVX0 U988 ( .INP(n779), .ZN(n623) );
  NOR2X0 U989 ( .IN1(n791), .IN2(n792), .QN(n779) );
  NAND2X0 U990 ( .IN1(iRECEIVER_bitCell_cntrH_1_), .IN2(n255), .QN(n792) );
  NAND2X0 U991 ( .IN1(n806), .IN2(n817), .QN(n791) );
  NOR2X0 U992 ( .IN1(n241), .IN2(iRECEIVER_state_2_), .QN(n785) );
  XOR2X1 U993 ( .IN1(n793), .IN2(n458), .Q(iRECEIVER_N19) );
  NAND2X0 U994 ( .IN1(n794), .IN2(n806), .QN(n793) );
  INVX0 U995 ( .INP(n783), .ZN(iRECEIVER_N18) );
  XNOR2X1 U996 ( .IN1(n806), .IN2(n794), .Q(n783) );
  NOR2X0 U997 ( .IN1(n255), .IN2(n244), .QN(n794) );
  INVX0 U998 ( .INP(n784), .ZN(iRECEIVER_N17) );
  XNOR2X1 U999 ( .IN1(iRECEIVER_bitCell_cntrH_1_), .IN2(
        iRECEIVER_bitCell_cntrH_0_), .Q(n784) );
endmodule

