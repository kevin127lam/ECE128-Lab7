`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:25:05 PM
// Design Name: 
// Module Name: SR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SR(
    input S,
    input R,
    input clk,
    output reg q,
    //output Q,
    output Qbar
    );
    
//    //SR Latch Code
//    nor #1 N1(Q, R, Qbar);
//    nor #1 N2(Qbar, S, Q);

    //SR FF Code
    always@(posedge clk) 
        begin
        case({S, R})
        2'b00: q <= q;
        2'b01: q <=1'b0;
        2'b10: q <= 1'b1;
        2'b11: q <= 1'bx;
        endcase
    end
    
    assign Qbar = ~q;
    
endmodule
