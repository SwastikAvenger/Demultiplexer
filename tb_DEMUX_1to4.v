`timescale 1ns/1ps
module tb_DEMUX_1to4;
    reg [1:0]i;
    reg [1:0]sel;
    wire [1:0]y0;
    wire [1:0]y1;
    wire [1:0]y2;
    wire [1:0]y3;
    
    //Instantiate DUT
    DEMUX_1to4 dut(
        .i(i),
        .sel(sel),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3));
        
    //Stimulate Test Bench
    initial begin
        i=2'b00;
            sel=2'b00; #10;
            sel=2'b01; #10;
            sel=2'b10; #10;
            sel=2'b11; #10;
        i=2'b01;
            sel=2'b00; #10;
            sel=2'b01; #10;
            sel=2'b10; #10;
            sel=2'b11; #10;
        i=2'b10;
            sel=2'b00; #10;
            sel=2'b01; #10;
            sel=2'b10; #10;
            sel=2'b11; #10;
        i=2'b11;
            sel=2'b00; #10;
            sel=2'b01; #10;
            sel=2'b10; #10;
            sel=2'b11; #10;
        $finish;
    end
endmodule