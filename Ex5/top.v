//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name:Kieran Young
// Date: 11-06-2020
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps 

module TrafficLights(clk, red, amber, green);

// Ports
input clk;

output red;
output amber;
output green;

// Registers & Wires
reg red;                      // procedural assignment to a non-register red is
reg amber;                    // not permitted, hence outputs are registers
reg green;
reg [2:0] state;


// Logic                      //red -> red/amber -> green -> amber -> red...
always @ (posedge clk)
  begin
  if (state == 3'b000)
  red = 1;
  amber = 0;
  green = 0;
  else
    if (state == 3'b001)
    red = 1;
    amber = 1;
    green = 0;
    else
      if (state == 3'b010)
      red = 0;
      amber = 0;
      green = 1;
      else
        if (state == 3'b011)
        red = 0;
        amber = 1;
        green = 0;
        else
          red = 1;
          amber = 0;
          green = 0;

  end
    

endmodule
