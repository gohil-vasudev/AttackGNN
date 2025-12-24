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
         rec_dataH_temp_0, iCTRL, iXMIT_state_1_temp, iXMIT_state_1_,
         xmit_doneH_temp, iXMIT_CRTL, iRECEIVER_CTRL, iRECEIVER_state_CTRL,
         iRECEIVER_N_CTRL_1_, iRECEIVER_N_CTRL_2_, iRECEIVER_bitCell_CTRL,
         iRECEIVER_N18, iRECEIVER_N17, iRECEIVER_bitCell_cntrH_0_,
         iRECEIVER_bitCell_cntrH_1_, iRECEIVER_N22, iRECEIVER_N21,
         iRECEIVER_N20, iRECEIVER_N19, iRECEIVER_N28, iRECEIVER_N27,
         iRECEIVER_N26, iRECEIVER_N23, iRECEIVER_state_0_, iRECEIVER_state_1_,
         iRECEIVER_state_2_, iXMIT_N_CTRL_1_, iXMIT_N_CTRL_2_, iXMIT_xmit_CTRL,
         iXMIT_N24, iXMIT_xmit_ShiftRegH_7_, iXMIT_xmit_ShiftRegH_6_,
         iXMIT_xmit_ShiftRegH_5_, iXMIT_N28, iXMIT_N27, iXMIT_N26, iXMIT_N25,
         n251, n239, n242, n246, n255, n241, n244, n245, n238, rec_dataH_rec_7,
         rec_dataH_rec_6, rec_dataH_rec_5, rec_dataH_rec_4, rec_dataH_rec_3,
         rec_dataH_rec_2, rec_dataH_rec_1, rec_dataH_rec_0_temp, n180, n179,
         n178, n177, n176, n175, n174, n173, n172, n171, n170, n169, n168,
         n167, n166, n164, n163, n162, n161, n160, n159, n157, n156, n155,
         n154, n153, test_point_DOUT, n152, n150, n149, n148, n147, n146, n145,
         n143, n142, n141, n140, n139, n138, n136, n135, n134, n133, n132,
         n131, n129, n128, n127, n126, n125, n124, n122, n121, n120, n119,
         n118, n117, n115, n24, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659;

  AND2X4 TrojanU305 ( .IN1(iCTRL), .IN2(iXMIT_state_1_temp), .Q(iXMIT_state_1_) );
  AND2X4 TrojanU303 ( .IN1(iCTRL), .IN2(xmit_doneH_temp), .Q(xmit_doneH) );
  OR2X1 TrojanU302 ( .IN1(iXMIT_CRTL), .IN2(iRECEIVER_CTRL), .Q(iCTRL) );
  OR4X4 TrojanU301 ( .IN1(iRECEIVER_state_CTRL), .IN2(iRECEIVER_N_CTRL_1_), 
        .IN3(iRECEIVER_N_CTRL_2_), .IN4(iRECEIVER_bitCell_CTRL), .Q(
        iRECEIVER_CTRL) );
  NAND4X1 TrojanU300 ( .IN1(iRECEIVER_N18), .IN2(iRECEIVER_N17), .IN3(
        iRECEIVER_bitCell_cntrH_0_), .IN4(iRECEIVER_bitCell_cntrH_1_), .QN(
        iRECEIVER_bitCell_CTRL) );
  NAND4X1 TrojanU299 ( .IN1(iRECEIVER_N22), .IN2(iRECEIVER_N21), .IN3(
        iRECEIVER_N20), .IN4(iRECEIVER_N19), .QN(iRECEIVER_N_CTRL_2_) );
  NAND4X1 TrojanU298 ( .IN1(iRECEIVER_N28), .IN2(iRECEIVER_N27), .IN3(
        iRECEIVER_N26), .IN4(iRECEIVER_N23), .QN(iRECEIVER_N_CTRL_1_) );
  NAND4X1 TrojanU297 ( .IN1(n24), .IN2(iRECEIVER_state_0_), .IN3(
        iRECEIVER_state_1_), .IN4(iRECEIVER_state_2_), .QN(
        iRECEIVER_state_CTRL) );
  OR4X4 TrojanU296 ( .IN1(1'b0), .IN2(iXMIT_N_CTRL_1_), .IN3(iXMIT_N_CTRL_2_), 
        .IN4(iXMIT_xmit_CTRL), .Q(iXMIT_CRTL) );
  NAND4X1 TrojanU295 ( .IN1(iXMIT_N24), .IN2(iXMIT_xmit_ShiftRegH_7_), .IN3(
        iXMIT_xmit_ShiftRegH_6_), .IN4(iXMIT_xmit_ShiftRegH_5_), .QN(
        iXMIT_xmit_CTRL) );
  NAND4X1 TrojanU294 ( .IN1(iXMIT_N28), .IN2(iXMIT_N27), .IN3(iXMIT_N26), 
        .IN4(iXMIT_N25), .QN(iXMIT_N_CTRL_2_) );
  NAND4X1 TrojanU293 ( .IN1(n251), .IN2(n239), .IN3(n242), .IN4(n246), .QN(
        iXMIT_N_CTRL_1_) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n180), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n655), .QN(n251) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n179), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n638), .QN(n239) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n178), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n639), .QN(n242) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n177), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_1_temp), .QN(n246) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n176), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n650), .QN(n377) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n175), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n651), .QN(n380) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n174), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n649), .QN(n375) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n173), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n648), .QN(n385) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n172), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n171), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n170), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n640) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n641) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n167), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n642) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n166), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n643) );
  DFFARX1 iXMIT_xmit_doneH_reg ( .D(n164), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(xmit_doneH_temp) );
  DFFARX1 iRECEIVER_state_reg_1_ ( .D(n163), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_1_), .QN(n241) );
  DFFASX1 iRECEIVER_state_reg_0_ ( .D(n162), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(iRECEIVER_state_0_), .QN(n245) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(n161), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iRECEIVER_bitCell_cntrH_0_), .QN(n255) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(n160), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iRECEIVER_bitCell_cntrH_1_), .QN(n244) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(n159), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n659) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n157), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n658), .QN(n381) );
  DFFARX1 iRECEIVER_state_reg_2_ ( .D(n156), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_2_), .QN(n238) );
  DFFARX1 iRECEIVER_rec_readyH_reg ( .D(n155), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(rec_readyH) );
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
        sys_rst_l), .Q(rec_dataH_rec_0_temp) );
  DFFARX1 rec_dataH_temp_reg_0_ ( .D(n128), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_0) );
  DFFARX1 rec_dataH_reg_0_ ( .D(n127), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_0_) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_3_ ( .D(n126), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n644) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n125), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n657), .QN(n384) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n124), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n653), .QN(n379) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n122), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n656), .QN(n376) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n121), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n645) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n120), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n654), .QN(n378) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n119), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n646), .QN(n382) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n118), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n383) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n117), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n647) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n115), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n652) );
  NAND3X0 U528 ( .IN1(n386), .IN2(n387), .IN3(n388), .QN(uart_XMIT_dataH) );
  OR2X1 U529 ( .IN1(n639), .IN2(iXMIT_state_1_), .Q(n388) );
  NAND2X0 U530 ( .IN1(n389), .IN2(n383), .QN(n386) );
  NAND2X0 U531 ( .IN1(n239), .IN2(n242), .QN(n389) );
  NAND2X0 U532 ( .IN1(n390), .IN2(n391), .QN(test_point_DOUT) );
  NAND2X0 U533 ( .IN1(rec_readyH), .IN2(n392), .QN(n391) );
  INVX0 U534 ( .INP(test_mode), .ZN(n392) );
  NAND2X0 U535 ( .IN1(sys_clk), .IN2(test_mode), .QN(n390) );
  NAND2X0 U536 ( .IN1(n393), .IN2(n394), .QN(n180) );
  NAND2X0 U537 ( .IN1(iXMIT_N28), .IN2(n395), .QN(n394) );
  NAND2X0 U538 ( .IN1(test_se), .IN2(n646), .QN(n393) );
  NAND2X0 U539 ( .IN1(n396), .IN2(n397), .QN(n179) );
  NAND2X0 U540 ( .IN1(n648), .IN2(test_se), .QN(n397) );
  NAND2X0 U541 ( .IN1(n398), .IN2(n395), .QN(n396) );
  NAND3X0 U542 ( .IN1(n399), .IN2(n400), .IN3(n401), .QN(n398) );
  NAND2X0 U543 ( .IN1(n639), .IN2(n402), .QN(n401) );
  NAND2X0 U544 ( .IN1(n403), .IN2(n239), .QN(n400) );
  NAND2X0 U545 ( .IN1(n242), .IN2(n404), .QN(n403) );
  NAND2X0 U546 ( .IN1(n405), .IN2(iXMIT_state_1_temp), .QN(n404) );
  NAND3X0 U547 ( .IN1(n406), .IN2(iXMIT_state_1_temp), .IN3(n638), .QN(n399)
         );
  NAND2X0 U548 ( .IN1(n407), .IN2(n408), .QN(n178) );
  NAND3X0 U549 ( .IN1(n402), .IN2(n395), .IN3(n409), .QN(n408) );
  NAND2X0 U550 ( .IN1(n410), .IN2(iXMIT_state_1_temp), .QN(n407) );
  NAND2X0 U551 ( .IN1(n395), .IN2(n411), .QN(n410) );
  NAND2X0 U552 ( .IN1(n412), .IN2(n413), .QN(n177) );
  NAND2X0 U553 ( .IN1(test_se), .IN2(n638), .QN(n413) );
  NAND2X0 U554 ( .IN1(n414), .IN2(n395), .QN(n412) );
  NAND2X0 U555 ( .IN1(n415), .IN2(n416), .QN(n414) );
  NAND2X0 U556 ( .IN1(n417), .IN2(n418), .QN(n176) );
  NAND2X0 U557 ( .IN1(n645), .IN2(test_se), .QN(n418) );
  NAND2X0 U558 ( .IN1(n419), .IN2(n395), .QN(n417) );
  NAND2X0 U559 ( .IN1(n420), .IN2(n421), .QN(n419) );
  OR2X1 U560 ( .IN1(n377), .IN2(n422), .Q(n421) );
  NAND2X0 U561 ( .IN1(n423), .IN2(n424), .QN(n175) );
  NAND3X0 U562 ( .IN1(n425), .IN2(n395), .IN3(n651), .QN(n424) );
  NAND2X0 U563 ( .IN1(n650), .IN2(n426), .QN(n423) );
  NAND2X0 U564 ( .IN1(n395), .IN2(n427), .QN(n426) );
  NAND2X0 U565 ( .IN1(n428), .IN2(n429), .QN(n174) );
  NAND3X0 U566 ( .IN1(n430), .IN2(n395), .IN3(n649), .QN(n429) );
  NAND2X0 U567 ( .IN1(n422), .IN2(n427), .QN(n430) );
  NAND2X0 U568 ( .IN1(n431), .IN2(n380), .QN(n427) );
  NAND2X0 U569 ( .IN1(n651), .IN2(n432), .QN(n428) );
  NAND3X0 U570 ( .IN1(n433), .IN2(n434), .IN3(n395), .QN(n432) );
  NAND3X0 U571 ( .IN1(n431), .IN2(n650), .IN3(n375), .QN(n434) );
  OR2X1 U572 ( .IN1(n420), .IN2(n375), .Q(n433) );
  NAND2X0 U573 ( .IN1(n435), .IN2(n436), .QN(n173) );
  NAND2X0 U574 ( .IN1(n649), .IN2(test_se), .QN(n436) );
  NAND2X0 U575 ( .IN1(n437), .IN2(n395), .QN(n435) );
  NAND2X0 U576 ( .IN1(n438), .IN2(n439), .QN(n437) );
  NAND3X0 U577 ( .IN1(n440), .IN2(n441), .IN3(n431), .QN(n439) );
  NAND2X0 U578 ( .IN1(n442), .IN2(n648), .QN(n441) );
  NAND2X0 U579 ( .IN1(n443), .IN2(n385), .QN(n440) );
  NAND2X0 U580 ( .IN1(n442), .IN2(n650), .QN(n443) );
  NOR2X0 U581 ( .IN1(n375), .IN2(n380), .QN(n442) );
  NAND2X0 U582 ( .IN1(n648), .IN2(n425), .QN(n438) );
  NAND2X0 U583 ( .IN1(n422), .IN2(n420), .QN(n425) );
  NAND2X0 U584 ( .IN1(n431), .IN2(n377), .QN(n420) );
  NAND2X0 U585 ( .IN1(n444), .IN2(n445), .QN(n422) );
  INVX0 U586 ( .INP(n431), .ZN(n444) );
  NOR3X0 U587 ( .IN1(n239), .IN2(n246), .IN3(n406), .QN(n431) );
  NAND2X0 U588 ( .IN1(n446), .IN2(n447), .QN(n406) );
  NAND4X0 U589 ( .IN1(n648), .IN2(n380), .IN3(n377), .IN4(n375), .QN(n447) );
  NAND2X0 U590 ( .IN1(n448), .IN2(n449), .QN(n172) );
  NAND2X0 U591 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n449) );
  NAND2X0 U592 ( .IN1(n450), .IN2(n395), .QN(n448) );
  NAND3X0 U593 ( .IN1(n451), .IN2(n452), .IN3(n453), .QN(n450) );
  INVX0 U594 ( .INP(n454), .ZN(n453) );
  NAND2X0 U595 ( .IN1(n415), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n452) );
  NAND2X0 U596 ( .IN1(xmit_dataH_7_), .IN2(n455), .QN(n451) );
  NAND2X0 U597 ( .IN1(n456), .IN2(n457), .QN(n171) );
  NAND2X0 U598 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n457) );
  NAND2X0 U599 ( .IN1(n458), .IN2(n395), .QN(n456) );
  NAND3X0 U600 ( .IN1(n459), .IN2(n460), .IN3(n461), .QN(n458) );
  NAND2X0 U601 ( .IN1(xmit_dataH_6_), .IN2(n462), .QN(n461) );
  NAND2X0 U602 ( .IN1(n454), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n460) );
  NAND2X0 U603 ( .IN1(n415), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n459) );
  NAND2X0 U604 ( .IN1(n463), .IN2(n464), .QN(n170) );
  NAND2X0 U605 ( .IN1(n640), .IN2(test_se), .QN(n464) );
  NAND2X0 U606 ( .IN1(n465), .IN2(n395), .QN(n463) );
  NAND3X0 U607 ( .IN1(n466), .IN2(n467), .IN3(n468), .QN(n465) );
  NAND2X0 U608 ( .IN1(xmit_dataH_5_), .IN2(n462), .QN(n468) );
  NAND2X0 U609 ( .IN1(n454), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n467) );
  NAND2X0 U610 ( .IN1(n415), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n466) );
  NAND2X0 U611 ( .IN1(n469), .IN2(n470), .QN(n169) );
  NAND2X0 U612 ( .IN1(n641), .IN2(test_se), .QN(n470) );
  NAND2X0 U613 ( .IN1(n471), .IN2(n395), .QN(n469) );
  NAND3X0 U614 ( .IN1(n472), .IN2(n473), .IN3(n474), .QN(n471) );
  NAND2X0 U615 ( .IN1(xmit_dataH_4_), .IN2(n462), .QN(n474) );
  NAND2X0 U616 ( .IN1(n454), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n473) );
  NAND2X0 U617 ( .IN1(n640), .IN2(n415), .QN(n472) );
  NAND2X0 U618 ( .IN1(n475), .IN2(n476), .QN(n168) );
  NAND2X0 U619 ( .IN1(n642), .IN2(test_se), .QN(n476) );
  NAND2X0 U620 ( .IN1(n477), .IN2(n395), .QN(n475) );
  NAND3X0 U621 ( .IN1(n478), .IN2(n479), .IN3(n480), .QN(n477) );
  NAND2X0 U622 ( .IN1(xmit_dataH_3_), .IN2(n462), .QN(n480) );
  NAND2X0 U623 ( .IN1(n640), .IN2(n454), .QN(n479) );
  NAND2X0 U624 ( .IN1(n641), .IN2(n415), .QN(n478) );
  NAND2X0 U625 ( .IN1(n481), .IN2(n482), .QN(n167) );
  NAND2X0 U626 ( .IN1(n643), .IN2(test_se), .QN(n482) );
  NAND2X0 U627 ( .IN1(n483), .IN2(n395), .QN(n481) );
  NAND3X0 U628 ( .IN1(n484), .IN2(n485), .IN3(n486), .QN(n483) );
  NAND2X0 U629 ( .IN1(xmit_dataH_2_), .IN2(n462), .QN(n486) );
  NAND2X0 U630 ( .IN1(n641), .IN2(n454), .QN(n485) );
  NAND2X0 U631 ( .IN1(n642), .IN2(n415), .QN(n484) );
  NAND2X0 U632 ( .IN1(n487), .IN2(n488), .QN(n166) );
  NAND2X0 U633 ( .IN1(test_se), .IN2(n383), .QN(n488) );
  NAND2X0 U634 ( .IN1(n489), .IN2(n395), .QN(n487) );
  NAND3X0 U635 ( .IN1(n490), .IN2(n491), .IN3(n492), .QN(n489) );
  NAND2X0 U636 ( .IN1(xmit_dataH_1_), .IN2(n462), .QN(n492) );
  NAND2X0 U637 ( .IN1(n642), .IN2(n454), .QN(n491) );
  NAND2X0 U638 ( .IN1(n643), .IN2(n415), .QN(n490) );
  NAND2X0 U639 ( .IN1(n493), .IN2(n494), .QN(n164) );
  NAND2X0 U640 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n494) );
  NAND2X0 U641 ( .IN1(n495), .IN2(n395), .QN(n493) );
  NAND2X0 U642 ( .IN1(n445), .IN2(n496), .QN(n495) );
  NAND2X0 U643 ( .IN1(n409), .IN2(n405), .QN(n496) );
  INVX0 U644 ( .INP(n402), .ZN(n405) );
  NAND2X0 U645 ( .IN1(n497), .IN2(n645), .QN(n402) );
  OR3X1 U646 ( .IN1(n639), .IN2(xmitH), .IN3(iXMIT_state_1_temp), .Q(n445) );
  NAND3X0 U647 ( .IN1(n498), .IN2(n499), .IN3(n500), .QN(n163) );
  NAND2X0 U648 ( .IN1(n501), .IN2(iRECEIVER_state_0_), .QN(n499) );
  NAND3X0 U649 ( .IN1(n502), .IN2(n503), .IN3(n395), .QN(n501) );
  NAND2X0 U650 ( .IN1(n504), .IN2(iRECEIVER_state_1_), .QN(n503) );
  OR3X1 U651 ( .IN1(iRECEIVER_state_2_), .IN2(n652), .IN3(iRECEIVER_state_1_), 
        .Q(n502) );
  NAND3X0 U652 ( .IN1(n505), .IN2(n395), .IN3(n245), .QN(n498) );
  NAND2X0 U653 ( .IN1(n652), .IN2(n506), .QN(n505) );
  NAND2X0 U654 ( .IN1(n507), .IN2(iRECEIVER_state_1_), .QN(n506) );
  NAND2X0 U655 ( .IN1(n508), .IN2(n509), .QN(n162) );
  NAND2X0 U656 ( .IN1(n644), .IN2(test_se), .QN(n509) );
  NAND2X0 U657 ( .IN1(n510), .IN2(n395), .QN(n508) );
  NAND3X0 U658 ( .IN1(n511), .IN2(n512), .IN3(n238), .QN(n510) );
  NAND2X0 U659 ( .IN1(n241), .IN2(n652), .QN(n512) );
  NAND2X0 U660 ( .IN1(n513), .IN2(iRECEIVER_state_1_), .QN(n511) );
  NAND2X0 U661 ( .IN1(n507), .IN2(n514), .QN(n513) );
  NAND2X0 U662 ( .IN1(n515), .IN2(iRECEIVER_state_0_), .QN(n514) );
  NAND2X0 U663 ( .IN1(n516), .IN2(n517), .QN(n515) );
  NAND4X0 U664 ( .IN1(n644), .IN2(n384), .IN3(n376), .IN4(n379), .QN(n517) );
  NAND2X0 U665 ( .IN1(n518), .IN2(n519), .QN(n161) );
  NAND2X0 U666 ( .IN1(iRECEIVER_N20), .IN2(n395), .QN(n519) );
  NAND2X0 U667 ( .IN1(test_si), .IN2(test_se), .QN(n518) );
  NAND2X0 U668 ( .IN1(n520), .IN2(n521), .QN(n160) );
  NAND3X0 U669 ( .IN1(iRECEIVER_bitCell_cntrH_1_), .IN2(n395), .IN3(
        iRECEIVER_N20), .QN(n521) );
  NAND2X0 U670 ( .IN1(n522), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(n520) );
  NAND2X0 U671 ( .IN1(n395), .IN2(n523), .QN(n522) );
  NAND2X0 U672 ( .IN1(n524), .IN2(n244), .QN(n523) );
  NAND2X0 U673 ( .IN1(n525), .IN2(n526), .QN(n159) );
  NAND2X0 U674 ( .IN1(test_se), .IN2(iRECEIVER_bitCell_cntrH_1_), .QN(n526) );
  NAND2X0 U675 ( .IN1(iRECEIVER_N22), .IN2(n395), .QN(n525) );
  NAND2X0 U676 ( .IN1(n527), .IN2(n528), .QN(n157) );
  NAND2X0 U677 ( .IN1(iRECEIVER_N23), .IN2(n395), .QN(n528) );
  NAND2X0 U678 ( .IN1(test_se), .IN2(n659), .QN(n527) );
  NAND2X0 U679 ( .IN1(n529), .IN2(n530), .QN(n156) );
  NAND2X0 U680 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .QN(n530) );
  INVX0 U681 ( .INP(n24), .ZN(n529) );
  NOR2X0 U682 ( .IN1(n531), .IN2(n241), .QN(n24) );
  NAND2X0 U683 ( .IN1(n532), .IN2(n533), .QN(n155) );
  NAND2X0 U684 ( .IN1(n534), .IN2(n395), .QN(n533) );
  NAND2X0 U685 ( .IN1(n535), .IN2(n536), .QN(n534) );
  NAND2X0 U686 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .QN(n536)
         );
  NAND2X0 U687 ( .IN1(n647), .IN2(test_se), .QN(n532) );
  NAND3X0 U688 ( .IN1(n537), .IN2(n538), .IN3(n539), .QN(n154) );
  NAND2X0 U689 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .QN(n539) );
  NAND2X0 U690 ( .IN1(rec_dataH_rec_7), .IN2(n540), .QN(n538) );
  NAND2X0 U691 ( .IN1(n541), .IN2(n652), .QN(n537) );
  NAND2X0 U692 ( .IN1(n542), .IN2(n543), .QN(n153) );
  NAND2X0 U693 ( .IN1(rec_dataH_rec_7), .IN2(n395), .QN(n543) );
  NAND2X0 U694 ( .IN1(rec_dataH_temp_6), .IN2(test_se), .QN(n542) );
  NAND2X0 U695 ( .IN1(n544), .IN2(n545), .QN(n152) );
  NAND2X0 U696 ( .IN1(test_so), .IN2(n395), .QN(n545) );
  NAND2X0 U697 ( .IN1(rec_dataH_6_), .IN2(test_se), .QN(n544) );
  NAND3X0 U698 ( .IN1(n546), .IN2(n547), .IN3(n548), .QN(n150) );
  NAND2X0 U699 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .QN(n548) );
  NAND2X0 U700 ( .IN1(rec_dataH_rec_6), .IN2(n540), .QN(n547) );
  NAND2X0 U701 ( .IN1(n541), .IN2(rec_dataH_rec_7), .QN(n546) );
  NAND2X0 U702 ( .IN1(n549), .IN2(n550), .QN(n149) );
  NAND2X0 U703 ( .IN1(rec_dataH_rec_6), .IN2(n395), .QN(n550) );
  NAND2X0 U704 ( .IN1(rec_dataH_temp_5), .IN2(test_se), .QN(n549) );
  NAND2X0 U705 ( .IN1(n551), .IN2(n552), .QN(n148) );
  NAND2X0 U706 ( .IN1(rec_dataH_temp_6), .IN2(n395), .QN(n552) );
  NAND2X0 U707 ( .IN1(rec_dataH_5_), .IN2(test_se), .QN(n551) );
  NAND3X0 U708 ( .IN1(n553), .IN2(n554), .IN3(n555), .QN(n147) );
  NAND2X0 U709 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .QN(n555) );
  NAND2X0 U710 ( .IN1(rec_dataH_rec_5), .IN2(n540), .QN(n554) );
  NAND2X0 U711 ( .IN1(rec_dataH_rec_6), .IN2(n541), .QN(n553) );
  NAND2X0 U712 ( .IN1(n556), .IN2(n557), .QN(n146) );
  NAND2X0 U713 ( .IN1(rec_dataH_rec_5), .IN2(n395), .QN(n557) );
  NAND2X0 U714 ( .IN1(rec_dataH_temp_4), .IN2(test_se), .QN(n556) );
  NAND2X0 U715 ( .IN1(n558), .IN2(n559), .QN(n145) );
  NAND2X0 U716 ( .IN1(rec_dataH_temp_5), .IN2(n395), .QN(n559) );
  NAND2X0 U717 ( .IN1(rec_dataH_4_), .IN2(test_se), .QN(n558) );
  NAND3X0 U718 ( .IN1(n560), .IN2(n561), .IN3(n562), .QN(n143) );
  NAND2X0 U719 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .QN(n562) );
  NAND2X0 U720 ( .IN1(rec_dataH_rec_4), .IN2(n540), .QN(n561) );
  NAND2X0 U721 ( .IN1(rec_dataH_rec_5), .IN2(n541), .QN(n560) );
  NAND2X0 U722 ( .IN1(n563), .IN2(n564), .QN(n142) );
  NAND2X0 U723 ( .IN1(rec_dataH_rec_4), .IN2(n395), .QN(n564) );
  NAND2X0 U724 ( .IN1(rec_dataH_temp_3), .IN2(test_se), .QN(n563) );
  NAND2X0 U725 ( .IN1(n565), .IN2(n566), .QN(n141) );
  NAND2X0 U726 ( .IN1(rec_dataH_temp_4), .IN2(n395), .QN(n566) );
  NAND2X0 U727 ( .IN1(rec_dataH_3_), .IN2(test_se), .QN(n565) );
  NAND3X0 U728 ( .IN1(n567), .IN2(n568), .IN3(n569), .QN(n140) );
  NAND2X0 U729 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .QN(n569) );
  NAND2X0 U730 ( .IN1(rec_dataH_rec_3), .IN2(n540), .QN(n568) );
  NAND2X0 U731 ( .IN1(rec_dataH_rec_4), .IN2(n541), .QN(n567) );
  NAND2X0 U732 ( .IN1(n570), .IN2(n571), .QN(n139) );
  NAND2X0 U733 ( .IN1(rec_dataH_rec_3), .IN2(n395), .QN(n571) );
  NAND2X0 U734 ( .IN1(rec_dataH_temp_2), .IN2(test_se), .QN(n570) );
  NAND2X0 U735 ( .IN1(n572), .IN2(n573), .QN(n138) );
  NAND2X0 U736 ( .IN1(rec_dataH_temp_3), .IN2(n395), .QN(n573) );
  NAND2X0 U737 ( .IN1(rec_dataH_2_), .IN2(test_se), .QN(n572) );
  NAND3X0 U738 ( .IN1(n574), .IN2(n575), .IN3(n576), .QN(n136) );
  NAND2X0 U739 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .QN(n576) );
  NAND2X0 U740 ( .IN1(rec_dataH_rec_2), .IN2(n540), .QN(n575) );
  NAND2X0 U741 ( .IN1(rec_dataH_rec_3), .IN2(n541), .QN(n574) );
  NAND2X0 U742 ( .IN1(n577), .IN2(n578), .QN(n135) );
  NAND2X0 U743 ( .IN1(rec_dataH_rec_2), .IN2(n395), .QN(n578) );
  NAND2X0 U744 ( .IN1(rec_dataH_temp_1), .IN2(test_se), .QN(n577) );
  NAND2X0 U745 ( .IN1(n579), .IN2(n580), .QN(n134) );
  NAND2X0 U746 ( .IN1(rec_dataH_temp_2), .IN2(n395), .QN(n580) );
  NAND2X0 U747 ( .IN1(rec_dataH_1_), .IN2(test_se), .QN(n579) );
  NAND3X0 U748 ( .IN1(n581), .IN2(n582), .IN3(n583), .QN(n133) );
  NAND2X0 U749 ( .IN1(rec_dataH_rec_0_temp), .IN2(test_se), .QN(n583) );
  NAND2X0 U750 ( .IN1(rec_dataH_rec_1), .IN2(n540), .QN(n582) );
  NAND2X0 U751 ( .IN1(rec_dataH_rec_2), .IN2(n541), .QN(n581) );
  NAND2X0 U752 ( .IN1(n584), .IN2(n585), .QN(n132) );
  NAND2X0 U753 ( .IN1(rec_dataH_rec_1), .IN2(n395), .QN(n585) );
  NAND2X0 U754 ( .IN1(rec_dataH_temp_0), .IN2(test_se), .QN(n584) );
  NAND2X0 U755 ( .IN1(n586), .IN2(n587), .QN(n131) );
  NAND2X0 U756 ( .IN1(rec_dataH_temp_1), .IN2(n395), .QN(n587) );
  NAND2X0 U757 ( .IN1(rec_dataH_0_), .IN2(test_se), .QN(n586) );
  NAND3X0 U758 ( .IN1(n588), .IN2(n589), .IN3(n590), .QN(n129) );
  NAND2X0 U759 ( .IN1(test_se), .IN2(n658), .QN(n590) );
  NAND2X0 U760 ( .IN1(rec_dataH_rec_0_temp), .IN2(n540), .QN(n589) );
  NOR2X0 U761 ( .IN1(n591), .IN2(test_se), .QN(n540) );
  NAND2X0 U762 ( .IN1(rec_dataH_rec_1), .IN2(n541), .QN(n588) );
  NAND2X0 U763 ( .IN1(n592), .IN2(n593), .QN(n128) );
  NAND2X0 U764 ( .IN1(rec_dataH_rec_0_temp), .IN2(n395), .QN(n593) );
  NAND2X0 U765 ( .IN1(rec_dataH_7_), .IN2(test_se), .QN(n592) );
  NAND2X0 U766 ( .IN1(n594), .IN2(n595), .QN(n127) );
  NAND2X0 U767 ( .IN1(rec_dataH_temp_0), .IN2(n395), .QN(n595) );
  NAND2X0 U768 ( .IN1(xmit_doneH_temp), .IN2(test_se), .QN(n594) );
  NAND3X0 U769 ( .IN1(n596), .IN2(n597), .IN3(n598), .QN(n126) );
  NAND2X0 U770 ( .IN1(n656), .IN2(test_se), .QN(n598) );
  NAND2X0 U771 ( .IN1(n599), .IN2(n644), .QN(n597) );
  NAND2X0 U772 ( .IN1(n541), .IN2(iRECEIVER_N28), .QN(n596) );
  NAND3X0 U773 ( .IN1(n600), .IN2(n601), .IN3(n602), .QN(n125) );
  NAND2X0 U774 ( .IN1(test_se), .IN2(rec_readyH), .QN(n602) );
  NAND2X0 U775 ( .IN1(n541), .IN2(n384), .QN(n601) );
  NAND2X0 U776 ( .IN1(n657), .IN2(n599), .QN(n600) );
  NAND3X0 U777 ( .IN1(n603), .IN2(n604), .IN3(n605), .QN(n124) );
  NAND2X0 U778 ( .IN1(n657), .IN2(test_se), .QN(n605) );
  NAND2X0 U779 ( .IN1(n653), .IN2(n599), .QN(n604) );
  NAND2X0 U780 ( .IN1(n541), .IN2(iRECEIVER_N26), .QN(n603) );
  NAND3X0 U781 ( .IN1(n606), .IN2(n607), .IN3(n608), .QN(n122) );
  NAND2X0 U782 ( .IN1(n653), .IN2(test_se), .QN(n608) );
  NAND2X0 U783 ( .IN1(n656), .IN2(n599), .QN(n607) );
  AND3X1 U784 ( .IN1(n535), .IN2(n609), .IN3(n395), .Q(n599) );
  NAND2X0 U785 ( .IN1(n245), .IN2(iRECEIVER_state_2_), .QN(n609) );
  NAND3X0 U786 ( .IN1(n241), .IN2(n652), .IN3(n238), .QN(n535) );
  NAND2X0 U787 ( .IN1(n541), .IN2(iRECEIVER_N27), .QN(n606) );
  INVX0 U788 ( .INP(n500), .ZN(n541) );
  NAND2X0 U789 ( .IN1(n591), .IN2(n395), .QN(n500) );
  NOR2X0 U790 ( .IN1(iRECEIVER_state_0_), .IN2(n238), .QN(n591) );
  NAND2X0 U791 ( .IN1(n610), .IN2(n611), .QN(n121) );
  NAND3X0 U792 ( .IN1(iXMIT_N25), .IN2(n612), .IN3(n395), .QN(n611) );
  NAND2X0 U793 ( .IN1(n655), .IN2(test_se), .QN(n610) );
  NAND2X0 U794 ( .IN1(n613), .IN2(n614), .QN(n120) );
  NAND2X0 U795 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .QN(n614) );
  NAND2X0 U796 ( .IN1(iXMIT_N26), .IN2(n395), .QN(n613) );
  NAND3X0 U797 ( .IN1(n615), .IN2(n616), .IN3(n617), .QN(n119) );
  NAND3X0 U798 ( .IN1(iXMIT_N26), .IN2(n646), .IN3(n395), .QN(n616) );
  NAND2X0 U799 ( .IN1(n654), .IN2(test_se), .QN(n615) );
  NAND2X0 U800 ( .IN1(n618), .IN2(n619), .QN(n118) );
  NAND2X0 U801 ( .IN1(test_se), .IN2(n639), .QN(n619) );
  NAND2X0 U802 ( .IN1(n620), .IN2(n395), .QN(n618) );
  NAND3X0 U803 ( .IN1(n621), .IN2(n622), .IN3(n623), .QN(n620) );
  NAND2X0 U804 ( .IN1(xmit_dataH_0_), .IN2(n462), .QN(n623) );
  NAND2X0 U805 ( .IN1(n643), .IN2(n454), .QN(n622) );
  NOR2X0 U806 ( .IN1(n415), .IN2(n462), .QN(n454) );
  INVX0 U807 ( .INP(n624), .ZN(n462) );
  NAND2X0 U808 ( .IN1(n415), .IN2(n383), .QN(n621) );
  INVX0 U809 ( .INP(n455), .ZN(n415) );
  NAND2X0 U810 ( .IN1(n624), .IN2(n625), .QN(n455) );
  NAND2X0 U811 ( .IN1(n639), .IN2(n239), .QN(n625) );
  NAND3X0 U812 ( .IN1(n246), .IN2(n242), .IN3(xmitH), .QN(n624) );
  NAND2X0 U813 ( .IN1(n626), .IN2(n627), .QN(n117) );
  NAND2X0 U814 ( .IN1(uart_REC_dataH), .IN2(n395), .QN(n627) );
  NAND2X0 U815 ( .IN1(n652), .IN2(test_se), .QN(n626) );
  NAND2X0 U816 ( .IN1(n628), .IN2(n629), .QN(n115) );
  NAND2X0 U817 ( .IN1(n647), .IN2(n395), .QN(n629) );
  INVX0 U818 ( .INP(test_se), .ZN(n395) );
  NAND2X0 U819 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .QN(n628) );
  AND2X1 U820 ( .IN1(iXMIT_N24), .IN2(n612), .Q(iXMIT_N28) );
  NAND2X0 U821 ( .IN1(n617), .IN2(n630), .QN(iXMIT_N27) );
  NAND2X0 U822 ( .IN1(iXMIT_N26), .IN2(n646), .QN(n630) );
  NAND3X0 U823 ( .IN1(n612), .IN2(n382), .IN3(n654), .QN(n617) );
  AND2X1 U824 ( .IN1(n612), .IN2(n378), .Q(iXMIT_N26) );
  NAND2X0 U825 ( .IN1(n387), .IN2(n416), .QN(n612) );
  NAND2X0 U826 ( .IN1(n411), .IN2(iXMIT_state_1_temp), .QN(n416) );
  NAND2X0 U827 ( .IN1(n446), .IN2(n638), .QN(n411) );
  AND4X1 U828 ( .IN1(n645), .IN2(n655), .IN3(n646), .IN4(n378), .Q(n446) );
  INVX0 U829 ( .INP(n409), .ZN(n387) );
  NOR2X0 U830 ( .IN1(n239), .IN2(n242), .QN(n409) );
  XOR2X1 U831 ( .IN1(n645), .IN2(n497), .Q(iXMIT_N25) );
  AND2X1 U832 ( .IN1(n631), .IN2(n655), .Q(n497) );
  XOR2X1 U833 ( .IN1(n631), .IN2(n655), .Q(iXMIT_N24) );
  NOR2X0 U834 ( .IN1(n378), .IN2(n382), .QN(n631) );
  XOR2X1 U835 ( .IN1(n644), .IN2(n632), .Q(iRECEIVER_N28) );
  NOR2X0 U836 ( .IN1(n633), .IN2(n376), .QN(n632) );
  XNOR2X1 U837 ( .IN1(n633), .IN2(n656), .Q(iRECEIVER_N27) );
  NAND2X0 U838 ( .IN1(n653), .IN2(n657), .QN(n633) );
  XNOR2X1 U839 ( .IN1(n379), .IN2(n657), .Q(iRECEIVER_N26) );
  AND2X1 U840 ( .IN1(n524), .IN2(iRECEIVER_N19), .Q(iRECEIVER_N23) );
  AND2X1 U841 ( .IN1(n524), .IN2(iRECEIVER_N18), .Q(iRECEIVER_N22) );
  AND2X1 U842 ( .IN1(iRECEIVER_N17), .IN2(n524), .Q(iRECEIVER_N21) );
  INVX0 U843 ( .INP(n634), .ZN(n524) );
  NOR2X0 U844 ( .IN1(n634), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(
        iRECEIVER_N20) );
  NAND4X0 U845 ( .IN1(n238), .IN2(n531), .IN3(n635), .IN4(iRECEIVER_state_1_), 
        .QN(n634) );
  OR2X1 U846 ( .IN1(n507), .IN2(iRECEIVER_state_0_), .Q(n635) );
  NAND4X0 U847 ( .IN1(n244), .IN2(n659), .IN3(n255), .IN4(n381), .QN(n507) );
  NAND2X0 U848 ( .IN1(n516), .IN2(iRECEIVER_state_0_), .QN(n531) );
  INVX0 U849 ( .INP(n504), .ZN(n516) );
  NAND4X0 U850 ( .IN1(n658), .IN2(n659), .IN3(n255), .IN4(
        iRECEIVER_bitCell_cntrH_1_), .QN(n504) );
  XOR2X1 U851 ( .IN1(n636), .IN2(n381), .Q(iRECEIVER_N19) );
  NAND2X0 U852 ( .IN1(n637), .IN2(n659), .QN(n636) );
  XOR2X1 U853 ( .IN1(n659), .IN2(n637), .Q(iRECEIVER_N18) );
  NOR2X0 U854 ( .IN1(n255), .IN2(n244), .QN(n637) );
  XNOR2X1 U855 ( .IN1(n244), .IN2(iRECEIVER_bitCell_cntrH_0_), .Q(
        iRECEIVER_N17) );
endmodule

