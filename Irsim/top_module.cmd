vector inserted_5 in_inserted_5[7] in_inserted_5[6] in_inserted_5[5] in_inserted_5[4] in_inserted_5[3] in_inserted_5[2] in_inserted_5[1] in_inserted_5[0]
vector inserted_1 in_inserted_1[7] in_inserted_1[6] in_inserted_1[5] in_inserted_1[4] in_inserted_1[3] in_inserted_1[2] in_inserted_1[1] in_inserted_1[0]
vector inserted_05 in_inserted_05[7] in_inserted_05[6] in_inserted_05[5] in_inserted_05[4] in_inserted_05[3] in_inserted_05[2] in_inserted_05[1] in_inserted_05[0]
vector inserted_025 in_inserted_025[7] in_inserted_025[6] in_inserted_025[5] in_inserted_025[4] in_inserted_025[3] in_inserted_025[2] in_inserted_025[1] in_inserted_025[0]
vector change out_change[15] out_change[14] out_change[13] out_change[12] out_change[11] out_change[10] out_change[9] out_change[8] out_change[7] out_change[6] out_change[5] out_change[4] out_change[3] out_change[2] out_change[1] out_change[0]
vector change_1 out_change_1[7] out_change_1[6] out_change_1[5] out_change_1[4] out_change_1[3] out_change_1[2] out_change_1[1] out_change_1[0]
vector state out_state[1] out_state[0]
| 
logfile twoP_FSM.log
 w in_clka in_clkb 
 w in_restart inserted_5 inserted_1 inserted_05 inserted_025
 w in_sel_a in_sel_b in_sel_c in_sel_d
 w in_next in_finish change
 w out_stock_a out_stock_b out_stock_c out_stock_d
 w out_csel_a out_csel_b out_csel_c out_csel_d
 w change_1 out_change_05 out_change_025
 w out_spit_a out_spit_b out_spit_c out_spit_d

V   in_restart              1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_sel_a                0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	0
V   in_sel_b                0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_sel_c                0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0
V   in_sel_d                0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_next                 0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0
V   in_finish               0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0
V   in_inserted_5[7]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_5[6]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_5[5]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_5[4]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_5[3]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_5[2]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_5[1]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_5[0]      0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0
V   in_inserted_1[7]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_1[6]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_1[5]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_1[4]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_1[3]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_1[2]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_1[1]      0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_1[0]      0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_05[7]     0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_05[6]     0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_05[5]     0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_05[4]     0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_05[3]     0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_05[2]     0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_05[1]     0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_05[0]     0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_025[7]    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_025[6]    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_025[5]    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_025[4]    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_025[3]    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_025[2]    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_025[1]    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_025[0]    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0

| Two phase clock with non-overlap period - same as Modelsim testbench
clock in_clka 0 1 0 0
clock in_clkb 0 0 0 1
R
d
