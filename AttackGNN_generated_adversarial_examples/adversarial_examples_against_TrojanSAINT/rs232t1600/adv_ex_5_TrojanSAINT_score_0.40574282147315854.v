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
         iRECEIVER_CTRL, iRECEIVER_state_CTRL, iRECEIVER_state_0_,
         iRECEIVER_state_1_, iRECEIVER_state_2_, iXMIT_N_CTRL_1_,
         iXMIT_N_CTRL_2_, iXMIT_xmit_CTRL, iXMIT_N24, iXMIT_xmit_ShiftRegH_7_,
         iXMIT_xmit_ShiftRegH_6_, iXMIT_xmit_ShiftRegH_5_, iXMIT_N28,
         iXMIT_N27, iXMIT_N26, iXMIT_N25, iXMIT_N44, iXMIT_N29, n241, n245,
         n238, n258, n259, rec_dataH_rec_7, rec_dataH_rec_6, rec_dataH_rec_5,
         rec_dataH_rec_4, rec_dataH_rec_3, rec_dataH_rec_2, rec_dataH_rec_1,
         rec_dataH_rec_0, n180, n179, n178, n177, n176, n175, n174, n173, n172,
         n171, n170, n169, n168, n167, n166, n164, n163, n162, n161, n160,
         n159, n157, n156, n155, n154, n153, test_point_DOUT, n152, n150, n149,
         n148, n147, n146, n145, n143, n142, n141, n140, n139, n138, n136,
         n135, n134, n133, n132, n131, n129, n128, n127, n126, n125, n124,
         n122, n121, n120, n119, n118, n117, n115, n12, n13, n20, n429, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721,
         n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, n732,
         n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, n776,
         n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787,
         n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798,
         n799, n800, n801, n802;

  AND2X4 TrojanU304 ( .IN1(iCTRL), .IN2(rec_readyH_temp), .Q(rec_readyH) );
  AND2X4 TrojanU303 ( .IN1(iCTRL), .IN2(xmit_doneH_temp), .Q(xmit_doneH) );
  OR2X1 TrojanU302 ( .IN1(iXMIT_CRTL), .IN2(iRECEIVER_CTRL), .Q(iCTRL) );
  OR2X1 TrojanU301 ( .IN1(iRECEIVER_state_CTRL), .IN2(1'b0), .Q(iRECEIVER_CTRL) );
  NAND4X1 TrojanU297 ( .IN1(n20), .IN2(iRECEIVER_state_0_), .IN3(
        iRECEIVER_state_1_), .IN4(iRECEIVER_state_2_), .QN(
        iRECEIVER_state_CTRL) );
  OR4X4 TrojanU296 ( .IN1(1'b0), .IN2(iXMIT_N_CTRL_1_), .IN3(iXMIT_N_CTRL_2_), 
        .IN4(iXMIT_xmit_CTRL), .Q(iXMIT_CRTL) );
  NAND4X1 TrojanU295 ( .IN1(iXMIT_N24), .IN2(iXMIT_xmit_ShiftRegH_7_), .IN3(
        iXMIT_xmit_ShiftRegH_6_), .IN4(iXMIT_xmit_ShiftRegH_5_), .QN(
        iXMIT_xmit_CTRL) );
  NAND4X1 TrojanU294 ( .IN1(iXMIT_N28), .IN2(iXMIT_N27), .IN3(iXMIT_N26), 
        .IN4(iXMIT_N25), .QN(iXMIT_N_CTRL_2_) );
  NAND4X1 TrojanU293 ( .IN1(n13), .IN2(n12), .IN3(iXMIT_N44), .IN4(iXMIT_N29), 
        .QN(iXMIT_N_CTRL_1_) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n180), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n802) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n179), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n777), .QN(n435) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n178), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n778), .QN(n444) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n177), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n779), .QN(n436) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n176), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n780), .QN(n459) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n175), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n798), .QN(n445) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n174), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n797), .QN(n443) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n173), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n796), .QN(n440) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n172), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_), .QN(n429) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n171), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_), .QN(n258) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n170), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_), .QN(n259) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n789), .QN(n454) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n790), .QN(n455) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n167), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n791), .QN(n456) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n166), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n792), .QN(n457) );
  DFFARX1 iXMIT_xmit_doneH_reg ( .D(n164), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(xmit_doneH_temp) );
  DFFARX1 iRECEIVER_state_reg_1_ ( .D(n163), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_1_), .QN(n241) );
  DFFASX1 iRECEIVER_state_reg_0_ ( .D(n162), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(iRECEIVER_state_0_), .QN(n245) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(n161), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n781), .QN(n458) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(n160), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n782) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(n159), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n793), .QN(n439) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n157), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n783) );
  DFFARX1 iRECEIVER_state_reg_2_ ( .D(n156), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_2_), .QN(n238) );
  DFFARX1 iRECEIVER_rec_readyH_reg ( .D(n155), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(rec_readyH_temp) );
  DFFARX1 iRECEIVER_par_dataH_reg_7_ ( .D(n154), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_7), .QN(n447) );
  DFFARX1 rec_dataH_temp_reg_7_ ( .D(n153), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(test_so) );
  DFFARX1 rec_dataH_reg_7_ ( .D(n152), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_7_) );
  DFFARX1 iRECEIVER_par_dataH_reg_6_ ( .D(n150), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_6), .QN(n448) );
  DFFARX1 rec_dataH_temp_reg_6_ ( .D(n149), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_6) );
  DFFARX1 rec_dataH_reg_6_ ( .D(n148), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_6_) );
  DFFARX1 iRECEIVER_par_dataH_reg_5_ ( .D(n147), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_5), .QN(n449) );
  DFFARX1 rec_dataH_temp_reg_5_ ( .D(n146), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_5) );
  DFFARX1 rec_dataH_reg_5_ ( .D(n145), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_5_) );
  DFFARX1 iRECEIVER_par_dataH_reg_4_ ( .D(n143), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_4), .QN(n450) );
  DFFARX1 rec_dataH_temp_reg_4_ ( .D(n142), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_4) );
  DFFARX1 rec_dataH_reg_4_ ( .D(n141), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_4_) );
  DFFARX1 iRECEIVER_par_dataH_reg_3_ ( .D(n140), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_3), .QN(n451) );
  DFFARX1 rec_dataH_temp_reg_3_ ( .D(n139), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_3) );
  DFFARX1 rec_dataH_reg_3_ ( .D(n138), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_3_) );
  DFFARX1 iRECEIVER_par_dataH_reg_2_ ( .D(n136), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_2), .QN(n452) );
  DFFARX1 rec_dataH_temp_reg_2_ ( .D(n135), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_2) );
  DFFARX1 rec_dataH_reg_2_ ( .D(n134), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_2_) );
  DFFARX1 iRECEIVER_par_dataH_reg_1_ ( .D(n133), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_1), .QN(n453) );
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
        sys_rst_l), .Q(n784) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n125), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n794), .QN(n437) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n124), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n785), .QN(n442) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n122), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n786) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n121), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n801) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n120), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n800), .QN(n438) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n119), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n799), .QN(n446) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n118), .CLK(sys_clk), .RSTB(
        sys_rst_l), .QN(n795) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n117), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n787) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n115), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n788), .QN(n441) );
  NAND2X0 U580 ( .IN1(n460), .IN2(n461), .QN(uart_XMIT_dataH) );
  NAND2X0 U581 ( .IN1(n436), .IN2(n444), .QN(n461) );
  NOR2X0 U582 ( .IN1(n462), .IN2(n463), .QN(n460) );
  NOR2X0 U583 ( .IN1(n795), .IN2(n464), .QN(n463) );
  NOR2X0 U584 ( .IN1(n778), .IN2(n777), .QN(n464) );
  NAND2X0 U585 ( .IN1(n465), .IN2(n466), .QN(test_point_DOUT) );
  NAND2X0 U586 ( .IN1(rec_readyH_temp), .IN2(n467), .QN(n466) );
  INVX0 U587 ( .INP(test_mode), .ZN(n467) );
  NAND2X0 U588 ( .IN1(sys_clk), .IN2(test_mode), .QN(n465) );
  INVX0 U589 ( .INP(n468), .ZN(n20) );
  NAND2X0 U590 ( .IN1(n469), .IN2(n470), .QN(n180) );
  NAND2X0 U591 ( .IN1(iXMIT_N28), .IN2(n471), .QN(n470) );
  NAND2X0 U592 ( .IN1(test_se), .IN2(n799), .QN(n469) );
  NAND2X0 U593 ( .IN1(n472), .IN2(n473), .QN(n179) );
  NAND2X0 U594 ( .IN1(n796), .IN2(test_se), .QN(n473) );
  NAND2X0 U595 ( .IN1(n474), .IN2(n471), .QN(n472) );
  NAND2X0 U596 ( .IN1(n475), .IN2(n476), .QN(n474) );
  NAND2X0 U597 ( .IN1(n778), .IN2(n477), .QN(n476) );
  NOR2X0 U598 ( .IN1(n478), .IN2(n479), .QN(n475) );
  NOR2X0 U599 ( .IN1(n435), .IN2(n480), .QN(n479) );
  NAND2X0 U600 ( .IN1(n779), .IN2(n481), .QN(n480) );
  NOR2X0 U601 ( .IN1(n777), .IN2(n482), .QN(n478) );
  NOR2X0 U602 ( .IN1(n483), .IN2(n778), .QN(n482) );
  NOR2X0 U603 ( .IN1(n436), .IN2(n477), .QN(n483) );
  NAND2X0 U604 ( .IN1(n484), .IN2(n485), .QN(n178) );
  NAND2X0 U605 ( .IN1(n486), .IN2(n462), .QN(n485) );
  NOR2X0 U606 ( .IN1(test_se), .IN2(n487), .QN(n486) );
  NAND2X0 U607 ( .IN1(n779), .IN2(n488), .QN(n484) );
  NAND2X0 U608 ( .IN1(n471), .IN2(n489), .QN(n488) );
  NAND2X0 U609 ( .IN1(n490), .IN2(n491), .QN(n177) );
  NAND2X0 U610 ( .IN1(test_se), .IN2(n777), .QN(n491) );
  NAND2X0 U611 ( .IN1(n492), .IN2(n471), .QN(n490) );
  NAND2X0 U612 ( .IN1(n493), .IN2(n494), .QN(n492) );
  NAND2X0 U613 ( .IN1(n779), .IN2(n489), .QN(n494) );
  NAND2X0 U614 ( .IN1(n495), .IN2(n496), .QN(n176) );
  NAND2X0 U615 ( .IN1(n801), .IN2(test_se), .QN(n496) );
  NOR2X0 U616 ( .IN1(n497), .IN2(n498), .QN(n495) );
  NOR2X0 U617 ( .IN1(n499), .IN2(n459), .QN(n498) );
  NOR2X0 U618 ( .IN1(n780), .IN2(n500), .QN(n497) );
  NAND2X0 U619 ( .IN1(n501), .IN2(n502), .QN(n175) );
  NAND2X0 U620 ( .IN1(n780), .IN2(test_se), .QN(n502) );
  NOR2X0 U621 ( .IN1(n503), .IN2(n504), .QN(n501) );
  NOR2X0 U622 ( .IN1(n499), .IN2(n445), .QN(n504) );
  NOR2X0 U623 ( .IN1(n505), .IN2(n500), .QN(n503) );
  INVX0 U624 ( .INP(iXMIT_N44), .ZN(n505) );
  NAND2X0 U625 ( .IN1(n506), .IN2(n507), .QN(n174) );
  NAND2X0 U626 ( .IN1(n798), .IN2(test_se), .QN(n507) );
  NOR2X0 U627 ( .IN1(n508), .IN2(n509), .QN(n506) );
  NOR2X0 U628 ( .IN1(n499), .IN2(n443), .QN(n509) );
  NOR2X0 U629 ( .IN1(n510), .IN2(n500), .QN(n508) );
  NAND2X0 U630 ( .IN1(n511), .IN2(n512), .QN(n173) );
  NAND2X0 U631 ( .IN1(n797), .IN2(test_se), .QN(n512) );
  NOR2X0 U632 ( .IN1(n513), .IN2(n514), .QN(n511) );
  NOR2X0 U633 ( .IN1(n440), .IN2(n499), .QN(n514) );
  NAND2X0 U634 ( .IN1(n515), .IN2(n516), .QN(n499) );
  NAND2X0 U635 ( .IN1(n517), .IN2(n518), .QN(n516) );
  INVX0 U636 ( .INP(n481), .ZN(n518) );
  NOR2X0 U637 ( .IN1(n435), .IN2(n436), .QN(n517) );
  AND2X1 U638 ( .IN1(n471), .IN2(n519), .Q(n515) );
  NOR2X0 U639 ( .IN1(n520), .IN2(n500), .QN(n513) );
  NAND2X0 U640 ( .IN1(n521), .IN2(n522), .QN(n500) );
  NOR2X0 U641 ( .IN1(test_se), .IN2(n435), .QN(n522) );
  NOR2X0 U642 ( .IN1(n436), .IN2(n481), .QN(n521) );
  NAND2X0 U643 ( .IN1(n523), .IN2(n524), .QN(n481) );
  NAND2X0 U644 ( .IN1(n525), .IN2(n526), .QN(n524) );
  NOR2X0 U645 ( .IN1(n780), .IN2(n797), .QN(n526) );
  NOR2X0 U646 ( .IN1(n798), .IN2(n440), .QN(n525) );
  NAND2X0 U647 ( .IN1(n527), .IN2(n528), .QN(n172) );
  OR2X1 U648 ( .IN1(n471), .IN2(n258), .Q(n528) );
  OR2X1 U649 ( .IN1(test_se), .IN2(n529), .Q(n527) );
  NOR2X0 U650 ( .IN1(n530), .IN2(n531), .QN(n529) );
  NAND2X0 U651 ( .IN1(n532), .IN2(n533), .QN(n531) );
  NAND2X0 U652 ( .IN1(n493), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n533) );
  INVX0 U653 ( .INP(n534), .ZN(n493) );
  NAND2X0 U654 ( .IN1(xmit_dataH_7_), .IN2(n534), .QN(n532) );
  INVX0 U655 ( .INP(n535), .ZN(n530) );
  NAND2X0 U656 ( .IN1(n536), .IN2(n537), .QN(n171) );
  OR2X1 U657 ( .IN1(n471), .IN2(n259), .Q(n537) );
  NAND2X0 U658 ( .IN1(n538), .IN2(n471), .QN(n536) );
  NAND2X0 U659 ( .IN1(n539), .IN2(n540), .QN(n538) );
  NAND2X0 U660 ( .IN1(xmit_dataH_6_), .IN2(n541), .QN(n540) );
  NOR2X0 U661 ( .IN1(n542), .IN2(n543), .QN(n539) );
  NOR2X0 U662 ( .IN1(n258), .IN2(n534), .QN(n543) );
  NOR2X0 U663 ( .IN1(n429), .IN2(n535), .QN(n542) );
  NAND2X0 U664 ( .IN1(n544), .IN2(n545), .QN(n170) );
  NAND2X0 U665 ( .IN1(n789), .IN2(test_se), .QN(n545) );
  NAND2X0 U666 ( .IN1(n546), .IN2(n471), .QN(n544) );
  NAND2X0 U667 ( .IN1(n547), .IN2(n548), .QN(n546) );
  NAND2X0 U668 ( .IN1(xmit_dataH_5_), .IN2(n541), .QN(n548) );
  NOR2X0 U669 ( .IN1(n549), .IN2(n550), .QN(n547) );
  NOR2X0 U670 ( .IN1(n259), .IN2(n534), .QN(n550) );
  NOR2X0 U671 ( .IN1(n258), .IN2(n535), .QN(n549) );
  NAND2X0 U672 ( .IN1(n551), .IN2(n552), .QN(n169) );
  NAND2X0 U673 ( .IN1(n790), .IN2(test_se), .QN(n552) );
  NAND2X0 U674 ( .IN1(n553), .IN2(n471), .QN(n551) );
  NAND2X0 U675 ( .IN1(n554), .IN2(n555), .QN(n553) );
  NAND2X0 U676 ( .IN1(xmit_dataH_4_), .IN2(n541), .QN(n555) );
  NOR2X0 U677 ( .IN1(n556), .IN2(n557), .QN(n554) );
  NOR2X0 U678 ( .IN1(n534), .IN2(n454), .QN(n557) );
  NOR2X0 U679 ( .IN1(n259), .IN2(n535), .QN(n556) );
  NAND2X0 U680 ( .IN1(n558), .IN2(n559), .QN(n168) );
  NAND2X0 U681 ( .IN1(n791), .IN2(test_se), .QN(n559) );
  NAND2X0 U682 ( .IN1(n560), .IN2(n471), .QN(n558) );
  NAND2X0 U683 ( .IN1(n561), .IN2(n562), .QN(n560) );
  NAND2X0 U684 ( .IN1(xmit_dataH_3_), .IN2(n541), .QN(n562) );
  NOR2X0 U685 ( .IN1(n563), .IN2(n564), .QN(n561) );
  NOR2X0 U686 ( .IN1(n534), .IN2(n455), .QN(n564) );
  NOR2X0 U687 ( .IN1(n535), .IN2(n454), .QN(n563) );
  NAND2X0 U688 ( .IN1(n565), .IN2(n566), .QN(n167) );
  NAND2X0 U689 ( .IN1(n792), .IN2(test_se), .QN(n566) );
  NAND2X0 U690 ( .IN1(n567), .IN2(n471), .QN(n565) );
  NAND2X0 U691 ( .IN1(n568), .IN2(n569), .QN(n567) );
  NAND2X0 U692 ( .IN1(xmit_dataH_2_), .IN2(n541), .QN(n569) );
  NOR2X0 U693 ( .IN1(n570), .IN2(n571), .QN(n568) );
  NOR2X0 U694 ( .IN1(n534), .IN2(n456), .QN(n571) );
  NOR2X0 U695 ( .IN1(n535), .IN2(n455), .QN(n570) );
  NAND2X0 U696 ( .IN1(n572), .IN2(n573), .QN(n166) );
  OR2X1 U697 ( .IN1(n471), .IN2(n795), .Q(n573) );
  NAND2X0 U698 ( .IN1(n574), .IN2(n471), .QN(n572) );
  NAND2X0 U699 ( .IN1(n575), .IN2(n576), .QN(n574) );
  NAND2X0 U700 ( .IN1(xmit_dataH_1_), .IN2(n541), .QN(n576) );
  NOR2X0 U701 ( .IN1(n577), .IN2(n578), .QN(n575) );
  NOR2X0 U702 ( .IN1(n534), .IN2(n457), .QN(n578) );
  NOR2X0 U703 ( .IN1(n535), .IN2(n456), .QN(n577) );
  NAND2X0 U704 ( .IN1(n579), .IN2(n580), .QN(n164) );
  NAND2X0 U705 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n580) );
  NAND2X0 U706 ( .IN1(n581), .IN2(n471), .QN(n579) );
  NAND2X0 U707 ( .IN1(n519), .IN2(n582), .QN(n581) );
  NAND2X0 U708 ( .IN1(n462), .IN2(n487), .QN(n582) );
  INVX0 U709 ( .INP(n477), .ZN(n487) );
  NAND2X0 U710 ( .IN1(n583), .IN2(n801), .QN(n477) );
  NAND2X0 U711 ( .IN1(n584), .IN2(n436), .QN(n519) );
  NOR2X0 U712 ( .IN1(xmitH), .IN2(n778), .QN(n584) );
  NAND2X0 U713 ( .IN1(n585), .IN2(n586), .QN(n163) );
  NOR2X0 U714 ( .IN1(n587), .IN2(n588), .QN(n585) );
  NOR2X0 U715 ( .IN1(iRECEIVER_state_0_), .IN2(n589), .QN(n588) );
  NAND2X0 U716 ( .IN1(n590), .IN2(n471), .QN(n589) );
  NAND2X0 U717 ( .IN1(n788), .IN2(n591), .QN(n590) );
  NAND2X0 U718 ( .IN1(n592), .IN2(iRECEIVER_state_1_), .QN(n591) );
  NOR2X0 U719 ( .IN1(n245), .IN2(n593), .QN(n587) );
  NOR2X0 U720 ( .IN1(test_se), .IN2(n594), .QN(n593) );
  NAND2X0 U721 ( .IN1(n595), .IN2(n596), .QN(n594) );
  NAND2X0 U722 ( .IN1(n597), .IN2(iRECEIVER_state_1_), .QN(n596) );
  NAND2X0 U723 ( .IN1(n598), .IN2(n241), .QN(n595) );
  NOR2X0 U724 ( .IN1(n788), .IN2(iRECEIVER_state_2_), .QN(n598) );
  NAND2X0 U725 ( .IN1(n599), .IN2(n600), .QN(n162) );
  NAND2X0 U726 ( .IN1(n784), .IN2(test_se), .QN(n600) );
  NAND2X0 U727 ( .IN1(n601), .IN2(n471), .QN(n599) );
  NAND2X0 U728 ( .IN1(n602), .IN2(n238), .QN(n601) );
  NOR2X0 U729 ( .IN1(n603), .IN2(n604), .QN(n602) );
  NOR2X0 U730 ( .IN1(n241), .IN2(n605), .QN(n604) );
  NOR2X0 U731 ( .IN1(n606), .IN2(n607), .QN(n605) );
  INVX0 U732 ( .INP(n592), .ZN(n607) );
  NOR2X0 U733 ( .IN1(n245), .IN2(n608), .QN(n606) );
  NOR2X0 U734 ( .IN1(n609), .IN2(n597), .QN(n608) );
  NOR2X0 U735 ( .IN1(n610), .IN2(n611), .QN(n609) );
  NAND2X0 U736 ( .IN1(n784), .IN2(n437), .QN(n611) );
  OR2X1 U737 ( .IN1(n786), .IN2(n785), .Q(n610) );
  NOR2X0 U738 ( .IN1(n441), .IN2(iRECEIVER_state_1_), .QN(n603) );
  NAND2X0 U739 ( .IN1(n612), .IN2(n613), .QN(n161) );
  NAND2X0 U740 ( .IN1(n614), .IN2(n458), .QN(n613) );
  NAND2X0 U741 ( .IN1(test_si), .IN2(test_se), .QN(n612) );
  NAND2X0 U742 ( .IN1(n615), .IN2(n616), .QN(n160) );
  NAND2X0 U743 ( .IN1(n781), .IN2(n617), .QN(n616) );
  NAND2X0 U744 ( .IN1(n471), .IN2(n618), .QN(n617) );
  NAND2X0 U745 ( .IN1(n619), .IN2(n620), .QN(n618) );
  INVX0 U746 ( .INP(n621), .ZN(n620) );
  NOR2X0 U747 ( .IN1(n782), .IN2(iRECEIVER_state_2_), .QN(n619) );
  NAND2X0 U748 ( .IN1(n622), .IN2(n458), .QN(n615) );
  AND2X1 U749 ( .IN1(n782), .IN2(n614), .Q(n622) );
  NAND2X0 U750 ( .IN1(n623), .IN2(n624), .QN(n159) );
  NAND2X0 U751 ( .IN1(n614), .IN2(n625), .QN(n624) );
  XOR2X1 U752 ( .IN1(n439), .IN2(n626), .Q(n625) );
  NAND2X0 U753 ( .IN1(test_se), .IN2(n782), .QN(n623) );
  NAND2X0 U754 ( .IN1(n627), .IN2(n628), .QN(n157) );
  NAND2X0 U755 ( .IN1(n614), .IN2(n629), .QN(n628) );
  XOR2X1 U756 ( .IN1(n783), .IN2(n630), .Q(n629) );
  NOR2X0 U757 ( .IN1(n439), .IN2(n626), .QN(n630) );
  NAND2X0 U758 ( .IN1(n781), .IN2(n782), .QN(n626) );
  AND2X1 U759 ( .IN1(n631), .IN2(n632), .Q(n614) );
  NOR2X0 U760 ( .IN1(test_se), .IN2(n633), .QN(n632) );
  NOR2X0 U761 ( .IN1(iRECEIVER_state_0_), .IN2(n592), .QN(n633) );
  NAND2X0 U762 ( .IN1(n634), .IN2(n635), .QN(n592) );
  NOR2X0 U763 ( .IN1(n781), .IN2(n782), .QN(n635) );
  NOR2X0 U764 ( .IN1(n783), .IN2(n439), .QN(n634) );
  NOR2X0 U765 ( .IN1(iRECEIVER_state_2_), .IN2(n621), .QN(n631) );
  NAND2X0 U766 ( .IN1(n636), .IN2(iRECEIVER_state_1_), .QN(n621) );
  NAND2X0 U767 ( .IN1(n637), .IN2(iRECEIVER_state_0_), .QN(n636) );
  NAND2X0 U768 ( .IN1(test_se), .IN2(n793), .QN(n627) );
  NAND2X0 U769 ( .IN1(n468), .IN2(n638), .QN(n156) );
  NAND2X0 U770 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .QN(n638) );
  NAND2X0 U771 ( .IN1(n639), .IN2(n637), .QN(n468) );
  INVX0 U772 ( .INP(n597), .ZN(n637) );
  NAND2X0 U773 ( .IN1(n640), .IN2(n641), .QN(n597) );
  NOR2X0 U774 ( .IN1(n781), .IN2(n439), .QN(n641) );
  AND2X1 U775 ( .IN1(n783), .IN2(n782), .Q(n640) );
  NOR2X0 U776 ( .IN1(n245), .IN2(n241), .QN(n639) );
  NAND2X0 U777 ( .IN1(n642), .IN2(n643), .QN(n155) );
  NAND2X0 U778 ( .IN1(n787), .IN2(test_se), .QN(n643) );
  NAND2X0 U779 ( .IN1(n644), .IN2(n471), .QN(n642) );
  NAND2X0 U780 ( .IN1(n645), .IN2(n646), .QN(n644) );
  NAND2X0 U781 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .QN(n646)
         );
  NAND2X0 U782 ( .IN1(n647), .IN2(n648), .QN(n154) );
  NAND2X0 U783 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .QN(n648) );
  NOR2X0 U784 ( .IN1(n649), .IN2(n650), .QN(n647) );
  NOR2X0 U785 ( .IN1(n441), .IN2(n586), .QN(n650) );
  NOR2X0 U786 ( .IN1(n651), .IN2(n447), .QN(n649) );
  NAND2X0 U787 ( .IN1(n652), .IN2(n653), .QN(n153) );
  NAND2X0 U788 ( .IN1(rec_dataH_rec_7), .IN2(n471), .QN(n653) );
  NAND2X0 U789 ( .IN1(rec_dataH_temp_6), .IN2(test_se), .QN(n652) );
  NAND2X0 U790 ( .IN1(n654), .IN2(n655), .QN(n152) );
  NAND2X0 U791 ( .IN1(test_so), .IN2(n471), .QN(n655) );
  NAND2X0 U792 ( .IN1(rec_dataH_6_), .IN2(test_se), .QN(n654) );
  NAND2X0 U793 ( .IN1(n656), .IN2(n657), .QN(n150) );
  NAND2X0 U794 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .QN(n657) );
  NOR2X0 U795 ( .IN1(n658), .IN2(n659), .QN(n656) );
  NOR2X0 U796 ( .IN1(n447), .IN2(n586), .QN(n659) );
  NOR2X0 U797 ( .IN1(n651), .IN2(n448), .QN(n658) );
  NAND2X0 U798 ( .IN1(n660), .IN2(n661), .QN(n149) );
  NAND2X0 U799 ( .IN1(rec_dataH_rec_6), .IN2(n471), .QN(n661) );
  NAND2X0 U800 ( .IN1(rec_dataH_temp_5), .IN2(test_se), .QN(n660) );
  NAND2X0 U801 ( .IN1(n662), .IN2(n663), .QN(n148) );
  NAND2X0 U802 ( .IN1(rec_dataH_temp_6), .IN2(n471), .QN(n663) );
  NAND2X0 U803 ( .IN1(rec_dataH_5_), .IN2(test_se), .QN(n662) );
  NAND2X0 U804 ( .IN1(n664), .IN2(n665), .QN(n147) );
  NAND2X0 U805 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .QN(n665) );
  NOR2X0 U806 ( .IN1(n666), .IN2(n667), .QN(n664) );
  NOR2X0 U807 ( .IN1(n586), .IN2(n448), .QN(n667) );
  NOR2X0 U808 ( .IN1(n651), .IN2(n449), .QN(n666) );
  NAND2X0 U809 ( .IN1(n668), .IN2(n669), .QN(n146) );
  NAND2X0 U810 ( .IN1(rec_dataH_rec_5), .IN2(n471), .QN(n669) );
  NAND2X0 U811 ( .IN1(rec_dataH_temp_4), .IN2(test_se), .QN(n668) );
  NAND2X0 U812 ( .IN1(n670), .IN2(n671), .QN(n145) );
  NAND2X0 U813 ( .IN1(rec_dataH_temp_5), .IN2(n471), .QN(n671) );
  NAND2X0 U814 ( .IN1(rec_dataH_4_), .IN2(test_se), .QN(n670) );
  NAND2X0 U815 ( .IN1(n672), .IN2(n673), .QN(n143) );
  NAND2X0 U816 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .QN(n673) );
  NOR2X0 U817 ( .IN1(n674), .IN2(n675), .QN(n672) );
  NOR2X0 U818 ( .IN1(n586), .IN2(n449), .QN(n675) );
  NOR2X0 U819 ( .IN1(n651), .IN2(n450), .QN(n674) );
  NAND2X0 U820 ( .IN1(n676), .IN2(n677), .QN(n142) );
  NAND2X0 U821 ( .IN1(rec_dataH_rec_4), .IN2(n471), .QN(n677) );
  NAND2X0 U822 ( .IN1(rec_dataH_temp_3), .IN2(test_se), .QN(n676) );
  NAND2X0 U823 ( .IN1(n678), .IN2(n679), .QN(n141) );
  NAND2X0 U824 ( .IN1(rec_dataH_temp_4), .IN2(n471), .QN(n679) );
  NAND2X0 U825 ( .IN1(rec_dataH_3_), .IN2(test_se), .QN(n678) );
  NAND2X0 U826 ( .IN1(n680), .IN2(n681), .QN(n140) );
  NAND2X0 U827 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .QN(n681) );
  NOR2X0 U828 ( .IN1(n682), .IN2(n683), .QN(n680) );
  NOR2X0 U829 ( .IN1(n586), .IN2(n450), .QN(n683) );
  NOR2X0 U830 ( .IN1(n651), .IN2(n451), .QN(n682) );
  NAND2X0 U831 ( .IN1(n684), .IN2(n685), .QN(n139) );
  NAND2X0 U832 ( .IN1(rec_dataH_rec_3), .IN2(n471), .QN(n685) );
  NAND2X0 U833 ( .IN1(rec_dataH_temp_2), .IN2(test_se), .QN(n684) );
  NAND2X0 U834 ( .IN1(n686), .IN2(n687), .QN(n138) );
  NAND2X0 U835 ( .IN1(rec_dataH_temp_3), .IN2(n471), .QN(n687) );
  NAND2X0 U836 ( .IN1(rec_dataH_2_), .IN2(test_se), .QN(n686) );
  NAND2X0 U837 ( .IN1(n688), .IN2(n689), .QN(n136) );
  NAND2X0 U838 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .QN(n689) );
  NOR2X0 U839 ( .IN1(n690), .IN2(n691), .QN(n688) );
  NOR2X0 U840 ( .IN1(n586), .IN2(n451), .QN(n691) );
  NOR2X0 U841 ( .IN1(n651), .IN2(n452), .QN(n690) );
  NAND2X0 U842 ( .IN1(n692), .IN2(n693), .QN(n135) );
  NAND2X0 U843 ( .IN1(rec_dataH_rec_2), .IN2(n471), .QN(n693) );
  NAND2X0 U844 ( .IN1(rec_dataH_temp_1), .IN2(test_se), .QN(n692) );
  NAND2X0 U845 ( .IN1(n694), .IN2(n695), .QN(n134) );
  NAND2X0 U846 ( .IN1(rec_dataH_temp_2), .IN2(n471), .QN(n695) );
  NAND2X0 U847 ( .IN1(rec_dataH_1_), .IN2(test_se), .QN(n694) );
  NAND2X0 U848 ( .IN1(n696), .IN2(n697), .QN(n133) );
  NAND2X0 U849 ( .IN1(rec_dataH_rec_0), .IN2(test_se), .QN(n697) );
  NOR2X0 U850 ( .IN1(n698), .IN2(n699), .QN(n696) );
  NOR2X0 U851 ( .IN1(n586), .IN2(n452), .QN(n699) );
  NOR2X0 U852 ( .IN1(n651), .IN2(n453), .QN(n698) );
  NAND2X0 U853 ( .IN1(n700), .IN2(n701), .QN(n132) );
  NAND2X0 U854 ( .IN1(rec_dataH_rec_1), .IN2(n471), .QN(n701) );
  NAND2X0 U855 ( .IN1(rec_dataH_temp_0), .IN2(test_se), .QN(n700) );
  NAND2X0 U856 ( .IN1(n702), .IN2(n703), .QN(n131) );
  NAND2X0 U857 ( .IN1(rec_dataH_temp_1), .IN2(n471), .QN(n703) );
  NAND2X0 U858 ( .IN1(rec_dataH_0_), .IN2(test_se), .QN(n702) );
  INVX0 U859 ( .INP(n520), .ZN(n13) );
  XOR2X1 U860 ( .IN1(n440), .IN2(n704), .Q(n520) );
  NOR2X0 U861 ( .IN1(n443), .IN2(n705), .QN(n704) );
  NAND2X0 U862 ( .IN1(n706), .IN2(n707), .QN(n129) );
  NAND2X0 U863 ( .IN1(test_se), .IN2(n783), .QN(n707) );
  NOR2X0 U864 ( .IN1(n708), .IN2(n709), .QN(n706) );
  NOR2X0 U865 ( .IN1(n586), .IN2(n453), .QN(n709) );
  AND2X1 U866 ( .IN1(n710), .IN2(rec_dataH_rec_0), .Q(n708) );
  NAND2X0 U867 ( .IN1(n711), .IN2(n712), .QN(n128) );
  NAND2X0 U868 ( .IN1(rec_dataH_rec_0), .IN2(n471), .QN(n712) );
  NAND2X0 U869 ( .IN1(rec_dataH_7_), .IN2(test_se), .QN(n711) );
  NAND2X0 U870 ( .IN1(n713), .IN2(n714), .QN(n127) );
  NAND2X0 U871 ( .IN1(rec_dataH_temp_0), .IN2(n471), .QN(n714) );
  NAND2X0 U872 ( .IN1(xmit_doneH_temp), .IN2(test_se), .QN(n713) );
  NAND2X0 U873 ( .IN1(n715), .IN2(n716), .QN(n126) );
  NAND2X0 U874 ( .IN1(n786), .IN2(n717), .QN(n716) );
  NAND2X0 U875 ( .IN1(n471), .IN2(n718), .QN(n717) );
  NAND2X0 U876 ( .IN1(n719), .IN2(n720), .QN(n718) );
  NOR2X0 U877 ( .IN1(n784), .IN2(n586), .QN(n720) );
  NOR2X0 U878 ( .IN1(n437), .IN2(n442), .QN(n719) );
  NAND2X0 U879 ( .IN1(n784), .IN2(n721), .QN(n715) );
  NAND2X0 U880 ( .IN1(n722), .IN2(n723), .QN(n721) );
  INVX0 U881 ( .INP(n724), .ZN(n723) );
  NOR2X0 U882 ( .IN1(n725), .IN2(n726), .QN(n722) );
  NOR2X0 U883 ( .IN1(n786), .IN2(n586), .QN(n726) );
  NAND2X0 U884 ( .IN1(n727), .IN2(n728), .QN(n125) );
  NAND2X0 U885 ( .IN1(test_se), .IN2(rec_readyH_temp), .QN(n728) );
  NOR2X0 U886 ( .IN1(n725), .IN2(n729), .QN(n727) );
  NOR2X0 U887 ( .IN1(n437), .IN2(n730), .QN(n729) );
  INVX0 U888 ( .INP(n731), .ZN(n725) );
  NAND2X0 U889 ( .IN1(n732), .IN2(n733), .QN(n124) );
  NAND2X0 U890 ( .IN1(n794), .IN2(n734), .QN(n733) );
  NAND2X0 U891 ( .IN1(n471), .IN2(n735), .QN(n734) );
  NAND2X0 U892 ( .IN1(n736), .IN2(n442), .QN(n735) );
  NAND2X0 U893 ( .IN1(n785), .IN2(n737), .QN(n732) );
  NAND2X0 U894 ( .IN1(n730), .IN2(n731), .QN(n737) );
  NAND2X0 U895 ( .IN1(n738), .IN2(n437), .QN(n731) );
  NAND2X0 U896 ( .IN1(n739), .IN2(n740), .QN(n122) );
  NAND2X0 U897 ( .IN1(n785), .IN2(n741), .QN(n740) );
  NAND2X0 U898 ( .IN1(n471), .IN2(n742), .QN(n741) );
  NAND2X0 U899 ( .IN1(n736), .IN2(n743), .QN(n742) );
  XOR2X1 U900 ( .IN1(n786), .IN2(n794), .Q(n743) );
  NAND2X0 U901 ( .IN1(n786), .IN2(n724), .QN(n739) );
  NAND2X0 U902 ( .IN1(n730), .IN2(n744), .QN(n724) );
  NAND2X0 U903 ( .IN1(n738), .IN2(n442), .QN(n744) );
  INVX0 U904 ( .INP(n586), .ZN(n738) );
  NAND2X0 U905 ( .IN1(n736), .IN2(n471), .QN(n586) );
  INVX0 U906 ( .INP(n745), .ZN(n736) );
  NAND2X0 U907 ( .IN1(n710), .IN2(n645), .QN(n730) );
  NAND2X0 U908 ( .IN1(n746), .IN2(n241), .QN(n645) );
  NOR2X0 U909 ( .IN1(n441), .IN2(iRECEIVER_state_2_), .QN(n746) );
  INVX0 U910 ( .INP(n651), .ZN(n710) );
  NAND2X0 U911 ( .IN1(n471), .IN2(n745), .QN(n651) );
  NAND2X0 U912 ( .IN1(n245), .IN2(iRECEIVER_state_2_), .QN(n745) );
  NAND2X0 U913 ( .IN1(n747), .IN2(n748), .QN(n121) );
  NAND2X0 U914 ( .IN1(iXMIT_N29), .IN2(n471), .QN(n748) );
  NAND2X0 U915 ( .IN1(n802), .IN2(test_se), .QN(n747) );
  NAND2X0 U916 ( .IN1(n749), .IN2(n750), .QN(n120) );
  NAND2X0 U917 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .QN(n750) );
  NAND2X0 U918 ( .IN1(iXMIT_N26), .IN2(n471), .QN(n749) );
  INVX0 U919 ( .INP(n510), .ZN(n12) );
  XOR2X1 U920 ( .IN1(n705), .IN2(n797), .Q(n510) );
  NAND2X0 U921 ( .IN1(n798), .IN2(n780), .QN(n705) );
  NAND2X0 U922 ( .IN1(n751), .IN2(n752), .QN(n119) );
  NOR2X0 U923 ( .IN1(n753), .IN2(n754), .QN(n751) );
  NOR2X0 U924 ( .IN1(n471), .IN2(n438), .QN(n754) );
  NOR2X0 U925 ( .IN1(test_se), .IN2(n755), .QN(n753) );
  NAND2X0 U926 ( .IN1(n756), .IN2(n757), .QN(n118) );
  NAND2X0 U927 ( .IN1(test_se), .IN2(n778), .QN(n757) );
  NAND2X0 U928 ( .IN1(n758), .IN2(n471), .QN(n756) );
  NAND2X0 U929 ( .IN1(n759), .IN2(n760), .QN(n758) );
  NAND2X0 U930 ( .IN1(xmit_dataH_0_), .IN2(n541), .QN(n760) );
  INVX0 U931 ( .INP(n761), .ZN(n541) );
  NOR2X0 U932 ( .IN1(n762), .IN2(n763), .QN(n759) );
  NOR2X0 U933 ( .IN1(n795), .IN2(n534), .QN(n763) );
  NOR2X0 U934 ( .IN1(n535), .IN2(n457), .QN(n762) );
  NAND2X0 U935 ( .IN1(n534), .IN2(n761), .QN(n535) );
  NAND2X0 U936 ( .IN1(n761), .IN2(n764), .QN(n534) );
  NAND2X0 U937 ( .IN1(n778), .IN2(n435), .QN(n764) );
  NAND2X0 U938 ( .IN1(n765), .IN2(xmitH), .QN(n761) );
  NOR2X0 U939 ( .IN1(n778), .IN2(n779), .QN(n765) );
  NAND2X0 U940 ( .IN1(n766), .IN2(n767), .QN(n117) );
  NAND2X0 U941 ( .IN1(uart_REC_dataH), .IN2(n471), .QN(n767) );
  NAND2X0 U942 ( .IN1(n788), .IN2(test_se), .QN(n766) );
  NAND2X0 U943 ( .IN1(n768), .IN2(n769), .QN(n115) );
  NAND2X0 U944 ( .IN1(n787), .IN2(n471), .QN(n769) );
  INVX0 U945 ( .INP(test_se), .ZN(n471) );
  NAND2X0 U946 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .QN(n768) );
  XNOR2X1 U947 ( .IN1(n445), .IN2(n780), .Q(iXMIT_N44) );
  AND2X1 U948 ( .IN1(iXMIT_N25), .IN2(n770), .Q(iXMIT_N29) );
  AND2X1 U949 ( .IN1(iXMIT_N24), .IN2(n770), .Q(iXMIT_N28) );
  INVX0 U950 ( .INP(n771), .ZN(n770) );
  NAND2X0 U951 ( .IN1(n752), .IN2(n755), .QN(iXMIT_N27) );
  NAND2X0 U952 ( .IN1(iXMIT_N26), .IN2(n799), .QN(n755) );
  NAND2X0 U953 ( .IN1(n772), .IN2(n800), .QN(n752) );
  NOR2X0 U954 ( .IN1(n799), .IN2(n771), .QN(n772) );
  NOR2X0 U955 ( .IN1(n771), .IN2(n800), .QN(iXMIT_N26) );
  NOR2X0 U956 ( .IN1(n462), .IN2(n773), .QN(n771) );
  AND2X1 U957 ( .IN1(n779), .IN2(n489), .Q(n773) );
  NAND2X0 U958 ( .IN1(n523), .IN2(n777), .QN(n489) );
  AND2X1 U959 ( .IN1(n774), .IN2(n775), .Q(n523) );
  NOR2X0 U960 ( .IN1(n800), .IN2(n446), .QN(n775) );
  AND2X1 U961 ( .IN1(n802), .IN2(n801), .Q(n774) );
  NOR2X0 U962 ( .IN1(n435), .IN2(n444), .QN(n462) );
  XOR2X1 U963 ( .IN1(n801), .IN2(n583), .Q(iXMIT_N25) );
  AND2X1 U964 ( .IN1(n776), .IN2(n802), .Q(n583) );
  XOR2X1 U965 ( .IN1(n776), .IN2(n802), .Q(iXMIT_N24) );
  NOR2X0 U966 ( .IN1(n438), .IN2(n446), .QN(n776) );
endmodule

