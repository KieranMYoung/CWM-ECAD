//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design an electronic dice, following
//  the diagram provided in the exercises documentation. The dice rolls as long as
//  a button is pressed, and stops when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           throw [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps 

module Dice(clk, rst, button, throw);

// Ports

input clk;
input rst;
input button;
output [2:0] throw;

// Registers & Wires
reg [2:0] throw;
initial begin
throw = 3'b1;
end

// Logic
if (button)
    always @ (posedge clk)
      if (throw < 3'b111)
      throw = throw + 1;
      else throw = 1;


endmodule
