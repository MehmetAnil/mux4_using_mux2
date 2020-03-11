`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2020 22:55:27
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg [3:0] d0,d1,d2,d3;
    reg [1:0]s;
    reg [3:0] y;
    
    mux4 my_mux(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.s(s),.y(y));
    initial begin
    
        d0=4'b1001; d1=4'b0010; d2=4'b0011; d3=4'b0101; s[0]=0; s[1]=1; #10
        
        d0=4'b0111; d1=4'b0100; d2=4'b0111; d3=4'b0001; s[0]=0; s[1]=1; #10
    
    $finish;
    end
    endmodule
