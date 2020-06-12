//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name:Kieran Young
// Date: 12-06-2020
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps 

module TrafficLights_tb(
);

// Parameters
parameter clk_period = 10;

// Registers & Wires
reg clk;
reg red;
reg amber;
reg green;

// Clock generation
    initial begin 
    clk = 1'b0;
    forever 
    #(clk_period/2) clk = ~clk;
    end

// Logic 
initial begin
    red = 1;
    amber = 0;
    green = 0; 
end

// Finish test, check for success
//    initial begin
//        #(clk_period * 50);
//        if (err==0)
//          $display("***TEST PASSED! :) ***");
//        $finish;
//   end

// Instantiate module
    TrafficLights lights(clk, red, amber, green);

endmodule 
