module top_module_tb;
// Ports
reg in_clka;
reg in_clkb;
reg in_restart;
reg [7:0] in_inserted_5;
reg [7:0] in_inserted_1;
reg [7:0] in_inserted_05;
reg [7:0] in_inserted_025;
reg in_sel_a;
reg in_sel_b;
reg in_sel_c;
reg in_sel_d;
reg in_next;
reg in_finish;

wire signed [15:0] out_change;
wire out_stock_a;
wire out_stock_b;
wire out_stock_c;
wire out_stock_d;
wire out_csel_a;
wire out_csel_b;
wire out_csel_c;
wire out_csel_d;
wire [7:0] out_change_1;
wire out_change_05;
wire out_change_025;
wire out_spit_a;
wire out_spit_b;
wire out_spit_c;
wire out_spit_d;
wire [1:0] out_state;

top_module top_dut(
	.in_clka					(in_clka),
	.in_clkb					(in_clkb),
	.in_restart					(in_restart),
	.in_inserted_5				(in_inserted_5),
	.in_inserted_1				(in_inserted_1),
	.in_inserted_05				(in_inserted_05),
	.in_inserted_025			(in_inserted_025),
	.in_sel_a					(in_sel_a),
	.in_sel_b					(in_sel_b),
	.in_sel_c					(in_sel_c),
	.in_sel_d					(in_sel_d),
	.in_next					(in_next),
	.in_finish					(in_finish),
	
	.out_change					(out_change),
	.out_stock_a				(out_stock_a),
	.out_stock_b				(out_stock_b),
	.out_stock_c				(out_stock_c),
	.out_stock_d				(out_stock_d),
	.out_csel_a					(out_csel_a),
	.out_csel_b					(out_csel_b),
	.out_csel_c					(out_csel_c),
	.out_csel_d					(out_csel_d),
	.out_change_1				(out_change_1),
	.out_change_05				(out_change_05),
	.out_change_025				(out_change_025),
	.out_spit_a					(out_spit_a),
	.out_spit_b					(out_spit_b),
	.out_spit_c					(out_spit_c),
	.out_spit_d					(out_spit_d),
	.out_state					(out_state)
);

initial
begin
// Cycle 1
in_restart		 =	1;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 2
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;	
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 3
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	1;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;


// Cycle 4
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	1;	
in_inserted_05	 =	1;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 5
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	1;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 6
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  1;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 7
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 8
in_restart		 =	0;	
in_inserted_5	 =	1;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	1;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 9
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  1;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 10
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 10
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  1;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 11
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 11
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

// Cycle 12
in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	1;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;

in_restart		 =	0;	
in_inserted_5	 =	0;	
in_inserted_1	 =	0;	
in_inserted_05	 =	0;	
in_inserted_025	 =	0;
in_sel_a		 =	0;	
in_sel_b		 =	0;	
in_sel_c		 =	0;	
in_sel_d		 =	0;	
in_next			 =  0;
in_finish		 =  0;
in_clka = 0; in_clkb = 0; #10;
in_clka = 1; in_clkb = 0; #10;
in_clka = 0; in_clkb = 0; #10;
in_clka = 0; in_clkb = 1; #10;


$dumpfile ("top_module_tb.vcd"); 
$dumpvars; 

	
$stop;
end 

endmodule