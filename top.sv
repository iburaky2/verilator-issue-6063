module top(
  input  logic clk,
  input  logic rst_n,
  input  logic clear,
  input  logic en,
  input  logic load,
  input  logic down,
  input  logic [3:0] d,
  output logic [3:0] q,
  output logic overflow
  );

  counter dut (
    .clk_i(clk),
    .rst_ni(rst_n),
    .clear_i(clear),
    .en_i(en),
    .load_i(load),
    .down_i(down),
    .d_i(d),
    .q_o(q),
    .overflow_o(overflow),
    .test_o(test)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule