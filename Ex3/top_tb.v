//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Up/Down counter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex3 - counter
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
//Todo: Parameters
    clk_period = 10;

//Todo: Regitsers and wires
    reg clk;
    reg rst;
    reg err;

    wire [7:0] counter_out;

//Todo: Clock generation
    initial begin 
    clk = 1'b0;
    forever 
    # (clk_period/2) clk = ~clk;
    end

//Todo: User logic
    initial begin 
    err = 0;
    rst = 0;
      forever begin
      #clk_period
        if (counter_out == 0)               //test reset
          begin
          $display("***Error with RESET")
          err = 1;
          end
        if (counter_out == ~1)
          begin
          $display("***Error with Counter")
          err = 1;
          end
    end

    
//Todo: Finish test, check for success

//Todo: Instantiate counter module
 
endmodule 
