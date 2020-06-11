//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name:Kieran Young
// Date: 11-06-2020
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
reg [2:0] throw;                // Stores the current value of the dice roll 
initial begin
throw = 3'b1;                   // The first value
end

// Logic
always @ (posedge clk)
  begin
  if (button)                     // While the button is logic 1,
      if (throw < 3'b110)         // Creates a throw which starts at 1, and 
      throw = throw + 1;          //  cycles up to 6, then back to 1...
      else throw = 1;
  if (rst)
  throw = 3'b000;               // Output if the button is logic 0
  end

endmodule
