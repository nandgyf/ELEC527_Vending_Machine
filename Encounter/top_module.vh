/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Sat Apr 29 20:26:36 2023
/////////////////////////////////////////////////////////////


module top_module ( in_clka, in_clkb, in_restart, in_inserted_5, in_inserted_1, 
        in_inserted_05, in_inserted_025, in_sel_a, in_sel_b, in_sel_c, 
        in_sel_d, in_next, in_finish, out_change, out_stock_a, out_stock_b, 
        out_stock_c, out_stock_d, out_csel_a, out_csel_b, out_csel_c, 
        out_csel_d, out_change_1, out_change_05, out_change_025, out_spit_a, 
        out_spit_b, out_spit_c, out_spit_d, out_state, out_sol_ok );
  output [15:0] out_change;
  output [7:0] out_change_1;
  output [1:0] out_state;
  input in_clka, in_clkb, in_restart, in_inserted_5, in_inserted_1,
         in_inserted_05, in_inserted_025, in_sel_a, in_sel_b, in_sel_c,
         in_sel_d, in_next, in_finish;
  output out_stock_a, out_stock_b, out_stock_c, out_stock_d, out_csel_a,
         out_csel_b, out_csel_c, out_csel_d, out_change_05, out_change_025,
         out_spit_a, out_spit_b, out_spit_c, out_spit_d, out_sol_ok;
  wire   \main_FSM_dut/n5 , \main_FSM_dut/n4 , \main_FSM_dut/n3 ,
         \main_FSM_dut/N38 , \main_FSM_dut/N28 , \main_FSM_dut/N27 ,
         \main_FSM_dut/next_out_state[1] , \dp_dut/n479 , \dp_dut/n478 ,
         \dp_dut/n477 , \dp_dut/n476 , \dp_dut/n475 , \dp_dut/n474 ,
         \dp_dut/n473 , \dp_dut/n472 , \dp_dut/n471 , \dp_dut/n470 ,
         \dp_dut/n469 , \dp_dut/n468 , \dp_dut/n467 , \dp_dut/n466 ,
         \dp_dut/n465 , \dp_dut/n464 , \dp_dut/n463 , \dp_dut/n462 ,
         \dp_dut/n461 , \dp_dut/n460 , \dp_dut/n459 , \dp_dut/n458 ,
         \dp_dut/n457 , \dp_dut/n456 , \dp_dut/n455 , \dp_dut/n454 ,
         \dp_dut/n453 , \dp_dut/n452 , \dp_dut/n451 , \dp_dut/n450 ,
         \dp_dut/n449 , \dp_dut/n448 , \dp_dut/n447 , \dp_dut/n446 ,
         \dp_dut/n445 , \dp_dut/n444 , \dp_dut/n443 , \dp_dut/n442 ,
         \dp_dut/n441 , \dp_dut/n440 , \dp_dut/n439 , \dp_dut/n438 ,
         \dp_dut/n437 , \dp_dut/n436 , \dp_dut/n435 , \dp_dut/n434 ,
         \dp_dut/n433 , \dp_dut/n432 , \dp_dut/n431 , \dp_dut/n430 ,
         \dp_dut/n429 , \dp_dut/n428 , \dp_dut/n427 , \dp_dut/n426 ,
         \dp_dut/n425 , \dp_dut/n424 , \dp_dut/n423 , \dp_dut/n422 ,
         \dp_dut/n421 , \dp_dut/n420 , \dp_dut/n419 , \dp_dut/n418 ,
         \dp_dut/n417 , \dp_dut/n416 , \dp_dut/n415 , \dp_dut/n414 ,
         \dp_dut/n413 , \dp_dut/n412 , \dp_dut/n411 , \dp_dut/n410 ,
         \dp_dut/n409 , \dp_dut/n408 , \dp_dut/n407 , \dp_dut/n406 ,
         \dp_dut/n405 , \dp_dut/n404 , \dp_dut/n403 , \dp_dut/n402 ,
         \dp_dut/n401 , \dp_dut/n400 , \dp_dut/n399 , \dp_dut/n398 ,
         \dp_dut/n397 , \dp_dut/n396 , \dp_dut/n395 , \dp_dut/n394 ,
         \dp_dut/n393 , \dp_dut/n392 , \dp_dut/n391 , \dp_dut/n390 ,
         \dp_dut/n389 , \dp_dut/n388 , \dp_dut/n387 , \dp_dut/n386 ,
         \dp_dut/n385 , \dp_dut/n384 , \dp_dut/n383 , \dp_dut/n382 ,
         \dp_dut/n381 , \dp_dut/n380 , \dp_dut/n379 , \dp_dut/n378 ,
         \dp_dut/n377 , \dp_dut/n376 , \dp_dut/n375 , \dp_dut/n374 ,
         \dp_dut/n373 , \dp_dut/n372 , \dp_dut/n371 , \dp_dut/n370 ,
         \dp_dut/n369 , \dp_dut/n368 , \dp_dut/n367 , \dp_dut/n366 ,
         \dp_dut/n365 , \dp_dut/n364 , \dp_dut/n363 , \dp_dut/n362 ,
         \dp_dut/n361 , \dp_dut/n360 , \dp_dut/n359 , \dp_dut/n358 ,
         \dp_dut/n357 , \dp_dut/n356 , \dp_dut/n355 , \dp_dut/n354 ,
         \dp_dut/n353 , \dp_dut/n352 , \dp_dut/n351 , \dp_dut/n350 ,
         \dp_dut/n349 , \dp_dut/n348 , \dp_dut/n346 , \dp_dut/n345 ,
         \dp_dut/n344 , \dp_dut/n343 , \dp_dut/n342 , \dp_dut/n341 ,
         \dp_dut/n340 , \dp_dut/n339 , \dp_dut/n338 , \dp_dut/n337 ,
         \dp_dut/n336 , \dp_dut/n335 , \dp_dut/n334 , \dp_dut/n333 ,
         \dp_dut/n332 , \dp_dut/n331 , \dp_dut/n330 , \dp_dut/n329 ,
         \dp_dut/n328 , \dp_dut/n327 , \dp_dut/n326 , \dp_dut/n325 ,
         \dp_dut/n324 , \dp_dut/n323 , \dp_dut/n322 , \dp_dut/n321 ,
         \dp_dut/n320 , \dp_dut/n319 , \dp_dut/n318 , \dp_dut/n317 ,
         \dp_dut/n316 , \dp_dut/n315 , \dp_dut/n314 , \dp_dut/n313 ,
         \dp_dut/n312 , \dp_dut/n311 , \dp_dut/n310 , \dp_dut/n309 ,
         \dp_dut/n308 , \dp_dut/n307 , \dp_dut/n306 , \dp_dut/n305 ,
         \dp_dut/n304 , \dp_dut/n303 , \dp_dut/n302 , \dp_dut/n301 ,
         \dp_dut/n300 , \dp_dut/n299 , \dp_dut/n298 , \dp_dut/n297 ,
         \dp_dut/n296 , \dp_dut/n294 , \dp_dut/n293 , \dp_dut/n292 ,
         \dp_dut/n291 , \dp_dut/n290 , \dp_dut/n289 , \dp_dut/n288 ,
         \dp_dut/n287 , \dp_dut/n286 , \dp_dut/n285 , \dp_dut/n284 ,
         \dp_dut/n283 , \dp_dut/n282 , \dp_dut/n281 , \dp_dut/n280 ,
         \dp_dut/n279 , \dp_dut/n278 , \dp_dut/n277 , \dp_dut/n276 ,
         \dp_dut/n275 , \dp_dut/n274 , \dp_dut/n273 , \dp_dut/n272 ,
         \dp_dut/n271 , \dp_dut/n270 , \dp_dut/n269 , \dp_dut/n268 ,
         \dp_dut/n267 , \dp_dut/n266 , \dp_dut/n265 , \dp_dut/n264 ,
         \dp_dut/n263 , \dp_dut/n262 , \dp_dut/n261 , \dp_dut/n260 ,
         \dp_dut/n259 , \dp_dut/n258 , \dp_dut/n257 , \dp_dut/n256 ,
         \dp_dut/n255 , \dp_dut/n254 , \dp_dut/n253 , \dp_dut/n252 ,
         \dp_dut/n251 , \dp_dut/n250 , \dp_dut/n249 , \dp_dut/n248 ,
         \dp_dut/n247 , \dp_dut/n246 , \dp_dut/n245 , \dp_dut/n244 ,
         \dp_dut/n243 , \dp_dut/n242 , \dp_dut/n241 , \dp_dut/n240 ,
         \dp_dut/n239 , \dp_dut/n238 , \dp_dut/n237 , \dp_dut/n236 ,
         \dp_dut/n234 , \dp_dut/n233 , \dp_dut/n232 , \dp_dut/n231 ,
         \dp_dut/n230 , \dp_dut/n229 , \dp_dut/n228 , \dp_dut/n227 ,
         \dp_dut/n226 , \dp_dut/n225 , \dp_dut/n224 , \dp_dut/n223 ,
         \dp_dut/n222 , \dp_dut/n221 , \dp_dut/n220 , \dp_dut/n219 ,
         \dp_dut/n218 , \dp_dut/n217 , \dp_dut/n216 , \dp_dut/n215 ,
         \dp_dut/n214 , \dp_dut/n213 , \dp_dut/n212 , \dp_dut/n211 ,
         \dp_dut/n210 , \dp_dut/n209 , \dp_dut/n208 , \dp_dut/n205 ,
         \dp_dut/n204 , \dp_dut/n203 , \dp_dut/n202 ,
         \dp_dut/dp_cluster_1/N28 , \dp_dut/dp_cluster_1/N29 ,
         \dp_dut/dp_cluster_1/N30 , \dp_dut/dp_cluster_1/N34 ,
         \dp_dut/dp_cluster_0/N100 , \dp_dut/dp_cluster_0/N101 ,
         \dp_dut/dp_cluster_0/N102 , \dp_dut/dp_cluster_0/N103 ,
         \dp_dut/dp_cluster_0/N104 , \dp_dut/dp_cluster_0/N105 ,
         \dp_dut/dp_cluster_0/N106 , \dp_dut/dp_cluster_0/N142 ,
         \dp_dut/dp_cluster_0/N143 , \dp_dut/dp_cluster_0/N144 ,
         \dp_dut/dp_cluster_0/N145 , \dp_dut/dp_cluster_0/N146 ,
         \dp_dut/dp_cluster_0/N147 , \dp_dut/dp_cluster_0/N148 ,
         \dp_dut/dp_cluster_0/N149 , \dp_dut/dp_cluster_0/N150 ,
         \dp_dut/dp_cluster_0/N151 , \dp_dut/dp_cluster_0/N152 ,
         \dp_dut/dp_cluster_0/N153 , \dp_dut/dp_cluster_0/N154 ,
         \dp_dut/dp_cluster_0/N94 , \dp_dut/dp_cluster_0/N95 ,
         \dp_dut/dp_cluster_0/N96 , \dp_dut/dp_cluster_0/N97 ,
         \dp_dut/dp_cluster_0/N98 , \dp_dut/dp_cluster_0/N99 , \dp_dut/N356 ,
         \dp_dut/N355 , \dp_dut/N354 , \dp_dut/N353 , \dp_dut/N352 ,
         \dp_dut/N351 , \dp_dut/N350 , \dp_dut/N349 , \dp_dut/N348 ,
         \dp_dut/N347 , \dp_dut/N346 , \dp_dut/N345 , \dp_dut/N344 ,
         \dp_dut/N343 , \dp_dut/N342 , \dp_dut/N341 , \dp_dut/N340 ,
         \dp_dut/N339 , \dp_dut/N338 , \dp_dut/N337 , \dp_dut/N336 ,
         \dp_dut/N335 , \dp_dut/N334 , \dp_dut/N333 , \dp_dut/N329 ,
         \dp_dut/N328 , \dp_dut/N327 , \dp_dut/N326 , \dp_dut/N325 ,
         \dp_dut/N324 , \dp_dut/N323 , \dp_dut/N322 , \dp_dut/N318 ,
         \dp_dut/N317 , \dp_dut/N316 , \dp_dut/N315 , \dp_dut/N314 ,
         \dp_dut/N313 , \dp_dut/N312 , \dp_dut/N311 , \dp_dut/N300 ,
         \dp_dut/N299 , \dp_dut/N298 , \dp_dut/N297 , \dp_dut/N296 ,
         \dp_dut/N295 , \dp_dut/N294 , \dp_dut/N293 , \dp_dut/N245 ,
         \dp_dut/N244 , \dp_dut/N243 , \dp_dut/N242 , \dp_dut/N241 ,
         \dp_dut/N240 , \dp_dut/N239 , \dp_dut/N238 , \dp_dut/N237 ,
         \dp_dut/N236 , \dp_dut/N235 , \dp_dut/N234 , \dp_dut/N233 ,
         \dp_dut/N232 , \dp_dut/N231 , \dp_dut/N230 , \dp_dut/N229 ,
         \dp_dut/N228 , \dp_dut/N227 , \dp_dut/N226 , \dp_dut/N225 ,
         \dp_dut/N224 , \dp_dut/N223 , \dp_dut/N222 , \dp_dut/N221 ,
         \dp_dut/N220 , \dp_dut/N219 , \dp_dut/N218 , \dp_dut/N217 ,
         \dp_dut/N216 , \dp_dut/N215 , \dp_dut/N214 , \dp_dut/N213 ,
         \dp_dut/N212 , \dp_dut/N211 , \dp_dut/N210 , \dp_dut/N209 ,
         \dp_dut/N208 , \dp_dut/N207 , \dp_dut/N206 , \dp_dut/N205 ,
         \dp_dut/N204 , \dp_dut/N203 , \dp_dut/N202 , \dp_dut/N201 ,
         \dp_dut/N200 , \dp_dut/N199 , \dp_dut/N196 , \dp_dut/N194 ,
         \dp_dut/N193 , \dp_dut/N192 , \dp_dut/N191 , \dp_dut/N190 ,
         \dp_dut/N189 , \dp_dut/N188 , \dp_dut/N187 , \dp_dut/N186 ,
         \dp_dut/N185 , \dp_dut/N184 , \dp_dut/N183 , \dp_dut/N182 ,
         \dp_dut/N181 , \dp_dut/N180 , \dp_dut/N179 , \dp_dut/N178 ,
         \dp_dut/N177 , \dp_dut/N176 , \dp_dut/N175 , \dp_dut/N174 ,
         \dp_dut/N173 , \dp_dut/N172 , \dp_dut/N171 , \dp_dut/N170 ,
         \dp_dut/N169 , \dp_dut/N168 , \dp_dut/N167 , \dp_dut/N166 ,
         \dp_dut/N165 , \dp_dut/N164 , \dp_dut/N163 , \dp_dut/N162 ,
         \dp_dut/N161 , \dp_dut/N160 , \dp_dut/N159 , \dp_dut/N158 ,
         \dp_dut/N157 , \dp_dut/N156 , \dp_dut/N155 , \dp_dut/N63 ,
         \dp_dut/N62 , \dp_dut/N61 , \dp_dut/out_change_1_sol1[1] ,
         \dp_dut/N59 , \dp_dut/N58 , \dp_dut/N57 , \dp_dut/N56 , \dp_dut/N55 ,
         \dp_dut/N54 , \dp_dut/N53 , \dp_dut/N52 , \dp_dut/N51 , \dp_dut/N50 ,
         \dp_dut/N49 , \dp_dut/N48 , \dp_dut/N47 , \dp_dut/N46 , \dp_dut/N45 ,
         \dp_dut/N42 , \dp_dut/N41 , \dp_dut/N40 , \dp_dut/N39 , \dp_dut/N38 ,
         \dp_dut/dp_cluster_0/add_1_root_add_121_5/carry[6] ,
         \dp_dut/dp_cluster_0/add_0_root_add_121_5/carry[3] ,
         \dp_dut/dp_cluster_1/add_0_root_add_75_3/carry[4] , n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264;
  wire   [1:0] cmd;
  wire   [7:0] \dp_dut/dollar_025_num ;
  wire   [7:0] \dp_dut/dollar_05_num ;
  wire   [7:0] \dp_dut/dollar_1_num ;
  wire   [15:0] \dp_dut/inserted_money ;
  wire   [6:0] \dp_dut/total_price ;
  wire   [7:0] \dp_dut/item_d_num ;
  wire   [7:0] \dp_dut/item_c_num ;
  wire   [7:0] \dp_dut/item_b_num ;
  wire   [7:0] \dp_dut/item_a_num ;
  wire   [16:0] \dp_dut/sub_76/carry ;
  wire   [8:0] \dp_dut/r474/carry ;
  wire   [8:0] \dp_dut/r475/carry ;
  wire   [8:0] \dp_dut/r476/carry ;
  wire   [8:0] \dp_dut/r477/carry ;
  wire   [16:0] \dp_dut/sub_137/carry ;
  wire   [8:0] \dp_dut/sub_171/carry ;
  wire   [8:0] \dp_dut/sub_172/carry ;
  wire   [8:0] \dp_dut/sub_173/carry ;
  wire   [8:0] \dp_dut/sub_185/carry ;
  wire   [8:0] \dp_dut/sub_186/carry ;
  wire   [8:0] \dp_dut/sub_187/carry ;

  NOR2X1 \main_FSM_dut/U9  ( .A(out_state[1]), .B(n134), .Y(\main_FSM_dut/n5 )
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
  DFFNEGX1 \main_FSM_dut/out_cmd_reg[1]  ( .D(n133), .CLK(in_clkb), .Q(cmd[1])
         );
  DFFNEGX1 \main_FSM_dut/next_out_state_reg[0]  ( .D(\main_FSM_dut/N27 ), 
        .CLK(n90), .Q(\main_FSM_dut/N38 ) );
  DFFNEGX1 \main_FSM_dut/out_state_reg[1]  ( .D(
        \main_FSM_dut/next_out_state[1] ), .CLK(in_clkb), .Q(out_state[1]) );
  DFFNEGX1 \main_FSM_dut/next_out_state_reg[1]  ( .D(\main_FSM_dut/N28 ), 
        .CLK(n97), .Q(\main_FSM_dut/next_out_state[1] ) );
  DFFNEGX1 \main_FSM_dut/out_state_reg[0]  ( .D(\main_FSM_dut/N38 ), .CLK(
        in_clkb), .Q(out_state[0]) );
  NAND3X1 \dp_dut/U434  ( .A(\dp_dut/N62 ), .B(\dp_dut/N61 ), .C(\dp_dut/N63 ), 
        .Y(\dp_dut/n389 ) );
  NAND2X1 \dp_dut/U433  ( .A(\dp_dut/N196 ), .B(out_sol_ok), .Y(\dp_dut/n342 )
         );
  NOR2X1 \dp_dut/U432  ( .A(cmd[1]), .B(cmd[0]), .Y(\dp_dut/n388 ) );
  NAND2X1 \dp_dut/U431  ( .A(\dp_dut/n388 ), .B(n100), .Y(\dp_dut/n343 ) );
  NAND2X1 \dp_dut/U430  ( .A(\dp_dut/n293 ), .B(n100), .Y(\dp_dut/n372 ) );
  NAND2X1 \dp_dut/U429  ( .A(cmd[1]), .B(n131), .Y(\dp_dut/n202 ) );
  NOR2X1 \dp_dut/U428  ( .A(in_restart), .B(\dp_dut/n293 ), .Y(\dp_dut/n387 )
         );
  NAND3X1 \dp_dut/U427  ( .A(n132), .B(n78), .C(\dp_dut/n387 ), .Y(
        \dp_dut/n344 ) );
  NAND2X1 \dp_dut/U426  ( .A(\dp_dut/n372 ), .B(\dp_dut/n344 ), .Y(
        \dp_dut/n204 ) );
  NOR2X1 \dp_dut/U425  ( .A(n80), .B(in_restart), .Y(\dp_dut/n234 ) );
  OAI21X1 \dp_dut/U423  ( .A(\dp_dut/n342 ), .B(\dp_dut/n343 ), .C(n74), .Y(
        \dp_dut/n345 ) );
  AOI21X1 \dp_dut/U422  ( .A(\dp_dut/n293 ), .B(n104), .C(n72), .Y(
        \dp_dut/n380 ) );
  NOR2X1 \dp_dut/U421  ( .A(\dp_dut/item_b_num [7]), .B(\dp_dut/item_b_num [6]), .Y(\dp_dut/n386 ) );
  NAND3X1 \dp_dut/U420  ( .A(n206), .B(n205), .C(\dp_dut/n386 ), .Y(
        \dp_dut/n383 ) );
  NOR2X1 \dp_dut/U419  ( .A(\dp_dut/item_b_num [3]), .B(\dp_dut/item_b_num [2]), .Y(\dp_dut/n385 ) );
  NAND3X1 \dp_dut/U418  ( .A(n210), .B(n209), .C(\dp_dut/n385 ), .Y(
        \dp_dut/n384 ) );
  OR2X1 \dp_dut/U417  ( .A(\dp_dut/n383 ), .B(\dp_dut/n384 ), .Y(out_stock_b)
         );
  NAND2X1 \dp_dut/U416  ( .A(\dp_dut/n293 ), .B(n73), .Y(\dp_dut/n288 ) );
  NOR2X1 \dp_dut/U415  ( .A(\dp_dut/n288 ), .B(n104), .Y(\dp_dut/n382 ) );
  NAND3X1 \dp_dut/U414  ( .A(out_stock_b), .B(n217), .C(\dp_dut/n382 ), .Y(
        \dp_dut/n381 ) );
  OAI21X1 \dp_dut/U413  ( .A(\dp_dut/n380 ), .B(n217), .C(\dp_dut/n381 ), .Y(
        \dp_dut/n479 ) );
  AOI22X1 \dp_dut/U411  ( .A(\dp_dut/N213 ), .B(n71), .C(\dp_dut/N170 ), .D(
        n98), .Y(\dp_dut/n379 ) );
  OAI21X1 \dp_dut/U410  ( .A(n73), .B(n216), .C(\dp_dut/n379 ), .Y(
        \dp_dut/n478 ) );
  AOI22X1 \dp_dut/U408  ( .A(\dp_dut/N349 ), .B(n85), .C(
        \dp_dut/dollar_025_num [0]), .D(n74), .Y(\dp_dut/n369 ) );
  NOR2X1 \dp_dut/U406  ( .A(\dp_dut/N323 ), .B(\dp_dut/N322 ), .Y(
        \dp_dut/n374 ) );
  NOR2X1 \dp_dut/U405  ( .A(\dp_dut/N325 ), .B(\dp_dut/N324 ), .Y(
        \dp_dut/n375 ) );
  NOR2X1 \dp_dut/U404  ( .A(\dp_dut/N327 ), .B(\dp_dut/N326 ), .Y(
        \dp_dut/n377 ) );
  NOR2X1 \dp_dut/U403  ( .A(\dp_dut/N329 ), .B(\dp_dut/N328 ), .Y(
        \dp_dut/n378 ) );
  NAND3X1 \dp_dut/U402  ( .A(\dp_dut/n374 ), .B(\dp_dut/n375 ), .C(
        \dp_dut/n376 ), .Y(\dp_dut/n373 ) );
  NAND2X1 \dp_dut/U401  ( .A(\dp_dut/N59 ), .B(n82), .Y(\dp_dut/n203 ) );
  NAND2X1 \dp_dut/U400  ( .A(out_change[1]), .B(\dp_dut/n203 ), .Y(
        \dp_dut/n210 ) );
  OAI22X1 \dp_dut/U399  ( .A(n107), .B(\dp_dut/n210 ), .C(n202), .D(
        \dp_dut/n373 ), .Y(\dp_dut/n371 ) );
  AOI22X1 \dp_dut/U398  ( .A(n70), .B(\dp_dut/n371 ), .C(\dp_dut/N187 ), .D(
        n83), .Y(\dp_dut/n370 ) );
  NAND2X1 \dp_dut/U397  ( .A(\dp_dut/n369 ), .B(\dp_dut/n370 ), .Y(
        \dp_dut/n477 ) );
  AOI22X1 \dp_dut/U396  ( .A(\dp_dut/N188 ), .B(n83), .C(\dp_dut/N350 ), .D(
        n84), .Y(\dp_dut/n368 ) );
  OAI21X1 \dp_dut/U395  ( .A(n2), .B(n149), .C(\dp_dut/n368 ), .Y(
        \dp_dut/n476 ) );
  AOI22X1 \dp_dut/U394  ( .A(\dp_dut/N189 ), .B(n83), .C(\dp_dut/N351 ), .D(
        n84), .Y(\dp_dut/n367 ) );
  OAI21X1 \dp_dut/U393  ( .A(n2), .B(n148), .C(\dp_dut/n367 ), .Y(
        \dp_dut/n475 ) );
  AOI22X1 \dp_dut/U392  ( .A(\dp_dut/N190 ), .B(n83), .C(\dp_dut/N352 ), .D(
        n84), .Y(\dp_dut/n366 ) );
  OAI21X1 \dp_dut/U391  ( .A(n2), .B(n147), .C(\dp_dut/n366 ), .Y(
        \dp_dut/n474 ) );
  AOI22X1 \dp_dut/U390  ( .A(\dp_dut/N191 ), .B(n83), .C(\dp_dut/N353 ), .D(
        n84), .Y(\dp_dut/n365 ) );
  OAI21X1 \dp_dut/U389  ( .A(n2), .B(n146), .C(\dp_dut/n365 ), .Y(
        \dp_dut/n473 ) );
  AOI22X1 \dp_dut/U388  ( .A(\dp_dut/N192 ), .B(n83), .C(\dp_dut/N354 ), .D(
        n84), .Y(\dp_dut/n364 ) );
  OAI21X1 \dp_dut/U387  ( .A(n2), .B(n145), .C(\dp_dut/n364 ), .Y(
        \dp_dut/n472 ) );
  AOI22X1 \dp_dut/U386  ( .A(\dp_dut/N193 ), .B(n83), .C(\dp_dut/N355 ), .D(
        n84), .Y(\dp_dut/n363 ) );
  OAI21X1 \dp_dut/U385  ( .A(n2), .B(n144), .C(\dp_dut/n363 ), .Y(
        \dp_dut/n471 ) );
  AOI22X1 \dp_dut/U384  ( .A(\dp_dut/N194 ), .B(n83), .C(\dp_dut/N356 ), .D(
        n84), .Y(\dp_dut/n362 ) );
  OAI21X1 \dp_dut/U383  ( .A(n2), .B(n150), .C(\dp_dut/n362 ), .Y(
        \dp_dut/n470 ) );
  AOI22X1 \dp_dut/U382  ( .A(\dp_dut/N212 ), .B(n71), .C(\dp_dut/N169 ), .D(
        n98), .Y(\dp_dut/n361 ) );
  OAI21X1 \dp_dut/U381  ( .A(\dp_dut/n345 ), .B(n215), .C(\dp_dut/n361 ), .Y(
        \dp_dut/n469 ) );
  AOI22X1 \dp_dut/U380  ( .A(\dp_dut/N211 ), .B(n71), .C(\dp_dut/N168 ), .D(
        n98), .Y(\dp_dut/n360 ) );
  OAI21X1 \dp_dut/U379  ( .A(n73), .B(n189), .C(\dp_dut/n360 ), .Y(
        \dp_dut/n468 ) );
  AOI22X1 \dp_dut/U378  ( .A(\dp_dut/N210 ), .B(n71), .C(\dp_dut/N167 ), .D(
        n98), .Y(\dp_dut/n359 ) );
  OAI21X1 \dp_dut/U377  ( .A(\dp_dut/n345 ), .B(n190), .C(\dp_dut/n359 ), .Y(
        \dp_dut/n467 ) );
  AOI22X1 \dp_dut/U376  ( .A(\dp_dut/N209 ), .B(n71), .C(\dp_dut/N166 ), .D(
        n98), .Y(\dp_dut/n358 ) );
  OAI21X1 \dp_dut/U375  ( .A(n73), .B(n191), .C(\dp_dut/n358 ), .Y(
        \dp_dut/n466 ) );
  AOI22X1 \dp_dut/U374  ( .A(\dp_dut/N208 ), .B(n71), .C(\dp_dut/N165 ), .D(
        n98), .Y(\dp_dut/n357 ) );
  OAI21X1 \dp_dut/U373  ( .A(n192), .B(n73), .C(\dp_dut/n357 ), .Y(
        \dp_dut/n465 ) );
  AOI22X1 \dp_dut/U372  ( .A(\dp_dut/N207 ), .B(n71), .C(\dp_dut/N164 ), .D(
        n98), .Y(\dp_dut/n356 ) );
  OAI21X1 \dp_dut/U371  ( .A(n193), .B(\dp_dut/n345 ), .C(\dp_dut/n356 ), .Y(
        \dp_dut/n464 ) );
  AOI22X1 \dp_dut/U370  ( .A(\dp_dut/N206 ), .B(n71), .C(\dp_dut/N163 ), .D(
        n98), .Y(\dp_dut/n355 ) );
  OAI21X1 \dp_dut/U369  ( .A(n195), .B(n73), .C(\dp_dut/n355 ), .Y(
        \dp_dut/n463 ) );
  AOI22X1 \dp_dut/U368  ( .A(\dp_dut/N205 ), .B(n71), .C(\dp_dut/N162 ), .D(
        n98), .Y(\dp_dut/n354 ) );
  OAI21X1 \dp_dut/U367  ( .A(n196), .B(\dp_dut/n345 ), .C(\dp_dut/n354 ), .Y(
        \dp_dut/n462 ) );
  AOI22X1 \dp_dut/U366  ( .A(\dp_dut/N204 ), .B(n71), .C(\dp_dut/N161 ), .D(
        n98), .Y(\dp_dut/n353 ) );
  OAI21X1 \dp_dut/U365  ( .A(n197), .B(n73), .C(\dp_dut/n353 ), .Y(
        \dp_dut/n461 ) );
  AOI22X1 \dp_dut/U364  ( .A(\dp_dut/N203 ), .B(n71), .C(\dp_dut/N160 ), .D(
        n98), .Y(\dp_dut/n352 ) );
  OAI21X1 \dp_dut/U363  ( .A(n198), .B(\dp_dut/n345 ), .C(\dp_dut/n352 ), .Y(
        \dp_dut/n460 ) );
  AOI22X1 \dp_dut/U362  ( .A(\dp_dut/N202 ), .B(n71), .C(\dp_dut/N159 ), .D(
        n98), .Y(\dp_dut/n351 ) );
  OAI21X1 \dp_dut/U361  ( .A(n199), .B(n73), .C(\dp_dut/n351 ), .Y(
        \dp_dut/n459 ) );
  AOI22X1 \dp_dut/U360  ( .A(\dp_dut/N201 ), .B(n71), .C(\dp_dut/N158 ), .D(
        n98), .Y(\dp_dut/n350 ) );
  OAI21X1 \dp_dut/U359  ( .A(n200), .B(\dp_dut/n345 ), .C(\dp_dut/n350 ), .Y(
        \dp_dut/n458 ) );
  AOI22X1 \dp_dut/U358  ( .A(\dp_dut/N200 ), .B(n71), .C(\dp_dut/N157 ), .D(
        n98), .Y(\dp_dut/n349 ) );
  OAI21X1 \dp_dut/U357  ( .A(n201), .B(n73), .C(\dp_dut/n349 ), .Y(
        \dp_dut/n457 ) );
  AOI22X1 \dp_dut/U356  ( .A(\dp_dut/N199 ), .B(n71), .C(\dp_dut/N156 ), .D(
        n98), .Y(\dp_dut/n348 ) );
  OAI21X1 \dp_dut/U355  ( .A(n202), .B(\dp_dut/n345 ), .C(\dp_dut/n348 ), .Y(
        \dp_dut/n456 ) );
  AOI22X1 \dp_dut/U354  ( .A(\dp_dut/N155 ), .B(n71), .C(\dp_dut/N155 ), .D(
        n98), .Y(\dp_dut/n346 ) );
  OAI21X1 \dp_dut/U353  ( .A(\dp_dut/n345 ), .B(n203), .C(\dp_dut/n346 ), .Y(
        \dp_dut/n455 ) );
  NAND2X1 \dp_dut/U352  ( .A(\dp_dut/n343 ), .B(\dp_dut/n344 ), .Y(
        \dp_dut/n341 ) );
  OAI21X1 \dp_dut/U351  ( .A(n99), .B(\dp_dut/n342 ), .C(n102), .Y(
        \dp_dut/n284 ) );
  NAND2X1 \dp_dut/U350  ( .A(\dp_dut/N221 ), .B(n1), .Y(\dp_dut/n340 ) );
  OAI21X1 \dp_dut/U349  ( .A(\dp_dut/n284 ), .B(n180), .C(\dp_dut/n340 ), .Y(
        \dp_dut/n454 ) );
  AOI21X1 \dp_dut/U348  ( .A(\dp_dut/N214 ), .B(n1), .C(\dp_dut/n234 ), .Y(
        \dp_dut/n339 ) );
  OAI21X1 \dp_dut/U347  ( .A(\dp_dut/n284 ), .B(n187), .C(\dp_dut/n339 ), .Y(
        \dp_dut/n453 ) );
  NAND2X1 \dp_dut/U346  ( .A(\dp_dut/N215 ), .B(n1), .Y(\dp_dut/n338 ) );
  OAI21X1 \dp_dut/U345  ( .A(\dp_dut/n284 ), .B(n186), .C(\dp_dut/n338 ), .Y(
        \dp_dut/n452 ) );
  NAND2X1 \dp_dut/U344  ( .A(\dp_dut/N216 ), .B(n1), .Y(\dp_dut/n337 ) );
  OAI21X1 \dp_dut/U343  ( .A(\dp_dut/n284 ), .B(n185), .C(\dp_dut/n337 ), .Y(
        \dp_dut/n451 ) );
  NAND2X1 \dp_dut/U342  ( .A(\dp_dut/N217 ), .B(n1), .Y(\dp_dut/n336 ) );
  OAI21X1 \dp_dut/U341  ( .A(\dp_dut/n284 ), .B(n184), .C(\dp_dut/n336 ), .Y(
        \dp_dut/n450 ) );
  NAND2X1 \dp_dut/U340  ( .A(\dp_dut/N218 ), .B(n1), .Y(\dp_dut/n335 ) );
  OAI21X1 \dp_dut/U339  ( .A(\dp_dut/n284 ), .B(n183), .C(\dp_dut/n335 ), .Y(
        \dp_dut/n449 ) );
  NAND2X1 \dp_dut/U338  ( .A(\dp_dut/N219 ), .B(n1), .Y(\dp_dut/n334 ) );
  OAI21X1 \dp_dut/U337  ( .A(\dp_dut/n284 ), .B(n182), .C(\dp_dut/n334 ), .Y(
        \dp_dut/n448 ) );
  NAND2X1 \dp_dut/U336  ( .A(\dp_dut/N220 ), .B(n1), .Y(\dp_dut/n333 ) );
  OAI21X1 \dp_dut/U335  ( .A(\dp_dut/n284 ), .B(n181), .C(\dp_dut/n333 ), .Y(
        \dp_dut/n447 ) );
  AOI21X1 \dp_dut/U334  ( .A(\dp_dut/n293 ), .B(n103), .C(n72), .Y(
        \dp_dut/n326 ) );
  NOR2X1 \dp_dut/U333  ( .A(\dp_dut/item_a_num [7]), .B(\dp_dut/item_a_num [6]), .Y(\dp_dut/n332 ) );
  NAND3X1 \dp_dut/U332  ( .A(n183), .B(n182), .C(\dp_dut/n332 ), .Y(
        \dp_dut/n329 ) );
  NOR2X1 \dp_dut/U331  ( .A(\dp_dut/item_a_num [3]), .B(\dp_dut/item_a_num [2]), .Y(\dp_dut/n331 ) );
  NAND3X1 \dp_dut/U330  ( .A(n187), .B(n186), .C(\dp_dut/n331 ), .Y(
        \dp_dut/n330 ) );
  OR2X1 \dp_dut/U329  ( .A(\dp_dut/n329 ), .B(\dp_dut/n330 ), .Y(out_stock_a)
         );
  NOR2X1 \dp_dut/U328  ( .A(\dp_dut/n288 ), .B(n103), .Y(\dp_dut/n328 ) );
  NAND3X1 \dp_dut/U327  ( .A(out_stock_a), .B(n188), .C(\dp_dut/n328 ), .Y(
        \dp_dut/n327 ) );
  OAI21X1 \dp_dut/U326  ( .A(\dp_dut/n326 ), .B(n188), .C(\dp_dut/n327 ), .Y(
        \dp_dut/n446 ) );
  NAND2X1 \dp_dut/U325  ( .A(\dp_dut/N229 ), .B(n1), .Y(\dp_dut/n325 ) );
  OAI21X1 \dp_dut/U324  ( .A(\dp_dut/n284 ), .B(n211), .C(\dp_dut/n325 ), .Y(
        \dp_dut/n445 ) );
  NAND2X1 \dp_dut/U323  ( .A(\dp_dut/N222 ), .B(n1), .Y(\dp_dut/n324 ) );
  OAI21X1 \dp_dut/U322  ( .A(\dp_dut/n284 ), .B(n210), .C(\dp_dut/n324 ), .Y(
        \dp_dut/n444 ) );
  NAND2X1 \dp_dut/U321  ( .A(\dp_dut/N223 ), .B(n1), .Y(\dp_dut/n323 ) );
  OAI21X1 \dp_dut/U320  ( .A(n86), .B(n209), .C(\dp_dut/n323 ), .Y(
        \dp_dut/n443 ) );
  AOI21X1 \dp_dut/U319  ( .A(\dp_dut/N224 ), .B(n1), .C(\dp_dut/n234 ), .Y(
        \dp_dut/n322 ) );
  OAI21X1 \dp_dut/U318  ( .A(n86), .B(n208), .C(\dp_dut/n322 ), .Y(
        \dp_dut/n442 ) );
  NAND2X1 \dp_dut/U317  ( .A(\dp_dut/N225 ), .B(n1), .Y(\dp_dut/n321 ) );
  OAI21X1 \dp_dut/U316  ( .A(n86), .B(n207), .C(\dp_dut/n321 ), .Y(
        \dp_dut/n441 ) );
  NAND2X1 \dp_dut/U315  ( .A(\dp_dut/N226 ), .B(n1), .Y(\dp_dut/n320 ) );
  OAI21X1 \dp_dut/U314  ( .A(n86), .B(n206), .C(\dp_dut/n320 ), .Y(
        \dp_dut/n440 ) );
  NAND2X1 \dp_dut/U313  ( .A(\dp_dut/N227 ), .B(n1), .Y(\dp_dut/n319 ) );
  OAI21X1 \dp_dut/U312  ( .A(n86), .B(n205), .C(\dp_dut/n319 ), .Y(
        \dp_dut/n439 ) );
  NAND2X1 \dp_dut/U311  ( .A(\dp_dut/N228 ), .B(n1), .Y(\dp_dut/n318 ) );
  OAI21X1 \dp_dut/U310  ( .A(n86), .B(n204), .C(\dp_dut/n318 ), .Y(
        \dp_dut/n438 ) );
  NAND2X1 \dp_dut/U309  ( .A(\dp_dut/N237 ), .B(n1), .Y(\dp_dut/n317 ) );
  OAI21X1 \dp_dut/U308  ( .A(n86), .B(n171), .C(\dp_dut/n317 ), .Y(
        \dp_dut/n437 ) );
  NAND2X1 \dp_dut/U307  ( .A(\dp_dut/N230 ), .B(n1), .Y(\dp_dut/n316 ) );
  OAI21X1 \dp_dut/U306  ( .A(n86), .B(n178), .C(\dp_dut/n316 ), .Y(
        \dp_dut/n436 ) );
  NAND2X1 \dp_dut/U305  ( .A(\dp_dut/N231 ), .B(n1), .Y(\dp_dut/n315 ) );
  OAI21X1 \dp_dut/U304  ( .A(n86), .B(n177), .C(\dp_dut/n315 ), .Y(
        \dp_dut/n435 ) );
  AOI21X1 \dp_dut/U303  ( .A(\dp_dut/N232 ), .B(n1), .C(\dp_dut/n234 ), .Y(
        \dp_dut/n314 ) );
  OAI21X1 \dp_dut/U302  ( .A(n86), .B(n176), .C(\dp_dut/n314 ), .Y(
        \dp_dut/n434 ) );
  NAND2X1 \dp_dut/U301  ( .A(\dp_dut/N233 ), .B(n1), .Y(\dp_dut/n313 ) );
  OAI21X1 \dp_dut/U300  ( .A(n86), .B(n175), .C(\dp_dut/n313 ), .Y(
        \dp_dut/n433 ) );
  NAND2X1 \dp_dut/U299  ( .A(\dp_dut/N234 ), .B(n1), .Y(\dp_dut/n312 ) );
  OAI21X1 \dp_dut/U298  ( .A(n86), .B(n174), .C(\dp_dut/n312 ), .Y(
        \dp_dut/n432 ) );
  NAND2X1 \dp_dut/U297  ( .A(\dp_dut/N235 ), .B(n1), .Y(\dp_dut/n311 ) );
  OAI21X1 \dp_dut/U296  ( .A(n86), .B(n173), .C(\dp_dut/n311 ), .Y(
        \dp_dut/n431 ) );
  NAND2X1 \dp_dut/U295  ( .A(\dp_dut/N236 ), .B(n1), .Y(\dp_dut/n310 ) );
  OAI21X1 \dp_dut/U294  ( .A(n86), .B(n172), .C(\dp_dut/n310 ), .Y(
        \dp_dut/n430 ) );
  AOI21X1 \dp_dut/U293  ( .A(\dp_dut/n293 ), .B(n105), .C(n72), .Y(
        \dp_dut/n303 ) );
  NOR2X1 \dp_dut/U292  ( .A(\dp_dut/item_c_num [7]), .B(\dp_dut/item_c_num [6]), .Y(\dp_dut/n309 ) );
  NAND3X1 \dp_dut/U291  ( .A(n174), .B(n173), .C(\dp_dut/n309 ), .Y(
        \dp_dut/n306 ) );
  NOR2X1 \dp_dut/U290  ( .A(\dp_dut/item_c_num [3]), .B(\dp_dut/item_c_num [2]), .Y(\dp_dut/n308 ) );
  NAND3X1 \dp_dut/U289  ( .A(n178), .B(n177), .C(\dp_dut/n308 ), .Y(
        \dp_dut/n307 ) );
  OR2X1 \dp_dut/U288  ( .A(\dp_dut/n306 ), .B(\dp_dut/n307 ), .Y(out_stock_c)
         );
  NOR2X1 \dp_dut/U287  ( .A(\dp_dut/n288 ), .B(n105), .Y(\dp_dut/n305 ) );
  NAND3X1 \dp_dut/U286  ( .A(out_stock_c), .B(n179), .C(\dp_dut/n305 ), .Y(
        \dp_dut/n304 ) );
  OAI21X1 \dp_dut/U285  ( .A(\dp_dut/n303 ), .B(n179), .C(\dp_dut/n304 ), .Y(
        \dp_dut/n429 ) );
  NAND2X1 \dp_dut/U284  ( .A(\dp_dut/N245 ), .B(n1), .Y(\dp_dut/n302 ) );
  OAI21X1 \dp_dut/U283  ( .A(n86), .B(n162), .C(\dp_dut/n302 ), .Y(
        \dp_dut/n428 ) );
  NAND2X1 \dp_dut/U282  ( .A(\dp_dut/N238 ), .B(n1), .Y(\dp_dut/n301 ) );
  OAI21X1 \dp_dut/U281  ( .A(n86), .B(n169), .C(\dp_dut/n301 ), .Y(
        \dp_dut/n427 ) );
  NAND2X1 \dp_dut/U280  ( .A(\dp_dut/N239 ), .B(n1), .Y(\dp_dut/n300 ) );
  OAI21X1 \dp_dut/U279  ( .A(n86), .B(n168), .C(\dp_dut/n300 ), .Y(
        \dp_dut/n426 ) );
  AOI21X1 \dp_dut/U278  ( .A(\dp_dut/N240 ), .B(n1), .C(\dp_dut/n234 ), .Y(
        \dp_dut/n299 ) );
  OAI21X1 \dp_dut/U277  ( .A(n86), .B(n167), .C(\dp_dut/n299 ), .Y(
        \dp_dut/n425 ) );
  NAND2X1 \dp_dut/U276  ( .A(\dp_dut/N241 ), .B(n1), .Y(\dp_dut/n298 ) );
  OAI21X1 \dp_dut/U275  ( .A(n86), .B(n166), .C(\dp_dut/n298 ), .Y(
        \dp_dut/n424 ) );
  NAND2X1 \dp_dut/U274  ( .A(\dp_dut/N242 ), .B(n1), .Y(\dp_dut/n297 ) );
  OAI21X1 \dp_dut/U273  ( .A(n86), .B(n165), .C(\dp_dut/n297 ), .Y(
        \dp_dut/n423 ) );
  NAND2X1 \dp_dut/U272  ( .A(\dp_dut/N243 ), .B(n1), .Y(\dp_dut/n296 ) );
  OAI21X1 \dp_dut/U271  ( .A(n86), .B(n164), .C(\dp_dut/n296 ), .Y(
        \dp_dut/n422 ) );
  NAND2X1 \dp_dut/U270  ( .A(\dp_dut/N244 ), .B(n1), .Y(\dp_dut/n294 ) );
  OAI21X1 \dp_dut/U269  ( .A(n86), .B(n163), .C(\dp_dut/n294 ), .Y(
        \dp_dut/n421 ) );
  AOI21X1 \dp_dut/U268  ( .A(\dp_dut/n293 ), .B(n106), .C(n72), .Y(
        \dp_dut/n285 ) );
  NOR2X1 \dp_dut/U267  ( .A(\dp_dut/item_d_num [7]), .B(\dp_dut/item_d_num [6]), .Y(\dp_dut/n292 ) );
  NAND3X1 \dp_dut/U266  ( .A(n165), .B(n164), .C(\dp_dut/n292 ), .Y(
        \dp_dut/n289 ) );
  NOR2X1 \dp_dut/U265  ( .A(\dp_dut/item_d_num [3]), .B(\dp_dut/item_d_num [2]), .Y(\dp_dut/n291 ) );
  NAND3X1 \dp_dut/U264  ( .A(n169), .B(n168), .C(\dp_dut/n291 ), .Y(
        \dp_dut/n290 ) );
  OR2X1 \dp_dut/U263  ( .A(\dp_dut/n289 ), .B(\dp_dut/n290 ), .Y(out_stock_d)
         );
  NOR2X1 \dp_dut/U262  ( .A(\dp_dut/n288 ), .B(n106), .Y(\dp_dut/n287 ) );
  NAND3X1 \dp_dut/U261  ( .A(out_stock_d), .B(n170), .C(\dp_dut/n287 ), .Y(
        \dp_dut/n286 ) );
  OAI21X1 \dp_dut/U260  ( .A(\dp_dut/n285 ), .B(n170), .C(\dp_dut/n286 ), .Y(
        \dp_dut/n420 ) );
  NOR2X1 \dp_dut/U259  ( .A(\dp_dut/n284 ), .B(n83), .Y(\dp_dut/n280 ) );
  OR2X1 \dp_dut/U258  ( .A(\dp_dut/n280 ), .B(n99), .Y(\dp_dut/n278 ) );
  NAND2X1 \dp_dut/U257  ( .A(out_spit_a), .B(\dp_dut/n280 ), .Y(\dp_dut/n283 )
         );
  OAI21X1 \dp_dut/U256  ( .A(\dp_dut/n278 ), .B(n188), .C(\dp_dut/n283 ), .Y(
        \dp_dut/n419 ) );
  NAND2X1 \dp_dut/U255  ( .A(out_spit_b), .B(\dp_dut/n280 ), .Y(\dp_dut/n282 )
         );
  OAI21X1 \dp_dut/U254  ( .A(\dp_dut/n278 ), .B(n217), .C(\dp_dut/n282 ), .Y(
        \dp_dut/n418 ) );
  NAND2X1 \dp_dut/U253  ( .A(out_spit_c), .B(\dp_dut/n280 ), .Y(\dp_dut/n281 )
         );
  OAI21X1 \dp_dut/U252  ( .A(\dp_dut/n278 ), .B(n179), .C(\dp_dut/n281 ), .Y(
        \dp_dut/n417 ) );
  NAND2X1 \dp_dut/U251  ( .A(out_spit_d), .B(\dp_dut/n280 ), .Y(\dp_dut/n279 )
         );
  OAI21X1 \dp_dut/U250  ( .A(\dp_dut/n278 ), .B(n170), .C(\dp_dut/n279 ), .Y(
        \dp_dut/n416 ) );
  AOI22X1 \dp_dut/U249  ( .A(\dp_dut/N333 ), .B(n85), .C(
        \dp_dut/dollar_1_num [0]), .D(n74), .Y(\dp_dut/n269 ) );
  NAND2X1 \dp_dut/U248  ( .A(out_change[3]), .B(\dp_dut/n203 ), .Y(
        \dp_dut/n225 ) );
  NOR2X1 \dp_dut/U247  ( .A(\dp_dut/N294 ), .B(\dp_dut/N293 ), .Y(
        \dp_dut/n273 ) );
  NOR2X1 \dp_dut/U246  ( .A(\dp_dut/N296 ), .B(\dp_dut/N295 ), .Y(
        \dp_dut/n274 ) );
  NOR2X1 \dp_dut/U245  ( .A(\dp_dut/N298 ), .B(\dp_dut/N297 ), .Y(
        \dp_dut/n276 ) );
  NOR2X1 \dp_dut/U244  ( .A(\dp_dut/N300 ), .B(\dp_dut/N299 ), .Y(
        \dp_dut/n277 ) );
  NAND3X1 \dp_dut/U243  ( .A(\dp_dut/n273 ), .B(\dp_dut/n274 ), .C(
        \dp_dut/n275 ), .Y(\dp_dut/n272 ) );
  NAND2X1 \dp_dut/U242  ( .A(n70), .B(\dp_dut/n272 ), .Y(\dp_dut/n248 ) );
  NAND2X1 \dp_dut/U241  ( .A(n110), .B(n70), .Y(\dp_dut/n249 ) );
  OAI22X1 \dp_dut/U240  ( .A(\dp_dut/n225 ), .B(\dp_dut/n248 ), .C(n200), .D(
        \dp_dut/n249 ), .Y(\dp_dut/n271 ) );
  AOI21X1 \dp_dut/U239  ( .A(\dp_dut/N171 ), .B(n83), .C(\dp_dut/n271 ), .Y(
        \dp_dut/n270 ) );
  NAND2X1 \dp_dut/U238  ( .A(\dp_dut/n269 ), .B(\dp_dut/n270 ), .Y(
        \dp_dut/n415 ) );
  AOI22X1 \dp_dut/U237  ( .A(\dp_dut/N172 ), .B(n83), .C(\dp_dut/N334 ), .D(
        n84), .Y(\dp_dut/n265 ) );
  NAND2X1 \dp_dut/U236  ( .A(\dp_dut/dollar_1_num [1]), .B(n74), .Y(
        \dp_dut/n266 ) );
  OAI21X1 \dp_dut/U235  ( .A(n199), .B(\dp_dut/n249 ), .C(n102), .Y(
        \dp_dut/n268 ) );
  AOI21X1 \dp_dut/U234  ( .A(n101), .B(\dp_dut/out_change_1_sol1[1] ), .C(
        \dp_dut/n268 ), .Y(\dp_dut/n267 ) );
  NAND3X1 \dp_dut/U233  ( .A(\dp_dut/n265 ), .B(\dp_dut/n266 ), .C(
        \dp_dut/n267 ), .Y(\dp_dut/n414 ) );
  AOI22X1 \dp_dut/U232  ( .A(\dp_dut/N335 ), .B(n85), .C(
        \dp_dut/dollar_1_num [2]), .D(n74), .Y(\dp_dut/n262 ) );
  NAND2X1 \dp_dut/U231  ( .A(out_change[5]), .B(\dp_dut/n203 ), .Y(
        \dp_dut/n222 ) );
  OAI22X1 \dp_dut/U230  ( .A(\dp_dut/n222 ), .B(\dp_dut/n248 ), .C(n198), .D(
        \dp_dut/n249 ), .Y(\dp_dut/n264 ) );
  AOI21X1 \dp_dut/U229  ( .A(\dp_dut/N173 ), .B(n83), .C(\dp_dut/n264 ), .Y(
        \dp_dut/n263 ) );
  NAND2X1 \dp_dut/U228  ( .A(\dp_dut/n262 ), .B(\dp_dut/n263 ), .Y(
        \dp_dut/n413 ) );
  AOI22X1 \dp_dut/U227  ( .A(\dp_dut/N336 ), .B(n84), .C(
        \dp_dut/dollar_1_num [3]), .D(n74), .Y(\dp_dut/n259 ) );
  NAND2X1 \dp_dut/U226  ( .A(out_change[6]), .B(\dp_dut/n203 ), .Y(
        \dp_dut/n220 ) );
  OAI22X1 \dp_dut/U225  ( .A(\dp_dut/n220 ), .B(\dp_dut/n248 ), .C(n197), .D(
        \dp_dut/n249 ), .Y(\dp_dut/n261 ) );
  AOI21X1 \dp_dut/U224  ( .A(\dp_dut/N174 ), .B(n83), .C(\dp_dut/n261 ), .Y(
        \dp_dut/n260 ) );
  NAND2X1 \dp_dut/U223  ( .A(\dp_dut/n259 ), .B(\dp_dut/n260 ), .Y(
        \dp_dut/n412 ) );
  AOI22X1 \dp_dut/U222  ( .A(\dp_dut/N337 ), .B(n85), .C(
        \dp_dut/dollar_1_num [4]), .D(n74), .Y(\dp_dut/n256 ) );
  NAND2X1 \dp_dut/U221  ( .A(out_change[7]), .B(\dp_dut/n203 ), .Y(
        \dp_dut/n218 ) );
  OAI22X1 \dp_dut/U220  ( .A(\dp_dut/n218 ), .B(\dp_dut/n248 ), .C(n196), .D(
        \dp_dut/n249 ), .Y(\dp_dut/n258 ) );
  AOI21X1 \dp_dut/U219  ( .A(\dp_dut/N175 ), .B(n83), .C(\dp_dut/n258 ), .Y(
        \dp_dut/n257 ) );
  NAND2X1 \dp_dut/U218  ( .A(\dp_dut/n256 ), .B(\dp_dut/n257 ), .Y(
        \dp_dut/n411 ) );
  AOI22X1 \dp_dut/U217  ( .A(\dp_dut/N338 ), .B(n84), .C(
        \dp_dut/dollar_1_num [5]), .D(n74), .Y(\dp_dut/n253 ) );
  NAND2X1 \dp_dut/U216  ( .A(out_change[8]), .B(\dp_dut/n203 ), .Y(
        \dp_dut/n216 ) );
  OAI22X1 \dp_dut/U215  ( .A(\dp_dut/n216 ), .B(\dp_dut/n248 ), .C(n195), .D(
        \dp_dut/n249 ), .Y(\dp_dut/n255 ) );
  AOI21X1 \dp_dut/U214  ( .A(\dp_dut/N176 ), .B(n83), .C(\dp_dut/n255 ), .Y(
        \dp_dut/n254 ) );
  NAND2X1 \dp_dut/U213  ( .A(\dp_dut/n253 ), .B(\dp_dut/n254 ), .Y(
        \dp_dut/n410 ) );
  AOI22X1 \dp_dut/U212  ( .A(\dp_dut/N339 ), .B(n85), .C(
        \dp_dut/dollar_1_num [6]), .D(n74), .Y(\dp_dut/n250 ) );
  NAND2X1 \dp_dut/U211  ( .A(out_change[9]), .B(\dp_dut/n203 ), .Y(
        \dp_dut/n214 ) );
  OAI22X1 \dp_dut/U210  ( .A(\dp_dut/n214 ), .B(\dp_dut/n248 ), .C(n193), .D(
        \dp_dut/n249 ), .Y(\dp_dut/n252 ) );
  AOI21X1 \dp_dut/U209  ( .A(\dp_dut/N177 ), .B(n83), .C(\dp_dut/n252 ), .Y(
        \dp_dut/n251 ) );
  NAND2X1 \dp_dut/U208  ( .A(\dp_dut/n250 ), .B(\dp_dut/n251 ), .Y(
        \dp_dut/n409 ) );
  AOI22X1 \dp_dut/U207  ( .A(\dp_dut/N340 ), .B(n84), .C(
        \dp_dut/dollar_1_num [7]), .D(n74), .Y(\dp_dut/n245 ) );
  NAND2X1 \dp_dut/U206  ( .A(out_change[10]), .B(\dp_dut/n203 ), .Y(
        \dp_dut/n212 ) );
  OAI22X1 \dp_dut/U205  ( .A(\dp_dut/n212 ), .B(\dp_dut/n248 ), .C(n192), .D(
        \dp_dut/n249 ), .Y(\dp_dut/n247 ) );
  AOI21X1 \dp_dut/U204  ( .A(\dp_dut/N178 ), .B(n83), .C(\dp_dut/n247 ), .Y(
        \dp_dut/n246 ) );
  NAND2X1 \dp_dut/U203  ( .A(\dp_dut/n245 ), .B(\dp_dut/n246 ), .Y(
        \dp_dut/n408 ) );
  AOI22X1 \dp_dut/U202  ( .A(\dp_dut/N341 ), .B(n85), .C(
        \dp_dut/dollar_05_num [0]), .D(n74), .Y(\dp_dut/n236 ) );
  NOR2X1 \dp_dut/U201  ( .A(\dp_dut/N312 ), .B(\dp_dut/N311 ), .Y(
        \dp_dut/n240 ) );
  NOR2X1 \dp_dut/U200  ( .A(\dp_dut/N314 ), .B(\dp_dut/N313 ), .Y(
        \dp_dut/n241 ) );
  NOR2X1 \dp_dut/U199  ( .A(\dp_dut/N316 ), .B(\dp_dut/N315 ), .Y(
        \dp_dut/n243 ) );
  NOR2X1 \dp_dut/U198  ( .A(\dp_dut/N318 ), .B(\dp_dut/N317 ), .Y(
        \dp_dut/n244 ) );
  NAND3X1 \dp_dut/U197  ( .A(\dp_dut/n240 ), .B(\dp_dut/n241 ), .C(
        \dp_dut/n242 ), .Y(\dp_dut/n239 ) );
  NAND2X1 \dp_dut/U196  ( .A(out_change[2]), .B(\dp_dut/n203 ), .Y(
        \dp_dut/n208 ) );
  OAI22X1 \dp_dut/U195  ( .A(n108), .B(\dp_dut/n208 ), .C(n201), .D(
        \dp_dut/n239 ), .Y(\dp_dut/n238 ) );
  AOI22X1 \dp_dut/U194  ( .A(n70), .B(\dp_dut/n238 ), .C(\dp_dut/N179 ), .D(
        n83), .Y(\dp_dut/n237 ) );
  NAND2X1 \dp_dut/U193  ( .A(\dp_dut/n236 ), .B(\dp_dut/n237 ), .Y(
        \dp_dut/n407 ) );
  AOI22X1 \dp_dut/U192  ( .A(\dp_dut/N342 ), .B(n84), .C(
        \dp_dut/dollar_05_num [1]), .D(n74), .Y(\dp_dut/n232 ) );
  AOI21X1 \dp_dut/U191  ( .A(\dp_dut/N180 ), .B(n83), .C(\dp_dut/n234 ), .Y(
        \dp_dut/n233 ) );
  NAND2X1 \dp_dut/U190  ( .A(\dp_dut/n232 ), .B(\dp_dut/n233 ), .Y(
        \dp_dut/n406 ) );
  AOI22X1 \dp_dut/U189  ( .A(\dp_dut/N181 ), .B(n83), .C(\dp_dut/N343 ), .D(
        n85), .Y(\dp_dut/n231 ) );
  OAI21X1 \dp_dut/U188  ( .A(n2), .B(n141), .C(\dp_dut/n231 ), .Y(
        \dp_dut/n405 ) );
  AOI22X1 \dp_dut/U187  ( .A(\dp_dut/N182 ), .B(n83), .C(\dp_dut/N344 ), .D(
        n85), .Y(\dp_dut/n230 ) );
  OAI21X1 \dp_dut/U186  ( .A(n2), .B(n140), .C(\dp_dut/n230 ), .Y(
        \dp_dut/n404 ) );
  AOI22X1 \dp_dut/U185  ( .A(\dp_dut/N183 ), .B(n83), .C(\dp_dut/N345 ), .D(
        n85), .Y(\dp_dut/n229 ) );
  OAI21X1 \dp_dut/U184  ( .A(n2), .B(n139), .C(\dp_dut/n229 ), .Y(
        \dp_dut/n403 ) );
  AOI22X1 \dp_dut/U183  ( .A(\dp_dut/N184 ), .B(n83), .C(\dp_dut/N346 ), .D(
        n85), .Y(\dp_dut/n228 ) );
  OAI21X1 \dp_dut/U182  ( .A(n2), .B(n138), .C(\dp_dut/n228 ), .Y(
        \dp_dut/n402 ) );
  AOI22X1 \dp_dut/U181  ( .A(\dp_dut/N185 ), .B(n83), .C(\dp_dut/N347 ), .D(
        n85), .Y(\dp_dut/n227 ) );
  OAI21X1 \dp_dut/U180  ( .A(n2), .B(n137), .C(\dp_dut/n227 ), .Y(
        \dp_dut/n401 ) );
  AOI22X1 \dp_dut/U179  ( .A(\dp_dut/N186 ), .B(n83), .C(\dp_dut/N348 ), .D(
        n85), .Y(\dp_dut/n226 ) );
  OAI21X1 \dp_dut/U178  ( .A(n2), .B(n142), .C(\dp_dut/n226 ), .Y(
        \dp_dut/n400 ) );
  AOI22X1 \dp_dut/U177  ( .A(n114), .B(n70), .C(\dp_dut/inserted_money [3]), 
        .D(n85), .Y(\dp_dut/n224 ) );
  OAI21X1 \dp_dut/U176  ( .A(\dp_dut/n204 ), .B(n154), .C(\dp_dut/n224 ), .Y(
        \dp_dut/n399 ) );
  AOI22X1 \dp_dut/U175  ( .A(\dp_dut/out_change_1_sol1[1] ), .B(n70), .C(
        \dp_dut/inserted_money [4]), .D(n85), .Y(\dp_dut/n223 ) );
  OAI21X1 \dp_dut/U174  ( .A(\dp_dut/n204 ), .B(n136), .C(\dp_dut/n223 ), .Y(
        \dp_dut/n398 ) );
  AOI22X1 \dp_dut/U173  ( .A(n116), .B(n70), .C(\dp_dut/inserted_money [5]), 
        .D(n84), .Y(\dp_dut/n221 ) );
  OAI21X1 \dp_dut/U172  ( .A(\dp_dut/n204 ), .B(n155), .C(\dp_dut/n221 ), .Y(
        \dp_dut/n397 ) );
  AOI22X1 \dp_dut/U171  ( .A(n117), .B(n70), .C(\dp_dut/inserted_money [6]), 
        .D(n85), .Y(\dp_dut/n219 ) );
  OAI21X1 \dp_dut/U170  ( .A(\dp_dut/n204 ), .B(n156), .C(\dp_dut/n219 ), .Y(
        \dp_dut/n396 ) );
  AOI22X1 \dp_dut/U169  ( .A(n119), .B(n70), .C(\dp_dut/inserted_money [7]), 
        .D(n85), .Y(\dp_dut/n217 ) );
  OAI21X1 \dp_dut/U168  ( .A(\dp_dut/n204 ), .B(n157), .C(\dp_dut/n217 ), .Y(
        \dp_dut/n395 ) );
  AOI22X1 \dp_dut/U167  ( .A(n120), .B(n70), .C(\dp_dut/inserted_money [8]), 
        .D(n85), .Y(\dp_dut/n215 ) );
  OAI21X1 \dp_dut/U166  ( .A(\dp_dut/n204 ), .B(n158), .C(\dp_dut/n215 ), .Y(
        \dp_dut/n394 ) );
  AOI22X1 \dp_dut/U165  ( .A(n122), .B(n70), .C(\dp_dut/inserted_money [9]), 
        .D(n84), .Y(\dp_dut/n213 ) );
  OAI21X1 \dp_dut/U164  ( .A(\dp_dut/n204 ), .B(n159), .C(\dp_dut/n213 ), .Y(
        \dp_dut/n393 ) );
  AOI22X1 \dp_dut/U163  ( .A(n123), .B(n70), .C(\dp_dut/inserted_money [10]), 
        .D(n84), .Y(\dp_dut/n211 ) );
  OAI21X1 \dp_dut/U162  ( .A(\dp_dut/n204 ), .B(n160), .C(\dp_dut/n211 ), .Y(
        \dp_dut/n392 ) );
  AOI22X1 \dp_dut/U161  ( .A(n112), .B(n70), .C(\dp_dut/inserted_money [1]), 
        .D(n84), .Y(\dp_dut/n209 ) );
  OAI21X1 \dp_dut/U160  ( .A(\dp_dut/n204 ), .B(n161), .C(\dp_dut/n209 ), .Y(
        \dp_dut/n391 ) );
  AOI22X1 \dp_dut/U159  ( .A(n124), .B(n70), .C(\dp_dut/inserted_money [2]), 
        .D(n84), .Y(\dp_dut/n205 ) );
  OAI21X1 \dp_dut/U158  ( .A(\dp_dut/n204 ), .B(n135), .C(\dp_dut/n205 ), .Y(
        \dp_dut/n390 ) );
  AND2X2 \dp_dut/U53  ( .A(cmd[0]), .B(cmd[1]), .Y(\dp_dut/n293 ) );
  AND2X2 \dp_dut/U52  ( .A(\dp_dut/n377 ), .B(\dp_dut/n378 ), .Y(\dp_dut/n376 ) );
  AND2X2 \dp_dut/U51  ( .A(\dp_dut/N45 ), .B(n77), .Y(out_change[1]) );
  AND2X2 \dp_dut/U49  ( .A(\dp_dut/N47 ), .B(n78), .Y(out_change[3]) );
  AND2X2 \dp_dut/U48  ( .A(\dp_dut/n276 ), .B(\dp_dut/n277 ), .Y(\dp_dut/n275 ) );
  AND2X2 \dp_dut/U47  ( .A(\dp_dut/N48 ), .B(n79), .Y(out_change[4]) );
  AND2X2 \dp_dut/U46  ( .A(out_change[4]), .B(\dp_dut/n203 ), .Y(
        \dp_dut/out_change_1_sol1[1] ) );
  AND2X2 \dp_dut/U45  ( .A(\dp_dut/N49 ), .B(n81), .Y(out_change[5]) );
  AND2X2 \dp_dut/U44  ( .A(\dp_dut/N50 ), .B(n77), .Y(out_change[6]) );
  AND2X2 \dp_dut/U43  ( .A(\dp_dut/N51 ), .B(n79), .Y(out_change[7]) );
  AND2X2 \dp_dut/U42  ( .A(\dp_dut/N52 ), .B(n79), .Y(out_change[8]) );
  AND2X2 \dp_dut/U41  ( .A(\dp_dut/N53 ), .B(n80), .Y(out_change[9]) );
  AND2X2 \dp_dut/U40  ( .A(\dp_dut/N54 ), .B(n80), .Y(out_change[10]) );
  AND2X2 \dp_dut/U39  ( .A(\dp_dut/n243 ), .B(\dp_dut/n244 ), .Y(\dp_dut/n242 ) );
  AND2X2 \dp_dut/U15  ( .A(\dp_dut/N46 ), .B(n82), .Y(out_change[2]) );
  AND2X2 \dp_dut/U14  ( .A(\dp_dut/N155 ), .B(n78), .Y(out_change[0]) );
  AND2X2 \dp_dut/U13  ( .A(\dp_dut/N55 ), .B(n80), .Y(out_change[11]) );
  AND2X2 \dp_dut/U12  ( .A(\dp_dut/N56 ), .B(n81), .Y(out_change[12]) );
  AND2X2 \dp_dut/U11  ( .A(\dp_dut/N57 ), .B(n82), .Y(out_change[13]) );
  AND2X2 \dp_dut/U10  ( .A(\dp_dut/N58 ), .B(n81), .Y(out_change[14]) );
  AND2X2 \dp_dut/U8  ( .A(\dp_dut/N38 ), .B(n77), .Y(\dp_dut/total_price [1])
         );
  AND2X2 \dp_dut/U7  ( .A(\dp_dut/N39 ), .B(n79), .Y(\dp_dut/total_price [2])
         );
  AND2X2 \dp_dut/U5  ( .A(\dp_dut/N41 ), .B(n77), .Y(\dp_dut/total_price [4])
         );
  AND2X2 \dp_dut/U4  ( .A(\dp_dut/N42 ), .B(n78), .Y(\dp_dut/total_price [5])
         );
  DFFNEGX1 \dp_dut/out_change_05_reg  ( .D(\dp_dut/n390 ), .CLK(n97), .Q(
        out_change_05) );
  DFFNEGX1 \dp_dut/out_spit_b_reg  ( .D(\dp_dut/n418 ), .CLK(n97), .Q(
        out_spit_b) );
  DFFNEGX1 \dp_dut/out_change_1_reg[1]  ( .D(\dp_dut/n398 ), .CLK(n97), .Q(
        out_change_1[1]) );
  DFFNEGX1 \dp_dut/dollar_05_num_reg[6]  ( .D(\dp_dut/n401 ), .CLK(n97), .Q(
        \dp_dut/dollar_05_num [6]) );
  DFFNEGX1 \dp_dut/dollar_05_num_reg[5]  ( .D(\dp_dut/n402 ), .CLK(n97), .Q(
        \dp_dut/dollar_05_num [5]) );
  DFFNEGX1 \dp_dut/dollar_05_num_reg[4]  ( .D(\dp_dut/n403 ), .CLK(n97), .Q(
        \dp_dut/dollar_05_num [4]) );
  DFFNEGX1 \dp_dut/dollar_05_num_reg[3]  ( .D(\dp_dut/n404 ), .CLK(n97), .Q(
        \dp_dut/dollar_05_num [3]) );
  DFFNEGX1 \dp_dut/dollar_05_num_reg[2]  ( .D(\dp_dut/n405 ), .CLK(n97), .Q(
        \dp_dut/dollar_05_num [2]) );
  DFFNEGX1 \dp_dut/dollar_05_num_reg[1]  ( .D(\dp_dut/n406 ), .CLK(n97), .Q(
        \dp_dut/dollar_05_num [1]) );
  DFFNEGX1 \dp_dut/dollar_05_num_reg[7]  ( .D(\dp_dut/n400 ), .CLK(n97), .Q(
        \dp_dut/dollar_05_num [7]) );
  DFFNEGX1 \dp_dut/dollar_05_num_reg[0]  ( .D(\dp_dut/n407 ), .CLK(n97), .Q(
        \dp_dut/dollar_05_num [0]) );
  DFFNEGX1 \dp_dut/dollar_025_num_reg[6]  ( .D(\dp_dut/n471 ), .CLK(n97), .Q(
        \dp_dut/dollar_025_num [6]) );
  DFFNEGX1 \dp_dut/dollar_025_num_reg[5]  ( .D(\dp_dut/n472 ), .CLK(n96), .Q(
        \dp_dut/dollar_025_num [5]) );
  DFFNEGX1 \dp_dut/dollar_025_num_reg[4]  ( .D(\dp_dut/n473 ), .CLK(n96), .Q(
        \dp_dut/dollar_025_num [4]) );
  DFFNEGX1 \dp_dut/dollar_025_num_reg[3]  ( .D(\dp_dut/n474 ), .CLK(n96), .Q(
        \dp_dut/dollar_025_num [3]) );
  DFFNEGX1 \dp_dut/dollar_025_num_reg[2]  ( .D(\dp_dut/n475 ), .CLK(n96), .Q(
        \dp_dut/dollar_025_num [2]) );
  DFFNEGX1 \dp_dut/dollar_025_num_reg[1]  ( .D(\dp_dut/n476 ), .CLK(n96), .Q(
        \dp_dut/dollar_025_num [1]) );
  DFFNEGX1 \dp_dut/dollar_025_num_reg[7]  ( .D(\dp_dut/n470 ), .CLK(n96), .Q(
        \dp_dut/dollar_025_num [7]) );
  DFFNEGX1 \dp_dut/dollar_025_num_reg[0]  ( .D(\dp_dut/n477 ), .CLK(n96), .Q(
        \dp_dut/dollar_025_num [0]) );
  DFFNEGX1 \dp_dut/dollar_1_num_reg[2]  ( .D(\dp_dut/n413 ), .CLK(n96), .Q(
        \dp_dut/dollar_1_num [2]) );
  DFFNEGX1 \dp_dut/dollar_1_num_reg[3]  ( .D(\dp_dut/n412 ), .CLK(n96), .Q(
        \dp_dut/dollar_1_num [3]) );
  DFFNEGX1 \dp_dut/dollar_1_num_reg[4]  ( .D(\dp_dut/n411 ), .CLK(n96), .Q(
        \dp_dut/dollar_1_num [4]) );
  DFFNEGX1 \dp_dut/dollar_1_num_reg[5]  ( .D(\dp_dut/n410 ), .CLK(n96), .Q(
        \dp_dut/dollar_1_num [5]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[0]  ( .D(\dp_dut/n399 ), .CLK(n96), .Q(
        out_change_1[0]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[2]  ( .D(\dp_dut/n397 ), .CLK(n96), .Q(
        out_change_1[2]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[3]  ( .D(\dp_dut/n396 ), .CLK(n95), .Q(
        out_change_1[3]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[4]  ( .D(\dp_dut/n395 ), .CLK(n95), .Q(
        out_change_1[4]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[5]  ( .D(\dp_dut/n394 ), .CLK(n95), .Q(
        out_change_1[5]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[6]  ( .D(\dp_dut/n393 ), .CLK(n95), .Q(
        out_change_1[6]) );
  DFFNEGX1 \dp_dut/out_change_1_reg[7]  ( .D(\dp_dut/n392 ), .CLK(n95), .Q(
        out_change_1[7]) );
  DFFNEGX1 \dp_dut/out_change_025_reg  ( .D(\dp_dut/n391 ), .CLK(n95), .Q(
        out_change_025) );
  DFFNEGX1 \dp_dut/out_spit_d_reg  ( .D(\dp_dut/n416 ), .CLK(n95), .Q(
        out_spit_d) );
  DFFNEGX1 \dp_dut/item_d_num_reg[7]  ( .D(\dp_dut/n428 ), .CLK(n95), .Q(
        \dp_dut/item_d_num [7]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[6]  ( .D(\dp_dut/n421 ), .CLK(n95), .Q(
        \dp_dut/item_d_num [6]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[5]  ( .D(\dp_dut/n422 ), .CLK(n95), .Q(
        \dp_dut/item_d_num [5]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[4]  ( .D(\dp_dut/n423 ), .CLK(n95), .Q(
        \dp_dut/item_d_num [4]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[3]  ( .D(\dp_dut/n424 ), .CLK(n95), .Q(
        \dp_dut/item_d_num [3]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[2]  ( .D(\dp_dut/n425 ), .CLK(n95), .Q(
        \dp_dut/item_d_num [2]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[1]  ( .D(\dp_dut/n426 ), .CLK(n94), .Q(
        \dp_dut/item_d_num [1]) );
  DFFNEGX1 \dp_dut/item_d_num_reg[0]  ( .D(\dp_dut/n427 ), .CLK(n94), .Q(
        \dp_dut/item_d_num [0]) );
  DFFNEGX1 \dp_dut/out_csel_d_reg  ( .D(\dp_dut/n420 ), .CLK(n94), .Q(
        out_csel_d) );
  DFFNEGX1 \dp_dut/out_spit_c_reg  ( .D(\dp_dut/n417 ), .CLK(n94), .Q(
        out_spit_c) );
  DFFNEGX1 \dp_dut/item_c_num_reg[7]  ( .D(\dp_dut/n437 ), .CLK(n94), .Q(
        \dp_dut/item_c_num [7]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[6]  ( .D(\dp_dut/n430 ), .CLK(n94), .Q(
        \dp_dut/item_c_num [6]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[5]  ( .D(\dp_dut/n431 ), .CLK(n94), .Q(
        \dp_dut/item_c_num [5]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[4]  ( .D(\dp_dut/n432 ), .CLK(n94), .Q(
        \dp_dut/item_c_num [4]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[3]  ( .D(\dp_dut/n433 ), .CLK(n94), .Q(
        \dp_dut/item_c_num [3]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[2]  ( .D(\dp_dut/n434 ), .CLK(n94), .Q(
        \dp_dut/item_c_num [2]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[1]  ( .D(\dp_dut/n435 ), .CLK(n94), .Q(
        \dp_dut/item_c_num [1]) );
  DFFNEGX1 \dp_dut/item_c_num_reg[0]  ( .D(\dp_dut/n436 ), .CLK(n94), .Q(
        \dp_dut/item_c_num [0]) );
  DFFNEGX1 \dp_dut/out_csel_c_reg  ( .D(\dp_dut/n429 ), .CLK(n94), .Q(
        out_csel_c) );
  DFFNEGX1 \dp_dut/out_spit_a_reg  ( .D(\dp_dut/n419 ), .CLK(n93), .Q(
        out_spit_a) );
  DFFNEGX1 \dp_dut/item_a_num_reg[7]  ( .D(\dp_dut/n454 ), .CLK(n93), .Q(
        \dp_dut/item_a_num [7]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[6]  ( .D(\dp_dut/n447 ), .CLK(n93), .Q(
        \dp_dut/item_a_num [6]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[5]  ( .D(\dp_dut/n448 ), .CLK(n93), .Q(
        \dp_dut/item_a_num [5]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[4]  ( .D(\dp_dut/n449 ), .CLK(n93), .Q(
        \dp_dut/item_a_num [4]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[3]  ( .D(\dp_dut/n450 ), .CLK(n93), .Q(
        \dp_dut/item_a_num [3]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[2]  ( .D(\dp_dut/n451 ), .CLK(n93), .Q(
        \dp_dut/item_a_num [2]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[1]  ( .D(\dp_dut/n452 ), .CLK(n93), .Q(
        \dp_dut/item_a_num [1]) );
  DFFNEGX1 \dp_dut/item_a_num_reg[0]  ( .D(\dp_dut/n453 ), .CLK(n93), .Q(
        \dp_dut/item_a_num [0]) );
  DFFNEGX1 \dp_dut/out_csel_a_reg  ( .D(\dp_dut/n446 ), .CLK(n93), .Q(
        out_csel_a) );
  DFFNEGX1 \dp_dut/inserted_money_reg[13]  ( .D(\dp_dut/n468 ), .CLK(n93), .Q(
        \dp_dut/inserted_money [13]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[12]  ( .D(\dp_dut/n467 ), .CLK(n93), .Q(
        \dp_dut/inserted_money [12]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[11]  ( .D(\dp_dut/n466 ), .CLK(n93), .Q(
        \dp_dut/inserted_money [11]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[10]  ( .D(\dp_dut/n465 ), .CLK(n92), .Q(
        \dp_dut/inserted_money [10]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[9]  ( .D(\dp_dut/n464 ), .CLK(n92), .Q(
        \dp_dut/inserted_money [9]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[8]  ( .D(\dp_dut/n463 ), .CLK(n92), .Q(
        \dp_dut/inserted_money [8]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[7]  ( .D(\dp_dut/n462 ), .CLK(n92), .Q(
        \dp_dut/inserted_money [7]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[6]  ( .D(\dp_dut/n461 ), .CLK(n92), .Q(
        \dp_dut/inserted_money [6]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[5]  ( .D(\dp_dut/n460 ), .CLK(n92), .Q(
        \dp_dut/inserted_money [5]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[4]  ( .D(\dp_dut/n459 ), .CLK(n92), .Q(
        \dp_dut/inserted_money [4]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[3]  ( .D(\dp_dut/n458 ), .CLK(n92), .Q(
        \dp_dut/inserted_money [3]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[2]  ( .D(\dp_dut/n457 ), .CLK(n92), .Q(
        \dp_dut/inserted_money [2]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[1]  ( .D(\dp_dut/n456 ), .CLK(n92), .Q(
        \dp_dut/inserted_money [1]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[0]  ( .D(\dp_dut/n455 ), .CLK(n92), .Q(
        \dp_dut/N155 ) );
  DFFNEGX1 \dp_dut/item_b_num_reg[6]  ( .D(\dp_dut/n438 ), .CLK(n92), .Q(
        \dp_dut/item_b_num [6]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[5]  ( .D(\dp_dut/n439 ), .CLK(n92), .Q(
        \dp_dut/item_b_num [5]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[4]  ( .D(\dp_dut/n440 ), .CLK(n91), .Q(
        \dp_dut/item_b_num [4]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[3]  ( .D(\dp_dut/n441 ), .CLK(n91), .Q(
        \dp_dut/item_b_num [3]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[2]  ( .D(\dp_dut/n442 ), .CLK(n91), .Q(
        \dp_dut/item_b_num [2]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[1]  ( .D(\dp_dut/n443 ), .CLK(n91), .Q(
        \dp_dut/item_b_num [1]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[0]  ( .D(\dp_dut/n444 ), .CLK(n91), .Q(
        \dp_dut/item_b_num [0]) );
  DFFNEGX1 \dp_dut/item_b_num_reg[7]  ( .D(\dp_dut/n445 ), .CLK(n91), .Q(
        \dp_dut/item_b_num [7]) );
  DFFNEGX1 \dp_dut/dollar_1_num_reg[6]  ( .D(\dp_dut/n409 ), .CLK(n91), .Q(
        \dp_dut/dollar_1_num [6]) );
  DFFNEGX1 \dp_dut/dollar_1_num_reg[0]  ( .D(\dp_dut/n415 ), .CLK(n91), .Q(
        \dp_dut/dollar_1_num [0]) );
  DFFNEGX1 \dp_dut/dollar_1_num_reg[7]  ( .D(\dp_dut/n408 ), .CLK(n91), .Q(
        \dp_dut/dollar_1_num [7]) );
  DFFNEGX1 \dp_dut/dollar_1_num_reg[1]  ( .D(\dp_dut/n414 ), .CLK(n91), .Q(
        \dp_dut/dollar_1_num [1]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[14]  ( .D(\dp_dut/n469 ), .CLK(n91), .Q(
        \dp_dut/inserted_money [14]) );
  DFFNEGX1 \dp_dut/inserted_money_reg[15]  ( .D(\dp_dut/n478 ), .CLK(n91), .Q(
        \dp_dut/inserted_money [15]) );
  DFFNEGX1 \dp_dut/out_csel_b_reg  ( .D(\dp_dut/n479 ), .CLK(n91), .Q(
        out_csel_b) );
  FAX1 \dp_dut/sub_76/U2_2  ( .A(\dp_dut/inserted_money [2]), .B(n127), .C(
        \dp_dut/sub_76/carry [2]), .YC(\dp_dut/sub_76/carry [3]), .YS(
        \dp_dut/N46 ) );
  FAX1 \dp_dut/sub_76/U2_3  ( .A(\dp_dut/inserted_money [3]), .B(n10), .C(
        \dp_dut/sub_76/carry [3]), .YC(\dp_dut/sub_76/carry [4]), .YS(
        \dp_dut/N47 ) );
  FAX1 \dp_dut/sub_76/U2_4  ( .A(\dp_dut/inserted_money [4]), .B(n129), .C(
        \dp_dut/sub_76/carry [4]), .YC(\dp_dut/sub_76/carry [5]), .YS(
        \dp_dut/N48 ) );
  FAX1 \dp_dut/sub_76/U2_5  ( .A(\dp_dut/inserted_money [5]), .B(n130), .C(
        \dp_dut/sub_76/carry [5]), .YC(\dp_dut/sub_76/carry [6]), .YS(
        \dp_dut/N49 ) );
  FAX1 \dp_dut/sub_137/U2_2  ( .A(\dp_dut/inserted_money [2]), .B(n127), .C(
        \dp_dut/sub_137/carry [2]), .YC(\dp_dut/sub_137/carry [3]), .YS(
        \dp_dut/N200 ) );
  FAX1 \dp_dut/sub_137/U2_3  ( .A(\dp_dut/inserted_money [3]), .B(n10), .C(
        \dp_dut/sub_137/carry [3]), .YC(\dp_dut/sub_137/carry [4]), .YS(
        \dp_dut/N201 ) );
  FAX1 \dp_dut/sub_137/U2_4  ( .A(\dp_dut/inserted_money [4]), .B(n129), .C(
        \dp_dut/sub_137/carry [4]), .YC(\dp_dut/sub_137/carry [5]), .YS(
        \dp_dut/N202 ) );
  FAX1 \dp_dut/sub_137/U2_5  ( .A(\dp_dut/inserted_money [5]), .B(n130), .C(
        \dp_dut/sub_137/carry [5]), .YC(\dp_dut/sub_137/carry [6]), .YS(
        \dp_dut/N203 ) );
  FAX1 \dp_dut/sub_185/U2_1  ( .A(\dp_dut/dollar_1_num [1]), .B(n199), .C(
        \dp_dut/sub_185/carry [1]), .YC(\dp_dut/sub_185/carry [2]), .YS(
        \dp_dut/N334 ) );
  FAX1 \dp_dut/sub_185/U2_2  ( .A(\dp_dut/dollar_1_num [2]), .B(n198), .C(
        \dp_dut/sub_185/carry [2]), .YC(\dp_dut/sub_185/carry [3]), .YS(
        \dp_dut/N335 ) );
  FAX1 \dp_dut/sub_185/U2_3  ( .A(\dp_dut/dollar_1_num [3]), .B(n197), .C(
        \dp_dut/sub_185/carry [3]), .YC(\dp_dut/sub_185/carry [4]), .YS(
        \dp_dut/N336 ) );
  FAX1 \dp_dut/sub_185/U2_4  ( .A(\dp_dut/dollar_1_num [4]), .B(n196), .C(
        \dp_dut/sub_185/carry [4]), .YC(\dp_dut/sub_185/carry [5]), .YS(
        \dp_dut/N337 ) );
  FAX1 \dp_dut/sub_185/U2_5  ( .A(\dp_dut/dollar_1_num [5]), .B(n195), .C(
        \dp_dut/sub_185/carry [5]), .YC(\dp_dut/sub_185/carry [6]), .YS(
        \dp_dut/N338 ) );
  FAX1 \dp_dut/sub_185/U2_6  ( .A(\dp_dut/dollar_1_num [6]), .B(n193), .C(
        \dp_dut/sub_185/carry [6]), .YC(\dp_dut/sub_185/carry [7]), .YS(
        \dp_dut/N339 ) );
  FAX1 \dp_dut/sub_185/U2_7  ( .A(\dp_dut/dollar_1_num [7]), .B(n192), .C(
        \dp_dut/sub_185/carry [7]), .YC(), .YS(\dp_dut/N340 ) );
  FAX1 \dp_dut/dp_cluster_0/add_1_root_add_121_5/U1_5  ( .A(
        \dp_dut/dp_cluster_0/N96 ), .B(in_inserted_5), .C(n39), .YC(
        \dp_dut/dp_cluster_0/add_1_root_add_121_5/carry[6] ), .YS(
        \dp_dut/dp_cluster_0/N144 ) );
  FAX1 \dp_dut/dp_cluster_0/add_0_root_add_121_5/U1_2  ( .A(n69), .B(
        \dp_dut/inserted_money [2]), .C(n12), .YC(
        \dp_dut/dp_cluster_0/add_0_root_add_121_5/carry[3] ), .YS(
        \dp_dut/N157 ) );
  FAX1 \dp_dut/dp_cluster_1/add_2_root_add_75_3/U1_3  ( .A(out_csel_a), .B(
        out_csel_b), .C(n16), .YC(\dp_dut/dp_cluster_1/N30 ), .YS(
        \dp_dut/dp_cluster_1/N29 ) );
  FAX1 \dp_dut/dp_cluster_1/add_0_root_add_75_3/U1_3  ( .A(
        \dp_dut/dp_cluster_1/N29 ), .B(\dp_dut/dp_cluster_1/N34 ), .C(n40), 
        .YC(\dp_dut/dp_cluster_1/add_0_root_add_75_3/carry[4] ), .YS(
        \dp_dut/N40 ) );
  FAX1 \dp_dut/dp_cluster_1/add_0_root_add_75_3/U1_4  ( .A(
        \dp_dut/dp_cluster_1/N30 ), .B(n11), .C(
        \dp_dut/dp_cluster_1/add_0_root_add_75_3/carry[4] ), .YC(\dp_dut/N42 ), 
        .YS(\dp_dut/N41 ) );
  AND2X2 U1 ( .A(\dp_dut/n284 ), .B(\dp_dut/n341 ), .Y(n1) );
  OR2X2 U2 ( .A(\dp_dut/n204 ), .B(\dp_dut/n234 ), .Y(n2) );
  AND2X2 U3 ( .A(n24), .B(\dp_dut/dollar_1_num [2]), .Y(n3) );
  AND2X2 U4 ( .A(n19), .B(\dp_dut/dollar_1_num [4]), .Y(n4) );
  AND2X2 U5 ( .A(n27), .B(\dp_dut/inserted_money [7]), .Y(n5) );
  AND2X2 U6 ( .A(n31), .B(\dp_dut/dollar_05_num [3]), .Y(n6) );
  AND2X2 U7 ( .A(n33), .B(\dp_dut/dollar_025_num [3]), .Y(n7) );
  AND2X2 U8 ( .A(n35), .B(\dp_dut/inserted_money [13]), .Y(n8) );
  AND2X2 U9 ( .A(n59), .B(\dp_dut/dp_cluster_0/N145 ), .Y(n9) );
  NAND2X1 U10 ( .A(\dp_dut/N40 ), .B(n81), .Y(n10) );
  AND2X2 U11 ( .A(out_csel_d), .B(out_csel_c), .Y(n11) );
  AND2X2 U12 ( .A(\dp_dut/inserted_money [1]), .B(n68), .Y(n12) );
  AND2X2 U13 ( .A(in_inserted_5), .B(\dp_dut/inserted_money [3]), .Y(n13) );
  AND2X2 U14 ( .A(n13), .B(\dp_dut/inserted_money [4]), .Y(n14) );
  AND2X2 U15 ( .A(n14), .B(\dp_dut/inserted_money [5]), .Y(n15) );
  AND2X2 U16 ( .A(out_csel_b), .B(out_csel_a), .Y(n16) );
  AND2X2 U17 ( .A(in_inserted_1), .B(\dp_dut/dollar_1_num [0]), .Y(n17) );
  AND2X2 U18 ( .A(in_inserted_1), .B(\dp_dut/dp_cluster_0/N94 ), .Y(n18) );
  AND2X2 U19 ( .A(n3), .B(\dp_dut/dollar_1_num [3]), .Y(n19) );
  AND2X2 U20 ( .A(n4), .B(\dp_dut/dollar_1_num [5]), .Y(n20) );
  AND2X2 U21 ( .A(n5), .B(\dp_dut/inserted_money [8]), .Y(n21) );
  AND2X2 U22 ( .A(n21), .B(\dp_dut/inserted_money [9]), .Y(n22) );
  AND2X2 U23 ( .A(n22), .B(\dp_dut/inserted_money [10]), .Y(n23) );
  AND2X2 U24 ( .A(n17), .B(\dp_dut/dollar_1_num [1]), .Y(n24) );
  AND2X2 U25 ( .A(n69), .B(\dp_dut/dollar_05_num [0]), .Y(n25) );
  AND2X2 U26 ( .A(n68), .B(\dp_dut/dollar_025_num [0]), .Y(n26) );
  AND2X2 U27 ( .A(n15), .B(\dp_dut/inserted_money [6]), .Y(n27) );
  AND2X2 U28 ( .A(n26), .B(\dp_dut/dollar_025_num [1]), .Y(n28) );
  AND2X2 U29 ( .A(n23), .B(\dp_dut/inserted_money [11]), .Y(n29) );
  AND2X2 U30 ( .A(n25), .B(\dp_dut/dollar_05_num [1]), .Y(n30) );
  AND2X2 U31 ( .A(n30), .B(\dp_dut/dollar_05_num [2]), .Y(n31) );
  AND2X2 U32 ( .A(n6), .B(\dp_dut/dollar_05_num [4]), .Y(n32) );
  AND2X2 U33 ( .A(n28), .B(\dp_dut/dollar_025_num [2]), .Y(n33) );
  AND2X2 U34 ( .A(n7), .B(\dp_dut/dollar_025_num [4]), .Y(n34) );
  AND2X2 U35 ( .A(n29), .B(\dp_dut/inserted_money [12]), .Y(n35) );
  AND2X2 U36 ( .A(out_csel_c), .B(out_csel_a), .Y(n36) );
  AND2X2 U37 ( .A(n32), .B(\dp_dut/dollar_05_num [5]), .Y(n37) );
  AND2X2 U38 ( .A(n34), .B(\dp_dut/dollar_025_num [5]), .Y(n38) );
  AND2X2 U39 ( .A(n18), .B(\dp_dut/dp_cluster_0/N95 ), .Y(n39) );
  AND2X2 U40 ( .A(n36), .B(\dp_dut/dp_cluster_1/N28 ), .Y(n40) );
  AND2X2 U41 ( .A(\dp_dut/dp_cluster_0/add_0_root_add_121_5/carry[3] ), .B(
        \dp_dut/dp_cluster_0/N142 ), .Y(n41) );
  AND2X2 U42 ( .A(\dp_dut/dp_cluster_0/add_1_root_add_121_5/carry[6] ), .B(
        \dp_dut/dp_cluster_0/N97 ), .Y(n42) );
  AND2X2 U43 ( .A(n20), .B(\dp_dut/dollar_1_num [6]), .Y(n43) );
  AND2X2 U44 ( .A(n42), .B(\dp_dut/dp_cluster_0/N98 ), .Y(n44) );
  AND2X2 U45 ( .A(n44), .B(\dp_dut/dp_cluster_0/N99 ), .Y(n45) );
  AND2X2 U46 ( .A(n45), .B(\dp_dut/dp_cluster_0/N100 ), .Y(n46) );
  AND2X2 U47 ( .A(n46), .B(\dp_dut/dp_cluster_0/N101 ), .Y(n47) );
  AND2X2 U48 ( .A(n47), .B(\dp_dut/dp_cluster_0/N102 ), .Y(n48) );
  AND2X2 U49 ( .A(n48), .B(\dp_dut/dp_cluster_0/N103 ), .Y(n49) );
  AND2X2 U50 ( .A(n49), .B(\dp_dut/dp_cluster_0/N104 ), .Y(n50) );
  AND2X2 U51 ( .A(n41), .B(\dp_dut/dp_cluster_0/N143 ), .Y(n51) );
  AND2X2 U52 ( .A(n9), .B(\dp_dut/dp_cluster_0/N146 ), .Y(n52) );
  AND2X2 U53 ( .A(n52), .B(\dp_dut/dp_cluster_0/N147 ), .Y(n53) );
  AND2X2 U54 ( .A(n53), .B(\dp_dut/dp_cluster_0/N148 ), .Y(n54) );
  AND2X2 U55 ( .A(n54), .B(\dp_dut/dp_cluster_0/N149 ), .Y(n55) );
  AND2X2 U56 ( .A(n55), .B(\dp_dut/dp_cluster_0/N150 ), .Y(n56) );
  AND2X2 U57 ( .A(n56), .B(\dp_dut/dp_cluster_0/N151 ), .Y(n57) );
  AND2X2 U58 ( .A(n57), .B(\dp_dut/dp_cluster_0/N152 ), .Y(n58) );
  AND2X2 U59 ( .A(n51), .B(\dp_dut/dp_cluster_0/N144 ), .Y(n59) );
  AND2X2 U60 ( .A(n37), .B(\dp_dut/dollar_05_num [6]), .Y(n60) );
  AND2X2 U61 ( .A(n38), .B(\dp_dut/dollar_025_num [6]), .Y(n61) );
  AND2X2 U62 ( .A(n8), .B(\dp_dut/inserted_money [14]), .Y(n62) );
  AND2X2 U63 ( .A(n50), .B(\dp_dut/dp_cluster_0/N105 ), .Y(n63) );
  AND2X2 U64 ( .A(n58), .B(\dp_dut/dp_cluster_0/N153 ), .Y(n64) );
  INVX2 U65 ( .A(\dp_dut/n372 ), .Y(n83) );
  INVX2 U66 ( .A(n65), .Y(n71) );
  INVX2 U67 ( .A(\dp_dut/n288 ), .Y(n98) );
  OR2X1 U68 ( .A(n132), .B(n72), .Y(n65) );
  INVX2 U69 ( .A(n66), .Y(n84) );
  INVX2 U70 ( .A(n66), .Y(n85) );
  INVX2 U71 ( .A(n87), .Y(n86) );
  INVX2 U72 ( .A(n72), .Y(n73) );
  INVX2 U73 ( .A(n67), .Y(n70) );
  BUFX2 U74 ( .A(n90), .Y(n97) );
  BUFX2 U75 ( .A(n88), .Y(n91) );
  BUFX2 U76 ( .A(n88), .Y(n92) );
  BUFX2 U77 ( .A(n88), .Y(n93) );
  BUFX2 U78 ( .A(n89), .Y(n94) );
  BUFX2 U79 ( .A(n89), .Y(n95) );
  BUFX2 U80 ( .A(n89), .Y(n96) );
  OR2X1 U81 ( .A(\dp_dut/n344 ), .B(n109), .Y(n66) );
  INVX2 U82 ( .A(\dp_dut/n284 ), .Y(n87) );
  OR2X1 U83 ( .A(\dp_dut/n344 ), .B(\dp_dut/n342 ), .Y(n67) );
  INVX2 U84 ( .A(n2), .Y(n74) );
  INVX2 U85 ( .A(\dp_dut/n345 ), .Y(n72) );
  BUFX2 U86 ( .A(in_inserted_05), .Y(n69) );
  BUFX2 U87 ( .A(in_inserted_025), .Y(n68) );
  BUFX2 U88 ( .A(in_clka), .Y(n88) );
  BUFX2 U89 ( .A(in_clka), .Y(n89) );
  BUFX2 U90 ( .A(in_clka), .Y(n90) );
  OR2X1 U91 ( .A(\dp_dut/inserted_money [10]), .B(\dp_dut/sub_76/carry [10]), 
        .Y(\dp_dut/sub_76/carry [11]) );
  XNOR2X1 U92 ( .A(\dp_dut/sub_76/carry [10]), .B(\dp_dut/inserted_money [10]), 
        .Y(\dp_dut/N54 ) );
  OR2X1 U93 ( .A(\dp_dut/inserted_money [11]), .B(\dp_dut/sub_76/carry [11]), 
        .Y(\dp_dut/sub_76/carry [12]) );
  XNOR2X1 U94 ( .A(\dp_dut/sub_76/carry [11]), .B(\dp_dut/inserted_money [11]), 
        .Y(\dp_dut/N55 ) );
  OR2X1 U95 ( .A(\dp_dut/inserted_money [12]), .B(\dp_dut/sub_76/carry [12]), 
        .Y(\dp_dut/sub_76/carry [13]) );
  XNOR2X1 U96 ( .A(\dp_dut/sub_76/carry [12]), .B(\dp_dut/inserted_money [12]), 
        .Y(\dp_dut/N56 ) );
  OR2X1 U97 ( .A(\dp_dut/inserted_money [13]), .B(\dp_dut/sub_76/carry [13]), 
        .Y(\dp_dut/sub_76/carry [14]) );
  XNOR2X1 U98 ( .A(\dp_dut/sub_76/carry [13]), .B(\dp_dut/inserted_money [13]), 
        .Y(\dp_dut/N57 ) );
  OR2X1 U99 ( .A(\dp_dut/inserted_money [14]), .B(\dp_dut/sub_76/carry [14]), 
        .Y(\dp_dut/sub_76/carry [15]) );
  XNOR2X1 U100 ( .A(\dp_dut/sub_76/carry [14]), .B(\dp_dut/inserted_money [14]), .Y(\dp_dut/N58 ) );
  XNOR2X1 U101 ( .A(\dp_dut/inserted_money [15]), .B(\dp_dut/sub_76/carry [15]), .Y(\dp_dut/N59 ) );
  OR2X1 U102 ( .A(\dp_dut/inserted_money [7]), .B(\dp_dut/sub_76/carry [7]), 
        .Y(\dp_dut/sub_76/carry [8]) );
  XNOR2X1 U103 ( .A(\dp_dut/sub_76/carry [7]), .B(\dp_dut/inserted_money [7]), 
        .Y(\dp_dut/N51 ) );
  OR2X1 U104 ( .A(\dp_dut/inserted_money [8]), .B(\dp_dut/sub_76/carry [8]), 
        .Y(\dp_dut/sub_76/carry [9]) );
  XNOR2X1 U105 ( .A(\dp_dut/sub_76/carry [8]), .B(\dp_dut/inserted_money [8]), 
        .Y(\dp_dut/N52 ) );
  OR2X1 U106 ( .A(\dp_dut/inserted_money [9]), .B(\dp_dut/sub_76/carry [9]), 
        .Y(\dp_dut/sub_76/carry [10]) );
  XNOR2X1 U107 ( .A(\dp_dut/sub_76/carry [9]), .B(\dp_dut/inserted_money [9]), 
        .Y(\dp_dut/N53 ) );
  OR2X1 U108 ( .A(\dp_dut/item_a_num [1]), .B(\dp_dut/r474/carry [1]), .Y(
        \dp_dut/r474/carry [2]) );
  XNOR2X1 U109 ( .A(\dp_dut/r474/carry [1]), .B(\dp_dut/item_a_num [1]), .Y(
        \dp_dut/N215 ) );
  OR2X1 U110 ( .A(\dp_dut/item_a_num [2]), .B(\dp_dut/r474/carry [2]), .Y(
        \dp_dut/r474/carry [3]) );
  XNOR2X1 U111 ( .A(\dp_dut/r474/carry [2]), .B(\dp_dut/item_a_num [2]), .Y(
        \dp_dut/N216 ) );
  OR2X1 U112 ( .A(\dp_dut/item_a_num [3]), .B(\dp_dut/r474/carry [3]), .Y(
        \dp_dut/r474/carry [4]) );
  XNOR2X1 U113 ( .A(\dp_dut/r474/carry [3]), .B(\dp_dut/item_a_num [3]), .Y(
        \dp_dut/N217 ) );
  OR2X1 U114 ( .A(\dp_dut/item_a_num [4]), .B(\dp_dut/r474/carry [4]), .Y(
        \dp_dut/r474/carry [5]) );
  XNOR2X1 U115 ( .A(\dp_dut/r474/carry [4]), .B(\dp_dut/item_a_num [4]), .Y(
        \dp_dut/N218 ) );
  OR2X1 U116 ( .A(\dp_dut/item_a_num [5]), .B(\dp_dut/r474/carry [5]), .Y(
        \dp_dut/r474/carry [6]) );
  XNOR2X1 U117 ( .A(\dp_dut/r474/carry [5]), .B(\dp_dut/item_a_num [5]), .Y(
        \dp_dut/N219 ) );
  OR2X1 U118 ( .A(\dp_dut/item_a_num [6]), .B(\dp_dut/r474/carry [6]), .Y(
        \dp_dut/r474/carry [7]) );
  XNOR2X1 U119 ( .A(\dp_dut/r474/carry [6]), .B(\dp_dut/item_a_num [6]), .Y(
        \dp_dut/N220 ) );
  XNOR2X1 U120 ( .A(\dp_dut/item_a_num [7]), .B(\dp_dut/r474/carry [7]), .Y(
        \dp_dut/N221 ) );
  OR2X1 U121 ( .A(\dp_dut/item_a_num [0]), .B(n188), .Y(\dp_dut/r474/carry [1]) );
  XNOR2X1 U122 ( .A(n188), .B(\dp_dut/item_a_num [0]), .Y(\dp_dut/N214 ) );
  OR2X1 U123 ( .A(\dp_dut/item_b_num [1]), .B(\dp_dut/r475/carry [1]), .Y(
        \dp_dut/r475/carry [2]) );
  XNOR2X1 U124 ( .A(\dp_dut/r475/carry [1]), .B(\dp_dut/item_b_num [1]), .Y(
        \dp_dut/N223 ) );
  OR2X1 U125 ( .A(\dp_dut/item_b_num [2]), .B(\dp_dut/r475/carry [2]), .Y(
        \dp_dut/r475/carry [3]) );
  XNOR2X1 U126 ( .A(\dp_dut/r475/carry [2]), .B(\dp_dut/item_b_num [2]), .Y(
        \dp_dut/N224 ) );
  OR2X1 U127 ( .A(\dp_dut/item_b_num [3]), .B(\dp_dut/r475/carry [3]), .Y(
        \dp_dut/r475/carry [4]) );
  XNOR2X1 U128 ( .A(\dp_dut/r475/carry [3]), .B(\dp_dut/item_b_num [3]), .Y(
        \dp_dut/N225 ) );
  OR2X1 U129 ( .A(\dp_dut/item_b_num [4]), .B(\dp_dut/r475/carry [4]), .Y(
        \dp_dut/r475/carry [5]) );
  XNOR2X1 U130 ( .A(\dp_dut/r475/carry [4]), .B(\dp_dut/item_b_num [4]), .Y(
        \dp_dut/N226 ) );
  OR2X1 U131 ( .A(\dp_dut/item_b_num [5]), .B(\dp_dut/r475/carry [5]), .Y(
        \dp_dut/r475/carry [6]) );
  XNOR2X1 U132 ( .A(\dp_dut/r475/carry [5]), .B(\dp_dut/item_b_num [5]), .Y(
        \dp_dut/N227 ) );
  OR2X1 U133 ( .A(\dp_dut/item_b_num [6]), .B(\dp_dut/r475/carry [6]), .Y(
        \dp_dut/r475/carry [7]) );
  XNOR2X1 U134 ( .A(\dp_dut/r475/carry [6]), .B(\dp_dut/item_b_num [6]), .Y(
        \dp_dut/N228 ) );
  XNOR2X1 U135 ( .A(\dp_dut/item_b_num [7]), .B(\dp_dut/r475/carry [7]), .Y(
        \dp_dut/N229 ) );
  OR2X1 U136 ( .A(\dp_dut/item_b_num [0]), .B(n217), .Y(\dp_dut/r475/carry [1]) );
  XNOR2X1 U137 ( .A(n217), .B(\dp_dut/item_b_num [0]), .Y(\dp_dut/N222 ) );
  OR2X1 U138 ( .A(\dp_dut/item_c_num [1]), .B(\dp_dut/r476/carry [1]), .Y(
        \dp_dut/r476/carry [2]) );
  XNOR2X1 U139 ( .A(\dp_dut/r476/carry [1]), .B(\dp_dut/item_c_num [1]), .Y(
        \dp_dut/N231 ) );
  OR2X1 U140 ( .A(\dp_dut/item_c_num [2]), .B(\dp_dut/r476/carry [2]), .Y(
        \dp_dut/r476/carry [3]) );
  XNOR2X1 U141 ( .A(\dp_dut/r476/carry [2]), .B(\dp_dut/item_c_num [2]), .Y(
        \dp_dut/N232 ) );
  OR2X1 U142 ( .A(\dp_dut/item_c_num [3]), .B(\dp_dut/r476/carry [3]), .Y(
        \dp_dut/r476/carry [4]) );
  XNOR2X1 U143 ( .A(\dp_dut/r476/carry [3]), .B(\dp_dut/item_c_num [3]), .Y(
        \dp_dut/N233 ) );
  OR2X1 U144 ( .A(\dp_dut/item_c_num [4]), .B(\dp_dut/r476/carry [4]), .Y(
        \dp_dut/r476/carry [5]) );
  XNOR2X1 U145 ( .A(\dp_dut/r476/carry [4]), .B(\dp_dut/item_c_num [4]), .Y(
        \dp_dut/N234 ) );
  OR2X1 U146 ( .A(\dp_dut/item_c_num [5]), .B(\dp_dut/r476/carry [5]), .Y(
        \dp_dut/r476/carry [6]) );
  XNOR2X1 U147 ( .A(\dp_dut/r476/carry [5]), .B(\dp_dut/item_c_num [5]), .Y(
        \dp_dut/N235 ) );
  OR2X1 U148 ( .A(\dp_dut/item_c_num [6]), .B(\dp_dut/r476/carry [6]), .Y(
        \dp_dut/r476/carry [7]) );
  XNOR2X1 U149 ( .A(\dp_dut/r476/carry [6]), .B(\dp_dut/item_c_num [6]), .Y(
        \dp_dut/N236 ) );
  XNOR2X1 U150 ( .A(\dp_dut/item_c_num [7]), .B(\dp_dut/r476/carry [7]), .Y(
        \dp_dut/N237 ) );
  OR2X1 U151 ( .A(\dp_dut/item_c_num [0]), .B(n179), .Y(\dp_dut/r476/carry [1]) );
  XNOR2X1 U152 ( .A(n179), .B(\dp_dut/item_c_num [0]), .Y(\dp_dut/N230 ) );
  OR2X1 U153 ( .A(\dp_dut/item_d_num [1]), .B(\dp_dut/r477/carry [1]), .Y(
        \dp_dut/r477/carry [2]) );
  XNOR2X1 U154 ( .A(\dp_dut/r477/carry [1]), .B(\dp_dut/item_d_num [1]), .Y(
        \dp_dut/N239 ) );
  OR2X1 U155 ( .A(\dp_dut/item_d_num [2]), .B(\dp_dut/r477/carry [2]), .Y(
        \dp_dut/r477/carry [3]) );
  XNOR2X1 U156 ( .A(\dp_dut/r477/carry [2]), .B(\dp_dut/item_d_num [2]), .Y(
        \dp_dut/N240 ) );
  OR2X1 U157 ( .A(\dp_dut/item_d_num [3]), .B(\dp_dut/r477/carry [3]), .Y(
        \dp_dut/r477/carry [4]) );
  XNOR2X1 U158 ( .A(\dp_dut/r477/carry [3]), .B(\dp_dut/item_d_num [3]), .Y(
        \dp_dut/N241 ) );
  OR2X1 U159 ( .A(\dp_dut/item_d_num [4]), .B(\dp_dut/r477/carry [4]), .Y(
        \dp_dut/r477/carry [5]) );
  XNOR2X1 U160 ( .A(\dp_dut/r477/carry [4]), .B(\dp_dut/item_d_num [4]), .Y(
        \dp_dut/N242 ) );
  OR2X1 U161 ( .A(\dp_dut/item_d_num [5]), .B(\dp_dut/r477/carry [5]), .Y(
        \dp_dut/r477/carry [6]) );
  XNOR2X1 U162 ( .A(\dp_dut/r477/carry [5]), .B(\dp_dut/item_d_num [5]), .Y(
        \dp_dut/N243 ) );
  OR2X1 U163 ( .A(\dp_dut/item_d_num [6]), .B(\dp_dut/r477/carry [6]), .Y(
        \dp_dut/r477/carry [7]) );
  XNOR2X1 U164 ( .A(\dp_dut/r477/carry [6]), .B(\dp_dut/item_d_num [6]), .Y(
        \dp_dut/N244 ) );
  XNOR2X1 U165 ( .A(\dp_dut/item_d_num [7]), .B(\dp_dut/r477/carry [7]), .Y(
        \dp_dut/N245 ) );
  OR2X1 U166 ( .A(\dp_dut/item_d_num [0]), .B(n170), .Y(\dp_dut/r477/carry [1]) );
  XNOR2X1 U167 ( .A(n170), .B(\dp_dut/item_d_num [0]), .Y(\dp_dut/N238 ) );
  OR2X1 U168 ( .A(\dp_dut/inserted_money [10]), .B(\dp_dut/sub_137/carry [10]), 
        .Y(\dp_dut/sub_137/carry [11]) );
  XNOR2X1 U169 ( .A(\dp_dut/sub_137/carry [10]), .B(
        \dp_dut/inserted_money [10]), .Y(\dp_dut/N208 ) );
  OR2X1 U170 ( .A(\dp_dut/inserted_money [11]), .B(\dp_dut/sub_137/carry [11]), 
        .Y(\dp_dut/sub_137/carry [12]) );
  XNOR2X1 U171 ( .A(\dp_dut/sub_137/carry [11]), .B(
        \dp_dut/inserted_money [11]), .Y(\dp_dut/N209 ) );
  OR2X1 U172 ( .A(\dp_dut/inserted_money [12]), .B(\dp_dut/sub_137/carry [12]), 
        .Y(\dp_dut/sub_137/carry [13]) );
  XNOR2X1 U173 ( .A(\dp_dut/sub_137/carry [12]), .B(
        \dp_dut/inserted_money [12]), .Y(\dp_dut/N210 ) );
  OR2X1 U174 ( .A(\dp_dut/inserted_money [13]), .B(\dp_dut/sub_137/carry [13]), 
        .Y(\dp_dut/sub_137/carry [14]) );
  XNOR2X1 U175 ( .A(\dp_dut/sub_137/carry [13]), .B(
        \dp_dut/inserted_money [13]), .Y(\dp_dut/N211 ) );
  OR2X1 U176 ( .A(\dp_dut/inserted_money [14]), .B(\dp_dut/sub_137/carry [14]), 
        .Y(\dp_dut/sub_137/carry [15]) );
  XNOR2X1 U177 ( .A(\dp_dut/sub_137/carry [14]), .B(
        \dp_dut/inserted_money [14]), .Y(\dp_dut/N212 ) );
  XNOR2X1 U178 ( .A(\dp_dut/inserted_money [15]), .B(
        \dp_dut/sub_137/carry [15]), .Y(\dp_dut/N213 ) );
  OR2X1 U179 ( .A(\dp_dut/inserted_money [7]), .B(\dp_dut/sub_137/carry [7]), 
        .Y(\dp_dut/sub_137/carry [8]) );
  XNOR2X1 U180 ( .A(\dp_dut/sub_137/carry [7]), .B(\dp_dut/inserted_money [7]), 
        .Y(\dp_dut/N205 ) );
  OR2X1 U181 ( .A(\dp_dut/inserted_money [8]), .B(\dp_dut/sub_137/carry [8]), 
        .Y(\dp_dut/sub_137/carry [9]) );
  XNOR2X1 U182 ( .A(\dp_dut/sub_137/carry [8]), .B(\dp_dut/inserted_money [8]), 
        .Y(\dp_dut/N206 ) );
  OR2X1 U183 ( .A(\dp_dut/inserted_money [9]), .B(\dp_dut/sub_137/carry [9]), 
        .Y(\dp_dut/sub_137/carry [10]) );
  XNOR2X1 U184 ( .A(\dp_dut/sub_137/carry [9]), .B(\dp_dut/inserted_money [9]), 
        .Y(\dp_dut/N207 ) );
  OR2X1 U185 ( .A(\dp_dut/dollar_1_num [1]), .B(\dp_dut/sub_171/carry [1]), 
        .Y(\dp_dut/sub_171/carry [2]) );
  XNOR2X1 U186 ( .A(\dp_dut/sub_171/carry [1]), .B(\dp_dut/dollar_1_num [1]), 
        .Y(\dp_dut/N294 ) );
  OR2X1 U187 ( .A(\dp_dut/dollar_1_num [2]), .B(\dp_dut/sub_171/carry [2]), 
        .Y(\dp_dut/sub_171/carry [3]) );
  XNOR2X1 U188 ( .A(\dp_dut/sub_171/carry [2]), .B(\dp_dut/dollar_1_num [2]), 
        .Y(\dp_dut/N295 ) );
  OR2X1 U189 ( .A(\dp_dut/dollar_1_num [3]), .B(\dp_dut/sub_171/carry [3]), 
        .Y(\dp_dut/sub_171/carry [4]) );
  XNOR2X1 U190 ( .A(\dp_dut/sub_171/carry [3]), .B(\dp_dut/dollar_1_num [3]), 
        .Y(\dp_dut/N296 ) );
  OR2X1 U191 ( .A(\dp_dut/dollar_1_num [4]), .B(\dp_dut/sub_171/carry [4]), 
        .Y(\dp_dut/sub_171/carry [5]) );
  XNOR2X1 U192 ( .A(\dp_dut/sub_171/carry [4]), .B(\dp_dut/dollar_1_num [4]), 
        .Y(\dp_dut/N297 ) );
  OR2X1 U193 ( .A(\dp_dut/dollar_1_num [5]), .B(\dp_dut/sub_171/carry [5]), 
        .Y(\dp_dut/sub_171/carry [6]) );
  XNOR2X1 U194 ( .A(\dp_dut/sub_171/carry [5]), .B(\dp_dut/dollar_1_num [5]), 
        .Y(\dp_dut/N298 ) );
  OR2X1 U195 ( .A(\dp_dut/dollar_1_num [6]), .B(\dp_dut/sub_171/carry [6]), 
        .Y(\dp_dut/sub_171/carry [7]) );
  XNOR2X1 U196 ( .A(\dp_dut/sub_171/carry [6]), .B(\dp_dut/dollar_1_num [6]), 
        .Y(\dp_dut/N299 ) );
  XNOR2X1 U197 ( .A(\dp_dut/dollar_1_num [7]), .B(\dp_dut/sub_171/carry [7]), 
        .Y(\dp_dut/N300 ) );
  OR2X1 U198 ( .A(\dp_dut/dollar_1_num [0]), .B(\dp_dut/n389 ), .Y(
        \dp_dut/sub_171/carry [1]) );
  XNOR2X1 U199 ( .A(\dp_dut/n389 ), .B(\dp_dut/dollar_1_num [0]), .Y(
        \dp_dut/N293 ) );
  OR2X1 U200 ( .A(\dp_dut/dollar_05_num [1]), .B(\dp_dut/sub_172/carry [1]), 
        .Y(\dp_dut/sub_172/carry [2]) );
  XNOR2X1 U201 ( .A(\dp_dut/sub_172/carry [1]), .B(\dp_dut/dollar_05_num [1]), 
        .Y(\dp_dut/N312 ) );
  OR2X1 U202 ( .A(\dp_dut/dollar_05_num [2]), .B(\dp_dut/sub_172/carry [2]), 
        .Y(\dp_dut/sub_172/carry [3]) );
  XNOR2X1 U203 ( .A(\dp_dut/sub_172/carry [2]), .B(\dp_dut/dollar_05_num [2]), 
        .Y(\dp_dut/N313 ) );
  OR2X1 U204 ( .A(\dp_dut/dollar_05_num [3]), .B(\dp_dut/sub_172/carry [3]), 
        .Y(\dp_dut/sub_172/carry [4]) );
  XNOR2X1 U205 ( .A(\dp_dut/sub_172/carry [3]), .B(\dp_dut/dollar_05_num [3]), 
        .Y(\dp_dut/N314 ) );
  OR2X1 U206 ( .A(\dp_dut/dollar_05_num [4]), .B(\dp_dut/sub_172/carry [4]), 
        .Y(\dp_dut/sub_172/carry [5]) );
  XNOR2X1 U207 ( .A(\dp_dut/sub_172/carry [4]), .B(\dp_dut/dollar_05_num [4]), 
        .Y(\dp_dut/N315 ) );
  OR2X1 U208 ( .A(\dp_dut/dollar_05_num [5]), .B(\dp_dut/sub_172/carry [5]), 
        .Y(\dp_dut/sub_172/carry [6]) );
  XNOR2X1 U209 ( .A(\dp_dut/sub_172/carry [5]), .B(\dp_dut/dollar_05_num [5]), 
        .Y(\dp_dut/N316 ) );
  OR2X1 U210 ( .A(\dp_dut/dollar_05_num [6]), .B(\dp_dut/sub_172/carry [6]), 
        .Y(\dp_dut/sub_172/carry [7]) );
  XNOR2X1 U211 ( .A(\dp_dut/sub_172/carry [6]), .B(\dp_dut/dollar_05_num [6]), 
        .Y(\dp_dut/N317 ) );
  XNOR2X1 U212 ( .A(\dp_dut/dollar_05_num [7]), .B(\dp_dut/sub_172/carry [7]), 
        .Y(\dp_dut/N318 ) );
  OR2X1 U213 ( .A(\dp_dut/dollar_05_num [0]), .B(\dp_dut/n389 ), .Y(
        \dp_dut/sub_172/carry [1]) );
  XNOR2X1 U214 ( .A(\dp_dut/n389 ), .B(\dp_dut/dollar_05_num [0]), .Y(
        \dp_dut/N311 ) );
  OR2X1 U215 ( .A(\dp_dut/dollar_025_num [1]), .B(\dp_dut/sub_173/carry [1]), 
        .Y(\dp_dut/sub_173/carry [2]) );
  XNOR2X1 U216 ( .A(\dp_dut/sub_173/carry [1]), .B(\dp_dut/dollar_025_num [1]), 
        .Y(\dp_dut/N323 ) );
  OR2X1 U217 ( .A(\dp_dut/dollar_025_num [2]), .B(\dp_dut/sub_173/carry [2]), 
        .Y(\dp_dut/sub_173/carry [3]) );
  XNOR2X1 U218 ( .A(\dp_dut/sub_173/carry [2]), .B(\dp_dut/dollar_025_num [2]), 
        .Y(\dp_dut/N324 ) );
  OR2X1 U219 ( .A(\dp_dut/dollar_025_num [3]), .B(\dp_dut/sub_173/carry [3]), 
        .Y(\dp_dut/sub_173/carry [4]) );
  XNOR2X1 U220 ( .A(\dp_dut/sub_173/carry [3]), .B(\dp_dut/dollar_025_num [3]), 
        .Y(\dp_dut/N325 ) );
  OR2X1 U221 ( .A(\dp_dut/dollar_025_num [4]), .B(\dp_dut/sub_173/carry [4]), 
        .Y(\dp_dut/sub_173/carry [5]) );
  XNOR2X1 U222 ( .A(\dp_dut/sub_173/carry [4]), .B(\dp_dut/dollar_025_num [4]), 
        .Y(\dp_dut/N326 ) );
  OR2X1 U223 ( .A(\dp_dut/dollar_025_num [5]), .B(\dp_dut/sub_173/carry [5]), 
        .Y(\dp_dut/sub_173/carry [6]) );
  XNOR2X1 U224 ( .A(\dp_dut/sub_173/carry [5]), .B(\dp_dut/dollar_025_num [5]), 
        .Y(\dp_dut/N327 ) );
  OR2X1 U225 ( .A(\dp_dut/dollar_025_num [6]), .B(\dp_dut/sub_173/carry [6]), 
        .Y(\dp_dut/sub_173/carry [7]) );
  XNOR2X1 U226 ( .A(\dp_dut/sub_173/carry [6]), .B(\dp_dut/dollar_025_num [6]), 
        .Y(\dp_dut/N328 ) );
  XNOR2X1 U227 ( .A(\dp_dut/dollar_025_num [7]), .B(\dp_dut/sub_173/carry [7]), 
        .Y(\dp_dut/N329 ) );
  OR2X1 U228 ( .A(\dp_dut/dollar_025_num [0]), .B(\dp_dut/n389 ), .Y(
        \dp_dut/sub_173/carry [1]) );
  XNOR2X1 U229 ( .A(\dp_dut/n389 ), .B(\dp_dut/dollar_025_num [0]), .Y(
        \dp_dut/N322 ) );
  OR2X1 U230 ( .A(\dp_dut/dollar_1_num [0]), .B(n200), .Y(
        \dp_dut/sub_185/carry [1]) );
  XNOR2X1 U231 ( .A(n200), .B(\dp_dut/dollar_1_num [0]), .Y(\dp_dut/N333 ) );
  OR2X1 U232 ( .A(\dp_dut/dollar_05_num [1]), .B(\dp_dut/sub_186/carry [1]), 
        .Y(\dp_dut/sub_186/carry [2]) );
  XNOR2X1 U233 ( .A(\dp_dut/sub_186/carry [1]), .B(\dp_dut/dollar_05_num [1]), 
        .Y(\dp_dut/N342 ) );
  OR2X1 U234 ( .A(\dp_dut/dollar_05_num [2]), .B(\dp_dut/sub_186/carry [2]), 
        .Y(\dp_dut/sub_186/carry [3]) );
  XNOR2X1 U235 ( .A(\dp_dut/sub_186/carry [2]), .B(\dp_dut/dollar_05_num [2]), 
        .Y(\dp_dut/N343 ) );
  OR2X1 U236 ( .A(\dp_dut/dollar_05_num [3]), .B(\dp_dut/sub_186/carry [3]), 
        .Y(\dp_dut/sub_186/carry [4]) );
  XNOR2X1 U237 ( .A(\dp_dut/sub_186/carry [3]), .B(\dp_dut/dollar_05_num [3]), 
        .Y(\dp_dut/N344 ) );
  OR2X1 U238 ( .A(\dp_dut/dollar_05_num [4]), .B(\dp_dut/sub_186/carry [4]), 
        .Y(\dp_dut/sub_186/carry [5]) );
  XNOR2X1 U239 ( .A(\dp_dut/sub_186/carry [4]), .B(\dp_dut/dollar_05_num [4]), 
        .Y(\dp_dut/N345 ) );
  OR2X1 U240 ( .A(\dp_dut/dollar_05_num [5]), .B(\dp_dut/sub_186/carry [5]), 
        .Y(\dp_dut/sub_186/carry [6]) );
  XNOR2X1 U241 ( .A(\dp_dut/sub_186/carry [5]), .B(\dp_dut/dollar_05_num [5]), 
        .Y(\dp_dut/N346 ) );
  OR2X1 U242 ( .A(\dp_dut/dollar_05_num [6]), .B(\dp_dut/sub_186/carry [6]), 
        .Y(\dp_dut/sub_186/carry [7]) );
  XNOR2X1 U243 ( .A(\dp_dut/sub_186/carry [6]), .B(\dp_dut/dollar_05_num [6]), 
        .Y(\dp_dut/N347 ) );
  XNOR2X1 U244 ( .A(\dp_dut/dollar_05_num [7]), .B(\dp_dut/sub_186/carry [7]), 
        .Y(\dp_dut/N348 ) );
  OR2X1 U245 ( .A(\dp_dut/dollar_05_num [0]), .B(n201), .Y(
        \dp_dut/sub_186/carry [1]) );
  XNOR2X1 U246 ( .A(n201), .B(\dp_dut/dollar_05_num [0]), .Y(\dp_dut/N341 ) );
  OR2X1 U247 ( .A(\dp_dut/dollar_025_num [1]), .B(\dp_dut/sub_187/carry [1]), 
        .Y(\dp_dut/sub_187/carry [2]) );
  XNOR2X1 U248 ( .A(\dp_dut/sub_187/carry [1]), .B(\dp_dut/dollar_025_num [1]), 
        .Y(\dp_dut/N350 ) );
  OR2X1 U249 ( .A(\dp_dut/dollar_025_num [2]), .B(\dp_dut/sub_187/carry [2]), 
        .Y(\dp_dut/sub_187/carry [3]) );
  XNOR2X1 U250 ( .A(\dp_dut/sub_187/carry [2]), .B(\dp_dut/dollar_025_num [2]), 
        .Y(\dp_dut/N351 ) );
  OR2X1 U251 ( .A(\dp_dut/dollar_025_num [3]), .B(\dp_dut/sub_187/carry [3]), 
        .Y(\dp_dut/sub_187/carry [4]) );
  XNOR2X1 U252 ( .A(\dp_dut/sub_187/carry [3]), .B(\dp_dut/dollar_025_num [3]), 
        .Y(\dp_dut/N352 ) );
  OR2X1 U253 ( .A(\dp_dut/dollar_025_num [4]), .B(\dp_dut/sub_187/carry [4]), 
        .Y(\dp_dut/sub_187/carry [5]) );
  XNOR2X1 U254 ( .A(\dp_dut/sub_187/carry [4]), .B(\dp_dut/dollar_025_num [4]), 
        .Y(\dp_dut/N353 ) );
  OR2X1 U255 ( .A(\dp_dut/dollar_025_num [5]), .B(\dp_dut/sub_187/carry [5]), 
        .Y(\dp_dut/sub_187/carry [6]) );
  XNOR2X1 U256 ( .A(\dp_dut/sub_187/carry [5]), .B(\dp_dut/dollar_025_num [5]), 
        .Y(\dp_dut/N354 ) );
  OR2X1 U257 ( .A(\dp_dut/dollar_025_num [6]), .B(\dp_dut/sub_187/carry [6]), 
        .Y(\dp_dut/sub_187/carry [7]) );
  XNOR2X1 U258 ( .A(\dp_dut/sub_187/carry [6]), .B(\dp_dut/dollar_025_num [6]), 
        .Y(\dp_dut/N355 ) );
  XNOR2X1 U259 ( .A(\dp_dut/dollar_025_num [7]), .B(\dp_dut/sub_187/carry [7]), 
        .Y(\dp_dut/N356 ) );
  OR2X1 U260 ( .A(\dp_dut/dollar_025_num [0]), .B(n202), .Y(
        \dp_dut/sub_187/carry [1]) );
  XNOR2X1 U261 ( .A(n202), .B(\dp_dut/dollar_025_num [0]), .Y(\dp_dut/N349 )
         );
  OR2X1 U262 ( .A(\dp_dut/inserted_money [6]), .B(\dp_dut/sub_76/carry [6]), 
        .Y(\dp_dut/sub_76/carry [7]) );
  XNOR2X1 U263 ( .A(\dp_dut/sub_76/carry [6]), .B(\dp_dut/inserted_money [6]), 
        .Y(\dp_dut/N50 ) );
  OR2X1 U264 ( .A(\dp_dut/inserted_money [6]), .B(\dp_dut/sub_137/carry [6]), 
        .Y(\dp_dut/sub_137/carry [7]) );
  XNOR2X1 U265 ( .A(\dp_dut/sub_137/carry [6]), .B(\dp_dut/inserted_money [6]), 
        .Y(\dp_dut/N204 ) );
  OR2X1 U266 ( .A(\dp_dut/inserted_money [1]), .B(n126), .Y(
        \dp_dut/sub_76/carry [2]) );
  XNOR2X1 U267 ( .A(n126), .B(\dp_dut/inserted_money [1]), .Y(\dp_dut/N45 ) );
  OR2X1 U268 ( .A(\dp_dut/inserted_money [1]), .B(n126), .Y(
        \dp_dut/sub_137/carry [2]) );
  XNOR2X1 U269 ( .A(n126), .B(\dp_dut/inserted_money [1]), .Y(\dp_dut/N199 )
         );
  XOR2X1 U270 ( .A(in_inserted_1), .B(\dp_dut/dollar_1_num [0]), .Y(
        \dp_dut/N171 ) );
  XOR2X1 U271 ( .A(n17), .B(\dp_dut/dollar_1_num [1]), .Y(\dp_dut/N172 ) );
  XOR2X1 U272 ( .A(n24), .B(\dp_dut/dollar_1_num [2]), .Y(\dp_dut/N173 ) );
  XOR2X1 U273 ( .A(n3), .B(\dp_dut/dollar_1_num [3]), .Y(\dp_dut/N174 ) );
  XOR2X1 U274 ( .A(n19), .B(\dp_dut/dollar_1_num [4]), .Y(\dp_dut/N175 ) );
  XOR2X1 U275 ( .A(n4), .B(\dp_dut/dollar_1_num [5]), .Y(\dp_dut/N176 ) );
  XOR2X1 U276 ( .A(n20), .B(\dp_dut/dollar_1_num [6]), .Y(\dp_dut/N177 ) );
  XOR2X1 U277 ( .A(\dp_dut/dollar_1_num [7]), .B(n43), .Y(\dp_dut/N178 ) );
  XOR2X1 U278 ( .A(n69), .B(\dp_dut/dollar_05_num [0]), .Y(\dp_dut/N179 ) );
  XOR2X1 U279 ( .A(n25), .B(\dp_dut/dollar_05_num [1]), .Y(\dp_dut/N180 ) );
  XOR2X1 U280 ( .A(n30), .B(\dp_dut/dollar_05_num [2]), .Y(\dp_dut/N181 ) );
  XOR2X1 U281 ( .A(n31), .B(\dp_dut/dollar_05_num [3]), .Y(\dp_dut/N182 ) );
  XOR2X1 U282 ( .A(n6), .B(\dp_dut/dollar_05_num [4]), .Y(\dp_dut/N183 ) );
  XOR2X1 U283 ( .A(n32), .B(\dp_dut/dollar_05_num [5]), .Y(\dp_dut/N184 ) );
  XOR2X1 U284 ( .A(n37), .B(\dp_dut/dollar_05_num [6]), .Y(\dp_dut/N185 ) );
  XOR2X1 U285 ( .A(\dp_dut/dollar_05_num [7]), .B(n60), .Y(\dp_dut/N186 ) );
  XOR2X1 U286 ( .A(n68), .B(\dp_dut/dollar_025_num [0]), .Y(\dp_dut/N187 ) );
  XOR2X1 U287 ( .A(n26), .B(\dp_dut/dollar_025_num [1]), .Y(\dp_dut/N188 ) );
  XOR2X1 U288 ( .A(n28), .B(\dp_dut/dollar_025_num [2]), .Y(\dp_dut/N189 ) );
  XOR2X1 U289 ( .A(n33), .B(\dp_dut/dollar_025_num [3]), .Y(\dp_dut/N190 ) );
  XOR2X1 U290 ( .A(n7), .B(\dp_dut/dollar_025_num [4]), .Y(\dp_dut/N191 ) );
  XOR2X1 U291 ( .A(n34), .B(\dp_dut/dollar_025_num [5]), .Y(\dp_dut/N192 ) );
  XOR2X1 U292 ( .A(n38), .B(\dp_dut/dollar_025_num [6]), .Y(\dp_dut/N193 ) );
  XOR2X1 U293 ( .A(\dp_dut/dollar_025_num [7]), .B(n61), .Y(\dp_dut/N194 ) );
  XOR2X1 U294 ( .A(n13), .B(\dp_dut/inserted_money [4]), .Y(
        \dp_dut/dp_cluster_0/N95 ) );
  XOR2X1 U295 ( .A(n14), .B(\dp_dut/inserted_money [5]), .Y(
        \dp_dut/dp_cluster_0/N96 ) );
  XOR2X1 U296 ( .A(n15), .B(\dp_dut/inserted_money [6]), .Y(
        \dp_dut/dp_cluster_0/N97 ) );
  XOR2X1 U297 ( .A(n27), .B(\dp_dut/inserted_money [7]), .Y(
        \dp_dut/dp_cluster_0/N98 ) );
  XOR2X1 U298 ( .A(n5), .B(\dp_dut/inserted_money [8]), .Y(
        \dp_dut/dp_cluster_0/N99 ) );
  XOR2X1 U299 ( .A(n21), .B(\dp_dut/inserted_money [9]), .Y(
        \dp_dut/dp_cluster_0/N100 ) );
  XOR2X1 U300 ( .A(n22), .B(\dp_dut/inserted_money [10]), .Y(
        \dp_dut/dp_cluster_0/N101 ) );
  XOR2X1 U301 ( .A(n23), .B(\dp_dut/inserted_money [11]), .Y(
        \dp_dut/dp_cluster_0/N102 ) );
  XOR2X1 U302 ( .A(n29), .B(\dp_dut/inserted_money [12]), .Y(
        \dp_dut/dp_cluster_0/N103 ) );
  XOR2X1 U303 ( .A(n35), .B(\dp_dut/inserted_money [13]), .Y(
        \dp_dut/dp_cluster_0/N104 ) );
  XOR2X1 U304 ( .A(n8), .B(\dp_dut/inserted_money [14]), .Y(
        \dp_dut/dp_cluster_0/N105 ) );
  XOR2X1 U305 ( .A(\dp_dut/inserted_money [15]), .B(n62), .Y(
        \dp_dut/dp_cluster_0/N106 ) );
  XOR2X1 U306 ( .A(n42), .B(\dp_dut/dp_cluster_0/N98 ), .Y(
        \dp_dut/dp_cluster_0/N146 ) );
  XOR2X1 U307 ( .A(n44), .B(\dp_dut/dp_cluster_0/N99 ), .Y(
        \dp_dut/dp_cluster_0/N147 ) );
  XOR2X1 U308 ( .A(n45), .B(\dp_dut/dp_cluster_0/N100 ), .Y(
        \dp_dut/dp_cluster_0/N148 ) );
  XOR2X1 U309 ( .A(n46), .B(\dp_dut/dp_cluster_0/N101 ), .Y(
        \dp_dut/dp_cluster_0/N149 ) );
  XOR2X1 U310 ( .A(n47), .B(\dp_dut/dp_cluster_0/N102 ), .Y(
        \dp_dut/dp_cluster_0/N150 ) );
  XOR2X1 U311 ( .A(n48), .B(\dp_dut/dp_cluster_0/N103 ), .Y(
        \dp_dut/dp_cluster_0/N151 ) );
  XOR2X1 U312 ( .A(n49), .B(\dp_dut/dp_cluster_0/N104 ), .Y(
        \dp_dut/dp_cluster_0/N152 ) );
  XOR2X1 U313 ( .A(n50), .B(\dp_dut/dp_cluster_0/N105 ), .Y(
        \dp_dut/dp_cluster_0/N153 ) );
  XOR2X1 U314 ( .A(\dp_dut/dp_cluster_0/N106 ), .B(n63), .Y(
        \dp_dut/dp_cluster_0/N154 ) );
  XOR2X1 U315 ( .A(\dp_dut/inserted_money [1]), .B(n68), .Y(\dp_dut/N156 ) );
  XOR2X1 U316 ( .A(n41), .B(\dp_dut/dp_cluster_0/N143 ), .Y(\dp_dut/N159 ) );
  XOR2X1 U317 ( .A(n51), .B(\dp_dut/dp_cluster_0/N144 ), .Y(\dp_dut/N160 ) );
  XOR2X1 U318 ( .A(n59), .B(\dp_dut/dp_cluster_0/N145 ), .Y(\dp_dut/N161 ) );
  XOR2X1 U319 ( .A(n9), .B(\dp_dut/dp_cluster_0/N146 ), .Y(\dp_dut/N162 ) );
  XOR2X1 U320 ( .A(n52), .B(\dp_dut/dp_cluster_0/N147 ), .Y(\dp_dut/N163 ) );
  XOR2X1 U321 ( .A(n53), .B(\dp_dut/dp_cluster_0/N148 ), .Y(\dp_dut/N164 ) );
  XOR2X1 U322 ( .A(n54), .B(\dp_dut/dp_cluster_0/N149 ), .Y(\dp_dut/N165 ) );
  XOR2X1 U323 ( .A(n55), .B(\dp_dut/dp_cluster_0/N150 ), .Y(\dp_dut/N166 ) );
  XOR2X1 U324 ( .A(n56), .B(\dp_dut/dp_cluster_0/N151 ), .Y(\dp_dut/N167 ) );
  XOR2X1 U325 ( .A(n57), .B(\dp_dut/dp_cluster_0/N152 ), .Y(\dp_dut/N168 ) );
  XOR2X1 U326 ( .A(n58), .B(\dp_dut/dp_cluster_0/N153 ), .Y(\dp_dut/N169 ) );
  XOR2X1 U327 ( .A(\dp_dut/dp_cluster_0/N154 ), .B(n64), .Y(\dp_dut/N170 ) );
  XOR2X1 U328 ( .A(out_csel_d), .B(out_csel_c), .Y(\dp_dut/dp_cluster_1/N34 )
         );
  XOR2X1 U329 ( .A(out_csel_c), .B(out_csel_a), .Y(\dp_dut/N38 ) );
  XOR2X1 U330 ( .A(in_inserted_5), .B(\dp_dut/inserted_money [3]), .Y(
        \dp_dut/dp_cluster_0/N94 ) );
  XOR2X1 U331 ( .A(in_inserted_1), .B(\dp_dut/dp_cluster_0/N94 ), .Y(
        \dp_dut/dp_cluster_0/N142 ) );
  XOR2X1 U332 ( .A(out_csel_b), .B(out_csel_a), .Y(\dp_dut/dp_cluster_1/N28 )
         );
  XOR2X1 U333 ( .A(n36), .B(\dp_dut/dp_cluster_1/N28 ), .Y(\dp_dut/N39 ) );
  XOR2X1 U334 ( .A(\dp_dut/dp_cluster_0/add_0_root_add_121_5/carry[3] ), .B(
        \dp_dut/dp_cluster_0/N142 ), .Y(\dp_dut/N158 ) );
  XOR2X1 U335 ( .A(n18), .B(\dp_dut/dp_cluster_0/N95 ), .Y(
        \dp_dut/dp_cluster_0/N143 ) );
  XOR2X1 U336 ( .A(\dp_dut/dp_cluster_0/add_1_root_add_121_5/carry[6] ), .B(
        \dp_dut/dp_cluster_0/N97 ), .Y(\dp_dut/dp_cluster_0/N145 ) );
  NAND2X1 U337 ( .A(cmd[1]), .B(n131), .Y(n75) );
  NAND2X1 U338 ( .A(cmd[1]), .B(n131), .Y(n76) );
  BUFX2 U339 ( .A(n75), .Y(n77) );
  BUFX2 U340 ( .A(n75), .Y(n78) );
  BUFX2 U341 ( .A(n76), .Y(n79) );
  BUFX2 U342 ( .A(n76), .Y(n80) );
  BUFX2 U343 ( .A(\dp_dut/n202 ), .Y(n81) );
  BUFX2 U344 ( .A(\dp_dut/n202 ), .Y(n82) );
  AND2X2 U345 ( .A(n261), .B(n260), .Y(n262) );
  INVX2 U346 ( .A(\dp_dut/n341 ), .Y(n99) );
  INVX2 U347 ( .A(in_restart), .Y(n100) );
  INVX2 U348 ( .A(\dp_dut/n248 ), .Y(n101) );
  INVX2 U349 ( .A(\dp_dut/n234 ), .Y(n102) );
  INVX2 U350 ( .A(in_sel_a), .Y(n103) );
  INVX2 U351 ( .A(in_sel_b), .Y(n104) );
  INVX2 U352 ( .A(in_sel_c), .Y(n105) );
  INVX2 U353 ( .A(in_sel_d), .Y(n106) );
  INVX2 U354 ( .A(\dp_dut/n373 ), .Y(n107) );
  INVX2 U355 ( .A(\dp_dut/n239 ), .Y(n108) );
  INVX2 U356 ( .A(\dp_dut/n342 ), .Y(n109) );
  INVX2 U357 ( .A(\dp_dut/n272 ), .Y(n110) );
  INVX2 U358 ( .A(\dp_dut/n389 ), .Y(out_sol_ok) );
  INVX2 U359 ( .A(\dp_dut/n210 ), .Y(n112) );
  INVX2 U360 ( .A(n229), .Y(n113) );
  INVX2 U361 ( .A(\dp_dut/n225 ), .Y(n114) );
  INVX2 U362 ( .A(n233), .Y(n115) );
  INVX2 U363 ( .A(\dp_dut/n222 ), .Y(n116) );
  INVX2 U364 ( .A(\dp_dut/n220 ), .Y(n117) );
  INVX2 U365 ( .A(n230), .Y(n118) );
  INVX2 U366 ( .A(\dp_dut/n218 ), .Y(n119) );
  INVX2 U367 ( .A(\dp_dut/n216 ), .Y(n120) );
  INVX2 U368 ( .A(n234), .Y(n121) );
  INVX2 U369 ( .A(\dp_dut/n214 ), .Y(n122) );
  INVX2 U370 ( .A(\dp_dut/n212 ), .Y(n123) );
  INVX2 U371 ( .A(\dp_dut/n208 ), .Y(n124) );
  INVX2 U372 ( .A(\dp_dut/n203 ), .Y(out_change[15]) );
  INVX2 U373 ( .A(\dp_dut/total_price [1]), .Y(n126) );
  INVX2 U374 ( .A(\dp_dut/total_price [2]), .Y(n127) );
  INVX2 U375 ( .A(n246), .Y(n128) );
  INVX2 U376 ( .A(\dp_dut/total_price [4]), .Y(n129) );
  INVX2 U377 ( .A(\dp_dut/total_price [5]), .Y(n130) );
  INVX2 U378 ( .A(cmd[0]), .Y(n131) );
  INVX2 U379 ( .A(\dp_dut/n388 ), .Y(n132) );
  INVX2 U380 ( .A(\main_FSM_dut/next_out_state[1] ), .Y(n133) );
  INVX2 U381 ( .A(out_state[0]), .Y(n134) );
  INVX2 U382 ( .A(out_change_05), .Y(n135) );
  INVX2 U383 ( .A(out_change_1[1]), .Y(n136) );
  INVX2 U384 ( .A(\dp_dut/dollar_05_num [6]), .Y(n137) );
  INVX2 U385 ( .A(\dp_dut/dollar_05_num [5]), .Y(n138) );
  INVX2 U386 ( .A(\dp_dut/dollar_05_num [4]), .Y(n139) );
  INVX2 U387 ( .A(\dp_dut/dollar_05_num [3]), .Y(n140) );
  INVX2 U388 ( .A(\dp_dut/dollar_05_num [2]), .Y(n141) );
  INVX2 U389 ( .A(\dp_dut/dollar_05_num [7]), .Y(n142) );
  INVX2 U390 ( .A(\dp_dut/dollar_05_num [0]), .Y(n143) );
  INVX2 U391 ( .A(\dp_dut/dollar_025_num [6]), .Y(n144) );
  INVX2 U392 ( .A(\dp_dut/dollar_025_num [5]), .Y(n145) );
  INVX2 U393 ( .A(\dp_dut/dollar_025_num [4]), .Y(n146) );
  INVX2 U394 ( .A(\dp_dut/dollar_025_num [3]), .Y(n147) );
  INVX2 U395 ( .A(\dp_dut/dollar_025_num [2]), .Y(n148) );
  INVX2 U396 ( .A(\dp_dut/dollar_025_num [1]), .Y(n149) );
  INVX2 U397 ( .A(\dp_dut/dollar_025_num [7]), .Y(n150) );
  INVX2 U398 ( .A(\dp_dut/dollar_025_num [0]), .Y(n151) );
  INVX2 U399 ( .A(\dp_dut/dollar_1_num [3]), .Y(n152) );
  INVX2 U400 ( .A(\dp_dut/dollar_1_num [5]), .Y(n153) );
  INVX2 U401 ( .A(out_change_1[0]), .Y(n154) );
  INVX2 U402 ( .A(out_change_1[2]), .Y(n155) );
  INVX2 U403 ( .A(out_change_1[3]), .Y(n156) );
  INVX2 U404 ( .A(out_change_1[4]), .Y(n157) );
  INVX2 U405 ( .A(out_change_1[5]), .Y(n158) );
  INVX2 U406 ( .A(out_change_1[6]), .Y(n159) );
  INVX2 U407 ( .A(out_change_1[7]), .Y(n160) );
  INVX2 U408 ( .A(out_change_025), .Y(n161) );
  INVX2 U409 ( .A(\dp_dut/item_d_num [7]), .Y(n162) );
  INVX2 U410 ( .A(\dp_dut/item_d_num [6]), .Y(n163) );
  INVX2 U411 ( .A(\dp_dut/item_d_num [5]), .Y(n164) );
  INVX2 U412 ( .A(\dp_dut/item_d_num [4]), .Y(n165) );
  INVX2 U413 ( .A(\dp_dut/item_d_num [3]), .Y(n166) );
  INVX2 U414 ( .A(\dp_dut/item_d_num [2]), .Y(n167) );
  INVX2 U415 ( .A(\dp_dut/item_d_num [1]), .Y(n168) );
  INVX2 U416 ( .A(\dp_dut/item_d_num [0]), .Y(n169) );
  INVX2 U417 ( .A(out_csel_d), .Y(n170) );
  INVX2 U418 ( .A(\dp_dut/item_c_num [7]), .Y(n171) );
  INVX2 U419 ( .A(\dp_dut/item_c_num [6]), .Y(n172) );
  INVX2 U420 ( .A(\dp_dut/item_c_num [5]), .Y(n173) );
  INVX2 U421 ( .A(\dp_dut/item_c_num [4]), .Y(n174) );
  INVX2 U422 ( .A(\dp_dut/item_c_num [3]), .Y(n175) );
  INVX2 U423 ( .A(\dp_dut/item_c_num [2]), .Y(n176) );
  INVX2 U424 ( .A(\dp_dut/item_c_num [1]), .Y(n177) );
  INVX2 U425 ( .A(\dp_dut/item_c_num [0]), .Y(n178) );
  INVX2 U426 ( .A(out_csel_c), .Y(n179) );
  INVX2 U427 ( .A(\dp_dut/item_a_num [7]), .Y(n180) );
  INVX2 U428 ( .A(\dp_dut/item_a_num [6]), .Y(n181) );
  INVX2 U429 ( .A(\dp_dut/item_a_num [5]), .Y(n182) );
  INVX2 U430 ( .A(\dp_dut/item_a_num [4]), .Y(n183) );
  INVX2 U431 ( .A(\dp_dut/item_a_num [3]), .Y(n184) );
  INVX2 U432 ( .A(\dp_dut/item_a_num [2]), .Y(n185) );
  INVX2 U433 ( .A(\dp_dut/item_a_num [1]), .Y(n186) );
  INVX2 U434 ( .A(\dp_dut/item_a_num [0]), .Y(n187) );
  INVX2 U435 ( .A(out_csel_a), .Y(n188) );
  INVX2 U436 ( .A(\dp_dut/inserted_money [13]), .Y(n189) );
  INVX2 U437 ( .A(\dp_dut/inserted_money [12]), .Y(n190) );
  INVX2 U438 ( .A(\dp_dut/inserted_money [11]), .Y(n191) );
  INVX2 U439 ( .A(\dp_dut/inserted_money [10]), .Y(n192) );
  INVX2 U440 ( .A(\dp_dut/inserted_money [9]), .Y(n193) );
  INVX2 U441 ( .A(n252), .Y(n194) );
  INVX2 U442 ( .A(\dp_dut/inserted_money [8]), .Y(n195) );
  INVX2 U443 ( .A(\dp_dut/inserted_money [7]), .Y(n196) );
  INVX2 U444 ( .A(\dp_dut/inserted_money [6]), .Y(n197) );
  INVX2 U445 ( .A(\dp_dut/inserted_money [5]), .Y(n198) );
  INVX2 U446 ( .A(\dp_dut/inserted_money [4]), .Y(n199) );
  INVX2 U447 ( .A(\dp_dut/inserted_money [3]), .Y(n200) );
  INVX2 U448 ( .A(\dp_dut/inserted_money [2]), .Y(n201) );
  INVX2 U449 ( .A(\dp_dut/inserted_money [1]), .Y(n202) );
  INVX2 U450 ( .A(\dp_dut/N155 ), .Y(n203) );
  INVX2 U451 ( .A(\dp_dut/item_b_num [6]), .Y(n204) );
  INVX2 U452 ( .A(\dp_dut/item_b_num [5]), .Y(n205) );
  INVX2 U453 ( .A(\dp_dut/item_b_num [4]), .Y(n206) );
  INVX2 U454 ( .A(\dp_dut/item_b_num [3]), .Y(n207) );
  INVX2 U455 ( .A(\dp_dut/item_b_num [2]), .Y(n208) );
  INVX2 U456 ( .A(\dp_dut/item_b_num [1]), .Y(n209) );
  INVX2 U457 ( .A(\dp_dut/item_b_num [0]), .Y(n210) );
  INVX2 U458 ( .A(\dp_dut/item_b_num [7]), .Y(n211) );
  INVX2 U459 ( .A(\dp_dut/dollar_1_num [0]), .Y(n212) );
  INVX2 U460 ( .A(\dp_dut/dollar_1_num [7]), .Y(n213) );
  INVX2 U461 ( .A(\dp_dut/dollar_1_num [1]), .Y(n214) );
  INVX2 U462 ( .A(\dp_dut/inserted_money [14]), .Y(n215) );
  INVX2 U463 ( .A(\dp_dut/inserted_money [15]), .Y(n216) );
  INVX2 U464 ( .A(out_csel_b), .Y(n217) );
  NAND2X1 U465 ( .A(\dp_dut/total_price [1]), .B(n202), .Y(n248) );
  NAND2X1 U466 ( .A(\dp_dut/total_price [5]), .B(n198), .Y(n254) );
  NAND2X1 U467 ( .A(n197), .B(n247), .Y(n252) );
  NOR2X1 U468 ( .A(\dp_dut/dollar_025_num [7]), .B(\dp_dut/dollar_025_num [6]), 
        .Y(n219) );
  NOR2X1 U469 ( .A(\dp_dut/dollar_025_num [4]), .B(\dp_dut/dollar_025_num [3]), 
        .Y(n218) );
  NAND3X1 U470 ( .A(n219), .B(n145), .C(n218), .Y(n222) );
  NOR2X1 U471 ( .A(\dp_dut/dollar_025_num [2]), .B(\dp_dut/dollar_025_num [1]), 
        .Y(n220) );
  NAND3X1 U472 ( .A(n112), .B(n151), .C(n220), .Y(n221) );
  OR2X1 U473 ( .A(n222), .B(n221), .Y(\dp_dut/N63 ) );
  NOR2X1 U474 ( .A(\dp_dut/dollar_05_num [7]), .B(\dp_dut/dollar_05_num [6]), 
        .Y(n224) );
  NOR2X1 U475 ( .A(\dp_dut/dollar_05_num [4]), .B(\dp_dut/dollar_05_num [3]), 
        .Y(n223) );
  NAND3X1 U476 ( .A(n224), .B(n138), .C(n223), .Y(n227) );
  NOR2X1 U477 ( .A(\dp_dut/dollar_05_num [2]), .B(\dp_dut/dollar_05_num [1]), 
        .Y(n225) );
  NAND3X1 U478 ( .A(n124), .B(n143), .C(n225), .Y(n226) );
  OR2X1 U479 ( .A(n227), .B(n226), .Y(\dp_dut/N62 ) );
  NAND2X1 U480 ( .A(n117), .B(n152), .Y(n232) );
  NAND3X1 U481 ( .A(n232), .B(\dp_dut/n222 ), .C(\dp_dut/dollar_1_num [2]), 
        .Y(n228) );
  OAI21X1 U482 ( .A(n117), .B(n152), .C(n228), .Y(n235) );
  AOI22X1 U483 ( .A(n214), .B(\dp_dut/out_change_1_sol1[1] ), .C(n212), .D(
        n114), .Y(n229) );
  OAI21X1 U484 ( .A(\dp_dut/out_change_1_sol1[1] ), .B(n214), .C(n113), .Y(
        n231) );
  NAND2X1 U485 ( .A(n120), .B(n153), .Y(n238) );
  OAI21X1 U486 ( .A(\dp_dut/n218 ), .B(\dp_dut/dollar_1_num [4]), .C(n238), 
        .Y(n230) );
  OAI21X1 U487 ( .A(n235), .B(n231), .C(n118), .Y(n244) );
  OAI21X1 U488 ( .A(\dp_dut/n222 ), .B(\dp_dut/dollar_1_num [2]), .C(n232), 
        .Y(n233) );
  NAND2X1 U489 ( .A(n123), .B(n213), .Y(n236) );
  OAI21X1 U490 ( .A(\dp_dut/dollar_1_num [6]), .B(\dp_dut/n214 ), .C(n236), 
        .Y(n234) );
  OAI21X1 U491 ( .A(n115), .B(n235), .C(n121), .Y(n243) );
  NAND3X1 U492 ( .A(n236), .B(\dp_dut/n214 ), .C(\dp_dut/dollar_1_num [6]), 
        .Y(n237) );
  OAI21X1 U493 ( .A(n123), .B(n213), .C(n237), .Y(n241) );
  NAND3X1 U494 ( .A(n238), .B(\dp_dut/n218 ), .C(\dp_dut/dollar_1_num [4]), 
        .Y(n239) );
  OAI21X1 U495 ( .A(n120), .B(n153), .C(n239), .Y(n240) );
  OAI22X1 U496 ( .A(n241), .B(n240), .C(n121), .D(n241), .Y(n242) );
  OAI21X1 U497 ( .A(n244), .B(n243), .C(n242), .Y(\dp_dut/N61 ) );
  NAND2X1 U498 ( .A(\dp_dut/inserted_money [3]), .B(n10), .Y(n249) );
  NAND3X1 U499 ( .A(n249), .B(n201), .C(\dp_dut/total_price [2]), .Y(n245) );
  OAI21X1 U500 ( .A(\dp_dut/inserted_money [3]), .B(n10), .C(n245), .Y(n246)
         );
  NOR2X1 U501 ( .A(\dp_dut/inserted_money [8]), .B(\dp_dut/inserted_money [7]), 
        .Y(n247) );
  AOI21X1 U502 ( .A(n248), .B(n128), .C(n252), .Y(n258) );
  OAI21X1 U503 ( .A(\dp_dut/total_price [2]), .B(n201), .C(n249), .Y(n251) );
  OR2X1 U504 ( .A(n198), .B(\dp_dut/total_price [5]), .Y(n253) );
  OAI21X1 U505 ( .A(\dp_dut/total_price [4]), .B(n199), .C(n253), .Y(n250) );
  AOI21X1 U506 ( .A(n128), .B(n251), .C(n250), .Y(n257) );
  NAND2X1 U507 ( .A(n253), .B(n199), .Y(n255) );
  OAI21X1 U508 ( .A(n129), .B(n255), .C(n254), .Y(n256) );
  AOI22X1 U509 ( .A(n258), .B(n257), .C(n194), .D(n256), .Y(n259) );
  NOR2X1 U510 ( .A(\dp_dut/inserted_money [10]), .B(n259), .Y(n264) );
  NOR2X1 U511 ( .A(\dp_dut/inserted_money [12]), .B(
        \dp_dut/inserted_money [11]), .Y(n263) );
  NOR2X1 U512 ( .A(\dp_dut/inserted_money [14]), .B(
        \dp_dut/inserted_money [13]), .Y(n261) );
  NOR2X1 U513 ( .A(\dp_dut/inserted_money [9]), .B(\dp_dut/inserted_money [15]), .Y(n260) );
  NAND3X1 U514 ( .A(n264), .B(n263), .C(n262), .Y(\dp_dut/N196 ) );
endmodule

