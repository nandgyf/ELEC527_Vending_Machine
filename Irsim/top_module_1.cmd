|
| top_module.cmd
|
| Comments
| Elec422/527 FSM_DP_timing
| CMOS two phase FSM with two input register data path and adder
| The two state bits are also ouput. Notice escape chararcter needed for state bits
|
| Data in_d1_in and in_d2_in should yield
| test case 1 at cycle 7, 3 + 1 = 4
| test case 2 at cycle 12, 4 + 2 = 6
|
| define vectors for easier display

vector change out_change\[15\] out_change\[14\] out_change\[13\] out_change\[12\] out_change\[11\] out_change\[10\] out_change\[9\] out_change\[8\] out_change\[7\] out_change\[6\] out_change\[5\] out_change\[4\] out_change\[3\] out_change\[2\] out_change\[1\] out_change\[0\]
vector change_1 out_change_1\[7\] out_change_1\[6\] out_change_1\[5\] out_change_1\[4\] out_change_1\[3\] out_change_1\[2\] out_change_1\[1\] out_change_1\[0\]
vector state out_state\[1\] out_state\[0\]
| 
logfile twoP_FSM.log
 ana in_clka in_clkb 
 ana in_restart in_inserted_5 in_inserted_1 in_inserted_05 in_inserted_025
 ana in_sel_a in_sel_b in_sel_c in_sel_d
 ana in_next in_finish change
 ana out_stock_a out_stock_b out_stock_c out_stock_d
 ana out_csel_a out_csel_b out_csel_c out_csel_d
 ana change_1 out_change_05 out_change_025
 ana out_spit_a out_spit_b out_spit_c out_spit_d
 ana out_sol_ok

V   in_restart              1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_sel_a                0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	0
V   in_sel_b                0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_sel_c                0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0
V   in_sel_d                0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_next                 0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0
V   in_finish               0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0
V   in_inserted_5           0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0
V   in_inserted_1           0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_05          0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0
V   in_inserted_025         0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0

| Two phase clock with non-overlap period - same as Modelsim testbench
clock in_clka 0 1 0 0
clock in_clkb 0 0 0 1
R
