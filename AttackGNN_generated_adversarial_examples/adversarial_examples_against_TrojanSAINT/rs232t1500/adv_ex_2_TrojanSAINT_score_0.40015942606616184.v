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
         n401, n239, n242, n246, n255, n241, n244, n245, n238, rec_dataH_rec_7,
         rec_dataH_rec_6, rec_dataH_rec_5, rec_dataH_rec_4, rec_dataH_rec_3,
         rec_dataH_rec_2, rec_dataH_rec_1, rec_dataH_rec_0_temp, n182, n181,
         n180, n179, n178, n177, n176, n175, n174, n173, n172, n171, n170,
         n169, n168, n167, n166, n164, n163, n162, n161, n160, n159, n157,
         n156, n155, test_point_DOUT, n154, n153, n152, n150, n149, n148, n147,
         n146, n145, n143, n142, n141, n140, n139, n138, n136, n135, n134,
         n133, n132, n131, n129, n128, n127, n126, n125, n124, n122, n121,
         n120, n119, n118, n25, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
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
         n659, n660;

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
  NAND4X1 TrojanU297 ( .IN1(n25), .IN2(iRECEIVER_state_0_), .IN3(
        iRECEIVER_state_1_), .IN4(iRECEIVER_state_2_), .QN(
        iRECEIVER_state_CTRL) );
  OR4X4 TrojanU296 ( .IN1(1'b0), .IN2(iXMIT_N_CTRL_1_), .IN3(iXMIT_N_CTRL_2_), 
        .IN4(iXMIT_xmit_CTRL), .Q(iXMIT_CRTL) );
  NAND4X1 TrojanU295 ( .IN1(iXMIT_N24), .IN2(iXMIT_xmit_ShiftRegH_7_), .IN3(
        iXMIT_xmit_ShiftRegH_6_), .IN4(iXMIT_xmit_ShiftRegH_5_), .QN(
        iXMIT_xmit_CTRL) );
  NAND4X1 TrojanU294 ( .IN1(iXMIT_N28), .IN2(iXMIT_N27), .IN3(iXMIT_N26), 
        .IN4(iXMIT_N25), .QN(iXMIT_N_CTRL_2_) );
  NAND4X1 TrojanU293 ( .IN1(n401), .IN2(n239), .IN3(n242), .IN4(n246), .QN(
        iXMIT_N_CTRL_1_) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n182), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n656) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n181), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n639), .QN(n239) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n180), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n640), .QN(n242) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n179), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_1_temp), .QN(n246) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n178), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n651), .QN(n377) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n177), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n652), .QN(n380) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n176), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n650), .QN(n375) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n175), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n649), .QN(n385) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n174), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n173), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n172), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n171), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n641) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n170), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n642) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n643) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n644) );
  DFFARX1 iXMIT_xmit_doneH_reg ( .D(n167), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(xmit_doneH_temp) );
  DFFARX1 iRECEIVER_state_reg_1_ ( .D(n166), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_1_), .QN(n241) );
  DFFASX1 iRECEIVER_state_reg_0_ ( .D(n164), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(iRECEIVER_state_0_), .QN(n245) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(n163), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iRECEIVER_bitCell_cntrH_0_), .QN(n255) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(n162), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iRECEIVER_bitCell_cntrH_1_), .QN(n244) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(n161), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n660) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n160), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n659), .QN(n381) );
  DFFARX1 iRECEIVER_state_reg_2_ ( .D(n159), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(iRECEIVER_state_2_), .QN(n238) );
  DFFARX1 iRECEIVER_rec_readyH_reg ( .D(n157), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(rec_readyH) );
  DFFARX1 iRECEIVER_par_dataH_reg_7_ ( .D(n156), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_7) );
  DFFARX1 rec_dataH_temp_reg_7_ ( .D(n155), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(test_so) );
  DFFARX1 rec_dataH_reg_7_ ( .D(n154), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_7_) );
  DFFARX1 iRECEIVER_par_dataH_reg_6_ ( .D(n153), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_6) );
  DFFARX1 rec_dataH_temp_reg_6_ ( .D(n152), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_6) );
  DFFARX1 rec_dataH_reg_6_ ( .D(n150), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_6_) );
  DFFARX1 iRECEIVER_par_dataH_reg_5_ ( .D(n149), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_5) );
  DFFARX1 rec_dataH_temp_reg_5_ ( .D(n148), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_5) );
  DFFARX1 rec_dataH_reg_5_ ( .D(n147), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_5_) );
  DFFARX1 iRECEIVER_par_dataH_reg_4_ ( .D(n146), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_4) );
  DFFARX1 rec_dataH_temp_reg_4_ ( .D(n145), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_4) );
  DFFARX1 rec_dataH_reg_4_ ( .D(n143), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_4_) );
  DFFARX1 iRECEIVER_par_dataH_reg_3_ ( .D(n142), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_3) );
  DFFARX1 rec_dataH_temp_reg_3_ ( .D(n141), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_3) );
  DFFARX1 rec_dataH_reg_3_ ( .D(n140), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_3_) );
  DFFARX1 iRECEIVER_par_dataH_reg_2_ ( .D(n139), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_2) );
  DFFARX1 rec_dataH_temp_reg_2_ ( .D(n138), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_2) );
  DFFARX1 rec_dataH_reg_2_ ( .D(n136), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_2_) );
  DFFARX1 iRECEIVER_par_dataH_reg_1_ ( .D(n135), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_1) );
  DFFARX1 rec_dataH_temp_reg_1_ ( .D(n134), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_1) );
  DFFARX1 rec_dataH_reg_1_ ( .D(n133), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_1_) );
  DFFARX1 iRECEIVER_par_dataH_reg_0_ ( .D(n132), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(rec_dataH_rec_0_temp) );
  DFFARX1 rec_dataH_temp_reg_0_ ( .D(n131), .CLK(test_point_DOUT), .RSTB(
        sys_rst_l), .Q(rec_dataH_temp_0) );
  DFFARX1 rec_dataH_reg_0_ ( .D(n129), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        rec_dataH_0_) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_3_ ( .D(n128), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n645) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n127), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n658), .QN(n384) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n126), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n654), .QN(n379) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n125), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n657), .QN(n376) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n124), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n646) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n122), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n655), .QN(n378) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n121), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n647), .QN(n382) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n120), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n383) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n119), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n648) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n118), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n653) );
  DFFARX1 TrojaniDatasend_reg_2_ ( .D(n182), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .QN(n401) );
  NAND3X0 U529 ( .IN1(n386), .IN2(n387), .IN3(n388), .QN(uart_XMIT_dataH) );
  OR2X1 U530 ( .IN1(n640), .IN2(iXMIT_state_1_), .Q(n388) );
  NAND2X0 U531 ( .IN1(n389), .IN2(n383), .QN(n386) );
  NAND2X0 U532 ( .IN1(n239), .IN2(n242), .QN(n389) );
  NAND2X0 U533 ( .IN1(n390), .IN2(n391), .QN(test_point_DOUT) );
  NAND2X0 U534 ( .IN1(rec_readyH), .IN2(n392), .QN(n391) );
  INVX0 U535 ( .INP(test_mode), .ZN(n392) );
  NAND2X0 U536 ( .IN1(sys_clk), .IN2(test_mode), .QN(n390) );
  NAND2X0 U537 ( .IN1(n393), .IN2(n394), .QN(n182) );
  NAND2X0 U538 ( .IN1(iXMIT_N28), .IN2(n395), .QN(n394) );
  NAND2X0 U539 ( .IN1(test_se), .IN2(n647), .QN(n393) );
  NAND2X0 U540 ( .IN1(n396), .IN2(n397), .QN(n181) );
  NAND2X0 U541 ( .IN1(n649), .IN2(test_se), .QN(n397) );
  NAND2X0 U542 ( .IN1(n398), .IN2(n395), .QN(n396) );
  NAND3X0 U543 ( .IN1(n399), .IN2(n400), .IN3(n402), .QN(n398) );
  NAND2X0 U544 ( .IN1(n640), .IN2(n403), .QN(n402) );
  NAND2X0 U545 ( .IN1(n404), .IN2(n239), .QN(n400) );
  NAND2X0 U546 ( .IN1(n242), .IN2(n405), .QN(n404) );
  NAND2X0 U547 ( .IN1(n406), .IN2(iXMIT_state_1_temp), .QN(n405) );
  NAND3X0 U548 ( .IN1(n407), .IN2(iXMIT_state_1_temp), .IN3(n639), .QN(n399)
         );
  NAND2X0 U549 ( .IN1(n408), .IN2(n409), .QN(n180) );
  NAND3X0 U550 ( .IN1(n403), .IN2(n395), .IN3(n410), .QN(n409) );
  NAND2X0 U551 ( .IN1(n411), .IN2(iXMIT_state_1_temp), .QN(n408) );
  NAND2X0 U552 ( .IN1(n395), .IN2(n412), .QN(n411) );
  NAND2X0 U553 ( .IN1(n413), .IN2(n414), .QN(n179) );
  NAND2X0 U554 ( .IN1(test_se), .IN2(n639), .QN(n414) );
  NAND2X0 U555 ( .IN1(n415), .IN2(n395), .QN(n413) );
  NAND2X0 U556 ( .IN1(n416), .IN2(n417), .QN(n415) );
  NAND2X0 U557 ( .IN1(n418), .IN2(n419), .QN(n178) );
  NAND2X0 U558 ( .IN1(n646), .IN2(test_se), .QN(n419) );
  NAND2X0 U559 ( .IN1(n420), .IN2(n395), .QN(n418) );
  NAND2X0 U560 ( .IN1(n421), .IN2(n422), .QN(n420) );
  OR2X1 U561 ( .IN1(n377), .IN2(n423), .Q(n422) );
  NAND2X0 U562 ( .IN1(n424), .IN2(n425), .QN(n177) );
  NAND3X0 U563 ( .IN1(n426), .IN2(n395), .IN3(n652), .QN(n425) );
  NAND2X0 U564 ( .IN1(n651), .IN2(n427), .QN(n424) );
  NAND2X0 U565 ( .IN1(n395), .IN2(n428), .QN(n427) );
  NAND2X0 U566 ( .IN1(n429), .IN2(n430), .QN(n176) );
  NAND3X0 U567 ( .IN1(n431), .IN2(n395), .IN3(n650), .QN(n430) );
  NAND2X0 U568 ( .IN1(n423), .IN2(n428), .QN(n431) );
  NAND2X0 U569 ( .IN1(n432), .IN2(n380), .QN(n428) );
  NAND2X0 U570 ( .IN1(n652), .IN2(n433), .QN(n429) );
  NAND3X0 U571 ( .IN1(n434), .IN2(n435), .IN3(n395), .QN(n433) );
  NAND3X0 U572 ( .IN1(n432), .IN2(n651), .IN3(n375), .QN(n435) );
  OR2X1 U573 ( .IN1(n421), .IN2(n375), .Q(n434) );
  NAND2X0 U574 ( .IN1(n436), .IN2(n437), .QN(n175) );
  NAND2X0 U575 ( .IN1(n650), .IN2(test_se), .QN(n437) );
  NAND2X0 U576 ( .IN1(n438), .IN2(n395), .QN(n436) );
  NAND2X0 U577 ( .IN1(n439), .IN2(n440), .QN(n438) );
  NAND3X0 U578 ( .IN1(n441), .IN2(n442), .IN3(n432), .QN(n440) );
  NAND2X0 U579 ( .IN1(n443), .IN2(n649), .QN(n442) );
  NAND2X0 U580 ( .IN1(n444), .IN2(n385), .QN(n441) );
  NAND2X0 U581 ( .IN1(n443), .IN2(n651), .QN(n444) );
  NOR2X0 U582 ( .IN1(n375), .IN2(n380), .QN(n443) );
  NAND2X0 U583 ( .IN1(n649), .IN2(n426), .QN(n439) );
  NAND2X0 U584 ( .IN1(n423), .IN2(n421), .QN(n426) );
  NAND2X0 U585 ( .IN1(n432), .IN2(n377), .QN(n421) );
  NAND2X0 U586 ( .IN1(n445), .IN2(n446), .QN(n423) );
  INVX0 U587 ( .INP(n432), .ZN(n445) );
  NOR3X0 U588 ( .IN1(n239), .IN2(n246), .IN3(n407), .QN(n432) );
  NAND2X0 U589 ( .IN1(n447), .IN2(n448), .QN(n407) );
  NAND4X0 U590 ( .IN1(n649), .IN2(n380), .IN3(n377), .IN4(n375), .QN(n448) );
  NAND2X0 U591 ( .IN1(n449), .IN2(n450), .QN(n174) );
  NAND2X0 U592 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n450) );
  NAND2X0 U593 ( .IN1(n451), .IN2(n395), .QN(n449) );
  NAND3X0 U594 ( .IN1(n452), .IN2(n453), .IN3(n454), .QN(n451) );
  INVX0 U595 ( .INP(n455), .ZN(n454) );
  NAND2X0 U596 ( .IN1(n416), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n453) );
  NAND2X0 U597 ( .IN1(xmit_dataH_7_), .IN2(n456), .QN(n452) );
  NAND2X0 U598 ( .IN1(n457), .IN2(n458), .QN(n173) );
  NAND2X0 U599 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n458) );
  NAND2X0 U600 ( .IN1(n459), .IN2(n395), .QN(n457) );
  NAND3X0 U601 ( .IN1(n460), .IN2(n461), .IN3(n462), .QN(n459) );
  NAND2X0 U602 ( .IN1(xmit_dataH_6_), .IN2(n463), .QN(n462) );
  NAND2X0 U603 ( .IN1(n455), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n461) );
  NAND2X0 U604 ( .IN1(n416), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n460) );
  NAND2X0 U605 ( .IN1(n464), .IN2(n465), .QN(n172) );
  NAND2X0 U606 ( .IN1(n641), .IN2(test_se), .QN(n465) );
  NAND2X0 U607 ( .IN1(n466), .IN2(n395), .QN(n464) );
  NAND3X0 U608 ( .IN1(n467), .IN2(n468), .IN3(n469), .QN(n466) );
  NAND2X0 U609 ( .IN1(xmit_dataH_5_), .IN2(n463), .QN(n469) );
  NAND2X0 U610 ( .IN1(n455), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n468) );
  NAND2X0 U611 ( .IN1(n416), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n467) );
  NAND2X0 U612 ( .IN1(n470), .IN2(n471), .QN(n171) );
  NAND2X0 U613 ( .IN1(n642), .IN2(test_se), .QN(n471) );
  NAND2X0 U614 ( .IN1(n472), .IN2(n395), .QN(n470) );
  NAND3X0 U615 ( .IN1(n473), .IN2(n474), .IN3(n475), .QN(n472) );
  NAND2X0 U616 ( .IN1(xmit_dataH_4_), .IN2(n463), .QN(n475) );
  NAND2X0 U617 ( .IN1(n455), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n474) );
  NAND2X0 U618 ( .IN1(n641), .IN2(n416), .QN(n473) );
  NAND2X0 U619 ( .IN1(n476), .IN2(n477), .QN(n170) );
  NAND2X0 U620 ( .IN1(n643), .IN2(test_se), .QN(n477) );
  NAND2X0 U621 ( .IN1(n478), .IN2(n395), .QN(n476) );
  NAND3X0 U622 ( .IN1(n479), .IN2(n480), .IN3(n481), .QN(n478) );
  NAND2X0 U623 ( .IN1(xmit_dataH_3_), .IN2(n463), .QN(n481) );
  NAND2X0 U624 ( .IN1(n641), .IN2(n455), .QN(n480) );
  NAND2X0 U625 ( .IN1(n642), .IN2(n416), .QN(n479) );
  NAND2X0 U626 ( .IN1(n482), .IN2(n483), .QN(n169) );
  NAND2X0 U627 ( .IN1(n644), .IN2(test_se), .QN(n483) );
  NAND2X0 U628 ( .IN1(n484), .IN2(n395), .QN(n482) );
  NAND3X0 U629 ( .IN1(n485), .IN2(n486), .IN3(n487), .QN(n484) );
  NAND2X0 U630 ( .IN1(xmit_dataH_2_), .IN2(n463), .QN(n487) );
  NAND2X0 U631 ( .IN1(n642), .IN2(n455), .QN(n486) );
  NAND2X0 U632 ( .IN1(n643), .IN2(n416), .QN(n485) );
  NAND2X0 U633 ( .IN1(n488), .IN2(n489), .QN(n168) );
  NAND2X0 U634 ( .IN1(test_se), .IN2(n383), .QN(n489) );
  NAND2X0 U635 ( .IN1(n490), .IN2(n395), .QN(n488) );
  NAND3X0 U636 ( .IN1(n491), .IN2(n492), .IN3(n493), .QN(n490) );
  NAND2X0 U637 ( .IN1(xmit_dataH_1_), .IN2(n463), .QN(n493) );
  NAND2X0 U638 ( .IN1(n643), .IN2(n455), .QN(n492) );
  NAND2X0 U639 ( .IN1(n644), .IN2(n416), .QN(n491) );
  NAND2X0 U640 ( .IN1(n494), .IN2(n495), .QN(n167) );
  NAND2X0 U641 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n495) );
  NAND2X0 U642 ( .IN1(n496), .IN2(n395), .QN(n494) );
  NAND2X0 U643 ( .IN1(n446), .IN2(n497), .QN(n496) );
  NAND2X0 U644 ( .IN1(n410), .IN2(n406), .QN(n497) );
  INVX0 U645 ( .INP(n403), .ZN(n406) );
  NAND2X0 U646 ( .IN1(n498), .IN2(n646), .QN(n403) );
  OR3X1 U647 ( .IN1(n640), .IN2(xmitH), .IN3(iXMIT_state_1_temp), .Q(n446) );
  NAND3X0 U648 ( .IN1(n499), .IN2(n500), .IN3(n501), .QN(n166) );
  NAND2X0 U649 ( .IN1(n502), .IN2(iRECEIVER_state_0_), .QN(n500) );
  NAND3X0 U650 ( .IN1(n503), .IN2(n504), .IN3(n395), .QN(n502) );
  NAND2X0 U651 ( .IN1(n505), .IN2(iRECEIVER_state_1_), .QN(n504) );
  OR3X1 U652 ( .IN1(iRECEIVER_state_2_), .IN2(n653), .IN3(iRECEIVER_state_1_), 
        .Q(n503) );
  NAND3X0 U653 ( .IN1(n506), .IN2(n395), .IN3(n245), .QN(n499) );
  NAND2X0 U654 ( .IN1(n653), .IN2(n507), .QN(n506) );
  NAND2X0 U655 ( .IN1(n508), .IN2(iRECEIVER_state_1_), .QN(n507) );
  NAND2X0 U656 ( .IN1(n509), .IN2(n510), .QN(n164) );
  NAND2X0 U657 ( .IN1(n645), .IN2(test_se), .QN(n510) );
  NAND2X0 U658 ( .IN1(n511), .IN2(n395), .QN(n509) );
  NAND3X0 U659 ( .IN1(n512), .IN2(n513), .IN3(n238), .QN(n511) );
  NAND2X0 U660 ( .IN1(n241), .IN2(n653), .QN(n513) );
  NAND2X0 U661 ( .IN1(n514), .IN2(iRECEIVER_state_1_), .QN(n512) );
  NAND2X0 U662 ( .IN1(n508), .IN2(n515), .QN(n514) );
  NAND2X0 U663 ( .IN1(n516), .IN2(iRECEIVER_state_0_), .QN(n515) );
  NAND2X0 U664 ( .IN1(n517), .IN2(n518), .QN(n516) );
  NAND4X0 U665 ( .IN1(n645), .IN2(n384), .IN3(n376), .IN4(n379), .QN(n518) );
  NAND2X0 U666 ( .IN1(n519), .IN2(n520), .QN(n163) );
  NAND2X0 U667 ( .IN1(iRECEIVER_N20), .IN2(n395), .QN(n520) );
  NAND2X0 U668 ( .IN1(test_si), .IN2(test_se), .QN(n519) );
  NAND2X0 U669 ( .IN1(n521), .IN2(n522), .QN(n162) );
  NAND3X0 U670 ( .IN1(iRECEIVER_bitCell_cntrH_1_), .IN2(n395), .IN3(
        iRECEIVER_N20), .QN(n522) );
  NAND2X0 U671 ( .IN1(n523), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(n521) );
  NAND2X0 U672 ( .IN1(n395), .IN2(n524), .QN(n523) );
  NAND2X0 U673 ( .IN1(n525), .IN2(n244), .QN(n524) );
  NAND2X0 U674 ( .IN1(n526), .IN2(n527), .QN(n161) );
  NAND2X0 U675 ( .IN1(test_se), .IN2(iRECEIVER_bitCell_cntrH_1_), .QN(n527) );
  NAND2X0 U676 ( .IN1(iRECEIVER_N22), .IN2(n395), .QN(n526) );
  NAND2X0 U677 ( .IN1(n528), .IN2(n529), .QN(n160) );
  NAND2X0 U678 ( .IN1(iRECEIVER_N23), .IN2(n395), .QN(n529) );
  NAND2X0 U679 ( .IN1(test_se), .IN2(n660), .QN(n528) );
  NAND2X0 U680 ( .IN1(n530), .IN2(n531), .QN(n159) );
  NAND2X0 U681 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .QN(n531) );
  INVX0 U682 ( .INP(n25), .ZN(n530) );
  NOR2X0 U683 ( .IN1(n532), .IN2(n241), .QN(n25) );
  NAND2X0 U684 ( .IN1(n533), .IN2(n534), .QN(n157) );
  NAND2X0 U685 ( .IN1(n535), .IN2(n395), .QN(n534) );
  NAND2X0 U686 ( .IN1(n536), .IN2(n537), .QN(n535) );
  NAND2X0 U687 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .QN(n537)
         );
  NAND2X0 U688 ( .IN1(n648), .IN2(test_se), .QN(n533) );
  NAND3X0 U689 ( .IN1(n538), .IN2(n539), .IN3(n540), .QN(n156) );
  NAND2X0 U690 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .QN(n540) );
  NAND2X0 U691 ( .IN1(rec_dataH_rec_7), .IN2(n541), .QN(n539) );
  NAND2X0 U692 ( .IN1(n542), .IN2(n653), .QN(n538) );
  NAND2X0 U693 ( .IN1(n543), .IN2(n544), .QN(n155) );
  NAND2X0 U694 ( .IN1(rec_dataH_rec_7), .IN2(n395), .QN(n544) );
  NAND2X0 U695 ( .IN1(rec_dataH_temp_6), .IN2(test_se), .QN(n543) );
  NAND2X0 U696 ( .IN1(n545), .IN2(n546), .QN(n154) );
  NAND2X0 U697 ( .IN1(test_so), .IN2(n395), .QN(n546) );
  NAND2X0 U698 ( .IN1(rec_dataH_6_), .IN2(test_se), .QN(n545) );
  NAND3X0 U699 ( .IN1(n547), .IN2(n548), .IN3(n549), .QN(n153) );
  NAND2X0 U700 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .QN(n549) );
  NAND2X0 U701 ( .IN1(rec_dataH_rec_6), .IN2(n541), .QN(n548) );
  NAND2X0 U702 ( .IN1(n542), .IN2(rec_dataH_rec_7), .QN(n547) );
  NAND2X0 U703 ( .IN1(n550), .IN2(n551), .QN(n152) );
  NAND2X0 U704 ( .IN1(rec_dataH_rec_6), .IN2(n395), .QN(n551) );
  NAND2X0 U705 ( .IN1(rec_dataH_temp_5), .IN2(test_se), .QN(n550) );
  NAND2X0 U706 ( .IN1(n552), .IN2(n553), .QN(n150) );
  NAND2X0 U707 ( .IN1(rec_dataH_temp_6), .IN2(n395), .QN(n553) );
  NAND2X0 U708 ( .IN1(rec_dataH_5_), .IN2(test_se), .QN(n552) );
  NAND3X0 U709 ( .IN1(n554), .IN2(n555), .IN3(n556), .QN(n149) );
  NAND2X0 U710 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .QN(n556) );
  NAND2X0 U711 ( .IN1(rec_dataH_rec_5), .IN2(n541), .QN(n555) );
  NAND2X0 U712 ( .IN1(rec_dataH_rec_6), .IN2(n542), .QN(n554) );
  NAND2X0 U713 ( .IN1(n557), .IN2(n558), .QN(n148) );
  NAND2X0 U714 ( .IN1(rec_dataH_rec_5), .IN2(n395), .QN(n558) );
  NAND2X0 U715 ( .IN1(rec_dataH_temp_4), .IN2(test_se), .QN(n557) );
  NAND2X0 U716 ( .IN1(n559), .IN2(n560), .QN(n147) );
  NAND2X0 U717 ( .IN1(rec_dataH_temp_5), .IN2(n395), .QN(n560) );
  NAND2X0 U718 ( .IN1(rec_dataH_4_), .IN2(test_se), .QN(n559) );
  NAND3X0 U719 ( .IN1(n561), .IN2(n562), .IN3(n563), .QN(n146) );
  NAND2X0 U720 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .QN(n563) );
  NAND2X0 U721 ( .IN1(rec_dataH_rec_4), .IN2(n541), .QN(n562) );
  NAND2X0 U722 ( .IN1(rec_dataH_rec_5), .IN2(n542), .QN(n561) );
  NAND2X0 U723 ( .IN1(n564), .IN2(n565), .QN(n145) );
  NAND2X0 U724 ( .IN1(rec_dataH_rec_4), .IN2(n395), .QN(n565) );
  NAND2X0 U725 ( .IN1(rec_dataH_temp_3), .IN2(test_se), .QN(n564) );
  NAND2X0 U726 ( .IN1(n566), .IN2(n567), .QN(n143) );
  NAND2X0 U727 ( .IN1(rec_dataH_temp_4), .IN2(n395), .QN(n567) );
  NAND2X0 U728 ( .IN1(rec_dataH_3_), .IN2(test_se), .QN(n566) );
  NAND3X0 U729 ( .IN1(n568), .IN2(n569), .IN3(n570), .QN(n142) );
  NAND2X0 U730 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .QN(n570) );
  NAND2X0 U731 ( .IN1(rec_dataH_rec_3), .IN2(n541), .QN(n569) );
  NAND2X0 U732 ( .IN1(rec_dataH_rec_4), .IN2(n542), .QN(n568) );
  NAND2X0 U733 ( .IN1(n571), .IN2(n572), .QN(n141) );
  NAND2X0 U734 ( .IN1(rec_dataH_rec_3), .IN2(n395), .QN(n572) );
  NAND2X0 U735 ( .IN1(rec_dataH_temp_2), .IN2(test_se), .QN(n571) );
  NAND2X0 U736 ( .IN1(n573), .IN2(n574), .QN(n140) );
  NAND2X0 U737 ( .IN1(rec_dataH_temp_3), .IN2(n395), .QN(n574) );
  NAND2X0 U738 ( .IN1(rec_dataH_2_), .IN2(test_se), .QN(n573) );
  NAND3X0 U739 ( .IN1(n575), .IN2(n576), .IN3(n577), .QN(n139) );
  NAND2X0 U740 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .QN(n577) );
  NAND2X0 U741 ( .IN1(rec_dataH_rec_2), .IN2(n541), .QN(n576) );
  NAND2X0 U742 ( .IN1(rec_dataH_rec_3), .IN2(n542), .QN(n575) );
  NAND2X0 U743 ( .IN1(n578), .IN2(n579), .QN(n138) );
  NAND2X0 U744 ( .IN1(rec_dataH_rec_2), .IN2(n395), .QN(n579) );
  NAND2X0 U745 ( .IN1(rec_dataH_temp_1), .IN2(test_se), .QN(n578) );
  NAND2X0 U746 ( .IN1(n580), .IN2(n581), .QN(n136) );
  NAND2X0 U747 ( .IN1(rec_dataH_temp_2), .IN2(n395), .QN(n581) );
  NAND2X0 U748 ( .IN1(rec_dataH_1_), .IN2(test_se), .QN(n580) );
  NAND3X0 U749 ( .IN1(n582), .IN2(n583), .IN3(n584), .QN(n135) );
  NAND2X0 U750 ( .IN1(rec_dataH_rec_0_temp), .IN2(test_se), .QN(n584) );
  NAND2X0 U751 ( .IN1(rec_dataH_rec_1), .IN2(n541), .QN(n583) );
  NAND2X0 U752 ( .IN1(rec_dataH_rec_2), .IN2(n542), .QN(n582) );
  NAND2X0 U753 ( .IN1(n585), .IN2(n586), .QN(n134) );
  NAND2X0 U754 ( .IN1(rec_dataH_rec_1), .IN2(n395), .QN(n586) );
  NAND2X0 U755 ( .IN1(rec_dataH_temp_0), .IN2(test_se), .QN(n585) );
  NAND2X0 U756 ( .IN1(n587), .IN2(n588), .QN(n133) );
  NAND2X0 U757 ( .IN1(rec_dataH_temp_1), .IN2(n395), .QN(n588) );
  NAND2X0 U758 ( .IN1(rec_dataH_0_), .IN2(test_se), .QN(n587) );
  NAND3X0 U759 ( .IN1(n589), .IN2(n590), .IN3(n591), .QN(n132) );
  NAND2X0 U760 ( .IN1(test_se), .IN2(n659), .QN(n591) );
  NAND2X0 U761 ( .IN1(rec_dataH_rec_0_temp), .IN2(n541), .QN(n590) );
  NOR2X0 U762 ( .IN1(n592), .IN2(test_se), .QN(n541) );
  NAND2X0 U763 ( .IN1(rec_dataH_rec_1), .IN2(n542), .QN(n589) );
  NAND2X0 U764 ( .IN1(n593), .IN2(n594), .QN(n131) );
  NAND2X0 U765 ( .IN1(rec_dataH_rec_0_temp), .IN2(n395), .QN(n594) );
  NAND2X0 U766 ( .IN1(rec_dataH_7_), .IN2(test_se), .QN(n593) );
  NAND2X0 U767 ( .IN1(n595), .IN2(n596), .QN(n129) );
  NAND2X0 U768 ( .IN1(rec_dataH_temp_0), .IN2(n395), .QN(n596) );
  NAND2X0 U769 ( .IN1(xmit_doneH_temp), .IN2(test_se), .QN(n595) );
  NAND3X0 U770 ( .IN1(n597), .IN2(n598), .IN3(n599), .QN(n128) );
  NAND2X0 U771 ( .IN1(n657), .IN2(test_se), .QN(n599) );
  NAND2X0 U772 ( .IN1(n600), .IN2(n645), .QN(n598) );
  NAND2X0 U773 ( .IN1(n542), .IN2(iRECEIVER_N28), .QN(n597) );
  NAND3X0 U774 ( .IN1(n601), .IN2(n602), .IN3(n603), .QN(n127) );
  NAND2X0 U775 ( .IN1(test_se), .IN2(rec_readyH), .QN(n603) );
  NAND2X0 U776 ( .IN1(n542), .IN2(n384), .QN(n602) );
  NAND2X0 U777 ( .IN1(n658), .IN2(n600), .QN(n601) );
  NAND3X0 U778 ( .IN1(n604), .IN2(n605), .IN3(n606), .QN(n126) );
  NAND2X0 U779 ( .IN1(n658), .IN2(test_se), .QN(n606) );
  NAND2X0 U780 ( .IN1(n654), .IN2(n600), .QN(n605) );
  NAND2X0 U781 ( .IN1(n542), .IN2(iRECEIVER_N26), .QN(n604) );
  NAND3X0 U782 ( .IN1(n607), .IN2(n608), .IN3(n609), .QN(n125) );
  NAND2X0 U783 ( .IN1(n654), .IN2(test_se), .QN(n609) );
  NAND2X0 U784 ( .IN1(n657), .IN2(n600), .QN(n608) );
  AND3X1 U785 ( .IN1(n536), .IN2(n610), .IN3(n395), .Q(n600) );
  NAND2X0 U786 ( .IN1(n245), .IN2(iRECEIVER_state_2_), .QN(n610) );
  NAND3X0 U787 ( .IN1(n241), .IN2(n653), .IN3(n238), .QN(n536) );
  NAND2X0 U788 ( .IN1(n542), .IN2(iRECEIVER_N27), .QN(n607) );
  INVX0 U789 ( .INP(n501), .ZN(n542) );
  NAND2X0 U790 ( .IN1(n592), .IN2(n395), .QN(n501) );
  NOR2X0 U791 ( .IN1(iRECEIVER_state_0_), .IN2(n238), .QN(n592) );
  NAND2X0 U792 ( .IN1(n611), .IN2(n612), .QN(n124) );
  NAND3X0 U793 ( .IN1(iXMIT_N25), .IN2(n613), .IN3(n395), .QN(n612) );
  NAND2X0 U794 ( .IN1(n656), .IN2(test_se), .QN(n611) );
  NAND2X0 U795 ( .IN1(n614), .IN2(n615), .QN(n122) );
  NAND2X0 U796 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .QN(n615) );
  NAND2X0 U797 ( .IN1(iXMIT_N26), .IN2(n395), .QN(n614) );
  NAND3X0 U798 ( .IN1(n616), .IN2(n617), .IN3(n618), .QN(n121) );
  NAND3X0 U799 ( .IN1(iXMIT_N26), .IN2(n647), .IN3(n395), .QN(n617) );
  NAND2X0 U800 ( .IN1(n655), .IN2(test_se), .QN(n616) );
  NAND2X0 U801 ( .IN1(n619), .IN2(n620), .QN(n120) );
  NAND2X0 U802 ( .IN1(test_se), .IN2(n640), .QN(n620) );
  NAND2X0 U803 ( .IN1(n621), .IN2(n395), .QN(n619) );
  NAND3X0 U804 ( .IN1(n622), .IN2(n623), .IN3(n624), .QN(n621) );
  NAND2X0 U805 ( .IN1(xmit_dataH_0_), .IN2(n463), .QN(n624) );
  NAND2X0 U806 ( .IN1(n644), .IN2(n455), .QN(n623) );
  NOR2X0 U807 ( .IN1(n416), .IN2(n463), .QN(n455) );
  INVX0 U808 ( .INP(n625), .ZN(n463) );
  NAND2X0 U809 ( .IN1(n416), .IN2(n383), .QN(n622) );
  INVX0 U810 ( .INP(n456), .ZN(n416) );
  NAND2X0 U811 ( .IN1(n625), .IN2(n626), .QN(n456) );
  NAND2X0 U812 ( .IN1(n640), .IN2(n239), .QN(n626) );
  NAND3X0 U813 ( .IN1(n246), .IN2(n242), .IN3(xmitH), .QN(n625) );
  NAND2X0 U814 ( .IN1(n627), .IN2(n628), .QN(n119) );
  NAND2X0 U815 ( .IN1(uart_REC_dataH), .IN2(n395), .QN(n628) );
  NAND2X0 U816 ( .IN1(n653), .IN2(test_se), .QN(n627) );
  NAND2X0 U817 ( .IN1(n629), .IN2(n630), .QN(n118) );
  NAND2X0 U818 ( .IN1(n648), .IN2(n395), .QN(n630) );
  INVX0 U819 ( .INP(test_se), .ZN(n395) );
  NAND2X0 U820 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .QN(n629) );
  AND2X1 U821 ( .IN1(iXMIT_N24), .IN2(n613), .Q(iXMIT_N28) );
  NAND2X0 U822 ( .IN1(n618), .IN2(n631), .QN(iXMIT_N27) );
  NAND2X0 U823 ( .IN1(iXMIT_N26), .IN2(n647), .QN(n631) );
  NAND3X0 U824 ( .IN1(n613), .IN2(n382), .IN3(n655), .QN(n618) );
  AND2X1 U825 ( .IN1(n613), .IN2(n378), .Q(iXMIT_N26) );
  NAND2X0 U826 ( .IN1(n387), .IN2(n417), .QN(n613) );
  NAND2X0 U827 ( .IN1(n412), .IN2(iXMIT_state_1_temp), .QN(n417) );
  NAND2X0 U828 ( .IN1(n447), .IN2(n639), .QN(n412) );
  AND4X1 U829 ( .IN1(n646), .IN2(n656), .IN3(n647), .IN4(n378), .Q(n447) );
  INVX0 U830 ( .INP(n410), .ZN(n387) );
  NOR2X0 U831 ( .IN1(n239), .IN2(n242), .QN(n410) );
  XOR2X1 U832 ( .IN1(n646), .IN2(n498), .Q(iXMIT_N25) );
  AND2X1 U833 ( .IN1(n632), .IN2(n656), .Q(n498) );
  XOR2X1 U834 ( .IN1(n632), .IN2(n656), .Q(iXMIT_N24) );
  NOR2X0 U835 ( .IN1(n378), .IN2(n382), .QN(n632) );
  XOR2X1 U836 ( .IN1(n645), .IN2(n633), .Q(iRECEIVER_N28) );
  NOR2X0 U837 ( .IN1(n634), .IN2(n376), .QN(n633) );
  XNOR2X1 U838 ( .IN1(n634), .IN2(n657), .Q(iRECEIVER_N27) );
  NAND2X0 U839 ( .IN1(n654), .IN2(n658), .QN(n634) );
  XNOR2X1 U840 ( .IN1(n379), .IN2(n658), .Q(iRECEIVER_N26) );
  AND2X1 U841 ( .IN1(n525), .IN2(iRECEIVER_N19), .Q(iRECEIVER_N23) );
  AND2X1 U842 ( .IN1(n525), .IN2(iRECEIVER_N18), .Q(iRECEIVER_N22) );
  AND2X1 U843 ( .IN1(iRECEIVER_N17), .IN2(n525), .Q(iRECEIVER_N21) );
  INVX0 U844 ( .INP(n635), .ZN(n525) );
  NOR2X0 U845 ( .IN1(n635), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(
        iRECEIVER_N20) );
  NAND4X0 U846 ( .IN1(n238), .IN2(n532), .IN3(n636), .IN4(iRECEIVER_state_1_), 
        .QN(n635) );
  OR2X1 U847 ( .IN1(n508), .IN2(iRECEIVER_state_0_), .Q(n636) );
  NAND4X0 U848 ( .IN1(n244), .IN2(n660), .IN3(n255), .IN4(n381), .QN(n508) );
  NAND2X0 U849 ( .IN1(n517), .IN2(iRECEIVER_state_0_), .QN(n532) );
  INVX0 U850 ( .INP(n505), .ZN(n517) );
  NAND4X0 U851 ( .IN1(n659), .IN2(n660), .IN3(n255), .IN4(
        iRECEIVER_bitCell_cntrH_1_), .QN(n505) );
  XOR2X1 U852 ( .IN1(n637), .IN2(n381), .Q(iRECEIVER_N19) );
  NAND2X0 U853 ( .IN1(n638), .IN2(n660), .QN(n637) );
  XOR2X1 U854 ( .IN1(n660), .IN2(n638), .Q(iRECEIVER_N18) );
  NOR2X0 U855 ( .IN1(n255), .IN2(n244), .QN(n638) );
  XNOR2X1 U856 ( .IN1(n244), .IN2(iRECEIVER_bitCell_cntrH_0_), .Q(
        iRECEIVER_N17) );
endmodule

