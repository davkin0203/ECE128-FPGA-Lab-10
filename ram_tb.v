`timescale 1ns / 1ps

module ram_testbench;

  // Inputs
  reg i_clk;
  reg i_rst;
  reg i_write_en;
  reg [2:0] i_addr;
  reg [3:0] i_write_data;

  // Outputs
  wire [3:0] o_read_data;

  // Instantiate the RAM module
  ram uut (
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_write_en(i_write_en),
    .i_addr(i_addr),
    .i_write_data(i_write_data),
    .o_read_data(o_read_data)
  );

  // Clock generation
  initial begin
    i_clk = 0;
    forever #5 i_clk = ~i_clk;
  end

  // Test scenarios
  initial begin
    // Initialize inputs
    i_rst = 1;
    i_write_en = 0;
    i_addr = 3'b0;
    i_write_data = 4'b0000;

    // Apply reset
    #10 i_rst = 0;

    // Test 1: Write data to memory at address 1
    #10 i_write_en = 1;
    i_addr = 3'b001;
    i_write_data = 4'b1101;
    #10 i_write_en = 0;

    // Test 2: Write data to memory at address 2
    #10 i_write_en = 1;
    i_addr = 3'b010;
    i_write_data = 4'b1010;
    #10 i_write_en = 0;

    // Test 3: Write data to memory at address 3
    #10 i_write_en = 1;
    i_addr = 3'b011;
    i_write_data = 4'b0110;
    #10 i_write_en = 0;

    // Test 4: Write data to memory at address 4
    #10 i_write_en = 1;
    i_addr = 3'b100;
    i_write_data = 4'b1001;
    #10 i_write_en = 0;

    // Test 5: Write data to memory at address 5
    #10 i_write_en = 1;
    i_addr = 3'b101;
    i_write_data = 4'b0011;
    #10 i_write_en = 0;

    // Test 6: Write data to memory at address 6
    #10 i_write_en = 1;
    i_addr = 3'b110;
    i_write_data = 4'b1111;
    #10 i_write_en = 0;

    // Test 7: Write data to memory at address 7
    #10 i_write_en = 1;
    i_addr = 3'b111;
    i_write_data = 4'b0101;
    #10 i_write_en = 0;

    // Test 8: Write data to memory at address 0
    #10 i_write_en = 1;
    i_addr = 3'b000;
    i_write_data = 4'b0000;
    #10 i_write_en = 0;

    // Finish simulation
    #10 $finish;
  end

endmodule