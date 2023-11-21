`timescale 1ns / 1ps

module multiplier_testbench;

  // Inputs
  reg [3:0] a;
  reg [3:0] b;

  // Outputs
  wire [7:0] p;

  // Instantiate the multiplier module
  multiplier uut (
    .a(a),
    .b(b),
    .p(p)
  );

  // Test scenario
  initial begin
    // Test 1: Multiply 2 by 3
    a = 4'b0010;
    b = 4'b0011;
    #10;

    // Test 2: Multiply 5 by 7
    a = 4'b0101;
    b = 4'b0111;
    #10;

    // Test 3: Multiply 8 by 9
    a = 4'b1000;
    b = 4'b1001;
    #10;

    // Test 4: Multiply 15 by 2
    a = 4'b1111;
    b = 4'b0010;
    #10;

    // Test 5: Multiply 0 by 12
    a = 4'b0000;
    b = 4'b1100;
    #10;

    // Finish simulation
    #10 $finish;
  end

endmodule
