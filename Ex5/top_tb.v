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
reg [2:0] state;

wire red;
wire amber;
wire green;


// Clock generation
    initial begin 
    clk = 1'b0;
    forever 
    #(clk_period/2) clk = ~clk;
    end

// Logic 
initial begin
state = 0;
end 

always @ (posedge clk)
  begin
  state = 3'b000;                  // Changes in states
  #(clk_period * 4); 

  state = 3'b001;
  #(clk_period * 4);

  state = 3'b010;
  #(clk_period * 4);

  state = 3'b011;
  #(clk_period * 4);

  state = 3'b100;
  #(clk_period * 4);

  state = 3'b101;
  #(clk_period * 4);

  state = 3'b110;
  #(clk_period * 4);

  state = 3'b111;
  #(clk_period * 4);
end


// Instantiate module
    TrafficLights lights(clk, red, amber, green);

endmodule 
