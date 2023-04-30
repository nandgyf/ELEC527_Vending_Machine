###################################################################

# Created by write_sdc on Sat Apr 29 20:27:00 2023

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports in_clka]
set_driving_cell -lib_cell INVX1 [get_ports in_clkb]
set_driving_cell -lib_cell INVX1 [get_ports in_restart]
set_driving_cell -lib_cell INVX1 [get_ports in_inserted_5]
set_driving_cell -lib_cell INVX1 [get_ports in_inserted_1]
set_driving_cell -lib_cell INVX1 [get_ports in_inserted_05]
set_driving_cell -lib_cell INVX1 [get_ports in_inserted_025]
set_driving_cell -lib_cell INVX1 [get_ports in_sel_a]
set_driving_cell -lib_cell INVX1 [get_ports in_sel_b]
set_driving_cell -lib_cell INVX1 [get_ports in_sel_c]
set_driving_cell -lib_cell INVX1 [get_ports in_sel_d]
set_driving_cell -lib_cell INVX1 [get_ports in_next]
set_driving_cell -lib_cell INVX1 [get_ports in_finish]
create_clock -name vclk  -period 50  -waveform {0 25}
set_input_delay -clock vclk  1  [get_ports in_clka]
set_input_delay -clock vclk  1  [get_ports in_clkb]
set_input_delay -clock vclk  1  [get_ports in_restart]
set_input_delay -clock vclk  1  [get_ports in_inserted_5]
set_input_delay -clock vclk  1  [get_ports in_inserted_1]
set_input_delay -clock vclk  1  [get_ports in_inserted_05]
set_input_delay -clock vclk  1  [get_ports in_inserted_025]
set_input_delay -clock vclk  1  [get_ports in_sel_a]
set_input_delay -clock vclk  1  [get_ports in_sel_b]
set_input_delay -clock vclk  1  [get_ports in_sel_c]
set_input_delay -clock vclk  1  [get_ports in_sel_d]
set_input_delay -clock vclk  1  [get_ports in_next]
set_input_delay -clock vclk  1  [get_ports in_finish]
set_output_delay -clock vclk  1  [get_ports {out_change[15]}]
set_output_delay -clock vclk  1  [get_ports {out_change[14]}]
set_output_delay -clock vclk  1  [get_ports {out_change[13]}]
set_output_delay -clock vclk  1  [get_ports {out_change[12]}]
set_output_delay -clock vclk  1  [get_ports {out_change[11]}]
set_output_delay -clock vclk  1  [get_ports {out_change[10]}]
set_output_delay -clock vclk  1  [get_ports {out_change[9]}]
set_output_delay -clock vclk  1  [get_ports {out_change[8]}]
set_output_delay -clock vclk  1  [get_ports {out_change[7]}]
set_output_delay -clock vclk  1  [get_ports {out_change[6]}]
set_output_delay -clock vclk  1  [get_ports {out_change[5]}]
set_output_delay -clock vclk  1  [get_ports {out_change[4]}]
set_output_delay -clock vclk  1  [get_ports {out_change[3]}]
set_output_delay -clock vclk  1  [get_ports {out_change[2]}]
set_output_delay -clock vclk  1  [get_ports {out_change[1]}]
set_output_delay -clock vclk  1  [get_ports {out_change[0]}]
set_output_delay -clock vclk  1  [get_ports out_stock_a]
set_output_delay -clock vclk  1  [get_ports out_stock_b]
set_output_delay -clock vclk  1  [get_ports out_stock_c]
set_output_delay -clock vclk  1  [get_ports out_stock_d]
set_output_delay -clock vclk  1  [get_ports out_csel_a]
set_output_delay -clock vclk  1  [get_ports out_csel_b]
set_output_delay -clock vclk  1  [get_ports out_csel_c]
set_output_delay -clock vclk  1  [get_ports out_csel_d]
set_output_delay -clock vclk  1  [get_ports {out_change_1[7]}]
set_output_delay -clock vclk  1  [get_ports {out_change_1[6]}]
set_output_delay -clock vclk  1  [get_ports {out_change_1[5]}]
set_output_delay -clock vclk  1  [get_ports {out_change_1[4]}]
set_output_delay -clock vclk  1  [get_ports {out_change_1[3]}]
set_output_delay -clock vclk  1  [get_ports {out_change_1[2]}]
set_output_delay -clock vclk  1  [get_ports {out_change_1[1]}]
set_output_delay -clock vclk  1  [get_ports {out_change_1[0]}]
set_output_delay -clock vclk  1  [get_ports out_change_05]
set_output_delay -clock vclk  1  [get_ports out_change_025]
set_output_delay -clock vclk  1  [get_ports out_spit_a]
set_output_delay -clock vclk  1  [get_ports out_spit_b]
set_output_delay -clock vclk  1  [get_ports out_spit_c]
set_output_delay -clock vclk  1  [get_ports out_spit_d]
set_output_delay -clock vclk  1  [get_ports {out_state[1]}]
set_output_delay -clock vclk  1  [get_ports {out_state[0]}]
set_output_delay -clock vclk  1  [get_ports out_sol_ok]
