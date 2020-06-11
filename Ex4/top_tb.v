//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );

// Parameters
    parameter clk_period = 20;

// Registers & Wires
    reg clk;
    reg rst;
    reg button;

    wire [2:0] throw;

// Clock generation
    initial begin 
    clk = 1'b0;
    forever 
    # (clk_period/2) clk = ~clk;
    end

// Logic
    initial begin
    rst = 0;
    button = 1;
    end
    #(clk_period * 5);
   

// Instantiate counter module
    Dice dice_one (clk, rst, button, throw);

endmodule 
