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
         iXMIT_xmit_ShiftRegH_5_, iXMIT_N28, iXMIT_N26, iXMIT_N25, n401, n239,
         n242, n246, n255, n241, n244, n245, n238, rec_dataH_rec_7,
         rec_dataH_rec_6, rec_dataH_rec_5, rec_dataH_rec_4, rec_dataH_rec_3,
         rec_dataH_rec_2, rec_dataH_rec_1, rec_dataH_rec_0_temp, n182, n181,
         n180, n179, n178, n177, n176, n175, n174, n173, n172, n171, n170,
         n169, n168, n167, n166, n164, n163, n162, n161, n160, n159, n157,
         n156, n155, test_point_DOUT, n154, n153, n152, n150, n149, n148, n147,
         n146, n145, n143, n142, n141, n140, n139, n138, n136, n135, n134,
         n133, n132, n131, n129, n128, n127, n126, n125, n124, n122, n121,
         n120, n119, n118, n5, n35, n38, n42, n44, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
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
         n730, n731, n732, n733;

  AND2X4 TrojanU305 ( .IN1(iCTRL), .IN2(iXMIT_state_1_temp), .Q(iXMIT_state_1_) );
  AND2X4 TrojanU303 ( .IN1(iCTRL), .IN2(xmit_doneH_temp), .Q(xmit_doneH) );
  OR2X1 TrojanU302 ( .IN1(iXMIT_CRTL), .IN2(iRECEIVER_CTRL), .Q(iCTRL) );
  OR4X4 TrojanU301 ( .IN1(iRECEIVER_state_CTRL), .IN2(iRECEIVER_N_CTRL_1_), 
        .IN3(iRECEIVER_N_CTRL_2_), .IN4(iRECEIVER_bitCell_CTRL), .Q(
        iRECEIVER_CTRL) );
  NAND4X1 TrojanU300 ( .IN1(n42), .IN2(iRECEIVER_N17), .IN3(
        iRECEIVER_bitCell_cntrH_0_), .IN4(iRECEIVER_bitCell_cntrH_1_), .QN(
        iRECEIVER_bitCell_CTRL) );
  NAND4X1 TrojanU299 ( .IN1(iRECEIVER_N22), .IN2(n38), .IN3(iRECEIVER_N20), 
        .IN4(n44), .QN(iRECEIVER_N_CTRL_2_) );
  NAND4X1 TrojanU298 ( .IN1(iRECEIVER_N28), .IN2(iRECEIVER_N27), .IN3(
        iRECEIVER_N26), .IN4(iRECEIVER_N23), .QN(iRECEIVER_N_CTRL_1_) );
  NAND4X1 TrojanU297 ( .IN1(n35), .IN2(iRECEIVER_state_0_), .IN3(
        iRECEIVER_state_1_), .IN4(iRECEIVER_state_2_), .QN(
        iRECEIVER_state_CTRL) );
  OR4X4 TrojanU296 ( .IN1(1'b0), .IN2(iXMIT_N_CTRL_1_), .IN3(iXMIT_N_CTRL_2_), 
        .IN4(iXMIT_xmit_CTRL), .Q(iXMIT_CRTL) );
  NAND4X1 TrojanU295 ( .IN1(iXMIT_N24), .IN2(iXMIT_xmit_ShiftRegH_7_), .IN3(
        iXMIT_xmit_ShiftRegH_6_), .IN4(iXMIT_xmit_ShiftRegH_5_), .QN(
        iXMIT_xmit_CTRL) );
  NAND4X1 TrojanU294 ( .IN1(iXMIT_N28), .IN2(n5), .IN3(iXMIT_N26), .IN4(
        iXMIT_N25), .QN(iXMIT_N_CTRL_2_) );
  NAND4X1 TrojanU293 ( .IN1(n401), .IN2(n239), .IN3(n242), .IN4(n246), .QN(
        iXMIT_N_CTRL_1_) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_2_ ( .D(n182), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n712), .QN(n424) );
  DFFARX1 iXMIT_state_reg_0_ ( .D(n181), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n713), .QN(n239) );
  DFFARX1 iXMIT_state_reg_2_ ( .D(n180), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        n714), .QN(n242) );
  DFFARX1 iXMIT_state_reg_1_ ( .D(n179), .CLK(sys_clk), .RSTB(sys_rst_l), .Q(
        iXMIT_state_1_temp), .QN(n246) );
  DFFARX1 iXMIT_bitCountH_reg_0_ ( .D(n178), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n726), .QN(n427) );
  DFFARX1 iXMIT_bitCountH_reg_1_ ( .D(n177), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n727), .QN(n421) );
  DFFARX1 iXMIT_bitCountH_reg_2_ ( .D(n176), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n725), .QN(n418) );
  DFFARX1 iXMIT_bitCountH_reg_3_ ( .D(n175), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .Q(n724), .QN(n430) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(n174), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_7_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(n173), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_6_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(n172), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(iXMIT_xmit_ShiftRegH_5_) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(n171), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n715) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(n170), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n716) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(n169), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n717) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(n168), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n718) );
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
        sys_rst_l), .Q(n719), .QN(n425) );
  DFFARX1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(n160), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n733) );
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
        sys_rst_l), .Q(n720) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(n127), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n729), .QN(n420) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(n126), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n731), .QN(n423) );
  DFFARX1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(n125), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n730), .QN(n428) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_3_ ( .D(n124), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n721), .QN(n422) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_0_ ( .D(n122), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n732) );
  DFFARX1 iXMIT_bitCell_cntrH_reg_1_ ( .D(n121), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n722), .QN(n419) );
  DFFARX1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(n120), .CLK(sys_clk), .RSTB(
        sys_rst_l), .Q(n426) );
  DFFASX1 iRECEIVER_rec_datSyncH_reg ( .D(n119), .CLK(sys_clk), .SETB(
        sys_rst_l), .Q(n723) );
  DFFASX1 iRECEIVER_rec_datH_reg ( .D(n118), .CLK(sys_clk), .SETB(sys_rst_l), 
        .Q(n728), .QN(n429) );
  DFFARX1 TrojaniDatasend_reg_2_ ( .D(n182), .CLK(sys_clk), .RSTB(sys_rst_l), 
        .QN(n401) );
  NAND3X0 U567 ( .IN1(n431), .IN2(n432), .IN3(n433), .QN(uart_XMIT_dataH) );
  NAND2X0 U568 ( .IN1(n242), .IN2(n434), .QN(n433) );
  INVX0 U569 ( .INP(iXMIT_state_1_), .ZN(n434) );
  NAND2X0 U570 ( .IN1(n435), .IN2(n426), .QN(n431) );
  NAND2X0 U571 ( .IN1(n239), .IN2(n242), .QN(n435) );
  NAND2X0 U572 ( .IN1(n436), .IN2(n437), .QN(test_point_DOUT) );
  NAND2X0 U573 ( .IN1(rec_readyH), .IN2(n438), .QN(n437) );
  INVX0 U574 ( .INP(test_mode), .ZN(n438) );
  NAND2X0 U575 ( .IN1(sys_clk), .IN2(test_mode), .QN(n436) );
  NAND2X0 U576 ( .IN1(n439), .IN2(n440), .QN(n5) );
  NAND2X0 U577 ( .IN1(iXMIT_N26), .IN2(n722), .QN(n440) );
  INVX0 U578 ( .INP(n441), .ZN(n44) );
  INVX0 U579 ( .INP(n442), .ZN(n42) );
  NOR2X0 U580 ( .IN1(n443), .IN2(n444), .QN(n38) );
  INVX0 U581 ( .INP(iRECEIVER_N17), .ZN(n443) );
  NAND2X0 U582 ( .IN1(n445), .IN2(n446), .QN(n182) );
  NAND2X0 U583 ( .IN1(iXMIT_N28), .IN2(n447), .QN(n446) );
  NAND2X0 U584 ( .IN1(test_se), .IN2(n722), .QN(n445) );
  NAND2X0 U585 ( .IN1(n448), .IN2(n449), .QN(n181) );
  NAND2X0 U586 ( .IN1(n724), .IN2(test_se), .QN(n449) );
  NAND2X0 U587 ( .IN1(n450), .IN2(n447), .QN(n448) );
  NAND3X0 U588 ( .IN1(n451), .IN2(n452), .IN3(n453), .QN(n450) );
  NAND2X0 U589 ( .IN1(n714), .IN2(n454), .QN(n453) );
  NAND2X0 U590 ( .IN1(n455), .IN2(n239), .QN(n452) );
  NAND2X0 U591 ( .IN1(n242), .IN2(n456), .QN(n455) );
  NAND2X0 U592 ( .IN1(n457), .IN2(iXMIT_state_1_temp), .QN(n456) );
  NAND3X0 U593 ( .IN1(n458), .IN2(iXMIT_state_1_temp), .IN3(n713), .QN(n451)
         );
  NAND2X0 U594 ( .IN1(n459), .IN2(n460), .QN(n180) );
  NAND3X0 U595 ( .IN1(n454), .IN2(n447), .IN3(n461), .QN(n460) );
  INVX0 U596 ( .INP(n457), .ZN(n454) );
  NAND2X0 U597 ( .IN1(n462), .IN2(iXMIT_state_1_temp), .QN(n459) );
  NAND2X0 U598 ( .IN1(n447), .IN2(n463), .QN(n462) );
  NAND2X0 U599 ( .IN1(n464), .IN2(n465), .QN(n179) );
  NAND2X0 U600 ( .IN1(test_se), .IN2(n713), .QN(n465) );
  NAND2X0 U601 ( .IN1(n466), .IN2(n447), .QN(n464) );
  NAND2X0 U602 ( .IN1(n467), .IN2(n468), .QN(n466) );
  NAND2X0 U603 ( .IN1(n469), .IN2(n470), .QN(n178) );
  NAND2X0 U604 ( .IN1(test_se), .IN2(n721), .QN(n470) );
  NAND2X0 U605 ( .IN1(n471), .IN2(n447), .QN(n469) );
  NAND2X0 U606 ( .IN1(n472), .IN2(n473), .QN(n471) );
  NAND2X0 U607 ( .IN1(n726), .IN2(n474), .QN(n473) );
  NAND2X0 U608 ( .IN1(n475), .IN2(n476), .QN(n177) );
  NAND3X0 U609 ( .IN1(n477), .IN2(n447), .IN3(n727), .QN(n476) );
  NAND2X0 U610 ( .IN1(n726), .IN2(n478), .QN(n475) );
  NAND2X0 U611 ( .IN1(n447), .IN2(n479), .QN(n478) );
  NAND2X0 U612 ( .IN1(n480), .IN2(n481), .QN(n176) );
  NAND3X0 U613 ( .IN1(n482), .IN2(n447), .IN3(n725), .QN(n481) );
  NAND2X0 U614 ( .IN1(n483), .IN2(n479), .QN(n482) );
  NAND2X0 U615 ( .IN1(n484), .IN2(n421), .QN(n479) );
  NAND2X0 U616 ( .IN1(n727), .IN2(n485), .QN(n480) );
  NAND3X0 U617 ( .IN1(n486), .IN2(n487), .IN3(n447), .QN(n485) );
  NAND3X0 U618 ( .IN1(n484), .IN2(n726), .IN3(n418), .QN(n487) );
  NAND2X0 U619 ( .IN1(n488), .IN2(n725), .QN(n486) );
  INVX0 U620 ( .INP(n472), .ZN(n488) );
  NAND2X0 U621 ( .IN1(n489), .IN2(n490), .QN(n175) );
  NAND2X0 U622 ( .IN1(n725), .IN2(test_se), .QN(n490) );
  NAND2X0 U623 ( .IN1(n491), .IN2(n447), .QN(n489) );
  NAND2X0 U624 ( .IN1(n492), .IN2(n493), .QN(n491) );
  NAND3X0 U625 ( .IN1(n494), .IN2(n495), .IN3(n484), .QN(n493) );
  NAND2X0 U626 ( .IN1(n496), .IN2(n724), .QN(n495) );
  NAND2X0 U627 ( .IN1(n497), .IN2(n430), .QN(n494) );
  NAND2X0 U628 ( .IN1(n496), .IN2(n726), .QN(n497) );
  NOR2X0 U629 ( .IN1(n418), .IN2(n421), .QN(n496) );
  NAND2X0 U630 ( .IN1(n724), .IN2(n477), .QN(n492) );
  NAND2X0 U631 ( .IN1(n483), .IN2(n472), .QN(n477) );
  NAND2X0 U632 ( .IN1(n484), .IN2(n427), .QN(n472) );
  INVX0 U633 ( .INP(n474), .ZN(n483) );
  NOR2X0 U634 ( .IN1(n498), .IN2(n484), .QN(n474) );
  NOR3X0 U635 ( .IN1(n239), .IN2(n246), .IN3(n458), .QN(n484) );
  NAND2X0 U636 ( .IN1(n499), .IN2(n500), .QN(n458) );
  NAND4X0 U637 ( .IN1(n724), .IN2(n421), .IN3(n427), .IN4(n418), .QN(n500) );
  NOR2X0 U638 ( .IN1(n501), .IN2(xmitH), .QN(n498) );
  NAND2X0 U639 ( .IN1(n502), .IN2(n503), .QN(n174) );
  NAND2X0 U640 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n503) );
  NAND2X0 U641 ( .IN1(n504), .IN2(n447), .QN(n502) );
  NAND3X0 U642 ( .IN1(n505), .IN2(n506), .IN3(n507), .QN(n504) );
  INVX0 U643 ( .INP(n508), .ZN(n507) );
  NAND2X0 U644 ( .IN1(n467), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n506) );
  NAND2X0 U645 ( .IN1(xmit_dataH_7_), .IN2(n509), .QN(n505) );
  NAND2X0 U646 ( .IN1(n510), .IN2(n511), .QN(n173) );
  NAND2X0 U647 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n511) );
  NAND2X0 U648 ( .IN1(n512), .IN2(n447), .QN(n510) );
  NAND3X0 U649 ( .IN1(n513), .IN2(n514), .IN3(n515), .QN(n512) );
  NAND2X0 U650 ( .IN1(xmit_dataH_6_), .IN2(n516), .QN(n515) );
  NAND2X0 U651 ( .IN1(n508), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n514) );
  NAND2X0 U652 ( .IN1(n467), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n513) );
  NAND2X0 U653 ( .IN1(n517), .IN2(n518), .QN(n172) );
  NAND2X0 U654 ( .IN1(n715), .IN2(test_se), .QN(n518) );
  NAND2X0 U655 ( .IN1(n519), .IN2(n447), .QN(n517) );
  NAND3X0 U656 ( .IN1(n520), .IN2(n521), .IN3(n522), .QN(n519) );
  NAND2X0 U657 ( .IN1(xmit_dataH_5_), .IN2(n516), .QN(n522) );
  NAND2X0 U658 ( .IN1(n508), .IN2(iXMIT_xmit_ShiftRegH_6_), .QN(n521) );
  NAND2X0 U659 ( .IN1(n467), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n520) );
  NAND2X0 U660 ( .IN1(n523), .IN2(n524), .QN(n171) );
  NAND2X0 U661 ( .IN1(n716), .IN2(test_se), .QN(n524) );
  NAND2X0 U662 ( .IN1(n525), .IN2(n447), .QN(n523) );
  NAND3X0 U663 ( .IN1(n526), .IN2(n527), .IN3(n528), .QN(n525) );
  NAND2X0 U664 ( .IN1(xmit_dataH_4_), .IN2(n516), .QN(n528) );
  NAND2X0 U665 ( .IN1(n508), .IN2(iXMIT_xmit_ShiftRegH_5_), .QN(n527) );
  NAND2X0 U666 ( .IN1(n715), .IN2(n467), .QN(n526) );
  NAND2X0 U667 ( .IN1(n529), .IN2(n530), .QN(n170) );
  NAND2X0 U668 ( .IN1(n717), .IN2(test_se), .QN(n530) );
  NAND2X0 U669 ( .IN1(n531), .IN2(n447), .QN(n529) );
  NAND3X0 U670 ( .IN1(n532), .IN2(n533), .IN3(n534), .QN(n531) );
  NAND2X0 U671 ( .IN1(xmit_dataH_3_), .IN2(n516), .QN(n534) );
  NAND2X0 U672 ( .IN1(n715), .IN2(n508), .QN(n533) );
  NAND2X0 U673 ( .IN1(n716), .IN2(n467), .QN(n532) );
  NAND2X0 U674 ( .IN1(n535), .IN2(n536), .QN(n169) );
  NAND2X0 U675 ( .IN1(n718), .IN2(test_se), .QN(n536) );
  NAND2X0 U676 ( .IN1(n537), .IN2(n447), .QN(n535) );
  NAND3X0 U677 ( .IN1(n538), .IN2(n539), .IN3(n540), .QN(n537) );
  NAND2X0 U678 ( .IN1(xmit_dataH_2_), .IN2(n516), .QN(n540) );
  NAND2X0 U679 ( .IN1(n716), .IN2(n508), .QN(n539) );
  NAND2X0 U680 ( .IN1(n717), .IN2(n467), .QN(n538) );
  NAND2X0 U681 ( .IN1(n541), .IN2(n542), .QN(n168) );
  NAND2X0 U682 ( .IN1(test_se), .IN2(n426), .QN(n542) );
  NAND2X0 U683 ( .IN1(n543), .IN2(n447), .QN(n541) );
  NAND3X0 U684 ( .IN1(n544), .IN2(n545), .IN3(n546), .QN(n543) );
  NAND2X0 U685 ( .IN1(xmit_dataH_1_), .IN2(n516), .QN(n546) );
  NAND2X0 U686 ( .IN1(n717), .IN2(n508), .QN(n545) );
  NAND2X0 U687 ( .IN1(n718), .IN2(n467), .QN(n544) );
  NAND2X0 U688 ( .IN1(n547), .IN2(n548), .QN(n167) );
  NAND2X0 U689 ( .IN1(test_se), .IN2(iXMIT_xmit_ShiftRegH_7_), .QN(n548) );
  NAND2X0 U690 ( .IN1(n549), .IN2(n447), .QN(n547) );
  NAND2X0 U691 ( .IN1(n550), .IN2(n551), .QN(n549) );
  NAND2X0 U692 ( .IN1(n461), .IN2(n457), .QN(n551) );
  NAND2X0 U693 ( .IN1(n552), .IN2(n553), .QN(n550) );
  INVX0 U694 ( .INP(n501), .ZN(n552) );
  NAND3X0 U695 ( .IN1(n554), .IN2(n555), .IN3(n556), .QN(n166) );
  NAND2X0 U696 ( .IN1(n557), .IN2(iRECEIVER_state_0_), .QN(n555) );
  NAND3X0 U697 ( .IN1(n558), .IN2(n559), .IN3(n447), .QN(n557) );
  NAND2X0 U698 ( .IN1(n560), .IN2(iRECEIVER_state_1_), .QN(n559) );
  NAND3X0 U699 ( .IN1(n238), .IN2(n429), .IN3(n241), .QN(n558) );
  NAND3X0 U700 ( .IN1(n561), .IN2(n447), .IN3(n245), .QN(n554) );
  NAND2X0 U701 ( .IN1(n728), .IN2(n562), .QN(n561) );
  NAND2X0 U702 ( .IN1(n563), .IN2(iRECEIVER_state_1_), .QN(n562) );
  NAND2X0 U703 ( .IN1(n564), .IN2(n565), .QN(n164) );
  NAND2X0 U704 ( .IN1(n720), .IN2(test_se), .QN(n565) );
  NAND2X0 U705 ( .IN1(n566), .IN2(n447), .QN(n564) );
  NAND3X0 U706 ( .IN1(n567), .IN2(n568), .IN3(n238), .QN(n566) );
  NAND2X0 U707 ( .IN1(n241), .IN2(n728), .QN(n568) );
  NAND2X0 U708 ( .IN1(n569), .IN2(iRECEIVER_state_1_), .QN(n567) );
  NAND2X0 U709 ( .IN1(n563), .IN2(n570), .QN(n569) );
  NAND2X0 U710 ( .IN1(n571), .IN2(iRECEIVER_state_0_), .QN(n570) );
  NAND2X0 U711 ( .IN1(n572), .IN2(n573), .QN(n571) );
  NAND4X0 U712 ( .IN1(n720), .IN2(n423), .IN3(n428), .IN4(n420), .QN(n573) );
  INVX0 U713 ( .INP(n574), .ZN(n563) );
  NAND2X0 U714 ( .IN1(n575), .IN2(n576), .QN(n163) );
  NAND2X0 U715 ( .IN1(iRECEIVER_N20), .IN2(n447), .QN(n576) );
  NAND2X0 U716 ( .IN1(test_si), .IN2(test_se), .QN(n575) );
  NAND2X0 U717 ( .IN1(n577), .IN2(n578), .QN(n162) );
  NAND3X0 U718 ( .IN1(iRECEIVER_bitCell_cntrH_1_), .IN2(n447), .IN3(
        iRECEIVER_N20), .QN(n578) );
  INVX0 U719 ( .INP(n579), .ZN(n577) );
  NOR2X0 U720 ( .IN1(n580), .IN2(n255), .QN(n579) );
  NOR2X0 U721 ( .IN1(test_se), .IN2(n581), .QN(n580) );
  NOR2X0 U722 ( .IN1(n444), .IN2(iRECEIVER_bitCell_cntrH_1_), .QN(n581) );
  NAND2X0 U723 ( .IN1(n582), .IN2(n583), .QN(n161) );
  NAND2X0 U724 ( .IN1(test_se), .IN2(iRECEIVER_bitCell_cntrH_1_), .QN(n583) );
  NAND2X0 U725 ( .IN1(iRECEIVER_N22), .IN2(n447), .QN(n582) );
  NAND2X0 U726 ( .IN1(n584), .IN2(n585), .QN(n160) );
  NAND2X0 U727 ( .IN1(iRECEIVER_N23), .IN2(n447), .QN(n585) );
  NAND2X0 U728 ( .IN1(test_se), .IN2(n719), .QN(n584) );
  NAND2X0 U729 ( .IN1(n586), .IN2(n587), .QN(n159) );
  NAND2X0 U730 ( .IN1(test_se), .IN2(iRECEIVER_state_1_), .QN(n587) );
  INVX0 U731 ( .INP(n35), .ZN(n586) );
  NOR2X0 U732 ( .IN1(n588), .IN2(n241), .QN(n35) );
  NAND2X0 U733 ( .IN1(n589), .IN2(n590), .QN(n157) );
  NAND2X0 U734 ( .IN1(n591), .IN2(n447), .QN(n590) );
  NAND2X0 U735 ( .IN1(n592), .IN2(n593), .QN(n591) );
  NAND2X0 U736 ( .IN1(iRECEIVER_state_2_), .IN2(iRECEIVER_state_0_), .QN(n593)
         );
  NAND2X0 U737 ( .IN1(n723), .IN2(test_se), .QN(n589) );
  NAND3X0 U738 ( .IN1(n594), .IN2(n595), .IN3(n596), .QN(n156) );
  NAND2X0 U739 ( .IN1(rec_dataH_rec_6), .IN2(test_se), .QN(n596) );
  NAND2X0 U740 ( .IN1(rec_dataH_rec_7), .IN2(n597), .QN(n595) );
  NAND2X0 U741 ( .IN1(n598), .IN2(n728), .QN(n594) );
  NAND2X0 U742 ( .IN1(n599), .IN2(n600), .QN(n155) );
  NAND2X0 U743 ( .IN1(rec_dataH_rec_7), .IN2(n447), .QN(n600) );
  NAND2X0 U744 ( .IN1(rec_dataH_temp_6), .IN2(test_se), .QN(n599) );
  NAND2X0 U745 ( .IN1(n601), .IN2(n602), .QN(n154) );
  NAND2X0 U746 ( .IN1(test_so), .IN2(n447), .QN(n602) );
  NAND2X0 U747 ( .IN1(rec_dataH_6_), .IN2(test_se), .QN(n601) );
  NAND3X0 U748 ( .IN1(n603), .IN2(n604), .IN3(n605), .QN(n153) );
  NAND2X0 U749 ( .IN1(rec_dataH_rec_5), .IN2(test_se), .QN(n605) );
  NAND2X0 U750 ( .IN1(rec_dataH_rec_6), .IN2(n597), .QN(n604) );
  NAND2X0 U751 ( .IN1(n598), .IN2(rec_dataH_rec_7), .QN(n603) );
  NAND2X0 U752 ( .IN1(n606), .IN2(n607), .QN(n152) );
  NAND2X0 U753 ( .IN1(rec_dataH_rec_6), .IN2(n447), .QN(n607) );
  NAND2X0 U754 ( .IN1(rec_dataH_temp_5), .IN2(test_se), .QN(n606) );
  NAND2X0 U755 ( .IN1(n608), .IN2(n609), .QN(n150) );
  NAND2X0 U756 ( .IN1(rec_dataH_temp_6), .IN2(n447), .QN(n609) );
  NAND2X0 U757 ( .IN1(rec_dataH_5_), .IN2(test_se), .QN(n608) );
  NAND3X0 U758 ( .IN1(n610), .IN2(n611), .IN3(n612), .QN(n149) );
  NAND2X0 U759 ( .IN1(rec_dataH_rec_4), .IN2(test_se), .QN(n612) );
  NAND2X0 U760 ( .IN1(rec_dataH_rec_5), .IN2(n597), .QN(n611) );
  NAND2X0 U761 ( .IN1(rec_dataH_rec_6), .IN2(n598), .QN(n610) );
  NAND2X0 U762 ( .IN1(n613), .IN2(n614), .QN(n148) );
  NAND2X0 U763 ( .IN1(rec_dataH_rec_5), .IN2(n447), .QN(n614) );
  NAND2X0 U764 ( .IN1(rec_dataH_temp_4), .IN2(test_se), .QN(n613) );
  NAND2X0 U765 ( .IN1(n615), .IN2(n616), .QN(n147) );
  NAND2X0 U766 ( .IN1(rec_dataH_temp_5), .IN2(n447), .QN(n616) );
  NAND2X0 U767 ( .IN1(rec_dataH_4_), .IN2(test_se), .QN(n615) );
  NAND3X0 U768 ( .IN1(n617), .IN2(n618), .IN3(n619), .QN(n146) );
  NAND2X0 U769 ( .IN1(rec_dataH_rec_3), .IN2(test_se), .QN(n619) );
  NAND2X0 U770 ( .IN1(rec_dataH_rec_4), .IN2(n597), .QN(n618) );
  NAND2X0 U771 ( .IN1(rec_dataH_rec_5), .IN2(n598), .QN(n617) );
  NAND2X0 U772 ( .IN1(n620), .IN2(n621), .QN(n145) );
  NAND2X0 U773 ( .IN1(rec_dataH_rec_4), .IN2(n447), .QN(n621) );
  NAND2X0 U774 ( .IN1(rec_dataH_temp_3), .IN2(test_se), .QN(n620) );
  NAND2X0 U775 ( .IN1(n622), .IN2(n623), .QN(n143) );
  NAND2X0 U776 ( .IN1(rec_dataH_temp_4), .IN2(n447), .QN(n623) );
  NAND2X0 U777 ( .IN1(rec_dataH_3_), .IN2(test_se), .QN(n622) );
  NAND3X0 U778 ( .IN1(n624), .IN2(n625), .IN3(n626), .QN(n142) );
  NAND2X0 U779 ( .IN1(rec_dataH_rec_2), .IN2(test_se), .QN(n626) );
  NAND2X0 U780 ( .IN1(rec_dataH_rec_3), .IN2(n597), .QN(n625) );
  NAND2X0 U781 ( .IN1(rec_dataH_rec_4), .IN2(n598), .QN(n624) );
  NAND2X0 U782 ( .IN1(n627), .IN2(n628), .QN(n141) );
  NAND2X0 U783 ( .IN1(rec_dataH_rec_3), .IN2(n447), .QN(n628) );
  NAND2X0 U784 ( .IN1(rec_dataH_temp_2), .IN2(test_se), .QN(n627) );
  NAND2X0 U785 ( .IN1(n629), .IN2(n630), .QN(n140) );
  NAND2X0 U786 ( .IN1(rec_dataH_temp_3), .IN2(n447), .QN(n630) );
  NAND2X0 U787 ( .IN1(rec_dataH_2_), .IN2(test_se), .QN(n629) );
  NAND3X0 U788 ( .IN1(n631), .IN2(n632), .IN3(n633), .QN(n139) );
  NAND2X0 U789 ( .IN1(rec_dataH_rec_1), .IN2(test_se), .QN(n633) );
  NAND2X0 U790 ( .IN1(rec_dataH_rec_2), .IN2(n597), .QN(n632) );
  NAND2X0 U791 ( .IN1(rec_dataH_rec_3), .IN2(n598), .QN(n631) );
  NAND2X0 U792 ( .IN1(n634), .IN2(n635), .QN(n138) );
  NAND2X0 U793 ( .IN1(rec_dataH_rec_2), .IN2(n447), .QN(n635) );
  NAND2X0 U794 ( .IN1(rec_dataH_temp_1), .IN2(test_se), .QN(n634) );
  NAND2X0 U795 ( .IN1(n636), .IN2(n637), .QN(n136) );
  NAND2X0 U796 ( .IN1(rec_dataH_temp_2), .IN2(n447), .QN(n637) );
  NAND2X0 U797 ( .IN1(rec_dataH_1_), .IN2(test_se), .QN(n636) );
  NAND3X0 U798 ( .IN1(n638), .IN2(n639), .IN3(n640), .QN(n135) );
  NAND2X0 U799 ( .IN1(rec_dataH_rec_0_temp), .IN2(test_se), .QN(n640) );
  NAND2X0 U800 ( .IN1(rec_dataH_rec_1), .IN2(n597), .QN(n639) );
  NAND2X0 U801 ( .IN1(rec_dataH_rec_2), .IN2(n598), .QN(n638) );
  NAND2X0 U802 ( .IN1(n641), .IN2(n642), .QN(n134) );
  NAND2X0 U803 ( .IN1(rec_dataH_rec_1), .IN2(n447), .QN(n642) );
  NAND2X0 U804 ( .IN1(rec_dataH_temp_0), .IN2(test_se), .QN(n641) );
  NAND2X0 U805 ( .IN1(n643), .IN2(n644), .QN(n133) );
  NAND2X0 U806 ( .IN1(rec_dataH_temp_1), .IN2(n447), .QN(n644) );
  NAND2X0 U807 ( .IN1(rec_dataH_0_), .IN2(test_se), .QN(n643) );
  NAND3X0 U808 ( .IN1(n645), .IN2(n646), .IN3(n647), .QN(n132) );
  NAND2X0 U809 ( .IN1(test_se), .IN2(n733), .QN(n647) );
  NAND2X0 U810 ( .IN1(rec_dataH_rec_0_temp), .IN2(n597), .QN(n646) );
  NOR2X0 U811 ( .IN1(n648), .IN2(test_se), .QN(n597) );
  NAND2X0 U812 ( .IN1(rec_dataH_rec_1), .IN2(n598), .QN(n645) );
  NAND2X0 U813 ( .IN1(n649), .IN2(n650), .QN(n131) );
  NAND2X0 U814 ( .IN1(rec_dataH_rec_0_temp), .IN2(n447), .QN(n650) );
  NAND2X0 U815 ( .IN1(rec_dataH_7_), .IN2(test_se), .QN(n649) );
  NAND2X0 U816 ( .IN1(n651), .IN2(n652), .QN(n129) );
  NAND2X0 U817 ( .IN1(rec_dataH_temp_0), .IN2(n447), .QN(n652) );
  NAND2X0 U818 ( .IN1(xmit_doneH_temp), .IN2(test_se), .QN(n651) );
  NAND3X0 U819 ( .IN1(n653), .IN2(n654), .IN3(n655), .QN(n128) );
  NAND2X0 U820 ( .IN1(n730), .IN2(test_se), .QN(n655) );
  NAND2X0 U821 ( .IN1(n656), .IN2(n720), .QN(n654) );
  NAND2X0 U822 ( .IN1(n598), .IN2(iRECEIVER_N28), .QN(n653) );
  NAND3X0 U823 ( .IN1(n657), .IN2(n658), .IN3(n659), .QN(n127) );
  NAND2X0 U824 ( .IN1(test_se), .IN2(rec_readyH), .QN(n659) );
  NAND2X0 U825 ( .IN1(n598), .IN2(n420), .QN(n658) );
  NAND2X0 U826 ( .IN1(n729), .IN2(n656), .QN(n657) );
  NAND3X0 U827 ( .IN1(n660), .IN2(n661), .IN3(n662), .QN(n126) );
  NAND2X0 U828 ( .IN1(n729), .IN2(test_se), .QN(n662) );
  NAND2X0 U829 ( .IN1(n731), .IN2(n656), .QN(n661) );
  NAND2X0 U830 ( .IN1(n598), .IN2(iRECEIVER_N26), .QN(n660) );
  NAND3X0 U831 ( .IN1(n663), .IN2(n664), .IN3(n665), .QN(n125) );
  NAND2X0 U832 ( .IN1(n731), .IN2(test_se), .QN(n665) );
  NAND2X0 U833 ( .IN1(n730), .IN2(n656), .QN(n664) );
  INVX0 U834 ( .INP(n666), .ZN(n656) );
  NAND3X0 U835 ( .IN1(n592), .IN2(n667), .IN3(n447), .QN(n666) );
  NAND2X0 U836 ( .IN1(n245), .IN2(iRECEIVER_state_2_), .QN(n667) );
  NAND3X0 U837 ( .IN1(n241), .IN2(n728), .IN3(n238), .QN(n592) );
  NAND2X0 U838 ( .IN1(iRECEIVER_N27), .IN2(n598), .QN(n663) );
  INVX0 U839 ( .INP(n556), .ZN(n598) );
  NAND2X0 U840 ( .IN1(n648), .IN2(n447), .QN(n556) );
  NOR2X0 U841 ( .IN1(iRECEIVER_state_0_), .IN2(n238), .QN(n648) );
  NAND2X0 U842 ( .IN1(n668), .IN2(n669), .QN(n124) );
  NAND3X0 U843 ( .IN1(iXMIT_N25), .IN2(n670), .IN3(n447), .QN(n669) );
  NAND2X0 U844 ( .IN1(test_se), .IN2(n712), .QN(n668) );
  NAND2X0 U845 ( .IN1(n671), .IN2(n672), .QN(n122) );
  NAND2X0 U846 ( .IN1(test_se), .IN2(iRECEIVER_state_2_), .QN(n672) );
  NAND2X0 U847 ( .IN1(iXMIT_N26), .IN2(n447), .QN(n671) );
  NAND3X0 U848 ( .IN1(n673), .IN2(n674), .IN3(n439), .QN(n121) );
  NAND3X0 U849 ( .IN1(n670), .IN2(n419), .IN3(n732), .QN(n439) );
  NAND3X0 U850 ( .IN1(iXMIT_N26), .IN2(n722), .IN3(n447), .QN(n674) );
  NAND2X0 U851 ( .IN1(test_se), .IN2(n732), .QN(n673) );
  NAND2X0 U852 ( .IN1(n675), .IN2(n676), .QN(n120) );
  NAND2X0 U853 ( .IN1(test_se), .IN2(n714), .QN(n676) );
  NAND2X0 U854 ( .IN1(n677), .IN2(n447), .QN(n675) );
  NAND3X0 U855 ( .IN1(n678), .IN2(n679), .IN3(n680), .QN(n677) );
  NAND2X0 U856 ( .IN1(xmit_dataH_0_), .IN2(n516), .QN(n680) );
  NAND2X0 U857 ( .IN1(n718), .IN2(n508), .QN(n679) );
  NOR2X0 U858 ( .IN1(n467), .IN2(n516), .QN(n508) );
  NAND2X0 U859 ( .IN1(n467), .IN2(n426), .QN(n678) );
  INVX0 U860 ( .INP(n509), .ZN(n467) );
  NAND2X0 U861 ( .IN1(n681), .IN2(n682), .QN(n509) );
  NAND2X0 U862 ( .IN1(n714), .IN2(n239), .QN(n682) );
  INVX0 U863 ( .INP(n516), .ZN(n681) );
  NOR2X0 U864 ( .IN1(n553), .IN2(n501), .QN(n516) );
  NAND2X0 U865 ( .IN1(n246), .IN2(n242), .QN(n501) );
  INVX0 U866 ( .INP(xmitH), .ZN(n553) );
  NAND2X0 U867 ( .IN1(n683), .IN2(n684), .QN(n119) );
  NAND2X0 U868 ( .IN1(uart_REC_dataH), .IN2(n447), .QN(n684) );
  NAND2X0 U869 ( .IN1(n728), .IN2(test_se), .QN(n683) );
  NAND2X0 U870 ( .IN1(n685), .IN2(n686), .QN(n118) );
  NAND2X0 U871 ( .IN1(n723), .IN2(n447), .QN(n686) );
  INVX0 U872 ( .INP(test_se), .ZN(n447) );
  NAND2X0 U873 ( .IN1(rec_dataH_rec_7), .IN2(test_se), .QN(n685) );
  NOR2X0 U874 ( .IN1(n687), .IN2(n688), .QN(iXMIT_N28) );
  NOR2X0 U875 ( .IN1(n688), .IN2(n732), .QN(iXMIT_N26) );
  INVX0 U876 ( .INP(n670), .ZN(n688) );
  NAND2X0 U877 ( .IN1(n432), .IN2(n468), .QN(n670) );
  NAND2X0 U878 ( .IN1(n463), .IN2(iXMIT_state_1_temp), .QN(n468) );
  NAND2X0 U879 ( .IN1(n499), .IN2(n713), .QN(n463) );
  NOR4X0 U880 ( .IN1(n424), .IN2(n422), .IN3(n419), .IN4(n732), .QN(n499) );
  INVX0 U881 ( .INP(n461), .ZN(n432) );
  NOR2X0 U882 ( .IN1(n239), .IN2(n242), .QN(n461) );
  NOR2X0 U883 ( .IN1(n689), .IN2(n457), .QN(iXMIT_N25) );
  NOR2X0 U884 ( .IN1(n690), .IN2(n422), .QN(n457) );
  NOR2X0 U885 ( .IN1(n721), .IN2(n691), .QN(n689) );
  INVX0 U886 ( .INP(n690), .ZN(n691) );
  INVX0 U887 ( .INP(n687), .ZN(iXMIT_N24) );
  NAND2X0 U888 ( .IN1(n692), .IN2(n690), .QN(n687) );
  NAND3X0 U889 ( .IN1(n712), .IN2(n722), .IN3(n732), .QN(n690) );
  NAND2X0 U890 ( .IN1(n424), .IN2(n693), .QN(n692) );
  NAND2X0 U891 ( .IN1(n732), .IN2(n722), .QN(n693) );
  NAND2X0 U892 ( .IN1(n694), .IN2(n695), .QN(iRECEIVER_N28) );
  NAND2X0 U893 ( .IN1(n720), .IN2(n696), .QN(n695) );
  INVX0 U894 ( .INP(n697), .ZN(n694) );
  NOR2X0 U895 ( .IN1(n696), .IN2(n720), .QN(n697) );
  INVX0 U896 ( .INP(n698), .ZN(iRECEIVER_N27) );
  NAND2X0 U897 ( .IN1(n699), .IN2(n696), .QN(n698) );
  NAND3X0 U898 ( .IN1(n730), .IN2(n731), .IN3(n729), .QN(n696) );
  NAND2X0 U899 ( .IN1(n428), .IN2(n700), .QN(n699) );
  NAND2X0 U900 ( .IN1(n729), .IN2(n731), .QN(n700) );
  NAND2X0 U901 ( .IN1(n701), .IN2(n702), .QN(iRECEIVER_N26) );
  NAND2X0 U902 ( .IN1(n729), .IN2(n423), .QN(n702) );
  NAND2X0 U903 ( .IN1(n731), .IN2(n420), .QN(n701) );
  NOR2X0 U904 ( .IN1(n444), .IN2(n441), .QN(iRECEIVER_N23) );
  NOR2X0 U905 ( .IN1(n703), .IN2(n704), .QN(n441) );
  INVX0 U906 ( .INP(n705), .ZN(n704) );
  NAND2X0 U907 ( .IN1(n733), .IN2(n706), .QN(n705) );
  NOR2X0 U908 ( .IN1(n706), .IN2(n733), .QN(n703) );
  NOR2X0 U909 ( .IN1(n442), .IN2(n444), .QN(iRECEIVER_N22) );
  NAND2X0 U910 ( .IN1(n707), .IN2(n706), .QN(n442) );
  NAND3X0 U911 ( .IN1(iRECEIVER_bitCell_cntrH_1_), .IN2(
        iRECEIVER_bitCell_cntrH_0_), .IN3(n719), .QN(n706) );
  NAND2X0 U912 ( .IN1(n425), .IN2(n708), .QN(n707) );
  NAND2X0 U913 ( .IN1(iRECEIVER_bitCell_cntrH_1_), .IN2(
        iRECEIVER_bitCell_cntrH_0_), .QN(n708) );
  NOR2X0 U914 ( .IN1(n444), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(
        iRECEIVER_N20) );
  NAND4X0 U915 ( .IN1(n238), .IN2(n588), .IN3(n709), .IN4(iRECEIVER_state_1_), 
        .QN(n444) );
  NAND2X0 U916 ( .IN1(n245), .IN2(n574), .QN(n709) );
  NOR4X0 U917 ( .IN1(iRECEIVER_bitCell_cntrH_0_), .IN2(
        iRECEIVER_bitCell_cntrH_1_), .IN3(n425), .IN4(n733), .QN(n574) );
  NAND2X0 U918 ( .IN1(n572), .IN2(iRECEIVER_state_0_), .QN(n588) );
  INVX0 U919 ( .INP(n560), .ZN(n572) );
  NAND4X0 U920 ( .IN1(n255), .IN2(n733), .IN3(n719), .IN4(
        iRECEIVER_bitCell_cntrH_1_), .QN(n560) );
  NAND2X0 U921 ( .IN1(n710), .IN2(n711), .QN(iRECEIVER_N17) );
  NAND2X0 U922 ( .IN1(n255), .IN2(iRECEIVER_bitCell_cntrH_1_), .QN(n711) );
  NAND2X0 U923 ( .IN1(n244), .IN2(iRECEIVER_bitCell_cntrH_0_), .QN(n710) );
endmodule

