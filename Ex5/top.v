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

// Logic                      //red -> red/amber -> green -> amber -> red...
always @ (posedge clk)
  if (red && !amber && !green)
    assign red <= 1;
    assign amber <= 1;
    assign green <= 0;

endmodule
