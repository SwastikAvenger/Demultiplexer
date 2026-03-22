`timescale 1ns/1ps
module DEMUX_1to8(
    input wire [1:0]i,
    input wire [2:0]sel,
    output wire [1:0]y0,
    output wire [1:0]y1,
    output wire [1:0]y2,
    output wire [1:0]y3,
    output wire [1:0]y4,
    output wire [1:0]y5,
    output wire [1:0]y6,
    output wire [1:0]y7
);
    wire [1:0]w1,w2;
    
    DEMUX_1to2 dut1(
        .i(i),
        .sel(sel[2]),
        .y0(w1),
        .y1(w2));
        
    DEMUX_1to4 dut2(
        .i(w1),
        .sel(sel[1:0]),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3));
    DEMUX_1to4 dut3(
        .i(w2),
        .sel(sel[1:0]),
        .y0(y4),
        .y1(y5),
        .y2(y6),
        .y3(y7));
endmodule