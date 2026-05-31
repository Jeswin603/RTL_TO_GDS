`timescale 1ns/1ps
module Testbench();

    reg Clock = 0;   // initialize here ONLY
    reg Reset;
    wire [3:0] Count;

    Mycounter I1(.CLK(Clock), .RST(Reset), .OUT(Count));

    always #50 Clock = ~Clock;

    initial begin
        $dumpfile("count.vcd");
        $dumpvars(0, Testbench);

        Reset = 1'b1;
        #100 Reset = 1'b0;

        #2000 Reset = 1'b1;
        #400 $finish;
    end

endmodule
