/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Thu Mar  2 16:37:01 2023
/////////////////////////////////////////////////////////////


module top_module ( in_clka, in_clkb, in_restart, in_inserted_5, in_inserted_1, 
        in_inserted_05, in_inserted_025, in_sel_a, in_sel_b, in_sel_c, 
        in_sel_d, in_next, in_finish, out_change, out_stock_a, out_stock_b, 
        out_stock_c, out_stock_d, out_csel_a, out_csel_b, out_csel_c, 
        out_csel_d, out_change_1, out_change_05, out_change_025, out_spit_a, 
        out_spit_b, out_spit_c, out_spit_d, out_state );
  input [7:0] in_inserted_5;
  input [7:0] in_inserted_1;
  input [7:0] in_inserted_05;
  input [7:0] in_inserted_025;
  output [15:0] out_change;
  output [7:0] out_change_1;
  output [1:0] out_state;
  input in_clka, in_clkb, in_restart, in_sel_a, in_sel_b, in_sel_c, in_sel_d,
         in_next, in_finish;
  output out_stock_a, out_stock_b, out_stock_c, out_stock_d, out_csel_a,
         out_csel_b, out_csel_c, out_csel_d, out_change_05, out_change_025,
         out_spit_a, out_spit_b, out_spit_c, out_spit_d;
  wire   \main_FSM_dut/n5 , \main_FSM_dut/n4 , \main_FSM_dut/n3 ,
         \main_FSM_dut/N38 , \main_FSM_dut/N28 , \main_FSM_dut/N27 ,
         \main_FSM_dut/next_out_state[1] , \dp_dut/n291 , \dp_dut/n290 ,
         \dp_dut/n289 , \dp_dut/n288 , \dp_dut/n287 , \dp_dut/n286 ,
         \dp_dut/n285 , \dp_dut/n284 , \dp_dut/n283 , \dp_dut/n282 ,
         \dp_dut/n281 , \dp_dut/n280 , \dp_dut/n279 , \dp_dut/n278 ,
         \dp_dut/n277 , \dp_dut/n276 , \dp_dut/n275 , \dp_dut/n274 ,
         \dp_dut/n273 , \dp_dut/n272 , \dp_dut/n271 , \dp_dut/n270 ,
         \dp_dut/n269 , \dp_dut/n268 , \dp_dut/n267 , \dp_dut/n266 ,
         \dp_dut/n265 , \dp_dut/n264 , \dp_dut/n263 , \dp_dut/n262 ,
         \dp_dut/n261 , \dp_dut/n260 , \dp_dut/n259 , \dp_dut/n258 ,
         \dp_dut/n257 , \dp_dut/n256 , \dp_dut/n255 , \dp_dut/n254 ,
         \dp_dut/n253 , \dp_dut/n252 , \dp_dut/n251 , \dp_dut/n250 ,
         \dp_dut/n249 , \dp_dut/n248 , \dp_dut/n247 , \dp_dut/n246 ,
         \dp_dut/n245 , \dp_dut/n244 , \dp_dut/n243 , \dp_dut/n242 ,
         \dp_dut/n241 , \dp_dut/n240 , \dp_dut/n239 , \dp_dut/n238 ,
         \dp_dut/n237 , \dp_dut/n236 , \dp_dut/n235 , \dp_dut/n234 ,
         \dp_dut/n233 , \dp_dut/n232 , \dp_dut/n231 , \dp_dut/n230 ,
         \dp_dut/n229 , \dp_dut/n228 , \dp_dut/n227 , \dp_dut/n226 ,
         \dp_dut/n225 , \dp_dut/n224 , \dp_dut/n223 , \dp_dut/n222 ,
         \dp_dut/n221 , \dp_dut/n220 , \dp_dut/n219 , \dp_dut/n218 ,
         \dp_dut/n217 , \dp_dut/n216 , \dp_dut/n215 , \dp_dut/n214 ,
         \dp_dut/n213 , \dp_dut/n212 , \dp_dut/n211 , \dp_dut/n210 ,
         \dp_dut/n209 , \dp_dut/n208 , \dp_dut/n207 , \dp_dut/n206 ,
         \dp_dut/n205 , \dp_dut/n204 , \dp_dut/n203 , \dp_dut/n202 ,
         \dp_dut/n201 , \dp_dut/n200 , \dp_dut/n199 , \dp_dut/n198 ,
         \dp_dut/n197 , \dp_dut/n196 , \dp_dut/n195 , \dp_dut/n194 ,
         \dp_dut/n193 , \dp_dut/n192 , \dp_dut/n191 , \dp_dut/n190 ,
         \dp_dut/n189 , \dp_dut/n188 , \dp_dut/n187 , \dp_dut/n186 ,
         \dp_dut/n185 , \dp_dut/n184 , \dp_dut/n183 , \dp_dut/n182 ,
         \dp_dut/n181 , \dp_dut/n180 , \dp_dut/n179 , \dp_dut/n178 ,
         \dp_dut/n177 , \dp_dut/n176 , \dp_dut/n175 , \dp_dut/n174 ,
         \dp_dut/n173 , \dp_dut/n172 , \dp_dut/n171 , \dp_dut/n170 ,
         \dp_dut/n169 , \dp_dut/n168 , \dp_dut/n167 , \dp_dut/n166 ,
         \dp_dut/n165 , \dp_dut/n164 , \dp_dut/n163 , \dp_dut/n162 ,
         \dp_dut/n161 , \dp_dut/n160 , \dp_dut/n159 , \dp_dut/n158 ,
         \dp_dut/n156 , \dp_dut/n155 , \dp_dut/n154 , \dp_dut/n153 ,
         \dp_dut/n152 , \dp_dut/n151 , \dp_dut/n150 , \dp_dut/n149 ,
         \dp_dut/n148 , \dp_dut/n147 , \dp_dut/n146 , \dp_dut/n145 ,
         \dp_dut/n144 , \dp_dut/n143 , \dp_dut/n142 , \dp_dut/n141 ,
         \dp_dut/n140 , \dp_dut/n139 , \dp_dut/n138 , \dp_dut/n137 ,
         \dp_dut/n136 , \dp_dut/n135 , \dp_dut/n134 , \dp_dut/n133 ,
         \dp_dut/n132 , \dp_dut/n131 , \dp_dut/n128 , \dp_dut/n126 ,
         \dp_dut/n125 , \dp_dut/n124 , \dp_dut/n123 , \dp_dut/n122 ,
         \dp_dut/n121 , \dp_dut/n120 , \dp_dut/n119 , \dp_dut/n118 ,
         \dp_dut/n117 , \dp_dut/n116 , \dp_dut/n115 , \dp_dut/n114 ,
         \dp_dut/n113 , \dp_dut/dp_cluster_1/N22 , \dp_dut/dp_cluster_1/N23 ,
         \dp_dut/dp_cluster_1/N24 , \dp_dut/dp_cluster_1/N28 ,
         \dp_dut/dp_cluster_0/N100 , \dp_dut/dp_cluster_0/N101 ,
         \dp_dut/dp_cluster_0/N102 , \dp_dut/dp_cluster_0/N103 ,
         \dp_dut/dp_cluster_0/N104 , \dp_dut/dp_cluster_0/N105 ,
         \dp_dut/dp_cluster_0/N111 , \dp_dut/dp_cluster_0/N112 ,
         \dp_dut/dp_cluster_0/N113 , \dp_dut/dp_cluster_0/N114 ,
         \dp_dut/dp_cluster_0/N115 , \dp_dut/dp_cluster_0/N116 ,
         \dp_dut/dp_cluster_0/N117 , \dp_dut/dp_cluster_0/N118 ,
         \dp_dut/dp_cluster_0/N128 , \dp_dut/dp_cluster_0/N129 ,
         \dp_dut/dp_cluster_0/N130 , \dp_dut/dp_cluster_0/N131 ,
         \dp_dut/dp_cluster_0/N132 , \dp_dut/dp_cluster_0/N133 ,
         \dp_dut/dp_cluster_0/N134 , \dp_dut/dp_cluster_0/N135 ,
         \dp_dut/dp_cluster_0/N136 , \dp_dut/dp_cluster_0/N137 ,
         \dp_dut/dp_cluster_0/N138 , \dp_dut/dp_cluster_0/N139 ,
         \dp_dut/dp_cluster_0/N140 , \dp_dut/dp_cluster_0/N80 ,
         \dp_dut/dp_cluster_0/N81 , \dp_dut/dp_cluster_0/N82 ,
         \dp_dut/dp_cluster_0/N83 , \dp_dut/dp_cluster_0/N84 ,
         \dp_dut/dp_cluster_0/N85 , \dp_dut/dp_cluster_0/N86 ,
         \dp_dut/dp_cluster_0/N87 , \dp_dut/dp_cluster_0/N88 ,
         \dp_dut/dp_cluster_0/N89 , \dp_dut/dp_cluster_0/N90 ,
         \dp_dut/dp_cluster_0/N91 , \dp_dut/dp_cluster_0/N92 ,
         \dp_dut/dp_cluster_0/N98 , \dp_dut/dp_cluster_0/N99 , \dp_dut/N206 ,
         \dp_dut/N205 , \dp_dut/N204 , \dp_dut/N203 , \dp_dut/N202 ,
         \dp_dut/N201 , \dp_dut/N200 , \dp_dut/N199 , \dp_dut/N198 ,
         \dp_dut/N197 , \dp_dut/N196 , \dp_dut/N195 , \dp_dut/N194 ,
         \dp_dut/N193 , \dp_dut/N192 , \dp_dut/N191 , \dp_dut/N190 ,
         \dp_dut/N189 , \dp_dut/N188 , \dp_dut/N187 , \dp_dut/N186 ,
         \dp_dut/N185 , \dp_dut/N184 , \dp_dut/N183 , \dp_dut/N182 ,
         \dp_dut/N181 , \dp_dut/N180 , \dp_dut/N179 , \dp_dut/N178 ,
         \dp_dut/N177 , \dp_dut/N176 , \dp_dut/N175 , \dp_dut/N158 ,
         \dp_dut/N156 , \dp_dut/N155 , \dp_dut/N154 , \dp_dut/N153 ,
         \dp_dut/N152 , \dp_dut/N151 , \dp_dut/N150 , \dp_dut/N149 ,
         \dp_dut/N148 , \dp_dut/N147 , \dp_dut/N146 , \dp_dut/N145 ,
         \dp_dut/N144 , \dp_dut/N143 , \dp_dut/N142 , \dp_dut/N141 ,
         \dp_dut/N53 , \dp_dut/N52 , \dp_dut/N51 , \dp_dut/N50 , \dp_dut/N49 ,
         \dp_dut/N48 , \dp_dut/N47 , \dp_dut/N46 , \dp_dut/N45 , \dp_dut/N44 ,
         \dp_dut/N43 , \dp_dut/N42 , \dp_dut/N41 , \dp_dut/N40 , \dp_dut/N39 ,
         \dp_dut/N36 , \dp_dut/N35 , \dp_dut/N34 , \dp_dut/N33 , \dp_dut/N32 ,
         \dp_dut/dp_cluster_1/add_0_root_add_65_3/carry[4] , n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158;
  wire   [1:0] cmd;
  wire   [15:0] \dp_dut/inserted_money ;
  wire   [6:0] \dp_dut/total_price ;
  wire   [7:0] \dp_dut/item_d_num ;
  wire   [7:0] \dp_dut/item_c_num ;
  wire   [7:0] \dp_dut/item_b_num ;
  wire   [7:0] \dp_dut/item_a_num ;
  wire   [16:0] \dp_dut/r374/carry ;
  wire   [8:0] \dp_dut/sub_125/carry ;
  wire   [8:0] \dp_dut/sub_126/carry ;
  wire   [8:0] \dp_dut/sub_127/carry ;
  wire   [8:0] \dp_dut/sub_128/carry ;
  wire   [15:1] \dp_dut/dp_cluster_0/add_3_root_add_103_5/carry ;
  wire   [15:1] \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry ;
  wire   [15:1] \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry ;
  wire   [15:1] \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry ;
  wire   [15:1] \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry ;

  NOR2X1 \main_FSM_dut/U9  ( .A(out_state[1]), .B(n84), .Y(\main_FSM_dut/n5 )
         );
  AOI21X1 \main_FSM_dut/U8  ( .A(\main_FSM_dut/n5 ), .B(in_next), .C(
        in_restart), .Y(\main_FSM_dut/N27 ) );
  OR2X1 \main_FSM_dut/U7  ( .A(in_restart), .B(out_state[1]), .Y(
        \main_FSM_dut/n3 ) );
  OAI21X1 \main_FSM_dut/U6  ( .A(in_next), .B(in_finish), .C(out_state[0]), 
        .Y(\main_FSM_dut/n4 ) );
  NOR2X1 \main_FSM_dut/U5  ( .A(\main_FSM_dut/n3 ), .B(\main_FSM_dut/n4 ), .Y(
        \main_FSM_dut/N28 ) );
  DFFNEGX1 \main_FSM_dut/out_cmd_reg[0]  ( .D(\main_FSM_dut/N38 ), .CLK(
        in_clkb), .Q(cmd[0]) );
  DFFNEGX1 \main_FSM_dut/out_cmd_reg[1]  ( .D(n83), .CLK(in_clkb), .Q(cmd[1])
         );
  DFFNEGX1 \main_FSM_dut/next_out_state_reg[0]  ( .D(\main_FSM_dut/N27 ), 
        .CLK(n57), .Q(\main_FSM_dut/N38 ) );
  DFFNEGX1 \main_FSM_dut/out_state_reg[1]  ( .D(
        \main_FSM_dut/next_out_state[1] ), .CLK(in_clkb), .Q(out_state[1]) );
  DFFNEGX1 \main_FSM_dut/next_out_state_reg[1]  ( .D(\main_FSM_dut/N28 ), 
        .CLK(n57), .Q(\main_FSM_dut/next_out_state[1] ) );
  DFFNEGX1 \main_FSM_dut/out_state_reg[0]  ( .D(\main_FSM_dut/N38 ), .CLK(
        in_clkb), .Q(out_state[0]) );
  NAND2X1 \dp_dut/U278  ( .A(cmd[0]), .B(cmd[1]), .Y(\dp_dut/n151 ) );
  NAND2X1 \dp_dut/U277  ( .A(cmd[1]), .B(n81), .Y(\dp_dut/n113 ) );
  NAND3X1 \dp_dut/U276  ( .A(n81), .B(n60), .C(n44), .Y(\dp_dut/n204 ) );
  NOR2X1 \dp_dut/U275  ( .A(n42), .B(in_restart), .Y(\dp_dut/n162 ) );
  AOI21X1 \dp_dut/U274  ( .A(n59), .B(\dp_dut/N158 ), .C(\dp_dut/n162 ), .Y(
        \dp_dut/n205 ) );
  NOR2X1 \dp_dut/U272  ( .A(n48), .B(n38), .Y(\dp_dut/n126 ) );
  AOI21X1 \dp_dut/U271  ( .A(n82), .B(n61), .C(n37), .Y(\dp_dut/n219 ) );
  NOR2X1 \dp_dut/U270  ( .A(\dp_dut/item_a_num [7]), .B(\dp_dut/item_a_num [6]), .Y(\dp_dut/n225 ) );
  NAND3X1 \dp_dut/U269  ( .A(n114), .B(n113), .C(\dp_dut/n225 ), .Y(
        \dp_dut/n222 ) );
  NOR2X1 \dp_dut/U268  ( .A(\dp_dut/item_a_num [3]), .B(\dp_dut/item_a_num [2]), .Y(\dp_dut/n224 ) );
  NAND3X1 \dp_dut/U267  ( .A(n118), .B(n117), .C(\dp_dut/n224 ), .Y(
        \dp_dut/n223 ) );
  OR2X1 \dp_dut/U266  ( .A(\dp_dut/n222 ), .B(\dp_dut/n223 ), .Y(out_stock_a)
         );
  NOR2X1 \dp_dut/U265  ( .A(\dp_dut/n151 ), .B(n61), .Y(\dp_dut/n221 ) );
  NAND3X1 \dp_dut/U264  ( .A(n58), .B(out_stock_a), .C(\dp_dut/n221 ), .Y(
        \dp_dut/n220 ) );
  OAI21X1 \dp_dut/U263  ( .A(\dp_dut/n219 ), .B(n137), .C(\dp_dut/n220 ), .Y(
        \dp_dut/n291 ) );
  NAND3X1 \dp_dut/U262  ( .A(\dp_dut/n151 ), .B(n60), .C(cmd[0]), .Y(
        \dp_dut/n207 ) );
  NAND2X1 \dp_dut/U261  ( .A(\dp_dut/N39 ), .B(n43), .Y(\dp_dut/n122 ) );
  NOR2X1 \dp_dut/U260  ( .A(n38), .B(n36), .Y(\dp_dut/n209 ) );
  NAND2X1 \dp_dut/U259  ( .A(out_change_025), .B(\dp_dut/n209 ), .Y(
        \dp_dut/n218 ) );
  OAI21X1 \dp_dut/U258  ( .A(\dp_dut/n207 ), .B(\dp_dut/n122 ), .C(
        \dp_dut/n218 ), .Y(\dp_dut/n290 ) );
  NAND2X1 \dp_dut/U257  ( .A(\dp_dut/N40 ), .B(n46), .Y(\dp_dut/n121 ) );
  NAND2X1 \dp_dut/U256  ( .A(out_change_05), .B(\dp_dut/n209 ), .Y(
        \dp_dut/n217 ) );
  OAI21X1 \dp_dut/U255  ( .A(\dp_dut/n207 ), .B(\dp_dut/n121 ), .C(
        \dp_dut/n217 ), .Y(\dp_dut/n289 ) );
  NAND2X1 \dp_dut/U254  ( .A(\dp_dut/N41 ), .B(n41), .Y(\dp_dut/n120 ) );
  NAND2X1 \dp_dut/U253  ( .A(out_change_1[0]), .B(\dp_dut/n209 ), .Y(
        \dp_dut/n216 ) );
  OAI21X1 \dp_dut/U252  ( .A(\dp_dut/n207 ), .B(\dp_dut/n120 ), .C(
        \dp_dut/n216 ), .Y(\dp_dut/n288 ) );
  NAND2X1 \dp_dut/U251  ( .A(\dp_dut/N42 ), .B(n42), .Y(\dp_dut/n119 ) );
  NAND2X1 \dp_dut/U250  ( .A(out_change_1[1]), .B(\dp_dut/n209 ), .Y(
        \dp_dut/n215 ) );
  OAI21X1 \dp_dut/U249  ( .A(\dp_dut/n207 ), .B(\dp_dut/n119 ), .C(
        \dp_dut/n215 ), .Y(\dp_dut/n287 ) );
  NAND2X1 \dp_dut/U248  ( .A(\dp_dut/N43 ), .B(n46), .Y(\dp_dut/n118 ) );
  NAND2X1 \dp_dut/U247  ( .A(out_change_1[2]), .B(\dp_dut/n209 ), .Y(
        \dp_dut/n214 ) );
  OAI21X1 \dp_dut/U246  ( .A(\dp_dut/n207 ), .B(\dp_dut/n118 ), .C(
        \dp_dut/n214 ), .Y(\dp_dut/n286 ) );
  NAND2X1 \dp_dut/U245  ( .A(\dp_dut/N44 ), .B(n42), .Y(\dp_dut/n117 ) );
  NAND2X1 \dp_dut/U244  ( .A(out_change_1[3]), .B(\dp_dut/n209 ), .Y(
        \dp_dut/n213 ) );
  OAI21X1 \dp_dut/U243  ( .A(\dp_dut/n207 ), .B(\dp_dut/n117 ), .C(
        \dp_dut/n213 ), .Y(\dp_dut/n285 ) );
  NAND2X1 \dp_dut/U242  ( .A(\dp_dut/N45 ), .B(n44), .Y(\dp_dut/n116 ) );
  NAND2X1 \dp_dut/U241  ( .A(out_change_1[4]), .B(\dp_dut/n209 ), .Y(
        \dp_dut/n212 ) );
  OAI21X1 \dp_dut/U240  ( .A(\dp_dut/n207 ), .B(\dp_dut/n116 ), .C(
        \dp_dut/n212 ), .Y(\dp_dut/n284 ) );
  NAND2X1 \dp_dut/U239  ( .A(\dp_dut/N46 ), .B(n43), .Y(\dp_dut/n115 ) );
  NAND2X1 \dp_dut/U238  ( .A(out_change_1[5]), .B(\dp_dut/n209 ), .Y(
        \dp_dut/n211 ) );
  OAI21X1 \dp_dut/U237  ( .A(\dp_dut/n207 ), .B(\dp_dut/n115 ), .C(
        \dp_dut/n211 ), .Y(\dp_dut/n283 ) );
  NAND2X1 \dp_dut/U236  ( .A(\dp_dut/N47 ), .B(n44), .Y(\dp_dut/n114 ) );
  NAND2X1 \dp_dut/U235  ( .A(out_change_1[6]), .B(\dp_dut/n209 ), .Y(
        \dp_dut/n210 ) );
  OAI21X1 \dp_dut/U234  ( .A(\dp_dut/n207 ), .B(\dp_dut/n114 ), .C(
        \dp_dut/n210 ), .Y(\dp_dut/n282 ) );
  NAND2X1 \dp_dut/U233  ( .A(\dp_dut/N48 ), .B(n45), .Y(\dp_dut/n123 ) );
  NAND2X1 \dp_dut/U232  ( .A(out_change_1[7]), .B(\dp_dut/n209 ), .Y(
        \dp_dut/n208 ) );
  OAI21X1 \dp_dut/U231  ( .A(\dp_dut/n207 ), .B(\dp_dut/n123 ), .C(
        \dp_dut/n208 ), .Y(\dp_dut/n281 ) );
  AOI22X1 \dp_dut/U229  ( .A(n1), .B(\dp_dut/N53 ), .C(\dp_dut/N156 ), .D(n38), 
        .Y(\dp_dut/n206 ) );
  OAI21X1 \dp_dut/U228  ( .A(n35), .B(n136), .C(\dp_dut/n206 ), .Y(
        \dp_dut/n280 ) );
  NAND2X1 \dp_dut/U226  ( .A(\dp_dut/N182 ), .B(n49), .Y(\dp_dut/n203 ) );
  OAI21X1 \dp_dut/U225  ( .A(n48), .B(n112), .C(\dp_dut/n203 ), .Y(
        \dp_dut/n279 ) );
  AOI21X1 \dp_dut/U224  ( .A(\dp_dut/N175 ), .B(n49), .C(\dp_dut/n162 ), .Y(
        \dp_dut/n202 ) );
  OAI21X1 \dp_dut/U223  ( .A(n47), .B(n118), .C(\dp_dut/n202 ), .Y(
        \dp_dut/n278 ) );
  NAND2X1 \dp_dut/U222  ( .A(\dp_dut/N176 ), .B(n49), .Y(\dp_dut/n201 ) );
  OAI21X1 \dp_dut/U221  ( .A(n48), .B(n117), .C(\dp_dut/n201 ), .Y(
        \dp_dut/n277 ) );
  NAND2X1 \dp_dut/U220  ( .A(\dp_dut/N177 ), .B(n49), .Y(\dp_dut/n200 ) );
  OAI21X1 \dp_dut/U219  ( .A(n47), .B(n116), .C(\dp_dut/n200 ), .Y(
        \dp_dut/n276 ) );
  NAND2X1 \dp_dut/U218  ( .A(\dp_dut/N178 ), .B(n49), .Y(\dp_dut/n199 ) );
  OAI21X1 \dp_dut/U217  ( .A(n48), .B(n115), .C(\dp_dut/n199 ), .Y(
        \dp_dut/n275 ) );
  NAND2X1 \dp_dut/U216  ( .A(\dp_dut/N179 ), .B(n49), .Y(\dp_dut/n198 ) );
  OAI21X1 \dp_dut/U215  ( .A(n47), .B(n114), .C(\dp_dut/n198 ), .Y(
        \dp_dut/n274 ) );
  NAND2X1 \dp_dut/U214  ( .A(\dp_dut/N180 ), .B(n49), .Y(\dp_dut/n197 ) );
  OAI21X1 \dp_dut/U213  ( .A(n48), .B(n113), .C(\dp_dut/n197 ), .Y(
        \dp_dut/n273 ) );
  NAND2X1 \dp_dut/U212  ( .A(\dp_dut/N181 ), .B(n49), .Y(\dp_dut/n196 ) );
  OAI21X1 \dp_dut/U211  ( .A(n48), .B(n119), .C(\dp_dut/n196 ), .Y(
        \dp_dut/n272 ) );
  NAND2X1 \dp_dut/U210  ( .A(\dp_dut/N190 ), .B(n49), .Y(\dp_dut/n195 ) );
  OAI21X1 \dp_dut/U209  ( .A(n48), .B(n103), .C(\dp_dut/n195 ), .Y(
        \dp_dut/n271 ) );
  NAND2X1 \dp_dut/U208  ( .A(\dp_dut/N183 ), .B(n49), .Y(\dp_dut/n194 ) );
  OAI21X1 \dp_dut/U207  ( .A(n48), .B(n109), .C(\dp_dut/n194 ), .Y(
        \dp_dut/n270 ) );
  NAND2X1 \dp_dut/U206  ( .A(\dp_dut/N184 ), .B(n49), .Y(\dp_dut/n193 ) );
  OAI21X1 \dp_dut/U205  ( .A(n48), .B(n108), .C(\dp_dut/n193 ), .Y(
        \dp_dut/n269 ) );
  AOI21X1 \dp_dut/U204  ( .A(\dp_dut/N185 ), .B(n49), .C(\dp_dut/n162 ), .Y(
        \dp_dut/n192 ) );
  OAI21X1 \dp_dut/U203  ( .A(n48), .B(n107), .C(\dp_dut/n192 ), .Y(
        \dp_dut/n268 ) );
  NAND2X1 \dp_dut/U202  ( .A(\dp_dut/N186 ), .B(n49), .Y(\dp_dut/n191 ) );
  OAI21X1 \dp_dut/U201  ( .A(n48), .B(n106), .C(\dp_dut/n191 ), .Y(
        \dp_dut/n267 ) );
  NAND2X1 \dp_dut/U200  ( .A(\dp_dut/N187 ), .B(n49), .Y(\dp_dut/n190 ) );
  OAI21X1 \dp_dut/U199  ( .A(n48), .B(n105), .C(\dp_dut/n190 ), .Y(
        \dp_dut/n266 ) );
  NAND2X1 \dp_dut/U198  ( .A(\dp_dut/N188 ), .B(n49), .Y(\dp_dut/n189 ) );
  OAI21X1 \dp_dut/U197  ( .A(n48), .B(n104), .C(\dp_dut/n189 ), .Y(
        \dp_dut/n265 ) );
  NAND2X1 \dp_dut/U196  ( .A(\dp_dut/N189 ), .B(n49), .Y(\dp_dut/n188 ) );
  OAI21X1 \dp_dut/U195  ( .A(n48), .B(n111), .C(\dp_dut/n188 ), .Y(
        \dp_dut/n264 ) );
  AOI21X1 \dp_dut/U194  ( .A(n82), .B(n62), .C(n37), .Y(\dp_dut/n181 ) );
  NOR2X1 \dp_dut/U193  ( .A(\dp_dut/item_b_num [7]), .B(\dp_dut/item_b_num [6]), .Y(\dp_dut/n187 ) );
  NAND3X1 \dp_dut/U192  ( .A(n105), .B(n104), .C(\dp_dut/n187 ), .Y(
        \dp_dut/n184 ) );
  NOR2X1 \dp_dut/U191  ( .A(\dp_dut/item_b_num [3]), .B(\dp_dut/item_b_num [2]), .Y(\dp_dut/n186 ) );
  NAND3X1 \dp_dut/U190  ( .A(n109), .B(n108), .C(\dp_dut/n186 ), .Y(
        \dp_dut/n185 ) );
  OR2X1 \dp_dut/U189  ( .A(\dp_dut/n184 ), .B(\dp_dut/n185 ), .Y(out_stock_b)
         );
  NOR2X1 \dp_dut/U188  ( .A(\dp_dut/n151 ), .B(n62), .Y(\dp_dut/n183 ) );
  NAND3X1 \dp_dut/U187  ( .A(n58), .B(out_stock_b), .C(\dp_dut/n183 ), .Y(
        \dp_dut/n182 ) );
  OAI21X1 \dp_dut/U186  ( .A(\dp_dut/n181 ), .B(n110), .C(\dp_dut/n182 ), .Y(
        \dp_dut/n263 ) );
  NAND2X1 \dp_dut/U185  ( .A(\dp_dut/N198 ), .B(n49), .Y(\dp_dut/n180 ) );
  OAI21X1 \dp_dut/U184  ( .A(n48), .B(n94), .C(\dp_dut/n180 ), .Y(
        \dp_dut/n262 ) );
  NAND2X1 \dp_dut/U183  ( .A(\dp_dut/N191 ), .B(n49), .Y(\dp_dut/n179 ) );
  OAI21X1 \dp_dut/U182  ( .A(n48), .B(n100), .C(\dp_dut/n179 ), .Y(
        \dp_dut/n261 ) );
  NAND2X1 \dp_dut/U181  ( .A(\dp_dut/N192 ), .B(n49), .Y(\dp_dut/n178 ) );
  OAI21X1 \dp_dut/U180  ( .A(n48), .B(n99), .C(\dp_dut/n178 ), .Y(
        \dp_dut/n260 ) );
  AOI21X1 \dp_dut/U179  ( .A(\dp_dut/N193 ), .B(n49), .C(\dp_dut/n162 ), .Y(
        \dp_dut/n177 ) );
  OAI21X1 \dp_dut/U178  ( .A(n47), .B(n98), .C(\dp_dut/n177 ), .Y(
        \dp_dut/n259 ) );
  NAND2X1 \dp_dut/U177  ( .A(\dp_dut/N194 ), .B(n49), .Y(\dp_dut/n176 ) );
  OAI21X1 \dp_dut/U176  ( .A(n47), .B(n97), .C(\dp_dut/n176 ), .Y(
        \dp_dut/n258 ) );
  NAND2X1 \dp_dut/U175  ( .A(\dp_dut/N195 ), .B(n49), .Y(\dp_dut/n175 ) );
  OAI21X1 \dp_dut/U174  ( .A(n47), .B(n96), .C(\dp_dut/n175 ), .Y(
        \dp_dut/n257 ) );
  NAND2X1 \dp_dut/U173  ( .A(\dp_dut/N196 ), .B(n49), .Y(\dp_dut/n174 ) );
  OAI21X1 \dp_dut/U172  ( .A(n47), .B(n95), .C(\dp_dut/n174 ), .Y(
        \dp_dut/n256 ) );
  NAND2X1 \dp_dut/U171  ( .A(\dp_dut/N197 ), .B(n49), .Y(\dp_dut/n173 ) );
  OAI21X1 \dp_dut/U170  ( .A(n47), .B(n102), .C(\dp_dut/n173 ), .Y(
        \dp_dut/n255 ) );
  AOI21X1 \dp_dut/U169  ( .A(n82), .B(n63), .C(n37), .Y(\dp_dut/n166 ) );
  NOR2X1 \dp_dut/U168  ( .A(\dp_dut/item_c_num [7]), .B(\dp_dut/item_c_num [6]), .Y(\dp_dut/n172 ) );
  NAND3X1 \dp_dut/U167  ( .A(n96), .B(n95), .C(\dp_dut/n172 ), .Y(
        \dp_dut/n169 ) );
  NOR2X1 \dp_dut/U166  ( .A(\dp_dut/item_c_num [3]), .B(\dp_dut/item_c_num [2]), .Y(\dp_dut/n171 ) );
  NAND3X1 \dp_dut/U165  ( .A(n100), .B(n99), .C(\dp_dut/n171 ), .Y(
        \dp_dut/n170 ) );
  OR2X1 \dp_dut/U164  ( .A(\dp_dut/n169 ), .B(\dp_dut/n170 ), .Y(out_stock_c)
         );
  NOR2X1 \dp_dut/U163  ( .A(\dp_dut/n151 ), .B(n63), .Y(\dp_dut/n168 ) );
  NAND3X1 \dp_dut/U162  ( .A(n58), .B(out_stock_c), .C(\dp_dut/n168 ), .Y(
        \dp_dut/n167 ) );
  OAI21X1 \dp_dut/U161  ( .A(\dp_dut/n166 ), .B(n101), .C(\dp_dut/n167 ), .Y(
        \dp_dut/n254 ) );
  NAND2X1 \dp_dut/U160  ( .A(\dp_dut/N206 ), .B(n49), .Y(\dp_dut/n165 ) );
  OAI21X1 \dp_dut/U159  ( .A(n47), .B(n85), .C(\dp_dut/n165 ), .Y(
        \dp_dut/n253 ) );
  NAND2X1 \dp_dut/U158  ( .A(\dp_dut/N199 ), .B(n49), .Y(\dp_dut/n164 ) );
  OAI21X1 \dp_dut/U157  ( .A(n47), .B(n91), .C(\dp_dut/n164 ), .Y(
        \dp_dut/n252 ) );
  NAND2X1 \dp_dut/U156  ( .A(\dp_dut/N200 ), .B(n49), .Y(\dp_dut/n163 ) );
  OAI21X1 \dp_dut/U155  ( .A(n47), .B(n90), .C(\dp_dut/n163 ), .Y(
        \dp_dut/n251 ) );
  AOI21X1 \dp_dut/U154  ( .A(\dp_dut/N201 ), .B(n49), .C(\dp_dut/n162 ), .Y(
        \dp_dut/n161 ) );
  OAI21X1 \dp_dut/U153  ( .A(n47), .B(n89), .C(\dp_dut/n161 ), .Y(
        \dp_dut/n250 ) );
  NAND2X1 \dp_dut/U152  ( .A(\dp_dut/N202 ), .B(n49), .Y(\dp_dut/n160 ) );
  OAI21X1 \dp_dut/U151  ( .A(n47), .B(n88), .C(\dp_dut/n160 ), .Y(
        \dp_dut/n249 ) );
  NAND2X1 \dp_dut/U150  ( .A(\dp_dut/N203 ), .B(n49), .Y(\dp_dut/n159 ) );
  OAI21X1 \dp_dut/U149  ( .A(n47), .B(n87), .C(\dp_dut/n159 ), .Y(
        \dp_dut/n248 ) );
  NAND2X1 \dp_dut/U148  ( .A(\dp_dut/N204 ), .B(n49), .Y(\dp_dut/n158 ) );
  OAI21X1 \dp_dut/U147  ( .A(n47), .B(n86), .C(\dp_dut/n158 ), .Y(
        \dp_dut/n247 ) );
  NAND2X1 \dp_dut/U146  ( .A(\dp_dut/N205 ), .B(n49), .Y(\dp_dut/n156 ) );
  OAI21X1 \dp_dut/U145  ( .A(n47), .B(n93), .C(\dp_dut/n156 ), .Y(
        \dp_dut/n246 ) );
  AOI21X1 \dp_dut/U144  ( .A(n82), .B(n64), .C(n37), .Y(\dp_dut/n148 ) );
  NOR2X1 \dp_dut/U143  ( .A(\dp_dut/item_d_num [7]), .B(\dp_dut/item_d_num [6]), .Y(\dp_dut/n155 ) );
  NAND3X1 \dp_dut/U142  ( .A(n87), .B(n86), .C(\dp_dut/n155 ), .Y(
        \dp_dut/n152 ) );
  NOR2X1 \dp_dut/U141  ( .A(\dp_dut/item_d_num [3]), .B(\dp_dut/item_d_num [2]), .Y(\dp_dut/n154 ) );
  NAND3X1 \dp_dut/U140  ( .A(n91), .B(n90), .C(\dp_dut/n154 ), .Y(
        \dp_dut/n153 ) );
  OR2X1 \dp_dut/U139  ( .A(\dp_dut/n152 ), .B(\dp_dut/n153 ), .Y(out_stock_d)
         );
  NOR2X1 \dp_dut/U138  ( .A(\dp_dut/n151 ), .B(n64), .Y(\dp_dut/n150 ) );
  NAND3X1 \dp_dut/U137  ( .A(n58), .B(out_stock_d), .C(\dp_dut/n150 ), .Y(
        \dp_dut/n149 ) );
  OAI21X1 \dp_dut/U136  ( .A(\dp_dut/n148 ), .B(n92), .C(\dp_dut/n149 ), .Y(
        \dp_dut/n245 ) );
  NAND2X1 \dp_dut/U135  ( .A(n59), .B(n58), .Y(\dp_dut/n124 ) );
  NAND2X1 \dp_dut/U134  ( .A(out_spit_a), .B(n37), .Y(\dp_dut/n147 ) );
  OAI21X1 \dp_dut/U133  ( .A(\dp_dut/n124 ), .B(n137), .C(\dp_dut/n147 ), .Y(
        \dp_dut/n244 ) );
  NAND2X1 \dp_dut/U132  ( .A(out_spit_b), .B(n37), .Y(\dp_dut/n146 ) );
  OAI21X1 \dp_dut/U131  ( .A(\dp_dut/n124 ), .B(n110), .C(\dp_dut/n146 ), .Y(
        \dp_dut/n243 ) );
  NAND2X1 \dp_dut/U130  ( .A(out_spit_c), .B(n37), .Y(\dp_dut/n145 ) );
  OAI21X1 \dp_dut/U129  ( .A(\dp_dut/n124 ), .B(n101), .C(\dp_dut/n145 ), .Y(
        \dp_dut/n242 ) );
  AOI22X1 \dp_dut/U128  ( .A(n1), .B(\dp_dut/N141 ), .C(\dp_dut/N141 ), .D(n38), .Y(\dp_dut/n144 ) );
  OAI21X1 \dp_dut/U127  ( .A(n35), .B(n120), .C(\dp_dut/n144 ), .Y(
        \dp_dut/n241 ) );
  AOI22X1 \dp_dut/U126  ( .A(n1), .B(\dp_dut/N39 ), .C(\dp_dut/N142 ), .D(n38), 
        .Y(\dp_dut/n143 ) );
  OAI21X1 \dp_dut/U125  ( .A(n35), .B(n121), .C(\dp_dut/n143 ), .Y(
        \dp_dut/n240 ) );
  AOI22X1 \dp_dut/U124  ( .A(n1), .B(\dp_dut/N40 ), .C(\dp_dut/N143 ), .D(n38), 
        .Y(\dp_dut/n142 ) );
  OAI21X1 \dp_dut/U123  ( .A(n35), .B(n122), .C(\dp_dut/n142 ), .Y(
        \dp_dut/n239 ) );
  AOI22X1 \dp_dut/U122  ( .A(n1), .B(\dp_dut/N41 ), .C(\dp_dut/N144 ), .D(n38), 
        .Y(\dp_dut/n141 ) );
  OAI21X1 \dp_dut/U121  ( .A(n35), .B(n123), .C(\dp_dut/n141 ), .Y(
        \dp_dut/n238 ) );
  AOI22X1 \dp_dut/U120  ( .A(n1), .B(\dp_dut/N42 ), .C(\dp_dut/N145 ), .D(n38), 
        .Y(\dp_dut/n140 ) );
  OAI21X1 \dp_dut/U119  ( .A(n35), .B(n124), .C(\dp_dut/n140 ), .Y(
        \dp_dut/n237 ) );
  AOI22X1 \dp_dut/U118  ( .A(n1), .B(\dp_dut/N43 ), .C(\dp_dut/N146 ), .D(n38), 
        .Y(\dp_dut/n139 ) );
  OAI21X1 \dp_dut/U117  ( .A(n35), .B(n125), .C(\dp_dut/n139 ), .Y(
        \dp_dut/n236 ) );
  AOI22X1 \dp_dut/U116  ( .A(n1), .B(\dp_dut/N44 ), .C(\dp_dut/N147 ), .D(n38), 
        .Y(\dp_dut/n138 ) );
  OAI21X1 \dp_dut/U115  ( .A(n35), .B(n127), .C(\dp_dut/n138 ), .Y(
        \dp_dut/n235 ) );
  AOI22X1 \dp_dut/U114  ( .A(n1), .B(\dp_dut/N45 ), .C(\dp_dut/N148 ), .D(n38), 
        .Y(\dp_dut/n137 ) );
  OAI21X1 \dp_dut/U113  ( .A(n35), .B(n128), .C(\dp_dut/n137 ), .Y(
        \dp_dut/n234 ) );
  AOI22X1 \dp_dut/U112  ( .A(n1), .B(\dp_dut/N46 ), .C(\dp_dut/N149 ), .D(n38), 
        .Y(\dp_dut/n136 ) );
  OAI21X1 \dp_dut/U111  ( .A(n35), .B(n129), .C(\dp_dut/n136 ), .Y(
        \dp_dut/n233 ) );
  AOI22X1 \dp_dut/U110  ( .A(n1), .B(\dp_dut/N47 ), .C(\dp_dut/N150 ), .D(n38), 
        .Y(\dp_dut/n135 ) );
  OAI21X1 \dp_dut/U109  ( .A(n35), .B(n130), .C(\dp_dut/n135 ), .Y(
        \dp_dut/n232 ) );
  AOI22X1 \dp_dut/U108  ( .A(n1), .B(\dp_dut/N48 ), .C(\dp_dut/N151 ), .D(n38), 
        .Y(\dp_dut/n134 ) );
  OAI21X1 \dp_dut/U107  ( .A(n35), .B(n131), .C(\dp_dut/n134 ), .Y(
        \dp_dut/n231 ) );
  AOI22X1 \dp_dut/U106  ( .A(n1), .B(\dp_dut/N49 ), .C(\dp_dut/N152 ), .D(n38), 
        .Y(\dp_dut/n133 ) );
  OAI21X1 \dp_dut/U105  ( .A(n35), .B(n132), .C(\dp_dut/n133 ), .Y(
        \dp_dut/n230 ) );
  AOI22X1 \dp_dut/U104  ( .A(n1), .B(\dp_dut/N50 ), .C(\dp_dut/N153 ), .D(n38), 
        .Y(\dp_dut/n132 ) );
  OAI21X1 \dp_dut/U103  ( .A(n35), .B(n133), .C(\dp_dut/n132 ), .Y(
        \dp_dut/n229 ) );
  AOI22X1 \dp_dut/U102  ( .A(n1), .B(\dp_dut/N51 ), .C(\dp_dut/N154 ), .D(n38), 
        .Y(\dp_dut/n131 ) );
  OAI21X1 \dp_dut/U101  ( .A(n35), .B(n134), .C(\dp_dut/n131 ), .Y(
        \dp_dut/n228 ) );
  AOI22X1 \dp_dut/U100  ( .A(n1), .B(\dp_dut/N52 ), .C(\dp_dut/N155 ), .D(n38), 
        .Y(\dp_dut/n128 ) );
  OAI21X1 \dp_dut/U99  ( .A(n35), .B(n135), .C(\dp_dut/n128 ), .Y(
        \dp_dut/n227 ) );
  NAND2X1 \dp_dut/U98  ( .A(out_spit_d), .B(n37), .Y(\dp_dut/n125 ) );
  OAI21X1 \dp_dut/U97  ( .A(\dp_dut/n124 ), .B(n92), .C(\dp_dut/n125 ), .Y(
        \dp_dut/n226 ) );
  AND2X2 \dp_dut/U22  ( .A(n41), .B(\dp_dut/N141 ), .Y(out_change[0]) );
  AND2X2 \dp_dut/U14  ( .A(n43), .B(\dp_dut/N49 ), .Y(out_change[11]) );
  AND2X2 \dp_dut/U13  ( .A(n45), .B(\dp_dut/N50 ), .Y(out_change[12]) );
  AND2X2 \dp_dut/U12  ( .A(n46), .B(\dp_dut/N51 ), .Y(out_change[13]) );
  AND2X2 \dp_dut/U11  ( .A(n41), .B(\dp_dut/N52 ), .Y(out_change[14]) );
  AND2X2 \dp_dut/U10  ( .A(n42), .B(\dp_dut/N53 ), .Y(out_change[15]) );
  AND2X2 \dp_dut/U8  ( .A(\dp_dut/N32 ), .B(n43), .Y(\dp_dut/total_price [1])
         );
  AND2X2 \dp_dut/U7  ( .A(\dp_dut/N33 ), .B(n44), .Y(\dp_dut/total_price [2])
         );
  AND2X2 \dp_dut/U5  ( .A(\dp_dut/N35 ), .B(n45), .Y(\dp_dut/total_price [4])
         );
  AND2X2 \dp_dut/U4  ( .A(\dp_dut/N36 ), .B(n41), .Y(\dp_dut/total_price [5])
         );
  DFFNEGX1 \dp_dut/out_spit_d_reg  ( .D(\dp_dut/n226 ), .CLK(n57), .Q(
        out_spit_d) );
  DFFNEGX1 \dp_dut/out_spit_a_reg  ( .D(\dp_dut/n244 ), .CLK(n56), .Q(
        out_spit_a) );
  DFFNEGX1 \dp_dut/item_d_num_reg[7]  ( .D(\dp_dut/n253 ), .CLK(n56), .Q(
        \dp_dut/item_d_num [7]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[5]  ( .D(\dp_dut/n247 ), .CLK(n56), .Q(
        \dp_dut/item_d_num [5]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[4]  ( .D(\dp_dut/n248 ), .CLK(n56), .Q(
        \dp_dut/item_d_num [4]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[3]  ( .D(\dp_dut/n249 ), .CLK(n56), .Q(
        \dp_dut/item_d_num [3]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[2]  ( .D(\dp_dut/n250 ), .CLK(n56), .Q(
        \dp_dut/item_d_num [2]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[1]  ( .D(\dp_dut/n251 ), .CLK(n56), .Q(
        \dp_dut/item_d_num [1]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[0]  ( .D(\dp_dut/n252 ), .CLK(n56), .Q(
        \dp_dut/item_d_num [0]) );
  DFFNEGX1 \dp_dut/out_csel_d_reg  ( .D(\dp_dut/n245 ), .CLK(n56), .Q(
        out_csel_d) );
  DFFNEGX1 \dp_dut/item_d_num_reg[6]  ( .D(\dp_dut/n246 ), .CLK(n56), .Q(
        \dp_dut/item_d_num [6]) );
  DFFNEGX1 \dp_dut/out_spit_c_reg  ( .D(\dp_dut/n242 ), .CLK(n56), .Q(
        out_spit_c) );
  DFFNEGX1 \dp_dut/item_c_num_reg[7]  ( .D(\dp_dut/n262 ), .CLK(n56), .Q(
        \dp_dut/item_c_num [7]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[5]  ( .D(\dp_dut/n256 ), .CLK(n56), .Q(
        \dp_dut/item_c_num [5]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[4]  ( .D(\dp_dut/n257 ), .CLK(n55), .Q(
        \dp_dut/item_c_num [4]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[3]  ( .D(\dp_dut/n258 ), .CLK(n55), .Q(
        \dp_dut/item_c_num [3]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[2]  ( .D(\dp_dut/n259 ), .CLK(n55), .Q(
        \dp_dut/item_c_num [2]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[1]  ( .D(\dp_dut/n260 ), .CLK(n55), .Q(
        \dp_dut/item_c_num [1]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[0]  ( .D(\dp_dut/n261 ), .CLK(n55), .Q(
        \dp_dut/item_c_num [0]) );
  DFFNEGX1 \dp_dut/out_csel_c_reg  ( .D(\dp_dut/n254 ), .CLK(n55), .Q(
        out_csel_c) );
  DFFNEGX1 \dp_dut/item_c_num_reg[6]  ( .D(\dp_dut/n255 ), .CLK(n55), .Q(
        \dp_dut/item_c_num [6]) );
  DFFNEGX1 \dp_dut/out_spit_b_reg  ( .D(\dp_dut/n243 ), .CLK(n55), .Q(
        out_spit_b) );
  DFFNEGX1 \dp_dut/item_b_num_reg[7]  ( .D(\dp_dut/n271 ), .CLK(n55), .Q(
        \dp_dut/item_b_num [7]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[5]  ( .D(\dp_dut/n265 ), .CLK(n55), .Q(
        \dp_dut/item_b_num [5]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[4]  ( .D(\dp_dut/n266 ), .CLK(n55), .Q(
        \dp_dut/item_b_num [4]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[3]  ( .D(\dp_dut/n267 ), .CLK(n55), .Q(
        \dp_dut/item_b_num [3]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[2]  ( .D(\dp_dut/n268 ), .CLK(n55), .Q(
        \dp_dut/item_b_num [2]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[1]  ( .D(\dp_dut/n269 ), .CLK(n54), .Q(
        \dp_dut/item_b_num [1]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[0]  ( .D(\dp_dut/n270 ), .CLK(n54), .Q(
        \dp_dut/item_b_num [0]) );
  DFFNEGX1 \dp_dut/out_csel_b_reg  ( .D(\dp_dut/n263 ), .CLK(n54), .Q(
        out_csel_b) );
  DFFNEGX1 \dp_dut/item_b_num_reg[6]  ( .D(\dp_dut/n264 ), .CLK(n54), .Q(
        \dp_dut/item_b_num [6]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[7]  ( .D(\dp_dut/n279 ), .CLK(n54), .Q(
        \dp_dut/item_a_num [7]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[5]  ( .D(\dp_dut/n273 ), .CLK(n54), .Q(
        \dp_dut/item_a_num [5]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[4]  ( .D(\dp_dut/n274 ), .CLK(n54), .Q(
        \dp_dut/item_a_num [4]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[3]  ( .D(\dp_dut/n275 ), .CLK(n54), .Q(
        \dp_dut/item_a_num [3]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[2]  ( .D(\dp_dut/n276 ), .CLK(n54), .Q(
        \dp_dut/item_a_num [2]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[1]  ( .D(\dp_dut/n277 ), .CLK(n54), .Q(
        \dp_dut/item_a_num [1]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[0]  ( .D(\dp_dut/n278 ), .CLK(n54), .Q(
        \dp_dut/item_a_num [0]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[6]  ( .D(\dp_dut/n272 ), .CLK(n54), .Q(
        \dp_dut/item_a_num [6]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[0]  ( .D(\dp_dut/n241 ), .CLK(n54), .Q(
        \dp_dut/N141 ) );
  DFFNEGX1 \dp_dut/inserted_money_reg[1]  ( .D(\dp_dut/n240 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [1]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[2]  ( .D(\dp_dut/n239 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [2]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[3]  ( .D(\dp_dut/n238 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [3]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[4]  ( .D(\dp_dut/n237 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [4]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[5]  ( .D(\dp_dut/n236 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [5]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[6]  ( .D(\dp_dut/n235 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [6]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[7]  ( .D(\dp_dut/n234 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [7]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[8]  ( .D(\dp_dut/n233 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [8]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[9]  ( .D(\dp_dut/n232 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [9]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[10]  ( .D(\dp_dut/n231 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [10]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[11]  ( .D(\dp_dut/n230 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [11]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[12]  ( .D(\dp_dut/n229 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [12]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[13]  ( .D(\dp_dut/n228 ), .CLK(n53), .Q(
        \dp_dut/inserted_money [13]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[14]  ( .D(\dp_dut/n227 ), .CLK(n52), .Q(
        \dp_dut/inserted_money [14]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[15]  ( .D(\dp_dut/n280 ), .CLK(n52), .Q(
        \dp_dut/inserted_money [15]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[7]  ( .D(\dp_dut/n281 ), .CLK(n52), .Q(
        out_change_1[7]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[6]  ( .D(\dp_dut/n282 ), .CLK(n52), .Q(
        out_change_1[6]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[5]  ( .D(\dp_dut/n283 ), .CLK(n52), .Q(
        out_change_1[5]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[4]  ( .D(\dp_dut/n284 ), .CLK(n52), .Q(
        out_change_1[4]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[3]  ( .D(\dp_dut/n285 ), .CLK(n52), .Q(
        out_change_1[3]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[2]  ( .D(\dp_dut/n286 ), .CLK(n52), .Q(
        out_change_1[2]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[1]  ( .D(\dp_dut/n287 ), .CLK(n52), .Q(
        out_change_1[1]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[0]  ( .D(\dp_dut/n288 ), .CLK(n52), .Q(
        out_change_1[0]) );
  DFFNEGX1 \dp_dut/out_change_05_reg  ( .D(\dp_dut/n289 ), .CLK(n52), .Q(
        out_change_05) );
  DFFNEGX1 \dp_dut/out_change_025_reg  ( .D(\dp_dut/n290 ), .CLK(n52), .Q(
        out_change_025) );
  DFFNEGX1 \dp_dut/out_csel_a_reg  ( .D(\dp_dut/n291 ), .CLK(n52), .Q(
        out_csel_a) );
  FAX1 \dp_dut/r374/U2_2  ( .A(\dp_dut/inserted_money [2]), .B(n77), .C(
        \dp_dut/r374/carry [2]), .YC(\dp_dut/r374/carry [3]), .YS(\dp_dut/N40 ) );
  FAX1 \dp_dut/r374/U2_3  ( .A(\dp_dut/inserted_money [3]), .B(n4), .C(
        \dp_dut/r374/carry [3]), .YC(\dp_dut/r374/carry [4]), .YS(\dp_dut/N41 ) );
  FAX1 \dp_dut/r374/U2_4  ( .A(\dp_dut/inserted_money [4]), .B(n79), .C(
        \dp_dut/r374/carry [4]), .YC(\dp_dut/r374/carry [5]), .YS(\dp_dut/N42 ) );
  FAX1 \dp_dut/r374/U2_5  ( .A(\dp_dut/inserted_money [5]), .B(n80), .C(
        \dp_dut/r374/carry [5]), .YC(\dp_dut/r374/carry [6]), .YS(\dp_dut/N43 ) );
  FAX1 \dp_dut/dp_cluster_0/add_3_root_add_103_5/U1_6  ( .A(n28), .B(
        in_inserted_1[3]), .C(n13), .YC(
        \dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [7]), .YS(
        \dp_dut/dp_cluster_0/N99 ) );
  FAX1 \dp_dut/dp_cluster_0/add_3_root_add_103_5/U1_7  ( .A(n29), .B(
        in_inserted_1[4]), .C(
        \dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [7]), .YC(
        \dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [8]), .YS(
        \dp_dut/dp_cluster_0/N100 ) );
  FAX1 \dp_dut/dp_cluster_0/add_3_root_add_103_5/U1_8  ( .A(n30), .B(
        in_inserted_1[5]), .C(
        \dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [8]), .YC(
        \dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [9]), .YS(
        \dp_dut/dp_cluster_0/N101 ) );
  FAX1 \dp_dut/dp_cluster_0/add_3_root_add_103_5/U1_9  ( .A(n31), .B(
        in_inserted_1[6]), .C(
        \dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [9]), .YC(
        \dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [10]), .YS(
        \dp_dut/dp_cluster_0/N102 ) );
  FAX1 \dp_dut/dp_cluster_0/add_3_root_add_103_5/U1_10  ( .A(n32), .B(
        in_inserted_1[7]), .C(
        \dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [10]), .YC(
        \dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [11]), .YS(
        \dp_dut/dp_cluster_0/N103 ) );
  FAX1 \dp_dut/dp_cluster_0/add_4_root_add_103_5/U1_4  ( .A(
        \dp_dut/inserted_money [4]), .B(n28), .C(n8), .YC(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [5]), .YS(
        \dp_dut/dp_cluster_0/N81 ) );
  FAX1 \dp_dut/dp_cluster_0/add_4_root_add_103_5/U1_5  ( .A(
        \dp_dut/inserted_money [5]), .B(n29), .C(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [5]), .YC(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [6]), .YS(
        \dp_dut/dp_cluster_0/N82 ) );
  FAX1 \dp_dut/dp_cluster_0/add_4_root_add_103_5/U1_6  ( .A(
        \dp_dut/inserted_money [6]), .B(n30), .C(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [6]), .YC(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [7]), .YS(
        \dp_dut/dp_cluster_0/N83 ) );
  FAX1 \dp_dut/dp_cluster_0/add_4_root_add_103_5/U1_7  ( .A(
        \dp_dut/inserted_money [7]), .B(n31), .C(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [7]), .YC(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [8]), .YS(
        \dp_dut/dp_cluster_0/N84 ) );
  FAX1 \dp_dut/dp_cluster_0/add_4_root_add_103_5/U1_8  ( .A(
        \dp_dut/inserted_money [8]), .B(n32), .C(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [8]), .YC(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [9]), .YS(
        \dp_dut/dp_cluster_0/N85 ) );
  FAX1 \dp_dut/dp_cluster_0/add_4_root_add_103_5/U1_9  ( .A(
        \dp_dut/inserted_money [9]), .B(n33), .C(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [9]), .YC(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [10]), .YS(
        \dp_dut/dp_cluster_0/N86 ) );
  FAX1 \dp_dut/dp_cluster_0/add_4_root_add_103_5/U1_10  ( .A(
        \dp_dut/inserted_money [10]), .B(n34), .C(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [10]), .YC(
        \dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [11]), .YS(
        \dp_dut/dp_cluster_0/N87 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_103_5/U1_4  ( .A(
        \dp_dut/dp_cluster_0/N81 ), .B(in_inserted_1[1]), .C(n12), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [5]), .YS(
        \dp_dut/dp_cluster_0/N129 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_103_5/U1_5  ( .A(
        \dp_dut/dp_cluster_0/N82 ), .B(\dp_dut/dp_cluster_0/N98 ), .C(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [5]), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [6]), .YS(
        \dp_dut/dp_cluster_0/N130 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_103_5/U1_6  ( .A(
        \dp_dut/dp_cluster_0/N83 ), .B(\dp_dut/dp_cluster_0/N99 ), .C(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [6]), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [7]), .YS(
        \dp_dut/dp_cluster_0/N131 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_103_5/U1_7  ( .A(
        \dp_dut/dp_cluster_0/N84 ), .B(\dp_dut/dp_cluster_0/N100 ), .C(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [7]), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [8]), .YS(
        \dp_dut/dp_cluster_0/N132 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_103_5/U1_8  ( .A(
        \dp_dut/dp_cluster_0/N85 ), .B(\dp_dut/dp_cluster_0/N101 ), .C(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [8]), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [9]), .YS(
        \dp_dut/dp_cluster_0/N133 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_103_5/U1_9  ( .A(
        \dp_dut/dp_cluster_0/N86 ), .B(\dp_dut/dp_cluster_0/N102 ), .C(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [9]), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [10]), .YS(
        \dp_dut/dp_cluster_0/N134 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_103_5/U1_10  ( .A(
        \dp_dut/dp_cluster_0/N87 ), .B(\dp_dut/dp_cluster_0/N103 ), .C(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [10]), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [11]), .YS(
        \dp_dut/dp_cluster_0/N135 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_103_5/U1_11  ( .A(
        \dp_dut/dp_cluster_0/N88 ), .B(\dp_dut/dp_cluster_0/N104 ), .C(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [11]), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [12]), .YS(
        \dp_dut/dp_cluster_0/N136 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_103_5/U1_12  ( .A(
        \dp_dut/dp_cluster_0/N89 ), .B(\dp_dut/dp_cluster_0/N105 ), .C(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [12]), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [13]), .YS(
        \dp_dut/dp_cluster_0/N137 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_103_5/U1_13  ( .A(
        \dp_dut/dp_cluster_0/N90 ), .B(n2), .C(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [13]), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [14]), .YS(
        \dp_dut/dp_cluster_0/N138 ) );
  FAX1 \dp_dut/dp_cluster_0/add_2_root_add_103_5/U1_3  ( .A(in_inserted_05[1]), 
        .B(in_inserted_025[2]), .C(n11), .YC(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [4]), .YS(
        \dp_dut/dp_cluster_0/N112 ) );
  FAX1 \dp_dut/dp_cluster_0/add_2_root_add_103_5/U1_4  ( .A(in_inserted_05[2]), 
        .B(in_inserted_025[3]), .C(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [4]), .YC(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [5]), .YS(
        \dp_dut/dp_cluster_0/N113 ) );
  FAX1 \dp_dut/dp_cluster_0/add_2_root_add_103_5/U1_5  ( .A(in_inserted_05[3]), 
        .B(in_inserted_025[4]), .C(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [5]), .YC(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [6]), .YS(
        \dp_dut/dp_cluster_0/N114 ) );
  FAX1 \dp_dut/dp_cluster_0/add_2_root_add_103_5/U1_6  ( .A(in_inserted_05[4]), 
        .B(in_inserted_025[5]), .C(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [6]), .YC(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [7]), .YS(
        \dp_dut/dp_cluster_0/N115 ) );
  FAX1 \dp_dut/dp_cluster_0/add_2_root_add_103_5/U1_7  ( .A(in_inserted_05[5]), 
        .B(in_inserted_025[6]), .C(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [7]), .YC(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [8]), .YS(
        \dp_dut/dp_cluster_0/N116 ) );
  FAX1 \dp_dut/dp_cluster_0/add_2_root_add_103_5/U1_8  ( .A(in_inserted_05[6]), 
        .B(in_inserted_025[7]), .C(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [8]), .YC(
        \dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [9]), .YS(
        \dp_dut/dp_cluster_0/N117 ) );
  FAX1 \dp_dut/dp_cluster_0/add_0_root_add_103_5/U1_2  ( .A(
        \dp_dut/dp_cluster_0/N111 ), .B(\dp_dut/inserted_money [2]), .C(n9), 
        .YC(\dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [3]), .YS(
        \dp_dut/N143 ) );
  FAX1 \dp_dut/dp_cluster_0/add_0_root_add_103_5/U1_3  ( .A(
        \dp_dut/dp_cluster_0/N112 ), .B(\dp_dut/dp_cluster_0/N128 ), .C(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [3]), .YC(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [4]), .YS(
        \dp_dut/N144 ) );
  FAX1 \dp_dut/dp_cluster_0/add_0_root_add_103_5/U1_4  ( .A(
        \dp_dut/dp_cluster_0/N113 ), .B(\dp_dut/dp_cluster_0/N129 ), .C(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [4]), .YC(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [5]), .YS(
        \dp_dut/N145 ) );
  FAX1 \dp_dut/dp_cluster_0/add_0_root_add_103_5/U1_5  ( .A(
        \dp_dut/dp_cluster_0/N114 ), .B(\dp_dut/dp_cluster_0/N130 ), .C(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [5]), .YC(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [6]), .YS(
        \dp_dut/N146 ) );
  FAX1 \dp_dut/dp_cluster_0/add_0_root_add_103_5/U1_6  ( .A(
        \dp_dut/dp_cluster_0/N115 ), .B(\dp_dut/dp_cluster_0/N131 ), .C(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [6]), .YC(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [7]), .YS(
        \dp_dut/N147 ) );
  FAX1 \dp_dut/dp_cluster_0/add_0_root_add_103_5/U1_7  ( .A(
        \dp_dut/dp_cluster_0/N116 ), .B(\dp_dut/dp_cluster_0/N132 ), .C(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [7]), .YC(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [8]), .YS(
        \dp_dut/N148 ) );
  FAX1 \dp_dut/dp_cluster_0/add_0_root_add_103_5/U1_8  ( .A(
        \dp_dut/dp_cluster_0/N117 ), .B(\dp_dut/dp_cluster_0/N133 ), .C(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [8]), .YC(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [9]), .YS(
        \dp_dut/N149 ) );
  FAX1 \dp_dut/dp_cluster_0/add_0_root_add_103_5/U1_9  ( .A(
        \dp_dut/dp_cluster_0/N118 ), .B(\dp_dut/dp_cluster_0/N134 ), .C(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [9]), .YC(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [10]), .YS(
        \dp_dut/N150 ) );
  FAX1 \dp_dut/dp_cluster_0/add_0_root_add_103_5/U1_10  ( .A(n5), .B(
        \dp_dut/dp_cluster_0/N135 ), .C(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [10]), .YC(
        \dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [11]), .YS(
        \dp_dut/N151 ) );
  FAX1 \dp_dut/dp_cluster_1/add_2_root_add_65_3/U1_3  ( .A(out_csel_a), .B(
        out_csel_b), .C(n7), .YC(\dp_dut/dp_cluster_1/N24 ), .YS(
        \dp_dut/dp_cluster_1/N23 ) );
  FAX1 \dp_dut/dp_cluster_1/add_0_root_add_65_3/U1_3  ( .A(
        \dp_dut/dp_cluster_1/N23 ), .B(\dp_dut/dp_cluster_1/N28 ), .C(n14), 
        .YC(\dp_dut/dp_cluster_1/add_0_root_add_65_3/carry[4] ), .YS(
        \dp_dut/N34 ) );
  FAX1 \dp_dut/dp_cluster_1/add_0_root_add_65_3/U1_4  ( .A(
        \dp_dut/dp_cluster_1/N24 ), .B(n6), .C(
        \dp_dut/dp_cluster_1/add_0_root_add_65_3/carry[4] ), .YC(\dp_dut/N36 ), 
        .YS(\dp_dut/N35 ) );
  AND2X2 U1 ( .A(n59), .B(n35), .Y(n1) );
  AND2X2 U2 ( .A(n18), .B(n34), .Y(n2) );
  AND2X2 U3 ( .A(n16), .B(\dp_dut/inserted_money [13]), .Y(n3) );
  NAND2X1 U4 ( .A(\dp_dut/N34 ), .B(n45), .Y(n4) );
  AND2X2 U5 ( .A(\dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [9]), .B(
        in_inserted_05[7]), .Y(n5) );
  AND2X2 U6 ( .A(out_csel_d), .B(out_csel_c), .Y(n6) );
  AND2X2 U7 ( .A(out_csel_b), .B(out_csel_a), .Y(n7) );
  AND2X2 U8 ( .A(n27), .B(\dp_dut/inserted_money [3]), .Y(n8) );
  AND2X2 U9 ( .A(\dp_dut/inserted_money [1]), .B(in_inserted_025[0]), .Y(n9)
         );
  AND2X2 U10 ( .A(out_csel_c), .B(out_csel_a), .Y(n10) );
  AND2X2 U11 ( .A(in_inserted_025[1]), .B(in_inserted_05[0]), .Y(n11) );
  AND2X2 U12 ( .A(in_inserted_1[0]), .B(\dp_dut/dp_cluster_0/N80 ), .Y(n12) );
  AND2X2 U13 ( .A(in_inserted_1[2]), .B(n27), .Y(n13) );
  AND2X2 U14 ( .A(n10), .B(\dp_dut/dp_cluster_1/N22 ), .Y(n14) );
  AND2X2 U15 ( .A(\dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [11]), .B(
        \dp_dut/inserted_money [11]), .Y(n15) );
  AND2X2 U16 ( .A(n15), .B(\dp_dut/inserted_money [12]), .Y(n16) );
  AND2X2 U17 ( .A(\dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [11]), .B(
        \dp_dut/dp_cluster_0/N136 ), .Y(n17) );
  AND2X2 U18 ( .A(\dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [11]), .B(
        n33), .Y(n18) );
  AND2X2 U19 ( .A(n17), .B(\dp_dut/dp_cluster_0/N137 ), .Y(n19) );
  AND2X2 U20 ( .A(n19), .B(\dp_dut/dp_cluster_0/N138 ), .Y(n20) );
  AND2X2 U21 ( .A(n3), .B(\dp_dut/inserted_money [14]), .Y(n21) );
  AND2X2 U22 ( .A(\dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [14]), .B(
        \dp_dut/dp_cluster_0/N91 ), .Y(n22) );
  AND2X2 U23 ( .A(n20), .B(\dp_dut/dp_cluster_0/N139 ), .Y(n23) );
  BUFX2 U24 ( .A(\dp_dut/n126 ), .Y(n37) );
  INVX2 U25 ( .A(n24), .Y(n49) );
  INVX2 U26 ( .A(\dp_dut/n205 ), .Y(n48) );
  INVX2 U27 ( .A(\dp_dut/n205 ), .Y(n47) );
  INVX2 U28 ( .A(n25), .Y(n35) );
  BUFX2 U29 ( .A(n50), .Y(n52) );
  BUFX2 U30 ( .A(n50), .Y(n53) );
  BUFX2 U31 ( .A(n50), .Y(n54) );
  BUFX2 U32 ( .A(n51), .Y(n55) );
  BUFX2 U33 ( .A(n51), .Y(n56) );
  OR2X1 U34 ( .A(\dp_dut/n204 ), .B(\dp_dut/n205 ), .Y(n24) );
  AND2X2 U35 ( .A(n37), .B(\dp_dut/n207 ), .Y(n25) );
  BUFX2 U36 ( .A(n51), .Y(n57) );
  INVX2 U37 ( .A(n26), .Y(n38) );
  OR2X1 U38 ( .A(\dp_dut/n151 ), .B(in_restart), .Y(n26) );
  BUFX2 U39 ( .A(in_inserted_5[1]), .Y(n28) );
  BUFX2 U40 ( .A(in_inserted_5[2]), .Y(n29) );
  BUFX2 U41 ( .A(in_inserted_5[3]), .Y(n30) );
  BUFX2 U42 ( .A(in_inserted_5[4]), .Y(n31) );
  BUFX2 U43 ( .A(in_inserted_5[5]), .Y(n32) );
  INVX2 U44 ( .A(\dp_dut/n207 ), .Y(n36) );
  BUFX2 U45 ( .A(in_inserted_5[6]), .Y(n33) );
  BUFX2 U46 ( .A(in_inserted_5[7]), .Y(n34) );
  BUFX2 U47 ( .A(in_inserted_5[0]), .Y(n27) );
  BUFX2 U48 ( .A(in_clka), .Y(n50) );
  BUFX2 U49 ( .A(in_clka), .Y(n51) );
  OR2X1 U50 ( .A(\dp_dut/inserted_money [10]), .B(\dp_dut/r374/carry [10]), 
        .Y(\dp_dut/r374/carry [11]) );
  XNOR2X1 U51 ( .A(\dp_dut/r374/carry [10]), .B(\dp_dut/inserted_money [10]), 
        .Y(\dp_dut/N48 ) );
  OR2X1 U52 ( .A(\dp_dut/inserted_money [11]), .B(\dp_dut/r374/carry [11]), 
        .Y(\dp_dut/r374/carry [12]) );
  XNOR2X1 U53 ( .A(\dp_dut/r374/carry [11]), .B(\dp_dut/inserted_money [11]), 
        .Y(\dp_dut/N49 ) );
  OR2X1 U54 ( .A(\dp_dut/inserted_money [12]), .B(\dp_dut/r374/carry [12]), 
        .Y(\dp_dut/r374/carry [13]) );
  XNOR2X1 U55 ( .A(\dp_dut/r374/carry [12]), .B(\dp_dut/inserted_money [12]), 
        .Y(\dp_dut/N50 ) );
  OR2X1 U56 ( .A(\dp_dut/inserted_money [13]), .B(\dp_dut/r374/carry [13]), 
        .Y(\dp_dut/r374/carry [14]) );
  XNOR2X1 U57 ( .A(\dp_dut/r374/carry [13]), .B(\dp_dut/inserted_money [13]), 
        .Y(\dp_dut/N51 ) );
  OR2X1 U58 ( .A(\dp_dut/inserted_money [14]), .B(\dp_dut/r374/carry [14]), 
        .Y(\dp_dut/r374/carry [15]) );
  XNOR2X1 U59 ( .A(\dp_dut/r374/carry [14]), .B(\dp_dut/inserted_money [14]), 
        .Y(\dp_dut/N52 ) );
  XNOR2X1 U60 ( .A(\dp_dut/inserted_money [15]), .B(\dp_dut/r374/carry [15]), 
        .Y(\dp_dut/N53 ) );
  OR2X1 U61 ( .A(\dp_dut/inserted_money [7]), .B(\dp_dut/r374/carry [7]), .Y(
        \dp_dut/r374/carry [8]) );
  XNOR2X1 U62 ( .A(\dp_dut/r374/carry [7]), .B(\dp_dut/inserted_money [7]), 
        .Y(\dp_dut/N45 ) );
  OR2X1 U63 ( .A(\dp_dut/inserted_money [8]), .B(\dp_dut/r374/carry [8]), .Y(
        \dp_dut/r374/carry [9]) );
  XNOR2X1 U64 ( .A(\dp_dut/r374/carry [8]), .B(\dp_dut/inserted_money [8]), 
        .Y(\dp_dut/N46 ) );
  OR2X1 U65 ( .A(\dp_dut/inserted_money [9]), .B(\dp_dut/r374/carry [9]), .Y(
        \dp_dut/r374/carry [10]) );
  XNOR2X1 U66 ( .A(\dp_dut/r374/carry [9]), .B(\dp_dut/inserted_money [9]), 
        .Y(\dp_dut/N47 ) );
  OR2X1 U67 ( .A(\dp_dut/item_a_num [1]), .B(\dp_dut/sub_125/carry [1]), .Y(
        \dp_dut/sub_125/carry [2]) );
  XNOR2X1 U68 ( .A(\dp_dut/sub_125/carry [1]), .B(\dp_dut/item_a_num [1]), .Y(
        \dp_dut/N176 ) );
  OR2X1 U69 ( .A(\dp_dut/item_a_num [2]), .B(\dp_dut/sub_125/carry [2]), .Y(
        \dp_dut/sub_125/carry [3]) );
  XNOR2X1 U70 ( .A(\dp_dut/sub_125/carry [2]), .B(\dp_dut/item_a_num [2]), .Y(
        \dp_dut/N177 ) );
  OR2X1 U71 ( .A(\dp_dut/item_a_num [3]), .B(\dp_dut/sub_125/carry [3]), .Y(
        \dp_dut/sub_125/carry [4]) );
  XNOR2X1 U72 ( .A(\dp_dut/sub_125/carry [3]), .B(\dp_dut/item_a_num [3]), .Y(
        \dp_dut/N178 ) );
  OR2X1 U73 ( .A(\dp_dut/item_a_num [4]), .B(\dp_dut/sub_125/carry [4]), .Y(
        \dp_dut/sub_125/carry [5]) );
  XNOR2X1 U74 ( .A(\dp_dut/sub_125/carry [4]), .B(\dp_dut/item_a_num [4]), .Y(
        \dp_dut/N179 ) );
  OR2X1 U75 ( .A(\dp_dut/item_a_num [5]), .B(\dp_dut/sub_125/carry [5]), .Y(
        \dp_dut/sub_125/carry [6]) );
  XNOR2X1 U76 ( .A(\dp_dut/sub_125/carry [5]), .B(\dp_dut/item_a_num [5]), .Y(
        \dp_dut/N180 ) );
  OR2X1 U77 ( .A(\dp_dut/item_a_num [6]), .B(\dp_dut/sub_125/carry [6]), .Y(
        \dp_dut/sub_125/carry [7]) );
  XNOR2X1 U78 ( .A(\dp_dut/sub_125/carry [6]), .B(\dp_dut/item_a_num [6]), .Y(
        \dp_dut/N181 ) );
  XNOR2X1 U79 ( .A(\dp_dut/item_a_num [7]), .B(\dp_dut/sub_125/carry [7]), .Y(
        \dp_dut/N182 ) );
  OR2X1 U80 ( .A(\dp_dut/item_a_num [0]), .B(n137), .Y(
        \dp_dut/sub_125/carry [1]) );
  XNOR2X1 U81 ( .A(n137), .B(\dp_dut/item_a_num [0]), .Y(\dp_dut/N175 ) );
  OR2X1 U82 ( .A(\dp_dut/item_b_num [1]), .B(\dp_dut/sub_126/carry [1]), .Y(
        \dp_dut/sub_126/carry [2]) );
  XNOR2X1 U83 ( .A(\dp_dut/sub_126/carry [1]), .B(\dp_dut/item_b_num [1]), .Y(
        \dp_dut/N184 ) );
  OR2X1 U84 ( .A(\dp_dut/item_b_num [2]), .B(\dp_dut/sub_126/carry [2]), .Y(
        \dp_dut/sub_126/carry [3]) );
  XNOR2X1 U85 ( .A(\dp_dut/sub_126/carry [2]), .B(\dp_dut/item_b_num [2]), .Y(
        \dp_dut/N185 ) );
  OR2X1 U86 ( .A(\dp_dut/item_b_num [3]), .B(\dp_dut/sub_126/carry [3]), .Y(
        \dp_dut/sub_126/carry [4]) );
  XNOR2X1 U87 ( .A(\dp_dut/sub_126/carry [3]), .B(\dp_dut/item_b_num [3]), .Y(
        \dp_dut/N186 ) );
  OR2X1 U88 ( .A(\dp_dut/item_b_num [4]), .B(\dp_dut/sub_126/carry [4]), .Y(
        \dp_dut/sub_126/carry [5]) );
  XNOR2X1 U89 ( .A(\dp_dut/sub_126/carry [4]), .B(\dp_dut/item_b_num [4]), .Y(
        \dp_dut/N187 ) );
  OR2X1 U90 ( .A(\dp_dut/item_b_num [5]), .B(\dp_dut/sub_126/carry [5]), .Y(
        \dp_dut/sub_126/carry [6]) );
  XNOR2X1 U91 ( .A(\dp_dut/sub_126/carry [5]), .B(\dp_dut/item_b_num [5]), .Y(
        \dp_dut/N188 ) );
  OR2X1 U92 ( .A(\dp_dut/item_b_num [6]), .B(\dp_dut/sub_126/carry [6]), .Y(
        \dp_dut/sub_126/carry [7]) );
  XNOR2X1 U93 ( .A(\dp_dut/sub_126/carry [6]), .B(\dp_dut/item_b_num [6]), .Y(
        \dp_dut/N189 ) );
  XNOR2X1 U94 ( .A(\dp_dut/item_b_num [7]), .B(\dp_dut/sub_126/carry [7]), .Y(
        \dp_dut/N190 ) );
  OR2X1 U95 ( .A(\dp_dut/item_b_num [0]), .B(n110), .Y(
        \dp_dut/sub_126/carry [1]) );
  XNOR2X1 U96 ( .A(n110), .B(\dp_dut/item_b_num [0]), .Y(\dp_dut/N183 ) );
  OR2X1 U97 ( .A(\dp_dut/item_c_num [1]), .B(\dp_dut/sub_127/carry [1]), .Y(
        \dp_dut/sub_127/carry [2]) );
  XNOR2X1 U98 ( .A(\dp_dut/sub_127/carry [1]), .B(\dp_dut/item_c_num [1]), .Y(
        \dp_dut/N192 ) );
  OR2X1 U99 ( .A(\dp_dut/item_c_num [2]), .B(\dp_dut/sub_127/carry [2]), .Y(
        \dp_dut/sub_127/carry [3]) );
  XNOR2X1 U100 ( .A(\dp_dut/sub_127/carry [2]), .B(\dp_dut/item_c_num [2]), 
        .Y(\dp_dut/N193 ) );
  OR2X1 U101 ( .A(\dp_dut/item_c_num [3]), .B(\dp_dut/sub_127/carry [3]), .Y(
        \dp_dut/sub_127/carry [4]) );
  XNOR2X1 U102 ( .A(\dp_dut/sub_127/carry [3]), .B(\dp_dut/item_c_num [3]), 
        .Y(\dp_dut/N194 ) );
  OR2X1 U103 ( .A(\dp_dut/item_c_num [4]), .B(\dp_dut/sub_127/carry [4]), .Y(
        \dp_dut/sub_127/carry [5]) );
  XNOR2X1 U104 ( .A(\dp_dut/sub_127/carry [4]), .B(\dp_dut/item_c_num [4]), 
        .Y(\dp_dut/N195 ) );
  OR2X1 U105 ( .A(\dp_dut/item_c_num [5]), .B(\dp_dut/sub_127/carry [5]), .Y(
        \dp_dut/sub_127/carry [6]) );
  XNOR2X1 U106 ( .A(\dp_dut/sub_127/carry [5]), .B(\dp_dut/item_c_num [5]), 
        .Y(\dp_dut/N196 ) );
  OR2X1 U107 ( .A(\dp_dut/item_c_num [6]), .B(\dp_dut/sub_127/carry [6]), .Y(
        \dp_dut/sub_127/carry [7]) );
  XNOR2X1 U108 ( .A(\dp_dut/sub_127/carry [6]), .B(\dp_dut/item_c_num [6]), 
        .Y(\dp_dut/N197 ) );
  XNOR2X1 U109 ( .A(\dp_dut/item_c_num [7]), .B(\dp_dut/sub_127/carry [7]), 
        .Y(\dp_dut/N198 ) );
  OR2X1 U110 ( .A(\dp_dut/item_c_num [0]), .B(n101), .Y(
        \dp_dut/sub_127/carry [1]) );
  XNOR2X1 U111 ( .A(n101), .B(\dp_dut/item_c_num [0]), .Y(\dp_dut/N191 ) );
  OR2X1 U112 ( .A(\dp_dut/item_d_num [1]), .B(\dp_dut/sub_128/carry [1]), .Y(
        \dp_dut/sub_128/carry [2]) );
  XNOR2X1 U113 ( .A(\dp_dut/sub_128/carry [1]), .B(\dp_dut/item_d_num [1]), 
        .Y(\dp_dut/N200 ) );
  OR2X1 U114 ( .A(\dp_dut/item_d_num [2]), .B(\dp_dut/sub_128/carry [2]), .Y(
        \dp_dut/sub_128/carry [3]) );
  XNOR2X1 U115 ( .A(\dp_dut/sub_128/carry [2]), .B(\dp_dut/item_d_num [2]), 
        .Y(\dp_dut/N201 ) );
  OR2X1 U116 ( .A(\dp_dut/item_d_num [3]), .B(\dp_dut/sub_128/carry [3]), .Y(
        \dp_dut/sub_128/carry [4]) );
  XNOR2X1 U117 ( .A(\dp_dut/sub_128/carry [3]), .B(\dp_dut/item_d_num [3]), 
        .Y(\dp_dut/N202 ) );
  OR2X1 U118 ( .A(\dp_dut/item_d_num [4]), .B(\dp_dut/sub_128/carry [4]), .Y(
        \dp_dut/sub_128/carry [5]) );
  XNOR2X1 U119 ( .A(\dp_dut/sub_128/carry [4]), .B(\dp_dut/item_d_num [4]), 
        .Y(\dp_dut/N203 ) );
  OR2X1 U120 ( .A(\dp_dut/item_d_num [5]), .B(\dp_dut/sub_128/carry [5]), .Y(
        \dp_dut/sub_128/carry [6]) );
  XNOR2X1 U121 ( .A(\dp_dut/sub_128/carry [5]), .B(\dp_dut/item_d_num [5]), 
        .Y(\dp_dut/N204 ) );
  OR2X1 U122 ( .A(\dp_dut/item_d_num [6]), .B(\dp_dut/sub_128/carry [6]), .Y(
        \dp_dut/sub_128/carry [7]) );
  XNOR2X1 U123 ( .A(\dp_dut/sub_128/carry [6]), .B(\dp_dut/item_d_num [6]), 
        .Y(\dp_dut/N205 ) );
  XNOR2X1 U124 ( .A(\dp_dut/item_d_num [7]), .B(\dp_dut/sub_128/carry [7]), 
        .Y(\dp_dut/N206 ) );
  OR2X1 U125 ( .A(\dp_dut/item_d_num [0]), .B(n92), .Y(
        \dp_dut/sub_128/carry [1]) );
  XNOR2X1 U126 ( .A(n92), .B(\dp_dut/item_d_num [0]), .Y(\dp_dut/N199 ) );
  OR2X1 U127 ( .A(\dp_dut/inserted_money [6]), .B(\dp_dut/r374/carry [6]), .Y(
        \dp_dut/r374/carry [7]) );
  XNOR2X1 U128 ( .A(\dp_dut/r374/carry [6]), .B(\dp_dut/inserted_money [6]), 
        .Y(\dp_dut/N44 ) );
  OR2X1 U129 ( .A(\dp_dut/inserted_money [1]), .B(n76), .Y(
        \dp_dut/r374/carry [2]) );
  XNOR2X1 U130 ( .A(n76), .B(\dp_dut/inserted_money [1]), .Y(\dp_dut/N39 ) );
  XOR2X1 U131 ( .A(\dp_dut/dp_cluster_0/add_3_root_add_103_5/carry [11]), .B(
        n33), .Y(\dp_dut/dp_cluster_0/N104 ) );
  XOR2X1 U132 ( .A(n18), .B(n34), .Y(\dp_dut/dp_cluster_0/N105 ) );
  XOR2X1 U133 ( .A(\dp_dut/dp_cluster_0/add_4_root_add_103_5/carry [11]), .B(
        \dp_dut/inserted_money [11]), .Y(\dp_dut/dp_cluster_0/N88 ) );
  XOR2X1 U134 ( .A(n15), .B(\dp_dut/inserted_money [12]), .Y(
        \dp_dut/dp_cluster_0/N89 ) );
  XOR2X1 U135 ( .A(n16), .B(\dp_dut/inserted_money [13]), .Y(
        \dp_dut/dp_cluster_0/N90 ) );
  XOR2X1 U136 ( .A(n3), .B(\dp_dut/inserted_money [14]), .Y(
        \dp_dut/dp_cluster_0/N91 ) );
  XOR2X1 U137 ( .A(\dp_dut/inserted_money [15]), .B(n21), .Y(
        \dp_dut/dp_cluster_0/N92 ) );
  XOR2X1 U138 ( .A(\dp_dut/dp_cluster_0/add_1_root_add_103_5/carry [14]), .B(
        \dp_dut/dp_cluster_0/N91 ), .Y(\dp_dut/dp_cluster_0/N139 ) );
  XOR2X1 U139 ( .A(\dp_dut/dp_cluster_0/N92 ), .B(n22), .Y(
        \dp_dut/dp_cluster_0/N140 ) );
  XOR2X1 U140 ( .A(\dp_dut/dp_cluster_0/add_2_root_add_103_5/carry [9]), .B(
        in_inserted_05[7]), .Y(\dp_dut/dp_cluster_0/N118 ) );
  XOR2X1 U141 ( .A(\dp_dut/inserted_money [1]), .B(in_inserted_025[0]), .Y(
        \dp_dut/N142 ) );
  XOR2X1 U142 ( .A(\dp_dut/dp_cluster_0/add_0_root_add_103_5/carry [11]), .B(
        \dp_dut/dp_cluster_0/N136 ), .Y(\dp_dut/N152 ) );
  XOR2X1 U143 ( .A(n17), .B(\dp_dut/dp_cluster_0/N137 ), .Y(\dp_dut/N153 ) );
  XOR2X1 U144 ( .A(n19), .B(\dp_dut/dp_cluster_0/N138 ), .Y(\dp_dut/N154 ) );
  XOR2X1 U145 ( .A(n20), .B(\dp_dut/dp_cluster_0/N139 ), .Y(\dp_dut/N155 ) );
  XOR2X1 U146 ( .A(\dp_dut/dp_cluster_0/N140 ), .B(n23), .Y(\dp_dut/N156 ) );
  XOR2X1 U147 ( .A(out_csel_d), .B(out_csel_c), .Y(\dp_dut/dp_cluster_1/N28 )
         );
  XOR2X1 U148 ( .A(out_csel_c), .B(out_csel_a), .Y(\dp_dut/N32 ) );
  XOR2X1 U149 ( .A(out_csel_b), .B(out_csel_a), .Y(\dp_dut/dp_cluster_1/N22 )
         );
  XOR2X1 U150 ( .A(n27), .B(\dp_dut/inserted_money [3]), .Y(
        \dp_dut/dp_cluster_0/N80 ) );
  XOR2X1 U151 ( .A(in_inserted_1[0]), .B(\dp_dut/dp_cluster_0/N80 ), .Y(
        \dp_dut/dp_cluster_0/N128 ) );
  XOR2X1 U152 ( .A(n10), .B(\dp_dut/dp_cluster_1/N22 ), .Y(\dp_dut/N33 ) );
  XOR2X1 U153 ( .A(in_inserted_025[1]), .B(in_inserted_05[0]), .Y(
        \dp_dut/dp_cluster_0/N111 ) );
  XOR2X1 U154 ( .A(in_inserted_1[2]), .B(n27), .Y(\dp_dut/dp_cluster_0/N98 )
         );
  NAND2X1 U155 ( .A(cmd[1]), .B(n81), .Y(n39) );
  NAND2X1 U156 ( .A(cmd[1]), .B(n81), .Y(n40) );
  BUFX2 U157 ( .A(n39), .Y(n41) );
  BUFX2 U158 ( .A(n39), .Y(n42) );
  BUFX2 U159 ( .A(n40), .Y(n43) );
  BUFX2 U160 ( .A(n40), .Y(n44) );
  BUFX2 U161 ( .A(\dp_dut/n113 ), .Y(n45) );
  BUFX2 U162 ( .A(\dp_dut/n113 ), .Y(n46) );
  AND2X2 U163 ( .A(n155), .B(n154), .Y(n156) );
  INVX2 U164 ( .A(n37), .Y(n58) );
  INVX2 U165 ( .A(\dp_dut/n204 ), .Y(n59) );
  INVX2 U166 ( .A(in_restart), .Y(n60) );
  INVX2 U167 ( .A(in_sel_a), .Y(n61) );
  INVX2 U168 ( .A(in_sel_b), .Y(n62) );
  INVX2 U169 ( .A(in_sel_c), .Y(n63) );
  INVX2 U170 ( .A(in_sel_d), .Y(n64) );
  INVX2 U171 ( .A(n143), .Y(n65) );
  INVX2 U172 ( .A(\dp_dut/n123 ), .Y(out_change[10]) );
  INVX2 U173 ( .A(\dp_dut/n114 ), .Y(out_change[9]) );
  INVX2 U174 ( .A(\dp_dut/n115 ), .Y(out_change[8]) );
  INVX2 U175 ( .A(\dp_dut/n116 ), .Y(out_change[7]) );
  INVX2 U176 ( .A(\dp_dut/n117 ), .Y(out_change[6]) );
  INVX2 U177 ( .A(\dp_dut/n118 ), .Y(out_change[5]) );
  INVX2 U178 ( .A(\dp_dut/n119 ), .Y(out_change[4]) );
  INVX2 U179 ( .A(\dp_dut/n120 ), .Y(out_change[3]) );
  INVX2 U180 ( .A(\dp_dut/n121 ), .Y(out_change[2]) );
  INVX2 U181 ( .A(\dp_dut/n122 ), .Y(out_change[1]) );
  INVX2 U182 ( .A(\dp_dut/total_price [1]), .Y(n76) );
  INVX2 U183 ( .A(\dp_dut/total_price [2]), .Y(n77) );
  INVX2 U184 ( .A(n139), .Y(n78) );
  INVX2 U185 ( .A(\dp_dut/total_price [4]), .Y(n79) );
  INVX2 U186 ( .A(\dp_dut/total_price [5]), .Y(n80) );
  INVX2 U187 ( .A(cmd[0]), .Y(n81) );
  INVX2 U188 ( .A(\dp_dut/n151 ), .Y(n82) );
  INVX2 U189 ( .A(\main_FSM_dut/next_out_state[1] ), .Y(n83) );
  INVX2 U190 ( .A(out_state[0]), .Y(n84) );
  INVX2 U191 ( .A(\dp_dut/item_d_num [7]), .Y(n85) );
  INVX2 U192 ( .A(\dp_dut/item_d_num [5]), .Y(n86) );
  INVX2 U193 ( .A(\dp_dut/item_d_num [4]), .Y(n87) );
  INVX2 U194 ( .A(\dp_dut/item_d_num [3]), .Y(n88) );
  INVX2 U195 ( .A(\dp_dut/item_d_num [2]), .Y(n89) );
  INVX2 U196 ( .A(\dp_dut/item_d_num [1]), .Y(n90) );
  INVX2 U197 ( .A(\dp_dut/item_d_num [0]), .Y(n91) );
  INVX2 U198 ( .A(out_csel_d), .Y(n92) );
  INVX2 U199 ( .A(\dp_dut/item_d_num [6]), .Y(n93) );
  INVX2 U200 ( .A(\dp_dut/item_c_num [7]), .Y(n94) );
  INVX2 U201 ( .A(\dp_dut/item_c_num [5]), .Y(n95) );
  INVX2 U202 ( .A(\dp_dut/item_c_num [4]), .Y(n96) );
  INVX2 U203 ( .A(\dp_dut/item_c_num [3]), .Y(n97) );
  INVX2 U204 ( .A(\dp_dut/item_c_num [2]), .Y(n98) );
  INVX2 U205 ( .A(\dp_dut/item_c_num [1]), .Y(n99) );
  INVX2 U206 ( .A(\dp_dut/item_c_num [0]), .Y(n100) );
  INVX2 U207 ( .A(out_csel_c), .Y(n101) );
  INVX2 U208 ( .A(\dp_dut/item_c_num [6]), .Y(n102) );
  INVX2 U209 ( .A(\dp_dut/item_b_num [7]), .Y(n103) );
  INVX2 U210 ( .A(\dp_dut/item_b_num [5]), .Y(n104) );
  INVX2 U211 ( .A(\dp_dut/item_b_num [4]), .Y(n105) );
  INVX2 U212 ( .A(\dp_dut/item_b_num [3]), .Y(n106) );
  INVX2 U213 ( .A(\dp_dut/item_b_num [2]), .Y(n107) );
  INVX2 U214 ( .A(\dp_dut/item_b_num [1]), .Y(n108) );
  INVX2 U215 ( .A(\dp_dut/item_b_num [0]), .Y(n109) );
  INVX2 U216 ( .A(out_csel_b), .Y(n110) );
  INVX2 U217 ( .A(\dp_dut/item_b_num [6]), .Y(n111) );
  INVX2 U218 ( .A(\dp_dut/item_a_num [7]), .Y(n112) );
  INVX2 U219 ( .A(\dp_dut/item_a_num [5]), .Y(n113) );
  INVX2 U220 ( .A(\dp_dut/item_a_num [4]), .Y(n114) );
  INVX2 U221 ( .A(\dp_dut/item_a_num [3]), .Y(n115) );
  INVX2 U222 ( .A(\dp_dut/item_a_num [2]), .Y(n116) );
  INVX2 U223 ( .A(\dp_dut/item_a_num [1]), .Y(n117) );
  INVX2 U224 ( .A(\dp_dut/item_a_num [0]), .Y(n118) );
  INVX2 U225 ( .A(\dp_dut/item_a_num [6]), .Y(n119) );
  INVX2 U226 ( .A(\dp_dut/N141 ), .Y(n120) );
  INVX2 U227 ( .A(\dp_dut/inserted_money [1]), .Y(n121) );
  INVX2 U228 ( .A(\dp_dut/inserted_money [2]), .Y(n122) );
  INVX2 U229 ( .A(\dp_dut/inserted_money [3]), .Y(n123) );
  INVX2 U230 ( .A(\dp_dut/inserted_money [4]), .Y(n124) );
  INVX2 U231 ( .A(\dp_dut/inserted_money [5]), .Y(n125) );
  INVX2 U232 ( .A(n146), .Y(n126) );
  INVX2 U233 ( .A(\dp_dut/inserted_money [6]), .Y(n127) );
  INVX2 U234 ( .A(\dp_dut/inserted_money [7]), .Y(n128) );
  INVX2 U235 ( .A(\dp_dut/inserted_money [8]), .Y(n129) );
  INVX2 U236 ( .A(\dp_dut/inserted_money [9]), .Y(n130) );
  INVX2 U237 ( .A(\dp_dut/inserted_money [10]), .Y(n131) );
  INVX2 U238 ( .A(\dp_dut/inserted_money [11]), .Y(n132) );
  INVX2 U239 ( .A(\dp_dut/inserted_money [12]), .Y(n133) );
  INVX2 U240 ( .A(\dp_dut/inserted_money [13]), .Y(n134) );
  INVX2 U241 ( .A(\dp_dut/inserted_money [14]), .Y(n135) );
  INVX2 U242 ( .A(\dp_dut/inserted_money [15]), .Y(n136) );
  INVX2 U243 ( .A(out_csel_a), .Y(n137) );
  OAI21X1 U244 ( .A(n121), .B(\dp_dut/total_price [1]), .C(n120), .Y(n143) );
  NAND2X1 U245 ( .A(\dp_dut/total_price [5]), .B(n125), .Y(n148) );
  NAND2X1 U246 ( .A(n127), .B(n141), .Y(n146) );
  NAND2X1 U247 ( .A(\dp_dut/inserted_money [3]), .B(n4), .Y(n140) );
  NAND3X1 U248 ( .A(n140), .B(n122), .C(\dp_dut/total_price [2]), .Y(n138) );
  OAI21X1 U249 ( .A(\dp_dut/inserted_money [3]), .B(n4), .C(n138), .Y(n139) );
  OAI21X1 U250 ( .A(\dp_dut/total_price [2]), .B(n122), .C(n140), .Y(n142) );
  NOR2X1 U251 ( .A(\dp_dut/inserted_money [8]), .B(\dp_dut/inserted_money [7]), 
        .Y(n141) );
  AOI21X1 U252 ( .A(n78), .B(n142), .C(n146), .Y(n152) );
  AOI21X1 U253 ( .A(\dp_dut/total_price [1]), .B(n121), .C(n65), .Y(n145) );
  OR2X1 U254 ( .A(n125), .B(\dp_dut/total_price [5]), .Y(n147) );
  OAI21X1 U255 ( .A(\dp_dut/total_price [4]), .B(n124), .C(n147), .Y(n144) );
  AOI21X1 U256 ( .A(n145), .B(n78), .C(n144), .Y(n151) );
  NAND2X1 U257 ( .A(n147), .B(n124), .Y(n149) );
  OAI21X1 U258 ( .A(n79), .B(n149), .C(n148), .Y(n150) );
  AOI22X1 U259 ( .A(n152), .B(n151), .C(n126), .D(n150), .Y(n153) );
  NOR2X1 U260 ( .A(\dp_dut/inserted_money [10]), .B(n153), .Y(n158) );
  NOR2X1 U261 ( .A(\dp_dut/inserted_money [12]), .B(
        \dp_dut/inserted_money [11]), .Y(n157) );
  NOR2X1 U262 ( .A(\dp_dut/inserted_money [14]), .B(
        \dp_dut/inserted_money [13]), .Y(n155) );
  NOR2X1 U263 ( .A(\dp_dut/inserted_money [9]), .B(\dp_dut/inserted_money [15]), .Y(n154) );
  NAND3X1 U264 ( .A(n158), .B(n157), .C(n156), .Y(\dp_dut/N158 ) );
endmodule

