module dp (
in_clka,       in_clkb,       in_restart,    in_cmd, 
in_sel_a,      in_sel_b,      in_sel_c,      in_sel_d,
in_inserted_5, in_inserted_1, in_inserted_05, in_inserted_025,
out_stock_a,   out_stock_b,   out_stock_c,   out_stock_d, 
out_csel_a,    out_csel_b,    out_csel_c,    out_csel_d,
out_spit_a,    out_spit_b,    out_spit_c,    out_spit_d,
out_change,
out_change_1, out_change_05, out_change_025
);
//-------------Internal Constants--------------------------
parameter SITEM_CMD = 2'b00, SMONEY_CMD = 2'b01, CLEAR_CMD = 2'b10, START_CMD = 2'b11;
parameter ITEM_PRICE_A = 16'b1110, ITEM_PRICE_B = 16'b1100, ITEM_PRICE_C = 16'b1010, ITEM_PRICE_D = 16'b1000;
//-----------Input Ports---------------
input wire in_clka, in_clkb, in_restart;
// Commands from FSM
input wire [1:0] in_cmd;
// The status of inserted coins
input wire [7:0] in_inserted_5;
input wire [7:0] in_inserted_1;
input wire [7:0] in_inserted_05;
input wire [7:0] in_inserted_025;
// The status of selected items
input wire in_sel_a;
input wire in_sel_b;
input wire in_sel_c;
input wire in_sel_d;
//-----------Output Ports---------------
// The change
output wire signed [15:0] out_change;
// The stock status of items
output wire out_stock_a;
output wire out_stock_b;
output wire out_stock_c;
output wire out_stock_d;
// The confirmed status of selected items
output reg out_csel_a;
output reg out_csel_b;
output reg out_csel_c;
output reg out_csel_d;
// Spit the change
output reg [7:0] out_change_1;
output reg out_change_05;
output reg out_change_025;
// Spit the items
output reg out_spit_a;
output reg out_spit_b;
output reg out_spit_c;
output reg out_spit_d;
//-----------Internout_al Variables-----
// The available numbers of items
reg [7:0] item_a_num;
reg [7:0] item_b_num;
reg [7:0] item_c_num;
reg [7:0] item_d_num;
// The Total price of the selected items
wire  [15:0] total_price;
reg  [15:0] inserted_money;
//-------------Code Starts Here---------
assign out_stock_a = (item_a_num == 0) ? 0 : 1;
assign out_stock_b = (item_b_num == 0) ? 0 : 1;
assign out_stock_c = (item_c_num == 0) ? 0 : 1;
assign out_stock_d = (item_d_num == 0) ? 0 : 1;

assign total_price = (in_cmd == CLEAR_CMD)?0:((out_csel_a ? ITEM_PRICE_A:0)+(out_csel_b ? ITEM_PRICE_B:0)+(out_csel_c ? ITEM_PRICE_C:0)+(out_csel_d ? ITEM_PRICE_D:0));
assign out_change = (in_cmd == CLEAR_CMD)?0:(inserted_money - total_price);


always @ (negedge in_clka)
begin
   if (in_restart) begin
   end else if (in_cmd == CLEAR_CMD) begin
      out_csel_a <= 0;
      out_csel_b <= 0;
      out_csel_c <= 0;
      out_csel_d <= 0;
      item_a_num <= 1;
      item_b_num <= 4;
      item_c_num <= 4;
      item_d_num <= 4;
      out_spit_a <= 0;
      out_spit_b <= 0;
      out_spit_c <= 0;
      out_spit_d <= 0;
      inserted_money <= 0;
   end else if (in_cmd == START_CMD) begin
      if (in_sel_a)
         out_csel_a <= (!out_stock_a) ? 0 : in_sel_a;
      else
         out_csel_a <= out_csel_a;   
      if (in_sel_b)
         out_csel_b <= (!out_stock_b) ? 0 : in_sel_b;
      else
         out_csel_b <= out_csel_b;  
      if (in_sel_c)
         out_csel_c <= (!out_stock_c) ? 0 : in_sel_c;
      else
         out_csel_c <= out_csel_c;  
      if (in_sel_d)
         out_csel_d <= (!out_stock_d) ? 0 : in_sel_d;
      else
         out_csel_d <= out_csel_d; 
      inserted_money <= inserted_money + (in_inserted_5 << 3) + (in_inserted_5<<5) + 
                        (in_inserted_1<<3) + 
                        (in_inserted_05<<2) + 
                        (in_inserted_025<<1);
      out_change_1 <= 0;
      out_change_05 <= 0;
      out_change_025 <= 0;
      out_spit_a <= 0;
      out_spit_b <= 0;
      out_spit_c <= 0;
      out_spit_d <= 0;
   end else if (in_cmd == SITEM_CMD) begin
      if(inserted_money>total_price) begin
         inserted_money <= inserted_money - total_price;
         out_spit_a <= out_csel_a;
         out_spit_b <= out_csel_b;
         out_spit_c <= out_csel_c;
         out_spit_d <= out_csel_d;
         out_csel_a <= 0;
         out_csel_b <= 0;
         out_csel_c <= 0;
         out_csel_d <= 0;
         item_a_num <= item_a_num - out_csel_a;
         item_b_num <= item_b_num - out_csel_b;
         item_c_num <= item_c_num - out_csel_c;
         item_d_num <= item_d_num - out_csel_d;
         end
   end else if (in_cmd == SMONEY_CMD) begin
         inserted_money <= 0;
         out_change_1 <= out_change[15:3];
         out_change_05 <= out_change[2];
         out_change_025 <= out_change[1];
      end
   end

endmodule //End Of Module dp  datapath
