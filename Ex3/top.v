//////////////////////////////////////////////////////////////////////////////////
// Exercise #3 
// Student Name:Kieran Young
// Date: 09-06-2020
//
//  Description: In this exercise, you need to design an up / down counter, where 
//  if the rst=1, the counter should be set to zero. If enable=0, the value
//  should stay constant. If direction=1, the counter should count up every
//  clock cycle, otherwise it should count down.
//  Wrap-around values are allowed.
//
//  inputs:
//           clk, rst, enable, direction
//
//  outputs:
//           counter_out[7:0]
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module counter(clk, rst, counter_out);    //timer example p24 Verilog Notes
    //Todo: add ports 
    input clk;
    input rst;
    output wire [7:0] counter_out;
  
                    
    //Todo: add registers and wires, if needed
    reg [7:0] counter;

    //Todo: add user logic
    
    always @ (posedge clk or posedge rst)
        if (rst)
        counter <= 1'b0;
        else 
        counter <= counter + 1'b1;

    assign counter_out = counter;

 

endmodule
