`timescale 1ns / 1ps
module DEMUX_1to4(
    input wire [1:0]i,
    input wire [1:0]sel,
    
    output reg [1:0]y0,
    output reg [1:0]y1,
    output reg [1:0]y2,
    output reg [1:0]y3
    );
    always@(*)begin
        //Intial Values are set to high impedance
        y0 = 2'bz;
        y1 = 2'bz;
        y2 = 2'bz;
        y3 = 2'bz;
        
        case(sel)
            2'b00: y0 = i;
            2'b01: y1 = i;
            2'b10: y2 = i;
            2'b11: y3 = i;
            default: begin
                        y0 = 2'bz;
                        y1 = 2'bz;
                        y2 = 2'bz;
                        y3 = 2'bz;   
                     end
        endcase
    end
endmodule
