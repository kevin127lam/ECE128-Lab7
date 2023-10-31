`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:07:47 PM
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
 reg clk ;
 reg d;
 reg rstn;
 reg [2:0] delay;
 dff dffo(.d(d),.rstn(rstn),.clk(clk),.q(q));

 
 always #10 clk=~clk;
 
 initial begin
    clk <= 0;
    d <= 0;
    rstn <= 0;
    
    #15 d <= 1;
    #10 rstn <= 1;
    
   #20 d=0; rstn = 0; clk = 0;
   #20 d=0; rstn = 1; clk = 1;
   #20 d=0; rstn = 0; clk = 0;
   #20 d=1; rstn = 1; clk = 1;
   #20 d=1; rstn = 0; clk = 0;
   #20 d=1; rstn = 1; clk = 1;

   end 
    
endmodule
