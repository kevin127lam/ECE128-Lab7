`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:04:40 PM
// Design Name: 
// Module Name: dff
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


//module dff(
//    input d,
//    input rstn,
//    input clk,
//    output reg q
//    );
//    //synch
//    always @ (posedge clk)
//        if(!rstn)
//            q <= 0;
//        else
//            q <= d;
            
//endmodule

module dff(
    input d,
    input rstn,
    input clk,
    output reg q
    );
    //asynch
    always @ (posedge clk or negedge rstn)
        if(!rstn)
            q <= 0;
        else
            q <= d;
            
endmodule
