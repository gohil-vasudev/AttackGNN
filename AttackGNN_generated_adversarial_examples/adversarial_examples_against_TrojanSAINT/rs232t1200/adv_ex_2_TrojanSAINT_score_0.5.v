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
         n238, n242, n246, n239, rec_dataH_rec_7, rec_dataH_rec_6,
         rec_dataH_rec_5, rec_dataH_rec_4, rec_dataH_rec_3, rec_dataH_rec_2,
         rec_dataH_rec_1, rec_dataH_rec_0, n370, n371, n187, n186, n185, n184,
         n183, n182, n181, n180, n179, n178, n177, n176, n175, n174, n173,
         n172, n171, n170, n169, n168, n167, n166, n164, n163, n162, n161,
         test_point_DOUT, n160, n159, n157, n156, n155, n154, n153, n152, n150,
         n149, n148, n147, n146, n145, n143, n142, n141, n140, n139, n138,
         n136, n135, n134, n133, n132, n131, n129, n128, n127, n126, n125,
         n124, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
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
         n666, n667, n668, n669, n670;

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
  NAND4X1 TrojanU292 ( .IN1(n377), .IN2(iXMIT_state_0_), .IN3(iXMIT_state_1_), 
        .IN4(iXMIT_state_2_), .QN(iXMIT_state_CTRL) );
  INVX32 TrojanU290 ( .INP(n370), .ZN(n371) );
  NAND2X4 TrojanU289 ( .IN1(1'b1), .IN2(test_mode), .QN(n370) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n187), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n665) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n186), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_0_), .QN(n239) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n185), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_2_), .QN(n242) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n184), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_1_), .QN(n246) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n183), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n663), .QN(n387) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n182), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n662), .QN(n379) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n181), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n661), .QN(n382) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n180), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n649) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n179), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n178), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n177), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n176), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n650) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n175), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n651) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n174), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n652) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n173), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n653) );
  DFFARX1 iXMIT_xmit_doneH_reg ( .D(n172), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(xmit_doneH_temp) );
  DFFARX1 iRECEIVER_state_reg_1_ ( .D(n171), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_1_), .QN(n241) );
  DFFASX1 iRECEIVER_state_reg_0_ ( .D(n170), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(iRECEIVER_state_0_), .QN(n245) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n656), .QN(n378) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n670), .QN(n386) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(n167), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n668) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n166), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n669), .QN(n383) );
  DFFARX1 iRECEIVER_state_reg_2_ ( .D(n164), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_2_), .QN(n238) );
  DFFARX1 iRECEIVER_rec_readyH_reg ( .D(n163), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(rec_readyH) );
  DFFARX1 iRECEIVER_par_dataH_reg_7_ ( .D(n162), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_7) );
  DFFARX1 rec_dataH_temp_reg_7_ ( .D(n161), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(test_so) );
  DFFARX1 rec_dataH_reg_7_ ( .D(n160), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_7_) );
  DFFARX1 iRECEIVER_par_dataH_reg_6_ ( .D(n159), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_6) );
  DFFARX1 rec_dataH_temp_reg_6_ ( .D(n157), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_6) );
  DFFARX1 rec_dataH_reg_6_ ( .D(n156), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_6_) );
  DFFARX1 iRECEIVER_par_dataH_reg_5_ ( .D(n155), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_5) );
  DFFARX1 rec_dataH_temp_reg_5_ ( .D(n154), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_5) );
  DFFARX1 rec_dataH_reg_5_ ( .D(n153), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_5_) );
  DFFARX1 iRECEIVER_par_dataH_reg_4_ ( .D(n152), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_4) );
  DFFARX1 rec_dataH_temp_reg_4_ ( .D(n150), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_4) );
  DFFARX1 rec_dataH_reg_4_ ( .D(n149), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_4_) );
  DFFARX1 iRECEIVER_par_dataH_reg_3_ ( .D(n148), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_3) );
  DFFARX1 rec_dataH_temp_reg_3_ ( .D(n147), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_3) );
  DFFARX1 rec_dataH_reg_3_ ( .D(n146), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_3_) );
  DFFARX1 iRECEIVER_par_dataH_reg_2_ ( .D(n145), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_2) );
  DFFARX1 rec_dataH_temp_reg_2_ ( .D(n143), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_2) );
  DFFARX1 rec_dataH_reg_2_ ( .D(n142), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_2_) );
  DFFARX1 iRECEIVER_par_dataH_reg_1_ ( .D(n141), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_1) );
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
        sys_rst_l), .Q(n658), .QN(n391) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n133), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n660), .QN(n388) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n132), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n659), .QN(n381) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n131), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n657), .QN(n380) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n129), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n664) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n128), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n667), .QN(n389) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n127), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n666), .QN(n390) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n126), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n384) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n125), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n654) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n124), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n655), .QN(n385) );
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
  OR3X1 U525 ( .IN1(n392), .IN2(n393), .IN3(n394), .Q(uart_XMIT_dataH) );
  AND2X1 U526 ( .IN1(n246), .IN2(n242), .Q(n394) );
  AND2X1 U527 ( .IN1(n395), .IN2(n384), .Q(n393) );
  OR2X1 U528 ( .IN1(iXMIT_state_0_), .IN2(iXMIT_state_2_), .Q(n395) );
  OR2X1 U529 ( .IN1(n396), .IN2(n397), .Q(n187) );
  AND2X1 U530 ( .IN1(test_se), .IN2(n666), .Q(n397) );
  AND2X1 U531 ( .IN1(iXMIT_N28), .IN2(n398), .Q(n396) );
  OR2X1 U532 ( .IN1(n399), .IN2(n404), .Q(n186) );
  AND2X1 U533 ( .IN1(n405), .IN2(n398), .Q(n404) );
  OR2X1 U534 ( .IN1(n406), .IN2(n407), .Q(n405) );
  AND3X1 U535 ( .IN1(n408), .IN2(iXMIT_state_1_), .IN3(n409), .Q(n407) );
  OR2X1 U536 ( .IN1(n410), .IN2(iXMIT_state_0_), .Q(n409) );
  AND2X1 U537 ( .IN1(n411), .IN2(iXMIT_state_2_), .Q(n406) );
  OR2X1 U538 ( .IN1(n239), .IN2(n412), .Q(n411) );
  AND2X1 U539 ( .IN1(n649), .IN2(test_se), .Q(n399) );
  OR2X1 U540 ( .IN1(n413), .IN2(n414), .Q(n185) );
  AND2X1 U541 ( .IN1(n377), .IN2(n398), .Q(n414) );
  OR2X1 U542 ( .IN1(n415), .IN2(n416), .Q(n377) );
  AND2X1 U543 ( .IN1(n417), .IN2(iXMIT_state_1_), .Q(n416) );
  INVX0 U544 ( .INP(n418), .ZN(n417) );
  AND2X1 U545 ( .IN1(n392), .IN2(n412), .Q(n415) );
  INVX0 U546 ( .INP(n410), .ZN(n412) );
  AND2X1 U547 ( .IN1(test_se), .IN2(iXMIT_state_1_), .Q(n413) );
  OR2X1 U548 ( .IN1(n419), .IN2(n420), .Q(n184) );
  AND2X1 U549 ( .IN1(n421), .IN2(n398), .Q(n420) );
  OR2X1 U550 ( .IN1(n422), .IN2(n423), .Q(n421) );
  AND2X1 U551 ( .IN1(test_se), .IN2(iXMIT_state_0_), .Q(n419) );
  OR3X1 U552 ( .IN1(n424), .IN2(n425), .IN3(n426), .Q(n183) );
  AND2X1 U553 ( .IN1(test_se), .IN2(n664), .Q(n426) );
  AND2X1 U554 ( .IN1(n663), .IN2(n427), .Q(n425) );
  OR2X1 U555 ( .IN1(n428), .IN2(n429), .Q(n182) );
  AND2X1 U556 ( .IN1(n662), .IN2(n430), .Q(n429) );
  OR2X1 U557 ( .IN1(n424), .IN2(n427), .Q(n430) );
  AND2X1 U558 ( .IN1(n387), .IN2(n431), .Q(n424) );
  AND2X1 U559 ( .IN1(n663), .IN2(n432), .Q(n428) );
  OR2X1 U560 ( .IN1(n433), .IN2(test_se), .Q(n432) );
  AND2X1 U561 ( .IN1(n434), .IN2(n379), .Q(n433) );
  OR3X1 U562 ( .IN1(n435), .IN2(n436), .IN3(n437), .Q(n181) );
  AND2X1 U563 ( .IN1(n662), .IN2(test_se), .Q(n437) );
  AND2X1 U564 ( .IN1(n661), .IN2(n427), .Q(n436) );
  AND2X1 U565 ( .IN1(n431), .IN2(iXMIT_N45), .Q(n435) );
  OR3X1 U566 ( .IN1(n438), .IN2(n439), .IN3(n440), .Q(n180) );
  AND2X1 U567 ( .IN1(n661), .IN2(test_se), .Q(n440) );
  AND2X1 U568 ( .IN1(n427), .IN2(n649), .Q(n439) );
  AND3X1 U569 ( .IN1(n398), .IN2(n441), .IN3(n442), .Q(n427) );
  AND2X1 U570 ( .IN1(n431), .IN2(iXMIT_N46), .Q(n438) );
  AND2X1 U571 ( .IN1(n398), .IN2(n434), .Q(n431) );
  INVX0 U572 ( .INP(n441), .ZN(n434) );
  OR3X1 U573 ( .IN1(n246), .IN2(n239), .IN3(n408), .Q(n441) );
  OR2X1 U574 ( .IN1(n443), .IN2(n444), .Q(n408) );
  AND4X1 U575 ( .IN1(n649), .IN2(n387), .IN3(n379), .IN4(n382), .Q(n443) );
  OR2X1 U576 ( .IN1(n445), .IN2(n446), .Q(n179) );
  AND2X1 U577 ( .IN1(n447), .IN2(n398), .Q(n446) );
  OR3X1 U578 ( .IN1(n448), .IN2(n449), .IN3(n450), .Q(n447) );
  AND2X1 U579 ( .IN1(xmit_dataH_7_), .IN2(n423), .Q(n449) );
  AND2X1 U580 ( .IN1(n451), .IN2(iXMIT_xmit_ShiftRegH_7_), .Q(n448) );
  AND2X1 U581 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_6_), .Q(n445) );
  OR2X1 U582 ( .IN1(n452), .IN2(n453), .Q(n178) );
  AND2X1 U583 ( .IN1(n454), .IN2(n398), .Q(n453) );
  OR3X1 U584 ( .IN1(n455), .IN2(n456), .IN3(n457), .Q(n454) );
  AND2X1 U585 ( .IN1(xmit_dataH_6_), .IN2(n458), .Q(n457) );
  AND2X1 U586 ( .IN1(n451), .IN2(iXMIT_xmit_ShiftRegH_6_), .Q(n456) );
  AND2X1 U587 ( .IN1(n450), .IN2(iXMIT_xmit_ShiftRegH_7_), .Q(n455) );
  AND2X1 U588 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_5_), .Q(n452) );
  OR2X1 U589 ( .IN1(n459), .IN2(n460), .Q(n177) );
  AND2X1 U590 ( .IN1(n461), .IN2(n398), .Q(n460) );
  OR3X1 U591 ( .IN1(n462), .IN2(n463), .IN3(n464), .Q(n461) );
  AND2X1 U592 ( .IN1(xmit_dataH_5_), .IN2(n458), .Q(n464) );
  AND2X1 U593 ( .IN1(n451), .IN2(iXMIT_xmit_ShiftRegH_5_), .Q(n463) );
  AND2X1 U594 ( .IN1(n450), .IN2(iXMIT_xmit_ShiftRegH_6_), .Q(n462) );
  AND2X1 U595 ( .IN1(n650), .IN2(test_se), .Q(n459) );
  OR2X1 U596 ( .IN1(n465), .IN2(n466), .Q(n176) );
  AND2X1 U597 ( .IN1(n467), .IN2(n398), .Q(n466) );
  OR3X1 U598 ( .IN1(n468), .IN2(n469), .IN3(n470), .Q(n467) );
  AND2X1 U599 ( .IN1(xmit_dataH_4_), .IN2(n458), .Q(n470) );
  AND2X1 U600 ( .IN1(n650), .IN2(n451), .Q(n469) );
  AND2X1 U601 ( .IN1(n450), .IN2(iXMIT_xmit_ShiftRegH_5_), .Q(n468) );
  AND2X1 U602 ( .IN1(n651), .IN2(test_se), .Q(n465) );
  OR2X1 U603 ( .IN1(n471), .IN2(n472), .Q(n175) );
  AND2X1 U604 ( .IN1(n473), .IN2(n398), .Q(n472) );
  OR3X1 U605 ( .IN1(n474), .IN2(n475), .IN3(n476), .Q(n473) );
  AND2X1 U606 ( .IN1(xmit_dataH_3_), .IN2(n458), .Q(n476) );
  AND2X1 U607 ( .IN1(n651), .IN2(n451), .Q(n475) );
  AND2X1 U608 ( .IN1(n650), .IN2(n450), .Q(n474) );
  AND2X1 U609 ( .IN1(n652), .IN2(test_se), .Q(n471) );
  OR2X1 U610 ( .IN1(n477), .IN2(n478), .Q(n174) );
  AND2X1 U611 ( .IN1(n479), .IN2(n398), .Q(n478) );
  OR3X1 U612 ( .IN1(n480), .IN2(n481), .IN3(n482), .Q(n479) );
  AND2X1 U613 ( .IN1(xmit_dataH_2_), .IN2(n458), .Q(n482) );
  AND2X1 U614 ( .IN1(n652), .IN2(n451), .Q(n481) );
  AND2X1 U615 ( .IN1(n651), .IN2(n450), .Q(n480) );
  AND2X1 U616 ( .IN1(n653), .IN2(test_se), .Q(n477) );
  OR2X1 U617 ( .IN1(n483), .IN2(n484), .Q(n173) );
  AND2X1 U618 ( .IN1(n485), .IN2(n398), .Q(n484) );
  OR3X1 U619 ( .IN1(n486), .IN2(n487), .IN3(n488), .Q(n485) );
  AND2X1 U620 ( .IN1(xmit_dataH_1_), .IN2(n458), .Q(n488) );
  AND2X1 U621 ( .IN1(n653), .IN2(n451), .Q(n487) );
  AND2X1 U622 ( .IN1(n652), .IN2(n450), .Q(n486) );
  AND2X1 U623 ( .IN1(test_se), .IN2(n384), .Q(n483) );
  OR2X1 U624 ( .IN1(n489), .IN2(n490), .Q(n172) );
  AND2X1 U625 ( .IN1(n491), .IN2(n398), .Q(n490) );
  OR2X1 U626 ( .IN1(n492), .IN2(n493), .Q(n491) );
  INVX0 U627 ( .INP(n442), .ZN(n493) );
  OR3X1 U628 ( .IN1(xmitH), .IN2(iXMIT_state_2_), .IN3(iXMIT_state_1_), .Q(
        n442) );
  AND2X1 U629 ( .IN1(n410), .IN2(n392), .Q(n492) );
  AND2X1 U630 ( .IN1(n494), .IN2(n664), .Q(n410) );
  AND2X1 U631 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .Q(n489) );
  OR3X1 U632 ( .IN1(n495), .IN2(n496), .IN3(n497), .Q(n171) );
  AND3X1 U633 ( .IN1(n498), .IN2(n398), .IN3(n245), .Q(n496) );
  OR2X1 U634 ( .IN1(n499), .IN2(n385), .Q(n498) );
  INVX0 U635 ( .INP(n500), .ZN(n499) );
  OR2X1 U636 ( .IN1(n501), .IN2(n241), .Q(n500) );
  AND2X1 U637 ( .IN1(n502), .IN2(iRECEIVER_state_0_), .Q(n495) );
  OR3X1 U638 ( .IN1(n503), .IN2(n504), .IN3(test_se), .Q(n502) );
  AND3X1 U639 ( .IN1(n238), .IN2(n385), .IN3(n241), .Q(n504) );
  AND2X1 U640 ( .IN1(n505), .IN2(iRECEIVER_state_1_), .Q(n503) );
  OR2X1 U641 ( .IN1(n506), .IN2(n507), .Q(n170) );
  AND2X1 U642 ( .IN1(n508), .IN2(n398), .Q(n507) );
  OR3X1 U643 ( .IN1(n509), .IN2(n510), .IN3(iRECEIVER_state_2_), .Q(n508) );
  AND2X1 U644 ( .IN1(n511), .IN2(iRECEIVER_state_1_), .Q(n510) );
  OR2X1 U645 ( .IN1(n512), .IN2(n501), .Q(n511) );
  AND2X1 U646 ( .IN1(n513), .IN2(iRECEIVER_state_0_), .Q(n512) );
  OR2X1 U647 ( .IN1(n514), .IN2(n505), .Q(n513) );
  INVX0 U648 ( .INP(n515), .ZN(n505) );
  AND4X1 U649 ( .IN1(n658), .IN2(n388), .IN3(n381), .IN4(n380), .Q(n514) );
  AND2X1 U650 ( .IN1(n241), .IN2(n655), .Q(n509) );
  AND2X1 U651 ( .IN1(n658), .IN2(test_se), .Q(n506) );
  OR2X1 U652 ( .IN1(n516), .IN2(n517), .Q(n169) );
  AND2X1 U653 ( .IN1(test_si), .IN2(test_se), .Q(n517) );
  AND2X1 U654 ( .IN1(n518), .IN2(n378), .Q(n516) );
  OR2X1 U655 ( .IN1(n519), .IN2(n520), .Q(n168) );
  AND3X1 U656 ( .IN1(n518), .IN2(n670), .IN3(n378), .Q(n520) );
  AND2X1 U657 ( .IN1(n656), .IN2(n521), .Q(n519) );
  OR2X1 U658 ( .IN1(n522), .IN2(test_se), .Q(n521) );
  AND2X1 U659 ( .IN1(n523), .IN2(n386), .Q(n522) );
  OR2X1 U660 ( .IN1(n524), .IN2(n525), .Q(n167) );
  AND2X1 U661 ( .IN1(n670), .IN2(test_se), .Q(n525) );
  AND2X1 U662 ( .IN1(n518), .IN2(n526), .Q(n524) );
  XOR2X1 U663 ( .IN1(n668), .IN2(n527), .Q(n526) );
  OR2X1 U664 ( .IN1(n528), .IN2(n529), .Q(n166) );
  AND2X1 U665 ( .IN1(n668), .IN2(test_se), .Q(n529) );
  AND2X1 U666 ( .IN1(n518), .IN2(n530), .Q(n528) );
  XNOR2X1 U667 ( .IN1(n383), .IN2(n531), .Q(n530) );
  AND2X1 U668 ( .IN1(n527), .IN2(n668), .Q(n531) );
  AND2X1 U669 ( .IN1(n670), .IN2(n656), .Q(n527) );
  AND2X1 U670 ( .IN1(n398), .IN2(n523), .Q(n518) );
  INVX0 U671 ( .INP(n532), .ZN(n523) );
  OR4X1 U672 ( .IN1(n533), .IN2(iRECEIVER_state_2_), .IN3(n241), .IN4(n534), 
        .Q(n532) );
  AND2X1 U673 ( .IN1(n501), .IN2(n245), .Q(n534) );
  AND4X1 U674 ( .IN1(n386), .IN2(n668), .IN3(n378), .IN4(n383), .Q(n501) );
  OR2X1 U675 ( .IN1(n535), .IN2(iRECEIVER_next_state_2_), .Q(n164) );
  AND2X1 U676 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .Q(n535) );
  OR2X1 U677 ( .IN1(n536), .IN2(n537), .Q(n163) );
  AND2X1 U678 ( .IN1(n654), .IN2(test_se), .Q(n537) );
  AND2X1 U679 ( .IN1(n538), .IN2(n398), .Q(n536) );
  OR2X1 U680 ( .IN1(n539), .IN2(n540), .Q(n538) );
  AND2X1 U681 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .Q(n539)
         );
  OR3X1 U682 ( .IN1(n541), .IN2(n542), .IN3(n543), .Q(n162) );
  AND2X1 U683 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .Q(n543) );
  AND2X1 U684 ( .IN1(n497), .IN2(n655), .Q(n542) );
  AND2X1 U685 ( .IN1(rec_dataH_rec_7), .IN2(n544), .Q(n541) );
  OR2X1 U686 ( .IN1(n545), .IN2(n546), .Q(n161) );
  AND2X1 U687 ( .IN1(rec_dataH_temp_6), .IN2(test_se), .Q(n546) );
  AND2X1 U688 ( .IN1(rec_dataH_rec_7), .IN2(n398), .Q(n545) );
  OR2X1 U689 ( .IN1(n547), .IN2(n548), .Q(n160) );
  AND2X1 U690 ( .IN1(rec_dataH_6_), .IN2(test_se), .Q(n548) );
  AND2X1 U691 ( .IN1(test_so), .IN2(n398), .Q(n547) );
  OR3X1 U692 ( .IN1(n549), .IN2(n550), .IN3(n551), .Q(n159) );
  AND2X1 U693 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .Q(n551) );
  AND2X1 U694 ( .IN1(n497), .IN2(rec_dataH_rec_7), .Q(n550) );
  AND2X1 U695 ( .IN1(rec_dataH_rec_6), .IN2(n544), .Q(n549) );
  OR2X1 U696 ( .IN1(n552), .IN2(n553), .Q(n157) );
  AND2X1 U697 ( .IN1(rec_dataH_temp_5), .IN2(test_se), .Q(n553) );
  AND2X1 U698 ( .IN1(rec_dataH_rec_6), .IN2(n398), .Q(n552) );
  OR2X1 U699 ( .IN1(n554), .IN2(n555), .Q(n156) );
  AND2X1 U700 ( .IN1(rec_dataH_5_), .IN2(test_se), .Q(n555) );
  AND2X1 U701 ( .IN1(rec_dataH_temp_6), .IN2(n398), .Q(n554) );
  OR3X1 U702 ( .IN1(n556), .IN2(n557), .IN3(n558), .Q(n155) );
  AND2X1 U703 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .Q(n558) );
  AND2X1 U704 ( .IN1(rec_dataH_rec_6), .IN2(n497), .Q(n557) );
  AND2X1 U705 ( .IN1(rec_dataH_rec_5), .IN2(n544), .Q(n556) );
  OR2X1 U706 ( .IN1(n559), .IN2(n560), .Q(n154) );
  AND2X1 U707 ( .IN1(rec_dataH_temp_4), .IN2(test_se), .Q(n560) );
  AND2X1 U708 ( .IN1(rec_dataH_rec_5), .IN2(n398), .Q(n559) );
  OR2X1 U709 ( .IN1(n561), .IN2(n562), .Q(n153) );
  AND2X1 U710 ( .IN1(rec_dataH_4_), .IN2(test_se), .Q(n562) );
  AND2X1 U711 ( .IN1(rec_dataH_temp_5), .IN2(n398), .Q(n561) );
  OR3X1 U712 ( .IN1(n563), .IN2(n564), .IN3(n565), .Q(n152) );
  AND2X1 U713 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .Q(n565) );
  AND2X1 U714 ( .IN1(rec_dataH_rec_5), .IN2(n497), .Q(n564) );
  AND2X1 U715 ( .IN1(rec_dataH_rec_4), .IN2(n544), .Q(n563) );
  OR2X1 U716 ( .IN1(n566), .IN2(n567), .Q(n150) );
  AND2X1 U717 ( .IN1(rec_dataH_temp_3), .IN2(test_se), .Q(n567) );
  AND2X1 U718 ( .IN1(rec_dataH_rec_4), .IN2(n398), .Q(n566) );
  OR2X1 U719 ( .IN1(n568), .IN2(n569), .Q(n149) );
  AND2X1 U720 ( .IN1(rec_dataH_3_), .IN2(test_se), .Q(n569) );
  AND2X1 U721 ( .IN1(rec_dataH_temp_4), .IN2(n398), .Q(n568) );
  OR3X1 U722 ( .IN1(n570), .IN2(n571), .IN3(n572), .Q(n148) );
  AND2X1 U723 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .Q(n572) );
  AND2X1 U724 ( .IN1(rec_dataH_rec_4), .IN2(n497), .Q(n571) );
  AND2X1 U725 ( .IN1(rec_dataH_rec_3), .IN2(n544), .Q(n570) );
  OR2X1 U726 ( .IN1(n573), .IN2(n574), .Q(n147) );
  AND2X1 U727 ( .IN1(rec_dataH_temp_2), .IN2(test_se), .Q(n574) );
  AND2X1 U728 ( .IN1(rec_dataH_rec_3), .IN2(n398), .Q(n573) );
  OR2X1 U729 ( .IN1(n575), .IN2(n576), .Q(n146) );
  AND2X1 U730 ( .IN1(rec_dataH_2_), .IN2(test_se), .Q(n576) );
  AND2X1 U731 ( .IN1(rec_dataH_temp_3), .IN2(n398), .Q(n575) );
  OR3X1 U732 ( .IN1(n577), .IN2(n578), .IN3(n579), .Q(n145) );
  AND2X1 U733 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .Q(n579) );
  AND2X1 U734 ( .IN1(rec_dataH_rec_3), .IN2(n497), .Q(n578) );
  AND2X1 U735 ( .IN1(rec_dataH_rec_2), .IN2(n544), .Q(n577) );
  OR2X1 U736 ( .IN1(n580), .IN2(n581), .Q(n143) );
  AND2X1 U737 ( .IN1(rec_dataH_temp_1), .IN2(test_se), .Q(n581) );
  AND2X1 U738 ( .IN1(rec_dataH_rec_2), .IN2(n398), .Q(n580) );
  OR2X1 U739 ( .IN1(n582), .IN2(n583), .Q(n142) );
  AND2X1 U740 ( .IN1(rec_dataH_1_), .IN2(test_se), .Q(n583) );
  AND2X1 U741 ( .IN1(rec_dataH_temp_2), .IN2(n398), .Q(n582) );
  OR3X1 U742 ( .IN1(n584), .IN2(n585), .IN3(n586), .Q(n141) );
  AND2X1 U743 ( .IN1(rec_dataH_rec_0), .IN2(test_se), .Q(n586) );
  AND2X1 U744 ( .IN1(rec_dataH_rec_2), .IN2(n497), .Q(n585) );
  AND2X1 U745 ( .IN1(rec_dataH_rec_1), .IN2(n544), .Q(n584) );
  OR2X1 U746 ( .IN1(n587), .IN2(n588), .Q(n140) );
  AND2X1 U747 ( .IN1(rec_dataH_temp_0), .IN2(test_se), .Q(n588) );
  AND2X1 U748 ( .IN1(rec_dataH_rec_1), .IN2(n398), .Q(n587) );
  OR2X1 U749 ( .IN1(n589), .IN2(n590), .Q(n139) );
  AND2X1 U750 ( .IN1(rec_dataH_0_), .IN2(test_se), .Q(n590) );
  AND2X1 U751 ( .IN1(rec_dataH_temp_1), .IN2(n398), .Q(n589) );
  OR3X1 U752 ( .IN1(n591), .IN2(n592), .IN3(n593), .Q(n138) );
  AND2X1 U753 ( .IN1(n669), .IN2(test_se), .Q(n593) );
  AND2X1 U754 ( .IN1(rec_dataH_rec_1), .IN2(n497), .Q(n592) );
  AND2X1 U755 ( .IN1(rec_dataH_rec_0), .IN2(n544), .Q(n591) );
  AND2X1 U756 ( .IN1(n398), .IN2(n594), .Q(n544) );
  OR2X1 U757 ( .IN1(n595), .IN2(n596), .Q(n136) );
  AND2X1 U758 ( .IN1(rec_dataH_7_), .IN2(test_se), .Q(n596) );
  AND2X1 U759 ( .IN1(rec_dataH_rec_0), .IN2(n398), .Q(n595) );
  OR2X1 U760 ( .IN1(n597), .IN2(n598), .Q(n135) );
  AND2X1 U761 ( .IN1(xmit_doneH_temp), .IN2(test_se), .Q(n598) );
  AND2X1 U762 ( .IN1(rec_dataH_temp_0), .IN2(n398), .Q(n597) );
  OR2X1 U763 ( .IN1(n599), .IN2(n600), .Q(n134) );
  AND2X1 U764 ( .IN1(n658), .IN2(n601), .Q(n600) );
  OR3X1 U765 ( .IN1(n602), .IN2(n603), .IN3(n604), .Q(n601) );
  AND2X1 U766 ( .IN1(n497), .IN2(n380), .Q(n603) );
  AND2X1 U767 ( .IN1(n657), .IN2(n605), .Q(n599) );
  OR2X1 U768 ( .IN1(n606), .IN2(test_se), .Q(n605) );
  AND4X1 U769 ( .IN1(n659), .IN2(n660), .IN3(n497), .IN4(n391), .Q(n606) );
  OR3X1 U770 ( .IN1(n602), .IN2(n607), .IN3(n608), .Q(n133) );
  AND2X1 U771 ( .IN1(rec_readyH), .IN2(test_se), .Q(n608) );
  AND2X1 U772 ( .IN1(n609), .IN2(n660), .Q(n607) );
  OR2X1 U773 ( .IN1(n610), .IN2(n611), .Q(n132) );
  AND2X1 U774 ( .IN1(n659), .IN2(n612), .Q(n611) );
  OR2X1 U775 ( .IN1(n602), .IN2(n609), .Q(n612) );
  AND2X1 U776 ( .IN1(n388), .IN2(n497), .Q(n602) );
  AND2X1 U777 ( .IN1(n660), .IN2(n613), .Q(n610) );
  OR2X1 U778 ( .IN1(n614), .IN2(test_se), .Q(n613) );
  AND2X1 U779 ( .IN1(n615), .IN2(n381), .Q(n614) );
  OR2X1 U780 ( .IN1(n616), .IN2(n617), .Q(n131) );
  AND2X1 U781 ( .IN1(n657), .IN2(n604), .Q(n617) );
  OR2X1 U782 ( .IN1(n618), .IN2(n609), .Q(n604) );
  INVX0 U783 ( .INP(n619), .ZN(n609) );
  OR3X1 U784 ( .IN1(n620), .IN2(n540), .IN3(test_se), .Q(n619) );
  AND3X1 U785 ( .IN1(n241), .IN2(n655), .IN3(n238), .Q(n540) );
  AND2X1 U786 ( .IN1(n245), .IN2(iRECEIVER_state_2_), .Q(n620) );
  AND2X1 U787 ( .IN1(n497), .IN2(n381), .Q(n618) );
  AND2X1 U788 ( .IN1(n398), .IN2(n615), .Q(n497) );
  AND2X1 U789 ( .IN1(n659), .IN2(n621), .Q(n616) );
  OR2X1 U790 ( .IN1(n622), .IN2(test_se), .Q(n621) );
  AND2X1 U791 ( .IN1(n615), .IN2(n623), .Q(n622) );
  XNOR2X1 U792 ( .IN1(n380), .IN2(n660), .Q(n623) );
  INVX0 U793 ( .INP(n594), .ZN(n615) );
  OR2X1 U794 ( .IN1(n238), .IN2(iRECEIVER_state_0_), .Q(n594) );
  OR2X1 U795 ( .IN1(n624), .IN2(n625), .Q(n129) );
  AND2X1 U796 ( .IN1(test_se), .IN2(n665), .Q(n625) );
  AND2X1 U797 ( .IN1(iXMIT_N29), .IN2(n398), .Q(n624) );
  OR2X1 U798 ( .IN1(n626), .IN2(n627), .Q(n128) );
  AND2X1 U799 ( .IN1(iXMIT_N26), .IN2(n398), .Q(n627) );
  AND2X1 U800 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .Q(n626) );
  OR2X1 U801 ( .IN1(n628), .IN2(n629), .Q(n127) );
  AND2X1 U802 ( .IN1(test_se), .IN2(n667), .Q(n629) );
  AND2X1 U803 ( .IN1(iXMIT_N27), .IN2(n398), .Q(n628) );
  OR2X1 U804 ( .IN1(n630), .IN2(n631), .Q(n126) );
  AND2X1 U805 ( .IN1(n632), .IN2(n398), .Q(n631) );
  OR3X1 U806 ( .IN1(n633), .IN2(n634), .IN3(n635), .Q(n632) );
  AND2X1 U807 ( .IN1(xmit_dataH_0_), .IN2(n458), .Q(n635) );
  AND2X1 U808 ( .IN1(n451), .IN2(n384), .Q(n634) );
  INVX0 U809 ( .INP(n423), .ZN(n451) );
  AND2X1 U810 ( .IN1(n653), .IN2(n450), .Q(n633) );
  AND2X1 U811 ( .IN1(n636), .IN2(n423), .Q(n450) );
  OR2X1 U812 ( .IN1(n637), .IN2(n458), .Q(n423) );
  AND2X1 U813 ( .IN1(n239), .IN2(iXMIT_state_2_), .Q(n637) );
  INVX0 U814 ( .INP(n458), .ZN(n636) );
  AND3X1 U815 ( .IN1(n242), .IN2(n246), .IN3(xmitH), .Q(n458) );
  AND2X1 U816 ( .IN1(test_se), .IN2(iXMIT_state_2_), .Q(n630) );
  OR2X1 U817 ( .IN1(n638), .IN2(n639), .Q(n125) );
  AND2X1 U818 ( .IN1(n655), .IN2(test_se), .Q(n639) );
  AND2X1 U819 ( .IN1(uart_REC_dataH), .IN2(n398), .Q(n638) );
  OR2X1 U820 ( .IN1(n640), .IN2(n641), .Q(n124) );
  AND2X1 U821 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .Q(n641) );
  AND2X1 U822 ( .IN1(n654), .IN2(n398), .Q(n640) );
  INVX0 U823 ( .INP(test_se), .ZN(n398) );
  XOR2X1 U824 ( .IN1(n649), .IN2(n642), .Q(iXMIT_N46) );
  AND2X1 U825 ( .IN1(n643), .IN2(n661), .Q(n642) );
  XNOR2X1 U826 ( .IN1(n382), .IN2(n643), .Q(iXMIT_N45) );
  AND2X1 U827 ( .IN1(n663), .IN2(n662), .Q(n643) );
  XNOR2X1 U828 ( .IN1(n379), .IN2(n663), .Q(iXMIT_N44) );
  AND2X1 U829 ( .IN1(n644), .IN2(iXMIT_N25), .Q(iXMIT_N29) );
  AND2X1 U830 ( .IN1(n644), .IN2(iXMIT_N24), .Q(iXMIT_N28) );
  OR2X1 U831 ( .IN1(n645), .IN2(n646), .Q(iXMIT_N27) );
  AND2X1 U832 ( .IN1(iXMIT_N26), .IN2(n666), .Q(n646) );
  AND3X1 U833 ( .IN1(n667), .IN2(n644), .IN3(n390), .Q(n645) );
  AND2X1 U834 ( .IN1(n389), .IN2(n644), .Q(iXMIT_N26) );
  OR2X1 U835 ( .IN1(n392), .IN2(n422), .Q(n644) );
  AND2X1 U836 ( .IN1(n418), .IN2(iXMIT_state_1_), .Q(n422) );
  OR2X1 U837 ( .IN1(n239), .IN2(n444), .Q(n418) );
  INVX0 U838 ( .INP(n647), .ZN(n444) );
  AND4X1 U839 ( .IN1(n665), .IN2(n664), .IN3(n389), .IN4(n666), .Q(n647) );
  AND2X1 U840 ( .IN1(iXMIT_state_2_), .IN2(iXMIT_state_0_), .Q(n392) );
  XOR2X1 U841 ( .IN1(n664), .IN2(n494), .Q(iXMIT_N25) );
  AND2X1 U842 ( .IN1(n648), .IN2(n665), .Q(n494) );
  XOR2X1 U843 ( .IN1(n665), .IN2(n648), .Q(iXMIT_N24) );
  AND2X1 U844 ( .IN1(n667), .IN2(n666), .Q(n648) );
  AND2X1 U845 ( .IN1(iRECEIVER_state_1_), .IN2(n533), .Q(
        iRECEIVER_next_state_2_) );
  AND2X1 U846 ( .IN1(iRECEIVER_state_0_), .IN2(n515), .Q(n533) );
  AND4X1 U847 ( .IN1(n670), .IN2(n669), .IN3(n378), .IN4(n668), .Q(n515) );
endmodule

