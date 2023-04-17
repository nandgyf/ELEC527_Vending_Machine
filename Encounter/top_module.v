module top_module (
  in_clka,
  in_clkb,
  in_restart,
  in_inserted_5,
  in_inserted_1,
  in_inserted_05,
  in_inserted_025,
  in_sel_a,
  in_sel_b,
  in_sel_c,
  in_sel_d,
  in_next,
  in_finish,
  out_change,
  out_stock_a,
  out_stock_b,
  out_stock_c,
  out_stock_d,
  out_csel_a,
  out_csel_b,
  out_csel_c,
  out_csel_d,
  out_change_1,
  out_change_05,
  out_change_025,
  out_spit_a,
  out_spit_b,
  out_spit_c,
  out_spit_d,
  out_state
);
wire [1:0] cmd;

//-------------Input Ports-----------------------------
input wire in_clka;
input wire in_clkb;
input wire in_restart;

input wire in_inserted_5;
input wire in_inserted_1;
input wire in_inserted_05;
input wire in_inserted_025;

input wire in_sel_a;
input wire in_sel_b;
input wire in_sel_c;
input wire in_sel_d;

input wire in_next;
input wire in_finish;

output wire signed [15:0] out_change;

output wire out_stock_a;
output wire out_stock_b;
output wire out_stock_c;
output wire out_stock_d;

output wire out_csel_a;
output wire out_csel_b;
output wire out_csel_c;
output wire out_csel_d;

output wire [7:0] out_change_1;
output wire out_change_05;
output wire out_change_025;

output wire out_spit_a;
output wire out_spit_b;
output wire out_spit_c;
output wire out_spit_d;
output wire [1:0] out_state;

main_FSM main_FSM_dut (
  .in_clka (in_clka ),
  .in_clkb ( in_clkb ),
  .in_restart (in_restart ),
  .in_next ( in_next ),
  .in_finish ( in_finish ),
  .out_state (out_state ),
  .out_cmd  ( cmd)
);

dp dp_dut (
  .in_clka (in_clka ),
  .in_clkb ( in_clkb ),
  .in_restart ( in_restart ),
  .in_cmd (cmd ),
  .in_inserted_5 (in_inserted_5 ),
  .in_inserted_1 (in_inserted_1 ),
  .in_inserted_05 (in_inserted_05 ),
  .in_inserted_025 (in_inserted_025 ),
  .in_sel_a (in_sel_a ),
  .in_sel_b (in_sel_b ),
  .in_sel_c (in_sel_c ),
  .in_sel_d (in_sel_d ),
  .out_change (out_change ),
  .out_stock_a (out_stock_a ),
  .out_stock_b (out_stock_b ),
  .out_stock_c (out_stock_c ),
  .out_stock_d (out_stock_d ),
  .out_csel_a (out_csel_a ),
  .out_csel_b (out_csel_b ),
  .out_csel_c (out_csel_c ),
  .out_csel_d (out_csel_d ),
  .out_change_1 (out_change_1 ),
  .out_change_05 (out_change_05 ),
  .out_change_025 (out_change_025 ),
  .out_spit_a (out_spit_a ),
  .out_spit_b (out_spit_b ),
  .out_spit_c (out_spit_c ),
  .out_spit_d (out_spit_d)
);




endmodule // End of Module top_module
                                    
