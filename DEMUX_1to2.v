`timescale 1ns / 1ps
module DEMUX_1to2(
    input wire [1:0] i,
    input wire sel,
    output reg [1:0]y0,
    output reg [1:0]y1
    );
   always@(*)begin
    y0 = 2'bz;
    y1 = 2'bz;
    case(sel)
        1'b0: y0 = i;
        1'b1: y1 = i;
        default: begin
                    y0 = 2'b0;
                    y1 = 2'b0;
                 end   
    endcase
   end
endmodule
