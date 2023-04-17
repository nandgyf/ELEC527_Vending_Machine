module main_FSM (in_clka, in_clkb, in_restart, in_next, in_finish, out_state, out_cmd);
  //-------------Internal Constants--------------------------
  parameter SIZE = 2;
  parameter IDLE = 2'b00, START = 2'b01, SITEM = 2'b10, SMONEY = 2'b11;
  parameter SITEM_CMD = 2'b00, SMONEY_CMD = 2'b01, CLEAR_CMD = 2'b10, START_CMD = 2'b11;
  //-------------Input Ports---------------------------------
  input wire in_clka, in_clkb, in_next, in_finish, in_restart;
  //-------------Output Ports--------------------------------
  output reg [SIZE-1:0] out_state;
  output reg [1:0] out_cmd;
  //-------------Internal Variables--------------------------
  wire [SIZE-1:0] temp_out_state;
  reg [SIZE-1:0] next_out_state;
  //-------------Code startes Here---------------------------
  assign temp_out_state = fsm_function(out_state, in_next);
  //-----Function for Combinational Logic to read inputs-----
  function [SIZE-1:0] fsm_function;
  input  [SIZE-1:0] out_state;
  input in_next;
  case(out_state)
    IDLE: begin
      fsm_function = START;
    end
    START: begin
      if(in_next) begin
        fsm_function = SITEM;
      end else if (in_finish) begin
        fsm_function = SMONEY;
      end else begin
        fsm_function = START;
      end
    end
    SITEM: begin
        fsm_function = START;
    end
    SMONEY: begin
        fsm_function = START;
    end
    default: fsm_function = IDLE;
    endcase
  endfunction
  //-------------Seq Logic-----------------------------------
  always @ (negedge in_clka)
  begin : FSM_SEQ
    if (in_restart) begin
      next_out_state <= IDLE;
    end else begin
      next_out_state <= temp_out_state;
    end
  end
  //-------------Output Logic--------------------------------
  always @ (negedge in_clkb)
  begin : OUTPUT_LOGIC
    case(next_out_state)
    IDLE: begin
            out_state <= next_out_state;
            out_cmd <= CLEAR_CMD;
          end
    START: begin
            out_state <= next_out_state;
            out_cmd <= START_CMD;
          end
    SITEM: begin
            out_state <= next_out_state;
            out_cmd <= SITEM_CMD;
           end
    SMONEY: begin
            out_state <= next_out_state;
            out_cmd <= SMONEY_CMD;
           end
    default: begin
            out_state <= next_out_state;
            out_cmd <= CLEAR_CMD;
           end
    endcase
  end // End Of Block OUTPUT_LOGIC

endmodule  // End of Module main_FSM

