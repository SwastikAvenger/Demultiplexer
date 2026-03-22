`timescale 1ns / 1ps
module tb_DEMUX_1to8;
     reg [1:0]i;
     reg [2:0]sel;
     wire [1:0]y0;
     wire [1:0]y1;
     wire [1:0]y2;
     wire [1:0]y3;
     wire [1:0]y4;
     wire [1:0]y5;
     wire [1:0]y6;
     wire [1:0]y7;
     //Instantiate DUT
     DEMUX_1to8 dut(
        .i(i),
        .sel(sel),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .y5(y5),
        .y6(y6),
        .y7(y7));
        
        //Stimulus 
        initial begin
            i=2'b00;
                sel=3'b000; #10;
                sel=3'b001; #10;
                sel=3'b010; #10;
                sel=3'b011; #10;
                sel=3'b100; #10;
                sel=3'b101; #10;
                sel=3'b110; #10;
                sel=3'b111; #10;
            i=2'b01;
                sel=3'b000; #10;
                sel=3'b001; #10;
                sel=3'b010; #10;
                sel=3'b011; #10;
                sel=3'b100; #10;
                sel=3'b101; #10;
                sel=3'b110; #10;
                sel=3'b111; #10;
            i=2'b10;
                sel=3'b000; #10;
                sel=3'b001; #10;
                sel=3'b010; #10;
                sel=3'b011; #10;
                sel=3'b100; #10;
                sel=3'b101; #10;
                sel=3'b110; #10;
                sel=3'b111; #10;
            i=2'b11;
                sel=3'b000; #10;
                sel=3'b001; #10;
                sel=3'b010; #10;
                sel=3'b011; #10;
                sel=3'b100; #10;
                sel=3'b101; #10;
                sel=3'b110; #10;
                sel=3'b111; #10; 
            $finish;                                                  
        end     
endmodule
