//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:Kieran Young
// Date: 11-06-2020
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
    #(clk_period/2) clk = ~clk;
    end

// Logic
    initial begin
    rst = 0;                   // Test button (logic 1)
    button = 1;
    #(clk_period * 10)

    button = 0;                // Test button (logic 0)
    #(clk_period * 2)

    rst = 1;                   // Test reset
    #(clk_period * 2)

    rst = 0;
    end

// Instantiate counter module
    Dice dice_one (clk, rst, button, throw);

endmodule 
