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
         iRECEIVER_state_CTRL, iRECEIVER_N_CTRL_1_, iRECEIVER_N_CTRL_2_,
         iRECEIVER_bitCell_CTRL, iRECEIVER_N18, iRECEIVER_N17,
         iRECEIVER_bitCell_cntrH_0_, iRECEIVER_bitCell_cntrH_1_, iRECEIVER_N22,
         iRECEIVER_N21, iRECEIVER_N20, iRECEIVER_N19, n400, iRECEIVER_N27,
         iRECEIVER_N26, iRECEIVER_N23, iRECEIVER_state_0_, iRECEIVER_state_1_,
         iRECEIVER_state_2_, iXMIT_state_CTRL, iXMIT_N_CTRL_1_,
         iXMIT_N_CTRL_2_, iXMIT_xmit_CTRL, iXMIT_N24, iXMIT_xmit_ShiftRegH_7_,
         iXMIT_xmit_ShiftRegH_6_, iXMIT_xmit_ShiftRegH_5_, iXMIT_N28,
         iXMIT_N27, iXMIT_N26, iXMIT_N25, iXMIT_N46, iXMIT_N45, iXMIT_N44,
         iXMIT_N29, iXMIT_state_0_, iXMIT_state_1_, iXMIT_state_2_, n255, n241,
         n244, n245, n238, n242, n246, n239, rec_dataH_rec_7, rec_dataH_rec_6,
         rec_dataH_rec_5, rec_dataH_rec_4, rec_dataH_rec_3, rec_dataH_rec_2,
         rec_dataH_rec_1, rec_dataH_rec_0, n181, n180, n179, n178, n177, n176,
         n175, n174, n173, n172, n171, n170, n169, n168, n167, n166, n164,
         n163, n162, n161, n160, n159, n157, n156, n155, n154, test_point_DOUT,
         n153, n152, n150, n149, n148, n147, n146, n145, n143, n142, n141,
         n140, n139, n138, n136, n135, n134, n133, n132, n131, n129, n128,
         n127, n126, n125, n124, n122, n121, n120, n119, n118, n117, n23, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
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
         n633, n634, n635, n636, n637, n638, n639, n640;

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
  NAND4X1 TrojanU298 ( .IN1(n400), .IN2(iRECEIVER_N27), .IN3(iRECEIVER_N26), 
        .IN4(iRECEIVER_N23), .QN(iRECEIVER_N_CTRL_1_) );
  NAND4X1 TrojanU297 ( .IN1(n23), .IN2(iRECEIVER_state_0_), .IN3(
        iRECEIVER_state_1_), .IN4(iRECEIVER_state_2_), .QN(
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
  NAND4X1 TrojanU292 ( .IN1(n367), .IN2(iXMIT_state_0_), .IN3(iXMIT_state_1_), 
        .IN4(iXMIT_state_2_), .QN(iXMIT_state_CTRL) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n181), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n636) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n180), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_0_), .QN(n239) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n179), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_2_), .QN(n242) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n178), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_1_), .QN(n246) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n177), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n634), .QN(n375) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n176), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n629), .QN(n370) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n175), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n633), .QN(n368) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n174), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n621) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n173), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n172), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n171), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n170), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n622) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n623) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n624) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n167), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n625) );
  DFFARX1 iXMIT_xmit_doneH_reg ( .D(n166), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(xmit_doneH_temp) );
  DFFARX1 iRECEIVER_state_reg_1_ ( .D(n164), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_1_), .QN(n241) );
  DFFASX1 iRECEIVER_state_reg_0_ ( .D(n163), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(iRECEIVER_state_0_), .QN(n245) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(n162), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iRECEIVER_bitCell_cntrH_0_), .QN(n255) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(n161), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iRECEIVER_bitCell_cntrH_1_), .QN(n244) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(n160), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n640) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n159), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n639), .QN(n371) );
  DFFARX1 iRECEIVER_state_reg_2_ ( .D(n157), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_2_), .QN(n238) );
  DFFARX1 iRECEIVER_rec_readyH_reg ( .D(n156), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(rec_readyH) );
  DFFARX1 iRECEIVER_par_dataH_reg_7_ ( .D(n155), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_7) );
  DFFARX1 rec_dataH_temp_reg_7_ ( .D(n154), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(test_so) );
  DFFARX1 rec_dataH_reg_7_ ( .D(n153), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_7_) );
  DFFARX1 iRECEIVER_par_dataH_reg_6_ ( .D(n152), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_6) );
  DFFARX1 rec_dataH_temp_reg_6_ ( .D(n150), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_6) );
  DFFARX1 rec_dataH_reg_6_ ( .D(n149), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_6_) );
  DFFARX1 iRECEIVER_par_dataH_reg_5_ ( .D(n148), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_5) );
  DFFARX1 rec_dataH_temp_reg_5_ ( .D(n147), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_5) );
  DFFARX1 rec_dataH_reg_5_ ( .D(n146), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_5_) );
  DFFARX1 iRECEIVER_par_dataH_reg_4_ ( .D(n145), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_4) );
  DFFARX1 rec_dataH_temp_reg_4_ ( .D(n143), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_4) );
  DFFARX1 rec_dataH_reg_4_ ( .D(n142), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_4_) );
  DFFARX1 iRECEIVER_par_dataH_reg_3_ ( .D(n141), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_3) );
  DFFARX1 rec_dataH_temp_reg_3_ ( .D(n140), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_3) );
  DFFARX1 rec_dataH_reg_3_ ( .D(n139), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_3_) );
  DFFARX1 iRECEIVER_par_dataH_reg_2_ ( .D(n138), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_2) );
  DFFARX1 rec_dataH_temp_reg_2_ ( .D(n136), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_2) );
  DFFARX1 rec_dataH_reg_2_ ( .D(n135), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_2_) );
  DFFARX1 iRECEIVER_par_dataH_reg_1_ ( .D(n134), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_1) );
  DFFARX1 rec_dataH_temp_reg_1_ ( .D(n133), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_1) );
  DFFARX1 rec_dataH_reg_1_ ( .D(n132), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_1_) );
  DFFARX1 iRECEIVER_par_dataH_reg_0_ ( .D(n131), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_0) );
  DFFARX1 rec_dataH_temp_reg_0_ ( .D(n129), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_0) );
  DFFARX1 rec_dataH_reg_0_ ( .D(n128), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_0_) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_3_ ( .D(n127), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n632), .QN(n372) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n126), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n638) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n125), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n631) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n124), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n637) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n122), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n626) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n121), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n635), .QN(n369) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n120), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n627), .QN(n373) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n119), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n374) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n118), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n628) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n117), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n630) );
  DFFASX1 TrojaniDatasend_reg ( .D(n117), .CLK(sys_clk), .SETB(sys_rst_l), .Q(
        n400) );
  NAND3X0 U523 ( .IN1(n376), .IN2(n377), .IN3(n378), .QN(uart_XMIT_dataH) );
  NAND2X0 U524 ( .IN1(n246), .IN2(n242), .QN(n378) );
  NAND2X0 U525 ( .IN1(n379), .IN2(n374), .QN(n376) );
  NAND2X0 U526 ( .IN1(n242), .IN2(n239), .QN(n379) );
  NAND2X0 U527 ( .IN1(n380), .IN2(n381), .QN(test_point_DOUT) );
  NAND2X0 U528 ( .IN1(rec_readyH), .IN2(n382), .QN(n381) );
  INVX0 U529 ( .INP(test_mode), .ZN(n382) );
  NAND2X0 U530 ( .IN1(sys_clk), .IN2(test_mode), .QN(n380) );
  NAND2X0 U531 ( .IN1(n383), .IN2(n384), .QN(n181) );
  NAND2X0 U532 ( .IN1(iXMIT_N28), .IN2(n385), .QN(n384) );
  NAND2X0 U533 ( .IN1(test_se), .IN2(n627), .QN(n383) );
  NAND2X0 U534 ( .IN1(n386), .IN2(n387), .QN(n180) );
  NAND2X0 U535 ( .IN1(n621), .IN2(test_se), .QN(n387) );
  NAND2X0 U536 ( .IN1(n388), .IN2(n385), .QN(n386) );
  NAND2X0 U537 ( .IN1(n389), .IN2(n390), .QN(n388) );
  NAND2X0 U538 ( .IN1(n391), .IN2(iXMIT_state_2_), .QN(n390) );
  NAND2X0 U539 ( .IN1(n392), .IN2(iXMIT_state_0_), .QN(n391) );
  NAND3X0 U540 ( .IN1(n393), .IN2(iXMIT_state_1_), .IN3(n394), .QN(n389) );
  NAND2X0 U541 ( .IN1(n239), .IN2(n395), .QN(n394) );
  NAND2X0 U542 ( .IN1(n396), .IN2(n397), .QN(n179) );
  NAND2X0 U543 ( .IN1(test_se), .IN2(iXMIT_state_1_), .QN(n397) );
  NAND2X0 U544 ( .IN1(n367), .IN2(n385), .QN(n396) );
  NAND2X0 U545 ( .IN1(n398), .IN2(n399), .QN(n367) );
  NAND2X0 U546 ( .IN1(n401), .IN2(n395), .QN(n399) );
  OR2X1 U547 ( .IN1(n402), .IN2(n246), .Q(n398) );
  NAND2X0 U548 ( .IN1(n403), .IN2(n404), .QN(n178) );
  NAND2X0 U549 ( .IN1(test_se), .IN2(iXMIT_state_0_), .QN(n404) );
  NAND2X0 U550 ( .IN1(n405), .IN2(n385), .QN(n403) );
  NAND2X0 U551 ( .IN1(n406), .IN2(n407), .QN(n405) );
  NAND3X0 U552 ( .IN1(n408), .IN2(n409), .IN3(n410), .QN(n177) );
  NAND2X0 U553 ( .IN1(test_se), .IN2(n626), .QN(n410) );
  NAND2X0 U554 ( .IN1(n411), .IN2(n375), .QN(n409) );
  NAND2X0 U555 ( .IN1(n634), .IN2(n412), .QN(n408) );
  NAND3X0 U556 ( .IN1(n413), .IN2(n414), .IN3(n415), .QN(n176) );
  NAND2X0 U557 ( .IN1(n634), .IN2(test_se), .QN(n415) );
  NAND2X0 U558 ( .IN1(n629), .IN2(n412), .QN(n414) );
  NAND2X0 U559 ( .IN1(n411), .IN2(iXMIT_N44), .QN(n413) );
  NAND3X0 U560 ( .IN1(n416), .IN2(n417), .IN3(n418), .QN(n175) );
  NAND2X0 U561 ( .IN1(n629), .IN2(test_se), .QN(n418) );
  NAND2X0 U562 ( .IN1(n633), .IN2(n412), .QN(n417) );
  NAND2X0 U563 ( .IN1(n411), .IN2(iXMIT_N45), .QN(n416) );
  NAND3X0 U564 ( .IN1(n419), .IN2(n420), .IN3(n421), .QN(n174) );
  NAND2X0 U565 ( .IN1(n633), .IN2(test_se), .QN(n421) );
  NAND2X0 U566 ( .IN1(n412), .IN2(n621), .QN(n420) );
  AND3X1 U567 ( .IN1(n422), .IN2(n385), .IN3(n423), .Q(n412) );
  NAND2X0 U568 ( .IN1(n411), .IN2(iXMIT_N46), .QN(n419) );
  NOR2X0 U569 ( .IN1(n422), .IN2(test_se), .QN(n411) );
  OR3X1 U570 ( .IN1(n239), .IN2(n246), .IN3(n393), .Q(n422) );
  NAND2X0 U571 ( .IN1(n424), .IN2(n425), .QN(n393) );
  NAND4X0 U572 ( .IN1(n621), .IN2(n375), .IN3(n368), .IN4(n370), .QN(n425) );
  NAND2X0 U573 ( .IN1(n426), .IN2(n427), .QN(n173) );
  NAND2X0 U574 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n427) );
  NAND2X0 U575 ( .IN1(n428), .IN2(n385), .QN(n426) );
  NAND3X0 U576 ( .IN1(n429), .IN2(n430), .IN3(n431), .QN(n428) );
  INVX0 U577 ( .INP(n432), .ZN(n431) );
  NAND2X0 U578 ( .IN1(n406), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n430) );
  NAND2X0 U579 ( .IN1(xmit_dataH_7_), .IN2(n433), .QN(n429) );
  NAND2X0 U580 ( .IN1(n434), .IN2(n435), .QN(n172) );
  NAND2X0 U581 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n435) );
  NAND2X0 U582 ( .IN1(n436), .IN2(n385), .QN(n434) );
  NAND3X0 U583 ( .IN1(n437), .IN2(n438), .IN3(n439), .QN(n436) );
  NAND2X0 U584 ( .IN1(xmit_dataH_6_), .IN2(n440), .QN(n439) );
  NAND2X0 U585 ( .IN1(n432), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n438) );
  NAND2X0 U586 ( .IN1(n406), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n437) );
  NAND2X0 U587 ( .IN1(n441), .IN2(n442), .QN(n171) );
  NAND2X0 U588 ( .IN1(n622), .IN2(test_se), .QN(n442) );
  NAND2X0 U589 ( .IN1(n443), .IN2(n385), .QN(n441) );
  NAND3X0 U590 ( .IN1(n444), .IN2(n445), .IN3(n446), .QN(n443) );
  NAND2X0 U591 ( .IN1(xmit_dataH_5_), .IN2(n440), .QN(n446) );
  NAND2X0 U592 ( .IN1(n432), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n445) );
  NAND2X0 U593 ( .IN1(n406), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n444) );
  NAND2X0 U594 ( .IN1(n447), .IN2(n448), .QN(n170) );
  NAND2X0 U595 ( .IN1(n623), .IN2(test_se), .QN(n448) );
  NAND2X0 U596 ( .IN1(n449), .IN2(n385), .QN(n447) );
  NAND3X0 U597 ( .IN1(n450), .IN2(n451), .IN3(n452), .QN(n449) );
  NAND2X0 U598 ( .IN1(xmit_dataH_4_), .IN2(n440), .QN(n452) );
  NAND2X0 U599 ( .IN1(n432), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n451) );
  NAND2X0 U600 ( .IN1(n622), .IN2(n406), .QN(n450) );
  NAND2X0 U601 ( .IN1(n453), .IN2(n454), .QN(n169) );
  NAND2X0 U602 ( .IN1(n624), .IN2(test_se), .QN(n454) );
  NAND2X0 U603 ( .IN1(n455), .IN2(n385), .QN(n453) );
  NAND3X0 U604 ( .IN1(n456), .IN2(n457), .IN3(n458), .QN(n455) );
  NAND2X0 U605 ( .IN1(xmit_dataH_3_), .IN2(n440), .QN(n458) );
  NAND2X0 U606 ( .IN1(n622), .IN2(n432), .QN(n457) );
  NAND2X0 U607 ( .IN1(n623), .IN2(n406), .QN(n456) );
  NAND2X0 U608 ( .IN1(n459), .IN2(n460), .QN(n168) );
  NAND2X0 U609 ( .IN1(n625), .IN2(test_se), .QN(n460) );
  NAND2X0 U610 ( .IN1(n461), .IN2(n385), .QN(n459) );
  NAND3X0 U611 ( .IN1(n462), .IN2(n463), .IN3(n464), .QN(n461) );
  NAND2X0 U612 ( .IN1(xmit_dataH_2_), .IN2(n440), .QN(n464) );
  NAND2X0 U613 ( .IN1(n623), .IN2(n432), .QN(n463) );
  NAND2X0 U614 ( .IN1(n624), .IN2(n406), .QN(n462) );
  NAND2X0 U615 ( .IN1(n465), .IN2(n466), .QN(n167) );
  NAND2X0 U616 ( .IN1(test_se), .IN2(n374), .QN(n466) );
  NAND2X0 U617 ( .IN1(n467), .IN2(n385), .QN(n465) );
  NAND3X0 U618 ( .IN1(n468), .IN2(n469), .IN3(n470), .QN(n467) );
  NAND2X0 U619 ( .IN1(xmit_dataH_1_), .IN2(n440), .QN(n470) );
  NAND2X0 U620 ( .IN1(n624), .IN2(n432), .QN(n469) );
  NAND2X0 U621 ( .IN1(n625), .IN2(n406), .QN(n468) );
  NAND2X0 U622 ( .IN1(n471), .IN2(n472), .QN(n166) );
  NAND2X0 U623 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n472) );
  NAND2X0 U624 ( .IN1(n473), .IN2(n385), .QN(n471) );
  NAND2X0 U625 ( .IN1(n423), .IN2(n474), .QN(n473) );
  NAND2X0 U626 ( .IN1(n392), .IN2(n401), .QN(n474) );
  INVX0 U627 ( .INP(n395), .ZN(n392) );
  NAND2X0 U628 ( .IN1(n626), .IN2(n475), .QN(n395) );
  OR3X1 U629 ( .IN1(iXMIT_state_2_), .IN2(xmitH), .IN3(iXMIT_state_1_), .Q(
        n423) );
  NAND3X0 U630 ( .IN1(n476), .IN2(n477), .IN3(n478), .QN(n164) );
  NAND2X0 U631 ( .IN1(n479), .IN2(iRECEIVER_state_0_), .QN(n477) );
  NAND3X0 U632 ( .IN1(n480), .IN2(n481), .IN3(n385), .QN(n479) );
  NAND2X0 U633 ( .IN1(n482), .IN2(iRECEIVER_state_1_), .QN(n481) );
  OR3X1 U634 ( .IN1(iRECEIVER_state_2_), .IN2(n630), .IN3(iRECEIVER_state_1_), 
        .Q(n480) );
  NAND3X0 U635 ( .IN1(n483), .IN2(n385), .IN3(n245), .QN(n476) );
  NAND2X0 U636 ( .IN1(n630), .IN2(n484), .QN(n483) );
  NAND2X0 U637 ( .IN1(n485), .IN2(iRECEIVER_state_1_), .QN(n484) );
  NAND2X0 U638 ( .IN1(n486), .IN2(n487), .QN(n163) );
  NAND2X0 U639 ( .IN1(n632), .IN2(test_se), .QN(n487) );
  NAND2X0 U640 ( .IN1(n488), .IN2(n385), .QN(n486) );
  NAND3X0 U641 ( .IN1(n489), .IN2(n490), .IN3(n238), .QN(n488) );
  NAND2X0 U642 ( .IN1(n241), .IN2(n630), .QN(n490) );
  NAND2X0 U643 ( .IN1(n491), .IN2(iRECEIVER_state_1_), .QN(n489) );
  NAND2X0 U644 ( .IN1(n485), .IN2(n492), .QN(n491) );
  NAND2X0 U645 ( .IN1(n493), .IN2(iRECEIVER_state_0_), .QN(n492) );
  NAND2X0 U646 ( .IN1(n494), .IN2(n495), .QN(n493) );
  OR4X1 U647 ( .IN1(n372), .IN2(n638), .IN3(n637), .IN4(n631), .Q(n495) );
  NAND2X0 U648 ( .IN1(n496), .IN2(n497), .QN(n162) );
  NAND2X0 U649 ( .IN1(iRECEIVER_N20), .IN2(n385), .QN(n497) );
  NAND2X0 U650 ( .IN1(test_si), .IN2(test_se), .QN(n496) );
  NAND2X0 U651 ( .IN1(n498), .IN2(n499), .QN(n161) );
  NAND3X0 U652 ( .IN1(iRECEIVER_bitCell_cntrH_1_), .IN2(n385), .IN3(
        iRECEIVER_N20), .QN(n499) );
  NAND2X0 U653 ( .IN1(n500), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(n498) );
  NAND2X0 U654 ( .IN1(n385), .IN2(n501), .QN(n500) );
  NAND2X0 U655 ( .IN1(n502), .IN2(n244), .QN(n501) );
  NAND2X0 U656 ( .IN1(n503), .IN2(n504), .QN(n160) );
  NAND2X0 U657 ( .IN1(test_se), .IN2(iRECEIVER_bitCell_cntrH_1_), .QN(n504) );
  NAND2X0 U658 ( .IN1(iRECEIVER_N22), .IN2(n385), .QN(n503) );
  NAND2X0 U659 ( .IN1(n505), .IN2(n506), .QN(n159) );
  NAND2X0 U660 ( .IN1(iRECEIVER_N23), .IN2(n385), .QN(n506) );
  NAND2X0 U661 ( .IN1(test_se), .IN2(n640), .QN(n505) );
  NAND2X0 U662 ( .IN1(n507), .IN2(n508), .QN(n157) );
  NAND2X0 U663 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .QN(n508) );
  INVX0 U664 ( .INP(n23), .ZN(n507) );
  NOR2X0 U665 ( .IN1(n509), .IN2(n241), .QN(n23) );
  NAND2X0 U666 ( .IN1(n510), .IN2(n511), .QN(n156) );
  NAND2X0 U667 ( .IN1(n628), .IN2(test_se), .QN(n511) );
  NAND2X0 U668 ( .IN1(n512), .IN2(n385), .QN(n510) );
  NAND2X0 U669 ( .IN1(n513), .IN2(n514), .QN(n512) );
  NAND2X0 U670 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .QN(n514)
         );
  NAND3X0 U671 ( .IN1(n515), .IN2(n516), .IN3(n517), .QN(n155) );
  NAND2X0 U672 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .QN(n517) );
  NAND2X0 U673 ( .IN1(rec_dataH_rec_7), .IN2(n518), .QN(n516) );
  NAND2X0 U674 ( .IN1(n519), .IN2(n630), .QN(n515) );
  NAND2X0 U675 ( .IN1(n520), .IN2(n521), .QN(n154) );
  NAND2X0 U676 ( .IN1(rec_dataH_rec_7), .IN2(n385), .QN(n521) );
  NAND2X0 U677 ( .IN1(rec_dataH_temp_6), .IN2(test_se), .QN(n520) );
  NAND2X0 U678 ( .IN1(n522), .IN2(n523), .QN(n153) );
  NAND2X0 U679 ( .IN1(test_so), .IN2(n385), .QN(n523) );
  NAND2X0 U680 ( .IN1(rec_dataH_6_), .IN2(test_se), .QN(n522) );
  NAND3X0 U681 ( .IN1(n524), .IN2(n525), .IN3(n526), .QN(n152) );
  NAND2X0 U682 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .QN(n526) );
  NAND2X0 U683 ( .IN1(rec_dataH_rec_6), .IN2(n518), .QN(n525) );
  NAND2X0 U684 ( .IN1(n519), .IN2(rec_dataH_rec_7), .QN(n524) );
  NAND2X0 U685 ( .IN1(n527), .IN2(n528), .QN(n150) );
  NAND2X0 U686 ( .IN1(rec_dataH_rec_6), .IN2(n385), .QN(n528) );
  NAND2X0 U687 ( .IN1(rec_dataH_temp_5), .IN2(test_se), .QN(n527) );
  NAND2X0 U688 ( .IN1(n529), .IN2(n530), .QN(n149) );
  NAND2X0 U689 ( .IN1(rec_dataH_temp_6), .IN2(n385), .QN(n530) );
  NAND2X0 U690 ( .IN1(rec_dataH_5_), .IN2(test_se), .QN(n529) );
  NAND3X0 U691 ( .IN1(n531), .IN2(n532), .IN3(n533), .QN(n148) );
  NAND2X0 U692 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .QN(n533) );
  NAND2X0 U693 ( .IN1(rec_dataH_rec_5), .IN2(n518), .QN(n532) );
  NAND2X0 U694 ( .IN1(rec_dataH_rec_6), .IN2(n519), .QN(n531) );
  NAND2X0 U695 ( .IN1(n534), .IN2(n535), .QN(n147) );
  NAND2X0 U696 ( .IN1(rec_dataH_rec_5), .IN2(n385), .QN(n535) );
  NAND2X0 U697 ( .IN1(rec_dataH_temp_4), .IN2(test_se), .QN(n534) );
  NAND2X0 U698 ( .IN1(n536), .IN2(n537), .QN(n146) );
  NAND2X0 U699 ( .IN1(rec_dataH_temp_5), .IN2(n385), .QN(n537) );
  NAND2X0 U700 ( .IN1(rec_dataH_4_), .IN2(test_se), .QN(n536) );
  NAND3X0 U701 ( .IN1(n538), .IN2(n539), .IN3(n540), .QN(n145) );
  NAND2X0 U702 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .QN(n540) );
  NAND2X0 U703 ( .IN1(rec_dataH_rec_4), .IN2(n518), .QN(n539) );
  NAND2X0 U704 ( .IN1(rec_dataH_rec_5), .IN2(n519), .QN(n538) );
  NAND2X0 U705 ( .IN1(n541), .IN2(n542), .QN(n143) );
  NAND2X0 U706 ( .IN1(rec_dataH_rec_4), .IN2(n385), .QN(n542) );
  NAND2X0 U707 ( .IN1(rec_dataH_temp_3), .IN2(test_se), .QN(n541) );
  NAND2X0 U708 ( .IN1(n543), .IN2(n544), .QN(n142) );
  NAND2X0 U709 ( .IN1(rec_dataH_temp_4), .IN2(n385), .QN(n544) );
  NAND2X0 U710 ( .IN1(rec_dataH_3_), .IN2(test_se), .QN(n543) );
  NAND3X0 U711 ( .IN1(n545), .IN2(n546), .IN3(n547), .QN(n141) );
  NAND2X0 U712 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .QN(n547) );
  NAND2X0 U713 ( .IN1(rec_dataH_rec_3), .IN2(n518), .QN(n546) );
  NAND2X0 U714 ( .IN1(rec_dataH_rec_4), .IN2(n519), .QN(n545) );
  NAND2X0 U715 ( .IN1(n548), .IN2(n549), .QN(n140) );
  NAND2X0 U716 ( .IN1(rec_dataH_rec_3), .IN2(n385), .QN(n549) );
  NAND2X0 U717 ( .IN1(rec_dataH_temp_2), .IN2(test_se), .QN(n548) );
  NAND2X0 U718 ( .IN1(n550), .IN2(n551), .QN(n139) );
  NAND2X0 U719 ( .IN1(rec_dataH_temp_3), .IN2(n385), .QN(n551) );
  NAND2X0 U720 ( .IN1(rec_dataH_2_), .IN2(test_se), .QN(n550) );
  NAND3X0 U721 ( .IN1(n552), .IN2(n553), .IN3(n554), .QN(n138) );
  NAND2X0 U722 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .QN(n554) );
  NAND2X0 U723 ( .IN1(rec_dataH_rec_2), .IN2(n518), .QN(n553) );
  NAND2X0 U724 ( .IN1(rec_dataH_rec_3), .IN2(n519), .QN(n552) );
  NAND2X0 U725 ( .IN1(n555), .IN2(n556), .QN(n136) );
  NAND2X0 U726 ( .IN1(rec_dataH_rec_2), .IN2(n385), .QN(n556) );
  NAND2X0 U727 ( .IN1(rec_dataH_temp_1), .IN2(test_se), .QN(n555) );
  NAND2X0 U728 ( .IN1(n557), .IN2(n558), .QN(n135) );
  NAND2X0 U729 ( .IN1(rec_dataH_temp_2), .IN2(n385), .QN(n558) );
  NAND2X0 U730 ( .IN1(rec_dataH_1_), .IN2(test_se), .QN(n557) );
  NAND3X0 U731 ( .IN1(n559), .IN2(n560), .IN3(n561), .QN(n134) );
  NAND2X0 U732 ( .IN1(rec_dataH_rec_0), .IN2(test_se), .QN(n561) );
  NAND2X0 U733 ( .IN1(rec_dataH_rec_1), .IN2(n518), .QN(n560) );
  NAND2X0 U734 ( .IN1(rec_dataH_rec_2), .IN2(n519), .QN(n559) );
  NAND2X0 U735 ( .IN1(n562), .IN2(n563), .QN(n133) );
  NAND2X0 U736 ( .IN1(rec_dataH_rec_1), .IN2(n385), .QN(n563) );
  NAND2X0 U737 ( .IN1(rec_dataH_temp_0), .IN2(test_se), .QN(n562) );
  NAND2X0 U738 ( .IN1(n564), .IN2(n565), .QN(n132) );
  NAND2X0 U739 ( .IN1(rec_dataH_temp_1), .IN2(n385), .QN(n565) );
  NAND2X0 U740 ( .IN1(rec_dataH_0_), .IN2(test_se), .QN(n564) );
  NAND3X0 U741 ( .IN1(n566), .IN2(n567), .IN3(n568), .QN(n131) );
  NAND2X0 U742 ( .IN1(test_se), .IN2(n639), .QN(n568) );
  NAND2X0 U743 ( .IN1(rec_dataH_rec_0), .IN2(n518), .QN(n567) );
  NAND2X0 U744 ( .IN1(rec_dataH_rec_1), .IN2(n519), .QN(n566) );
  NAND2X0 U745 ( .IN1(n569), .IN2(n570), .QN(n129) );
  NAND2X0 U746 ( .IN1(rec_dataH_rec_0), .IN2(n385), .QN(n570) );
  NAND2X0 U747 ( .IN1(rec_dataH_7_), .IN2(test_se), .QN(n569) );
  NAND2X0 U748 ( .IN1(n571), .IN2(n572), .QN(n128) );
  NAND2X0 U749 ( .IN1(rec_dataH_temp_0), .IN2(n385), .QN(n572) );
  NAND2X0 U750 ( .IN1(xmit_doneH_temp), .IN2(test_se), .QN(n571) );
  NAND2X0 U751 ( .IN1(n573), .IN2(n574), .QN(n127) );
  NAND2X0 U752 ( .IN1(n637), .IN2(n575), .QN(n574) );
  NAND2X0 U753 ( .IN1(n385), .IN2(n576), .QN(n575) );
  NAND3X0 U754 ( .IN1(n519), .IN2(n372), .IN3(n577), .QN(n576) );
  NAND2X0 U755 ( .IN1(n632), .IN2(n578), .QN(n573) );
  NAND2X0 U756 ( .IN1(n579), .IN2(n580), .QN(n578) );
  NAND2X0 U757 ( .IN1(n519), .IN2(n581), .QN(n580) );
  NAND2X0 U758 ( .IN1(n637), .IN2(n577), .QN(n581) );
  NAND3X0 U759 ( .IN1(n582), .IN2(n583), .IN3(n584), .QN(n126) );
  NAND2X0 U760 ( .IN1(test_se), .IN2(rec_readyH), .QN(n584) );
  OR2X1 U761 ( .IN1(n478), .IN2(n638), .Q(n583) );
  NAND2X0 U762 ( .IN1(n585), .IN2(n638), .QN(n582) );
  NAND3X0 U763 ( .IN1(n586), .IN2(n587), .IN3(n588), .QN(n125) );
  NAND2X0 U764 ( .IN1(n638), .IN2(test_se), .QN(n588) );
  NAND2X0 U765 ( .IN1(n585), .IN2(n631), .QN(n587) );
  NAND2X0 U766 ( .IN1(n519), .IN2(iRECEIVER_N26), .QN(n586) );
  NAND3X0 U767 ( .IN1(n589), .IN2(n590), .IN3(n591), .QN(n124) );
  NAND2X0 U768 ( .IN1(n631), .IN2(test_se), .QN(n591) );
  NAND2X0 U769 ( .IN1(n585), .IN2(n637), .QN(n590) );
  INVX0 U770 ( .INP(n579), .ZN(n585) );
  NAND2X0 U771 ( .IN1(n518), .IN2(n513), .QN(n579) );
  NAND3X0 U772 ( .IN1(n238), .IN2(n630), .IN3(n241), .QN(n513) );
  NOR2X0 U773 ( .IN1(n592), .IN2(test_se), .QN(n518) );
  NAND2X0 U774 ( .IN1(n519), .IN2(iRECEIVER_N27), .QN(n589) );
  INVX0 U775 ( .INP(n478), .ZN(n519) );
  NAND2X0 U776 ( .IN1(n592), .IN2(n385), .QN(n478) );
  NOR2X0 U777 ( .IN1(iRECEIVER_state_0_), .IN2(n238), .QN(n592) );
  NAND2X0 U778 ( .IN1(n593), .IN2(n594), .QN(n122) );
  NAND2X0 U779 ( .IN1(iXMIT_N29), .IN2(n385), .QN(n594) );
  NAND2X0 U780 ( .IN1(test_se), .IN2(n636), .QN(n593) );
  NAND2X0 U781 ( .IN1(n595), .IN2(n596), .QN(n121) );
  NAND2X0 U782 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .QN(n596) );
  NAND2X0 U783 ( .IN1(iXMIT_N26), .IN2(n385), .QN(n595) );
  NAND3X0 U784 ( .IN1(n597), .IN2(n598), .IN3(n599), .QN(n120) );
  NAND3X0 U785 ( .IN1(iXMIT_N26), .IN2(n627), .IN3(n385), .QN(n598) );
  NAND2X0 U786 ( .IN1(test_se), .IN2(n635), .QN(n597) );
  NAND2X0 U787 ( .IN1(n600), .IN2(n601), .QN(n119) );
  NAND2X0 U788 ( .IN1(test_se), .IN2(iXMIT_state_2_), .QN(n601) );
  NAND2X0 U789 ( .IN1(n602), .IN2(n385), .QN(n600) );
  NAND3X0 U790 ( .IN1(n603), .IN2(n604), .IN3(n605), .QN(n602) );
  NAND2X0 U791 ( .IN1(xmit_dataH_0_), .IN2(n440), .QN(n605) );
  NAND2X0 U792 ( .IN1(n625), .IN2(n432), .QN(n604) );
  NOR2X0 U793 ( .IN1(n406), .IN2(n440), .QN(n432) );
  INVX0 U794 ( .INP(n606), .ZN(n440) );
  NAND2X0 U795 ( .IN1(n406), .IN2(n374), .QN(n603) );
  INVX0 U796 ( .INP(n433), .ZN(n406) );
  NAND2X0 U797 ( .IN1(n606), .IN2(n607), .QN(n433) );
  NAND2X0 U798 ( .IN1(n239), .IN2(iXMIT_state_2_), .QN(n607) );
  NAND3X0 U799 ( .IN1(n246), .IN2(n242), .IN3(xmitH), .QN(n606) );
  NAND2X0 U800 ( .IN1(n608), .IN2(n609), .QN(n118) );
  NAND2X0 U801 ( .IN1(uart_REC_dataH), .IN2(n385), .QN(n609) );
  NAND2X0 U802 ( .IN1(n630), .IN2(test_se), .QN(n608) );
  NAND2X0 U803 ( .IN1(n610), .IN2(n611), .QN(n117) );
  NAND2X0 U804 ( .IN1(n628), .IN2(n385), .QN(n611) );
  INVX0 U805 ( .INP(test_se), .ZN(n385) );
  NAND2X0 U806 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .QN(n610) );
  XOR2X1 U807 ( .IN1(n621), .IN2(n612), .Q(iXMIT_N46) );
  NOR2X0 U808 ( .IN1(n368), .IN2(n613), .QN(n612) );
  XNOR2X1 U809 ( .IN1(n613), .IN2(n633), .Q(iXMIT_N45) );
  NAND2X0 U810 ( .IN1(n629), .IN2(n634), .QN(n613) );
  XNOR2X1 U811 ( .IN1(n370), .IN2(n634), .Q(iXMIT_N44) );
  AND2X1 U812 ( .IN1(iXMIT_N25), .IN2(n614), .Q(iXMIT_N29) );
  AND2X1 U813 ( .IN1(iXMIT_N24), .IN2(n614), .Q(iXMIT_N28) );
  NAND2X0 U814 ( .IN1(n599), .IN2(n615), .QN(iXMIT_N27) );
  NAND2X0 U815 ( .IN1(iXMIT_N26), .IN2(n627), .QN(n615) );
  NAND3X0 U816 ( .IN1(n614), .IN2(n373), .IN3(n635), .QN(n599) );
  AND2X1 U817 ( .IN1(n614), .IN2(n369), .Q(iXMIT_N26) );
  NAND2X0 U818 ( .IN1(n407), .IN2(n377), .QN(n614) );
  INVX0 U819 ( .INP(n401), .ZN(n377) );
  NOR2X0 U820 ( .IN1(n239), .IN2(n242), .QN(n401) );
  NAND2X0 U821 ( .IN1(n402), .IN2(iXMIT_state_1_), .QN(n407) );
  NAND2X0 U822 ( .IN1(n424), .IN2(iXMIT_state_0_), .QN(n402) );
  AND4X1 U823 ( .IN1(n626), .IN2(n636), .IN3(n627), .IN4(n369), .Q(n424) );
  XOR2X1 U824 ( .IN1(n626), .IN2(n475), .Q(iXMIT_N25) );
  AND2X1 U825 ( .IN1(n636), .IN2(n616), .Q(n475) );
  XOR2X1 U826 ( .IN1(n616), .IN2(n636), .Q(iXMIT_N24) );
  NOR2X0 U827 ( .IN1(n373), .IN2(n369), .QN(n616) );
  XOR2X1 U828 ( .IN1(n577), .IN2(n637), .Q(iRECEIVER_N27) );
  AND2X1 U829 ( .IN1(n631), .IN2(n638), .Q(n577) );
  XOR2X1 U830 ( .IN1(n631), .IN2(n638), .Q(iRECEIVER_N26) );
  AND2X1 U831 ( .IN1(n502), .IN2(iRECEIVER_N19), .Q(iRECEIVER_N23) );
  AND2X1 U832 ( .IN1(n502), .IN2(iRECEIVER_N18), .Q(iRECEIVER_N22) );
  AND2X1 U833 ( .IN1(iRECEIVER_N17), .IN2(n502), .Q(iRECEIVER_N21) );
  INVX0 U834 ( .INP(n617), .ZN(n502) );
  NOR2X0 U835 ( .IN1(n617), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(
        iRECEIVER_N20) );
  NAND4X0 U836 ( .IN1(n238), .IN2(n509), .IN3(n618), .IN4(iRECEIVER_state_1_), 
        .QN(n617) );
  OR2X1 U837 ( .IN1(n485), .IN2(iRECEIVER_state_0_), .Q(n618) );
  NAND4X0 U838 ( .IN1(n244), .IN2(n640), .IN3(n255), .IN4(n371), .QN(n485) );
  NAND2X0 U839 ( .IN1(n494), .IN2(iRECEIVER_state_0_), .QN(n509) );
  INVX0 U840 ( .INP(n482), .ZN(n494) );
  NAND4X0 U841 ( .IN1(n639), .IN2(n640), .IN3(n255), .IN4(
        iRECEIVER_bitCell_cntrH_1_), .QN(n482) );
  XOR2X1 U842 ( .IN1(n619), .IN2(n371), .Q(iRECEIVER_N19) );
  NAND2X0 U843 ( .IN1(n620), .IN2(n640), .QN(n619) );
  XOR2X1 U844 ( .IN1(n640), .IN2(n620), .Q(iRECEIVER_N18) );
  NOR2X0 U845 ( .IN1(n255), .IN2(n244), .QN(n620) );
  XNOR2X1 U846 ( .IN1(n244), .IN2(iRECEIVER_bitCell_cntrH_0_), .Q(
        iRECEIVER_N17) );
endmodule

