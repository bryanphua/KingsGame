/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module latch_controller_3 (
    input clk,
    input rst,
    input [4:0] in,
    output reg [2:0] outtolatch
  );
  
  
  
  wire [3-1:0] M_ctr_value;
  counter_17 ctr (
    .clk(clk),
    .rst(rst),
    .value(M_ctr_value)
  );
  
  wire [24-1:0] M_decoder_out;
  reg [5-1:0] M_decoder_in;
  latch_decoder_18 decoder (
    .in(M_decoder_in),
    .out(M_decoder_out)
  );
  
  wire [24-1:0] M_decoder1_out;
  reg [5-1:0] M_decoder1_in;
  latch_decoder2_19 decoder1 (
    .in(M_decoder1_in),
    .out(M_decoder1_out)
  );
  
  always @* begin
    M_decoder_in = 5'h00;
    M_decoder1_in = 5'h00;
    if (in[4+0-:1] == 1'h1) begin
      M_decoder1_in = in;
      outtolatch = M_decoder1_out[(M_ctr_value)*3+2-:3];
    end else begin
      M_decoder_in = in;
      outtolatch = M_decoder_out[(M_ctr_value)*3+2-:3];
    end
  end
endmodule
