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
    parameter clk_period = 20;

//Todo: Regitsers and wires
    reg clk;
    reg rst;
    reg enable;
    reg err;
    reg direction;

    wire [7:0] counter_out;

//Todo: Clock generation
    initial begin 
    clk = 1'b0;
    forever 
    # (clk_period/2) clk = ~clk;
    end

//Todo: User logic
     
    initial begin
    rst = 1;                            // Test Enable
    enable = 0;
    direction = 1;
    err = 0;
    #(clk_period * 5);               

    rst = 1;                              // Test reset
    enable = 1;
    #(clk_period * 5);                

    rst = 0;                             // Test counting up
    enable = 1;
    direction = 1;
    #(clk_period * 10);                

    direction = 0;                       // Test counting down & negative numbers
    #(clk_period * 20);


    end
    
//Todo: Finish test, check for success
    initial begin
        #(clk_period * 50);
        if (err==0)
          $display("***TEST PASSED! :) ***");
        $finish;
    end

//Todo: Instantiate counter module
    counter counter_one (clk, rst, enable, direction, counter_out);

endmodule 
