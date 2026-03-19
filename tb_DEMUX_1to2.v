`timescale 1ns/1ps
module tb_DEMUX_1to2;
    reg [1:0]i;
    reg sel;
    wire [1:0]y0;
    wire [1:0]y1;
    
    DEMUX_1to2 dut(
        .i(i),
        .sel(sel),
        .y0(y0),
        .y1(y1)
    );
    initial begin
        i = 2'b00;  sel = 1'b0; #10;
                    sel = 1'b1; #10;
        i = 2'b01;  sel = 1'b0; #10;
                    sel = 1'b1; #10;
        i = 2'b10;  sel = 1'b0; #10;
                    sel = 1'b1; #10;
        i = 2'b11;  sel = 1'b0; #10;
                    sel = 1'b1; #10;
        $finish;            
     end
endmodule
