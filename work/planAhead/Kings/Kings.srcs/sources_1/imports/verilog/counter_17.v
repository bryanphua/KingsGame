/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = 3
     DIV = 12
     TOP = 7
     UP = 1
*/
module counter_17 (
    input clk,
    input rst,
    output reg [2:0] value
  );
  
  localparam SIZE = 2'h3;
  localparam DIV = 4'hc;
  localparam TOP = 3'h7;
  localparam UP = 1'h1;
  
  
  reg [14:0] M_ctr_d, M_ctr_q = 1'h0;
  
  localparam MAX_VALUE = 15'h7fff;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    value = M_ctr_q[12+2-:3];
    if (1'h1) begin
      M_ctr_d = M_ctr_q + 1'h1;
      if (1'h1 && M_ctr_q == 15'h7fff) begin
        M_ctr_d = 1'h0;
      end
    end else begin
      M_ctr_d = M_ctr_q - 1'h1;
      if (1'h1 && M_ctr_q == 1'h0) begin
        M_ctr_d = 15'h7fff;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
