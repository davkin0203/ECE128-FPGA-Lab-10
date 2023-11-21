`timescale 1ns / 1ps

module ROM_testbench;

  // Inputs
  reg [2:0] ROM_addr;

  // Outputs
  wire [3:0] ROM_data;

  // Instantiate the ROM module
  ROM uut (
    .ROM_data(ROM_data),
    .ROM_addr(ROM_addr)
  );

  // Test scenarios
  initial begin
    // Test 1: Read from address 0
    ROM_addr = 3'b000;
    #10;

    // Test 2: Read from address 1
    ROM_addr = 3'b001;
    #10;

    // Test 3: Read from address 2
    ROM_addr = 3'b010;
    #10;

    // Test 4: Read from address 3
    ROM_addr = 3'b011;
    #10;

    // Test 5: Read from address 4
    ROM_addr = 3'b100;
    #10;

    // Test 6: Read from address 5
    ROM_addr = 3'b101;
    #10;

    // Test 7: Read from address 6
    ROM_addr = 3'b110;
    #10;

    // Test 8: Read from address 7
    ROM_addr = 3'b111;
    #10;

    // Finish simulation
    #10 $finish;
  end

endmodule