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
         iRECEIVER_N17, iRECEIVER_bitCell_cntrH_0_, iRECEIVER_bitCell_cntrH_1_,
         iRECEIVER_N22, iRECEIVER_N20, iRECEIVER_N28, iRECEIVER_N27,
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
         n118, n117, n115, n32, n35, n40, n41, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690;

  AND2X4 TrojanU305 ( .IN1(iCTRL), .IN2(iXMIT_state_1_temp), .Q(iXMIT_state_1_) );
  AND2X4 TrojanU303 ( .IN1(iCTRL), .IN2(xmit_doneH_temp), .Q(xmit_doneH) );
  OR2X1 TrojanU302 ( .IN1(iXMIT_CRTL), .IN2(iRECEIVER_CTRL), .Q(iCTRL) );
  OR4X4 TrojanU301 ( .IN1(iRECEIVER_state_CTRL), .IN2(iRECEIVER_N_CTRL_1_), 
        .IN3(iRECEIVER_N_CTRL_2_), .IN4(iRECEIVER_bitCell_CTRL), .Q(
        iRECEIVER_CTRL) );
  NAND4X1 TrojanU300 ( .IN1(n40), .IN2(iRECEIVER_N17), .IN3(
        iRECEIVER_bitCell_cntrH_0_), .IN4(iRECEIVER_bitCell_cntrH_1_), .QN(
        iRECEIVER_bitCell_CTRL) );
  NAND4X1 TrojanU299 ( .IN1(iRECEIVER_N22), .IN2(n35), .IN3(iRECEIVER_N20), 
        .IN4(n41), .QN(iRECEIVER_N_CTRL_2_) );
  NAND4X1 TrojanU298 ( .IN1(iRECEIVER_N28), .IN2(iRECEIVER_N27), .IN3(
        iRECEIVER_N26), .IN4(iRECEIVER_N23), .QN(iRECEIVER_N_CTRL_1_) );
  NAND4X1 TrojanU297 ( .IN1(n32), .IN2(iRECEIVER_state_0_), .IN3(
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
        sys_rst_l), .Q(n686), .QN(n251) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n179), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n669), .QN(n239) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n178), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n670), .QN(n242) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n177), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_1_temp), .QN(n246) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n176), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n680), .QN(n400) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n175), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n681), .QN(n395) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n174), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n679), .QN(n392) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n173), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n678), .QN(n403) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n172), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n171), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n170), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n671) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n672) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n167), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n673) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n166), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n674) );
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
        sys_rst_l), .Q(n690) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n157), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n689), .QN(n397) );
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
        sys_rst_l), .Q(n675) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n125), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n688), .QN(n396) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n124), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n683), .QN(n402) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n122), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n687), .QN(n393) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n121), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n676) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n120), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n685), .QN(n394) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n119), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n684), .QN(n398) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n118), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n399) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n117), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n677) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n115), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n682), .QN(n401) );
  NAND3X0 U542 ( .IN1(n404), .IN2(n405), .IN3(n406), .QN(uart_XMIT_dataH) );
  INVX0 U543 ( .INP(n407), .ZN(n406) );
  NOR2X0 U544 ( .IN1(n670), .IN2(iXMIT_state_1_), .QN(n407) );
  NAND2X0 U545 ( .IN1(n408), .IN2(n399), .QN(n404) );
  NAND2X0 U546 ( .IN1(n239), .IN2(n242), .QN(n408) );
  NAND2X0 U547 ( .IN1(n409), .IN2(n410), .QN(test_point_DOUT) );
  NAND2X0 U548 ( .IN1(rec_readyH), .IN2(n411), .QN(n410) );
  INVX0 U549 ( .INP(test_mode), .ZN(n411) );
  NAND2X0 U550 ( .IN1(sys_clk), .IN2(test_mode), .QN(n409) );
  NOR2X0 U551 ( .IN1(n412), .IN2(n413), .QN(n35) );
  INVX0 U552 ( .INP(n414), .ZN(n32) );
  NAND2X0 U553 ( .IN1(n415), .IN2(n416), .QN(n180) );
  NAND2X0 U554 ( .IN1(iXMIT_N28), .IN2(n417), .QN(n416) );
  NAND2X0 U555 ( .IN1(test_se), .IN2(n684), .QN(n415) );
  NAND2X0 U556 ( .IN1(n418), .IN2(n419), .QN(n179) );
  NAND2X0 U557 ( .IN1(n678), .IN2(test_se), .QN(n419) );
  NAND2X0 U558 ( .IN1(n420), .IN2(n417), .QN(n418) );
  NAND3X0 U559 ( .IN1(n421), .IN2(n422), .IN3(n423), .QN(n420) );
  NAND2X0 U560 ( .IN1(n670), .IN2(n424), .QN(n423) );
  NAND2X0 U561 ( .IN1(n425), .IN2(n239), .QN(n422) );
  NAND2X0 U562 ( .IN1(n242), .IN2(n426), .QN(n425) );
  NAND2X0 U563 ( .IN1(n427), .IN2(iXMIT_state_1_temp), .QN(n426) );
  NAND3X0 U564 ( .IN1(n428), .IN2(iXMIT_state_1_temp), .IN3(n669), .QN(n421)
         );
  NAND2X0 U565 ( .IN1(n429), .IN2(n430), .QN(n178) );
  NAND3X0 U566 ( .IN1(n424), .IN2(n417), .IN3(n431), .QN(n430) );
  NAND2X0 U567 ( .IN1(n432), .IN2(iXMIT_state_1_temp), .QN(n429) );
  NAND2X0 U568 ( .IN1(n417), .IN2(n433), .QN(n432) );
  NAND2X0 U569 ( .IN1(n434), .IN2(n435), .QN(n177) );
  NAND2X0 U570 ( .IN1(test_se), .IN2(n669), .QN(n435) );
  NAND2X0 U571 ( .IN1(n436), .IN2(n417), .QN(n434) );
  NAND2X0 U572 ( .IN1(n437), .IN2(n438), .QN(n436) );
  NAND2X0 U573 ( .IN1(n439), .IN2(n440), .QN(n176) );
  NAND2X0 U574 ( .IN1(n676), .IN2(test_se), .QN(n440) );
  NAND2X0 U575 ( .IN1(n441), .IN2(n417), .QN(n439) );
  NAND2X0 U576 ( .IN1(n442), .IN2(n443), .QN(n441) );
  NAND2X0 U577 ( .IN1(n680), .IN2(n444), .QN(n443) );
  INVX0 U578 ( .INP(n445), .ZN(n444) );
  NAND2X0 U579 ( .IN1(n446), .IN2(n447), .QN(n175) );
  NAND3X0 U580 ( .IN1(n448), .IN2(n417), .IN3(n681), .QN(n447) );
  NAND2X0 U581 ( .IN1(n680), .IN2(n449), .QN(n446) );
  NAND2X0 U582 ( .IN1(n417), .IN2(n450), .QN(n449) );
  NAND2X0 U583 ( .IN1(n451), .IN2(n452), .QN(n174) );
  NAND3X0 U584 ( .IN1(n453), .IN2(n417), .IN3(n679), .QN(n452) );
  NAND2X0 U585 ( .IN1(n445), .IN2(n450), .QN(n453) );
  NAND2X0 U586 ( .IN1(n454), .IN2(n395), .QN(n450) );
  NAND2X0 U587 ( .IN1(n681), .IN2(n455), .QN(n451) );
  NAND3X0 U588 ( .IN1(n456), .IN2(n457), .IN3(n417), .QN(n455) );
  NAND3X0 U589 ( .IN1(n454), .IN2(n680), .IN3(n392), .QN(n457) );
  INVX0 U590 ( .INP(n458), .ZN(n456) );
  NOR2X0 U591 ( .IN1(n442), .IN2(n392), .QN(n458) );
  NAND2X0 U592 ( .IN1(n459), .IN2(n460), .QN(n173) );
  NAND2X0 U593 ( .IN1(n679), .IN2(test_se), .QN(n460) );
  NAND2X0 U594 ( .IN1(n461), .IN2(n417), .QN(n459) );
  NAND2X0 U595 ( .IN1(n462), .IN2(n463), .QN(n461) );
  NAND3X0 U596 ( .IN1(n464), .IN2(n465), .IN3(n454), .QN(n463) );
  NAND2X0 U597 ( .IN1(n466), .IN2(n678), .QN(n465) );
  NAND2X0 U598 ( .IN1(n467), .IN2(n403), .QN(n464) );
  NAND2X0 U599 ( .IN1(n466), .IN2(n680), .QN(n467) );
  NOR2X0 U600 ( .IN1(n392), .IN2(n395), .QN(n466) );
  NAND2X0 U601 ( .IN1(n678), .IN2(n448), .QN(n462) );
  NAND2X0 U602 ( .IN1(n445), .IN2(n442), .QN(n448) );
  NAND2X0 U603 ( .IN1(n454), .IN2(n400), .QN(n442) );
  NAND2X0 U604 ( .IN1(n468), .IN2(n469), .QN(n445) );
  INVX0 U605 ( .INP(n454), .ZN(n469) );
  NOR3X0 U606 ( .IN1(n239), .IN2(n246), .IN3(n428), .QN(n454) );
  NAND2X0 U607 ( .IN1(n470), .IN2(n471), .QN(n428) );
  NAND4X0 U608 ( .IN1(n678), .IN2(n395), .IN3(n400), .IN4(n392), .QN(n471) );
  NAND2X0 U609 ( .IN1(n472), .IN2(n473), .QN(n172) );
  NAND2X0 U610 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n473) );
  NAND2X0 U611 ( .IN1(n474), .IN2(n417), .QN(n472) );
  NAND3X0 U612 ( .IN1(n475), .IN2(n476), .IN3(n477), .QN(n474) );
  NAND2X0 U613 ( .IN1(n437), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n476) );
  NAND2X0 U614 ( .IN1(xmit_dataH_7_), .IN2(n478), .QN(n475) );
  NAND2X0 U615 ( .IN1(n479), .IN2(n480), .QN(n171) );
  NAND2X0 U616 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n480) );
  NAND2X0 U617 ( .IN1(n481), .IN2(n417), .QN(n479) );
  NAND3X0 U618 ( .IN1(n482), .IN2(n483), .IN3(n484), .QN(n481) );
  NAND2X0 U619 ( .IN1(xmit_dataH_6_), .IN2(n485), .QN(n484) );
  NAND2X0 U620 ( .IN1(n486), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n483) );
  NAND2X0 U621 ( .IN1(n437), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n482) );
  NAND2X0 U622 ( .IN1(n487), .IN2(n488), .QN(n170) );
  NAND2X0 U623 ( .IN1(n671), .IN2(test_se), .QN(n488) );
  NAND2X0 U624 ( .IN1(n489), .IN2(n417), .QN(n487) );
  NAND3X0 U625 ( .IN1(n490), .IN2(n491), .IN3(n492), .QN(n489) );
  NAND2X0 U626 ( .IN1(xmit_dataH_5_), .IN2(n485), .QN(n492) );
  NAND2X0 U627 ( .IN1(n486), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n491) );
  NAND2X0 U628 ( .IN1(n437), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n490) );
  NAND2X0 U629 ( .IN1(n493), .IN2(n494), .QN(n169) );
  NAND2X0 U630 ( .IN1(n672), .IN2(test_se), .QN(n494) );
  NAND2X0 U631 ( .IN1(n495), .IN2(n417), .QN(n493) );
  NAND3X0 U632 ( .IN1(n496), .IN2(n497), .IN3(n498), .QN(n495) );
  NAND2X0 U633 ( .IN1(xmit_dataH_4_), .IN2(n485), .QN(n498) );
  NAND2X0 U634 ( .IN1(n486), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n497) );
  NAND2X0 U635 ( .IN1(n671), .IN2(n437), .QN(n496) );
  NAND2X0 U636 ( .IN1(n499), .IN2(n500), .QN(n168) );
  NAND2X0 U637 ( .IN1(n673), .IN2(test_se), .QN(n500) );
  NAND2X0 U638 ( .IN1(n501), .IN2(n417), .QN(n499) );
  NAND3X0 U639 ( .IN1(n502), .IN2(n503), .IN3(n504), .QN(n501) );
  NAND2X0 U640 ( .IN1(xmit_dataH_3_), .IN2(n485), .QN(n504) );
  NAND2X0 U641 ( .IN1(n671), .IN2(n486), .QN(n503) );
  NAND2X0 U642 ( .IN1(n672), .IN2(n437), .QN(n502) );
  NAND2X0 U643 ( .IN1(n505), .IN2(n506), .QN(n167) );
  NAND2X0 U644 ( .IN1(n674), .IN2(test_se), .QN(n506) );
  NAND2X0 U645 ( .IN1(n507), .IN2(n417), .QN(n505) );
  NAND3X0 U646 ( .IN1(n508), .IN2(n509), .IN3(n510), .QN(n507) );
  NAND2X0 U647 ( .IN1(xmit_dataH_2_), .IN2(n485), .QN(n510) );
  NAND2X0 U648 ( .IN1(n672), .IN2(n486), .QN(n509) );
  NAND2X0 U649 ( .IN1(n673), .IN2(n437), .QN(n508) );
  NAND2X0 U650 ( .IN1(n511), .IN2(n512), .QN(n166) );
  NAND2X0 U651 ( .IN1(test_se), .IN2(n399), .QN(n512) );
  NAND2X0 U652 ( .IN1(n513), .IN2(n417), .QN(n511) );
  NAND3X0 U653 ( .IN1(n514), .IN2(n515), .IN3(n516), .QN(n513) );
  NAND2X0 U654 ( .IN1(xmit_dataH_1_), .IN2(n485), .QN(n516) );
  NAND2X0 U655 ( .IN1(n673), .IN2(n486), .QN(n515) );
  NAND2X0 U656 ( .IN1(n674), .IN2(n437), .QN(n514) );
  NAND2X0 U657 ( .IN1(n517), .IN2(n518), .QN(n164) );
  NAND2X0 U658 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n518) );
  NAND2X0 U659 ( .IN1(n519), .IN2(n417), .QN(n517) );
  NAND2X0 U660 ( .IN1(n468), .IN2(n520), .QN(n519) );
  NAND2X0 U661 ( .IN1(n431), .IN2(n427), .QN(n520) );
  INVX0 U662 ( .INP(n424), .ZN(n427) );
  NAND2X0 U663 ( .IN1(n521), .IN2(n676), .QN(n424) );
  INVX0 U664 ( .INP(n522), .ZN(n521) );
  INVX0 U665 ( .INP(n405), .ZN(n431) );
  NAND2X0 U666 ( .IN1(n523), .IN2(n524), .QN(n468) );
  INVX0 U667 ( .INP(xmitH), .ZN(n524) );
  NAND3X0 U668 ( .IN1(n525), .IN2(n526), .IN3(n527), .QN(n163) );
  NAND2X0 U669 ( .IN1(n528), .IN2(iRECEIVER_state_0_), .QN(n526) );
  NAND3X0 U670 ( .IN1(n529), .IN2(n530), .IN3(n417), .QN(n528) );
  NAND2X0 U671 ( .IN1(n531), .IN2(iRECEIVER_state_1_), .QN(n530) );
  NAND3X0 U672 ( .IN1(n238), .IN2(n401), .IN3(n241), .QN(n529) );
  NAND3X0 U673 ( .IN1(n532), .IN2(n417), .IN3(n245), .QN(n525) );
  NAND2X0 U674 ( .IN1(n682), .IN2(n533), .QN(n532) );
  NAND2X0 U675 ( .IN1(n534), .IN2(iRECEIVER_state_1_), .QN(n533) );
  NAND2X0 U676 ( .IN1(n535), .IN2(n536), .QN(n162) );
  NAND2X0 U677 ( .IN1(n675), .IN2(test_se), .QN(n536) );
  NAND2X0 U678 ( .IN1(n537), .IN2(n417), .QN(n535) );
  NAND3X0 U679 ( .IN1(n538), .IN2(n539), .IN3(n238), .QN(n537) );
  NAND2X0 U680 ( .IN1(n241), .IN2(n682), .QN(n539) );
  NAND2X0 U681 ( .IN1(n540), .IN2(iRECEIVER_state_1_), .QN(n538) );
  NAND2X0 U682 ( .IN1(n534), .IN2(n541), .QN(n540) );
  NAND2X0 U683 ( .IN1(n542), .IN2(iRECEIVER_state_0_), .QN(n541) );
  NAND2X0 U684 ( .IN1(n543), .IN2(n544), .QN(n542) );
  NAND4X0 U685 ( .IN1(n675), .IN2(n396), .IN3(n393), .IN4(n402), .QN(n544) );
  INVX0 U686 ( .INP(n531), .ZN(n543) );
  NAND2X0 U687 ( .IN1(n545), .IN2(n546), .QN(n161) );
  NAND2X0 U688 ( .IN1(iRECEIVER_N20), .IN2(n417), .QN(n546) );
  NAND2X0 U689 ( .IN1(test_si), .IN2(test_se), .QN(n545) );
  NAND2X0 U690 ( .IN1(n547), .IN2(n548), .QN(n160) );
  NAND3X0 U691 ( .IN1(iRECEIVER_bitCell_cntrH_1_), .IN2(n417), .IN3(
        iRECEIVER_N20), .QN(n548) );
  NAND2X0 U692 ( .IN1(n549), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(n547) );
  NAND2X0 U693 ( .IN1(n417), .IN2(n550), .QN(n549) );
  NAND2X0 U694 ( .IN1(n551), .IN2(n244), .QN(n550) );
  NAND2X0 U695 ( .IN1(n552), .IN2(n553), .QN(n159) );
  NAND2X0 U696 ( .IN1(test_se), .IN2(iRECEIVER_bitCell_cntrH_1_), .QN(n553) );
  NAND2X0 U697 ( .IN1(iRECEIVER_N22), .IN2(n417), .QN(n552) );
  NAND2X0 U698 ( .IN1(n554), .IN2(n555), .QN(n157) );
  NAND2X0 U699 ( .IN1(iRECEIVER_N23), .IN2(n417), .QN(n555) );
  NAND2X0 U700 ( .IN1(test_se), .IN2(n690), .QN(n554) );
  NAND2X0 U701 ( .IN1(n414), .IN2(n556), .QN(n156) );
  NAND2X0 U702 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .QN(n556) );
  NAND2X0 U703 ( .IN1(n557), .IN2(iRECEIVER_state_1_), .QN(n414) );
  NAND2X0 U704 ( .IN1(n558), .IN2(n559), .QN(n155) );
  NAND2X0 U705 ( .IN1(n560), .IN2(n417), .QN(n559) );
  NAND2X0 U706 ( .IN1(n561), .IN2(n562), .QN(n560) );
  NAND2X0 U707 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .QN(n562)
         );
  NAND2X0 U708 ( .IN1(n677), .IN2(test_se), .QN(n558) );
  NAND3X0 U709 ( .IN1(n563), .IN2(n564), .IN3(n565), .QN(n154) );
  NAND2X0 U710 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .QN(n565) );
  NAND2X0 U711 ( .IN1(rec_dataH_rec_7), .IN2(n566), .QN(n564) );
  NAND2X0 U712 ( .IN1(n567), .IN2(n682), .QN(n563) );
  NAND2X0 U713 ( .IN1(n568), .IN2(n569), .QN(n153) );
  NAND2X0 U714 ( .IN1(rec_dataH_rec_7), .IN2(n417), .QN(n569) );
  NAND2X0 U715 ( .IN1(rec_dataH_temp_6), .IN2(test_se), .QN(n568) );
  NAND2X0 U716 ( .IN1(n570), .IN2(n571), .QN(n152) );
  NAND2X0 U717 ( .IN1(test_so), .IN2(n417), .QN(n571) );
  NAND2X0 U718 ( .IN1(rec_dataH_6_), .IN2(test_se), .QN(n570) );
  NAND3X0 U719 ( .IN1(n572), .IN2(n573), .IN3(n574), .QN(n150) );
  NAND2X0 U720 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .QN(n574) );
  NAND2X0 U721 ( .IN1(rec_dataH_rec_6), .IN2(n566), .QN(n573) );
  NAND2X0 U722 ( .IN1(n567), .IN2(rec_dataH_rec_7), .QN(n572) );
  NAND2X0 U723 ( .IN1(n575), .IN2(n576), .QN(n149) );
  NAND2X0 U724 ( .IN1(rec_dataH_rec_6), .IN2(n417), .QN(n576) );
  NAND2X0 U725 ( .IN1(rec_dataH_temp_5), .IN2(test_se), .QN(n575) );
  NAND2X0 U726 ( .IN1(n577), .IN2(n578), .QN(n148) );
  NAND2X0 U727 ( .IN1(rec_dataH_temp_6), .IN2(n417), .QN(n578) );
  NAND2X0 U728 ( .IN1(rec_dataH_5_), .IN2(test_se), .QN(n577) );
  NAND3X0 U729 ( .IN1(n579), .IN2(n580), .IN3(n581), .QN(n147) );
  NAND2X0 U730 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .QN(n581) );
  NAND2X0 U731 ( .IN1(rec_dataH_rec_5), .IN2(n566), .QN(n580) );
  NAND2X0 U732 ( .IN1(rec_dataH_rec_6), .IN2(n567), .QN(n579) );
  NAND2X0 U733 ( .IN1(n582), .IN2(n583), .QN(n146) );
  NAND2X0 U734 ( .IN1(rec_dataH_rec_5), .IN2(n417), .QN(n583) );
  NAND2X0 U735 ( .IN1(rec_dataH_temp_4), .IN2(test_se), .QN(n582) );
  NAND2X0 U736 ( .IN1(n584), .IN2(n585), .QN(n145) );
  NAND2X0 U737 ( .IN1(rec_dataH_temp_5), .IN2(n417), .QN(n585) );
  NAND2X0 U738 ( .IN1(rec_dataH_4_), .IN2(test_se), .QN(n584) );
  NAND3X0 U739 ( .IN1(n586), .IN2(n587), .IN3(n588), .QN(n143) );
  NAND2X0 U740 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .QN(n588) );
  NAND2X0 U741 ( .IN1(rec_dataH_rec_4), .IN2(n566), .QN(n587) );
  NAND2X0 U742 ( .IN1(rec_dataH_rec_5), .IN2(n567), .QN(n586) );
  NAND2X0 U743 ( .IN1(n589), .IN2(n590), .QN(n142) );
  NAND2X0 U744 ( .IN1(rec_dataH_rec_4), .IN2(n417), .QN(n590) );
  NAND2X0 U745 ( .IN1(rec_dataH_temp_3), .IN2(test_se), .QN(n589) );
  NAND2X0 U746 ( .IN1(n591), .IN2(n592), .QN(n141) );
  NAND2X0 U747 ( .IN1(rec_dataH_temp_4), .IN2(n417), .QN(n592) );
  NAND2X0 U748 ( .IN1(rec_dataH_3_), .IN2(test_se), .QN(n591) );
  NAND3X0 U749 ( .IN1(n593), .IN2(n594), .IN3(n595), .QN(n140) );
  NAND2X0 U750 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .QN(n595) );
  NAND2X0 U751 ( .IN1(rec_dataH_rec_3), .IN2(n566), .QN(n594) );
  NAND2X0 U752 ( .IN1(rec_dataH_rec_4), .IN2(n567), .QN(n593) );
  NAND2X0 U753 ( .IN1(n596), .IN2(n597), .QN(n139) );
  NAND2X0 U754 ( .IN1(rec_dataH_rec_3), .IN2(n417), .QN(n597) );
  NAND2X0 U755 ( .IN1(rec_dataH_temp_2), .IN2(test_se), .QN(n596) );
  NAND2X0 U756 ( .IN1(n598), .IN2(n599), .QN(n138) );
  NAND2X0 U757 ( .IN1(rec_dataH_temp_3), .IN2(n417), .QN(n599) );
  NAND2X0 U758 ( .IN1(rec_dataH_2_), .IN2(test_se), .QN(n598) );
  NAND3X0 U759 ( .IN1(n600), .IN2(n601), .IN3(n602), .QN(n136) );
  NAND2X0 U760 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .QN(n602) );
  NAND2X0 U761 ( .IN1(rec_dataH_rec_2), .IN2(n566), .QN(n601) );
  NAND2X0 U762 ( .IN1(rec_dataH_rec_3), .IN2(n567), .QN(n600) );
  NAND2X0 U763 ( .IN1(n603), .IN2(n604), .QN(n135) );
  NAND2X0 U764 ( .IN1(rec_dataH_rec_2), .IN2(n417), .QN(n604) );
  NAND2X0 U765 ( .IN1(rec_dataH_temp_1), .IN2(test_se), .QN(n603) );
  NAND2X0 U766 ( .IN1(n605), .IN2(n606), .QN(n134) );
  NAND2X0 U767 ( .IN1(rec_dataH_temp_2), .IN2(n417), .QN(n606) );
  NAND2X0 U768 ( .IN1(rec_dataH_1_), .IN2(test_se), .QN(n605) );
  NAND3X0 U769 ( .IN1(n607), .IN2(n608), .IN3(n609), .QN(n133) );
  NAND2X0 U770 ( .IN1(rec_dataH_rec_0_temp), .IN2(test_se), .QN(n609) );
  NAND2X0 U771 ( .IN1(rec_dataH_rec_1), .IN2(n566), .QN(n608) );
  NAND2X0 U772 ( .IN1(rec_dataH_rec_2), .IN2(n567), .QN(n607) );
  NAND2X0 U773 ( .IN1(n610), .IN2(n611), .QN(n132) );
  NAND2X0 U774 ( .IN1(rec_dataH_rec_1), .IN2(n417), .QN(n611) );
  NAND2X0 U775 ( .IN1(rec_dataH_temp_0), .IN2(test_se), .QN(n610) );
  NAND2X0 U776 ( .IN1(n612), .IN2(n613), .QN(n131) );
  NAND2X0 U777 ( .IN1(rec_dataH_temp_1), .IN2(n417), .QN(n613) );
  NAND2X0 U778 ( .IN1(rec_dataH_0_), .IN2(test_se), .QN(n612) );
  NAND3X0 U779 ( .IN1(n614), .IN2(n615), .IN3(n616), .QN(n129) );
  NAND2X0 U780 ( .IN1(test_se), .IN2(n689), .QN(n616) );
  NAND2X0 U781 ( .IN1(rec_dataH_rec_0_temp), .IN2(n566), .QN(n615) );
  NOR2X0 U782 ( .IN1(n617), .IN2(test_se), .QN(n566) );
  NAND2X0 U783 ( .IN1(rec_dataH_rec_1), .IN2(n567), .QN(n614) );
  NAND2X0 U784 ( .IN1(n618), .IN2(n619), .QN(n128) );
  NAND2X0 U785 ( .IN1(rec_dataH_rec_0_temp), .IN2(n417), .QN(n619) );
  NAND2X0 U786 ( .IN1(rec_dataH_7_), .IN2(test_se), .QN(n618) );
  NAND2X0 U787 ( .IN1(n620), .IN2(n621), .QN(n127) );
  NAND2X0 U788 ( .IN1(rec_dataH_temp_0), .IN2(n417), .QN(n621) );
  NAND2X0 U789 ( .IN1(xmit_doneH_temp), .IN2(test_se), .QN(n620) );
  NAND3X0 U790 ( .IN1(n622), .IN2(n623), .IN3(n624), .QN(n126) );
  NAND2X0 U791 ( .IN1(n687), .IN2(test_se), .QN(n624) );
  NAND2X0 U792 ( .IN1(n625), .IN2(n675), .QN(n623) );
  NAND2X0 U793 ( .IN1(n567), .IN2(iRECEIVER_N28), .QN(n622) );
  NAND3X0 U794 ( .IN1(n626), .IN2(n627), .IN3(n628), .QN(n125) );
  NAND2X0 U795 ( .IN1(test_se), .IN2(rec_readyH), .QN(n628) );
  NAND2X0 U796 ( .IN1(n567), .IN2(n396), .QN(n627) );
  NAND2X0 U797 ( .IN1(n688), .IN2(n625), .QN(n626) );
  NAND3X0 U798 ( .IN1(n629), .IN2(n630), .IN3(n631), .QN(n124) );
  NAND2X0 U799 ( .IN1(n688), .IN2(test_se), .QN(n631) );
  NAND2X0 U800 ( .IN1(n683), .IN2(n625), .QN(n630) );
  NAND2X0 U801 ( .IN1(n567), .IN2(iRECEIVER_N26), .QN(n629) );
  NAND3X0 U802 ( .IN1(n632), .IN2(n633), .IN3(n634), .QN(n122) );
  NAND2X0 U803 ( .IN1(n683), .IN2(test_se), .QN(n634) );
  NAND2X0 U804 ( .IN1(n687), .IN2(n625), .QN(n633) );
  INVX0 U805 ( .INP(n635), .ZN(n625) );
  NAND3X0 U806 ( .IN1(n561), .IN2(n636), .IN3(n417), .QN(n635) );
  NAND2X0 U807 ( .IN1(n245), .IN2(iRECEIVER_state_2_), .QN(n636) );
  NAND3X0 U808 ( .IN1(n241), .IN2(n682), .IN3(n238), .QN(n561) );
  NAND2X0 U809 ( .IN1(n567), .IN2(iRECEIVER_N27), .QN(n632) );
  INVX0 U810 ( .INP(n527), .ZN(n567) );
  NAND2X0 U811 ( .IN1(n617), .IN2(n417), .QN(n527) );
  NOR2X0 U812 ( .IN1(iRECEIVER_state_0_), .IN2(n238), .QN(n617) );
  NAND2X0 U813 ( .IN1(n637), .IN2(n638), .QN(n121) );
  NAND3X0 U814 ( .IN1(iXMIT_N25), .IN2(n639), .IN3(n417), .QN(n638) );
  NAND2X0 U815 ( .IN1(n686), .IN2(test_se), .QN(n637) );
  NAND2X0 U816 ( .IN1(n640), .IN2(n641), .QN(n120) );
  NAND2X0 U817 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .QN(n641) );
  NAND2X0 U818 ( .IN1(iXMIT_N26), .IN2(n417), .QN(n640) );
  NAND3X0 U819 ( .IN1(n642), .IN2(n643), .IN3(n644), .QN(n119) );
  NAND3X0 U820 ( .IN1(iXMIT_N26), .IN2(n684), .IN3(n417), .QN(n643) );
  NAND2X0 U821 ( .IN1(n685), .IN2(test_se), .QN(n642) );
  NAND2X0 U822 ( .IN1(n645), .IN2(n646), .QN(n118) );
  NAND2X0 U823 ( .IN1(test_se), .IN2(n670), .QN(n646) );
  NAND2X0 U824 ( .IN1(n647), .IN2(n417), .QN(n645) );
  NAND3X0 U825 ( .IN1(n648), .IN2(n649), .IN3(n650), .QN(n647) );
  NAND2X0 U826 ( .IN1(xmit_dataH_0_), .IN2(n485), .QN(n650) );
  INVX0 U827 ( .INP(n651), .ZN(n485) );
  NAND2X0 U828 ( .IN1(n674), .IN2(n486), .QN(n649) );
  INVX0 U829 ( .INP(n477), .ZN(n486) );
  NAND2X0 U830 ( .IN1(n478), .IN2(n651), .QN(n477) );
  NAND2X0 U831 ( .IN1(n437), .IN2(n399), .QN(n648) );
  INVX0 U832 ( .INP(n478), .ZN(n437) );
  NAND2X0 U833 ( .IN1(n651), .IN2(n652), .QN(n478) );
  NAND2X0 U834 ( .IN1(n670), .IN2(n239), .QN(n652) );
  NAND2X0 U835 ( .IN1(xmitH), .IN2(n523), .QN(n651) );
  NOR2X0 U836 ( .IN1(iXMIT_state_1_temp), .IN2(n670), .QN(n523) );
  NAND2X0 U837 ( .IN1(n653), .IN2(n654), .QN(n117) );
  NAND2X0 U838 ( .IN1(uart_REC_dataH), .IN2(n417), .QN(n654) );
  NAND2X0 U839 ( .IN1(n682), .IN2(test_se), .QN(n653) );
  NAND2X0 U840 ( .IN1(n655), .IN2(n656), .QN(n115) );
  NAND2X0 U841 ( .IN1(n677), .IN2(n417), .QN(n656) );
  INVX0 U842 ( .INP(test_se), .ZN(n417) );
  NAND2X0 U843 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .QN(n655) );
  INVX0 U844 ( .INP(n657), .ZN(iXMIT_N28) );
  NAND2X0 U845 ( .IN1(iXMIT_N24), .IN2(n639), .QN(n657) );
  NAND2X0 U846 ( .IN1(n644), .IN2(n658), .QN(iXMIT_N27) );
  NAND2X0 U847 ( .IN1(iXMIT_N26), .IN2(n684), .QN(n658) );
  NAND3X0 U848 ( .IN1(n639), .IN2(n398), .IN3(n685), .QN(n644) );
  INVX0 U849 ( .INP(n659), .ZN(iXMIT_N26) );
  NAND2X0 U850 ( .IN1(n639), .IN2(n394), .QN(n659) );
  NAND2X0 U851 ( .IN1(n405), .IN2(n438), .QN(n639) );
  NAND2X0 U852 ( .IN1(n433), .IN2(iXMIT_state_1_temp), .QN(n438) );
  NAND2X0 U853 ( .IN1(n470), .IN2(n669), .QN(n433) );
  INVX0 U854 ( .INP(n660), .ZN(n470) );
  NAND4X0 U855 ( .IN1(n676), .IN2(n686), .IN3(n684), .IN4(n394), .QN(n660) );
  NAND2X0 U856 ( .IN1(n669), .IN2(n670), .QN(n405) );
  XNOR2X1 U857 ( .IN1(n676), .IN2(n522), .Q(iXMIT_N25) );
  NAND2X0 U858 ( .IN1(n661), .IN2(n686), .QN(n522) );
  XOR2X1 U859 ( .IN1(n661), .IN2(n686), .Q(iXMIT_N24) );
  NOR2X0 U860 ( .IN1(n394), .IN2(n398), .QN(n661) );
  XOR2X1 U861 ( .IN1(n675), .IN2(n662), .Q(iRECEIVER_N28) );
  NOR2X0 U862 ( .IN1(n663), .IN2(n393), .QN(n662) );
  XOR2X1 U863 ( .IN1(n663), .IN2(n393), .Q(iRECEIVER_N27) );
  NAND2X0 U864 ( .IN1(n683), .IN2(n688), .QN(n663) );
  XOR2X1 U865 ( .IN1(n683), .IN2(n688), .Q(iRECEIVER_N26) );
  INVX0 U866 ( .INP(n664), .ZN(iRECEIVER_N23) );
  NAND2X0 U867 ( .IN1(n551), .IN2(n41), .QN(n664) );
  XOR2X1 U868 ( .IN1(n665), .IN2(n397), .Q(n41) );
  NAND2X0 U869 ( .IN1(n690), .IN2(n666), .QN(n665) );
  NOR2X0 U870 ( .IN1(n413), .IN2(n667), .QN(iRECEIVER_N22) );
  INVX0 U871 ( .INP(n40), .ZN(n667) );
  XOR2X1 U872 ( .IN1(n690), .IN2(n666), .Q(n40) );
  NOR2X0 U873 ( .IN1(n255), .IN2(n244), .QN(n666) );
  NOR2X0 U874 ( .IN1(n413), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(
        iRECEIVER_N20) );
  INVX0 U875 ( .INP(n551), .ZN(n413) );
  NOR4X0 U876 ( .IN1(iRECEIVER_state_2_), .IN2(n557), .IN3(n668), .IN4(n241), 
        .QN(n551) );
  NOR2X0 U877 ( .IN1(iRECEIVER_state_0_), .IN2(n534), .QN(n668) );
  NAND4X0 U878 ( .IN1(n255), .IN2(n244), .IN3(n690), .IN4(n397), .QN(n534) );
  NOR2X0 U879 ( .IN1(n531), .IN2(n245), .QN(n557) );
  NAND4X0 U880 ( .IN1(n255), .IN2(n689), .IN3(n690), .IN4(
        iRECEIVER_bitCell_cntrH_1_), .QN(n531) );
  INVX0 U881 ( .INP(n412), .ZN(iRECEIVER_N17) );
  XNOR2X1 U882 ( .IN1(iRECEIVER_bitCell_cntrH_1_), .IN2(
        iRECEIVER_bitCell_cntrH_0_), .Q(n412) );
endmodule

