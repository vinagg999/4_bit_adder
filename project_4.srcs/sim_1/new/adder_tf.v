`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2018 02:35:39 PM
// Design Name: 
// Module Name: adder_tf
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


module adder_tf(
    );
    reg [3:0] A;
        reg [3:0] B;
        reg C;
        wire [3:0] Sum;
        wire carry;
        
        full_adder_4 uut (.A(A),.B(B),.C(C),.Sum(Sum),.carry(carry));
        
        initial begin
            A = 4'b0011;
            B = 4'b1111;
            C = 0;
            #10
            A = 4'b1111;
            B = 4'b1011;
            C = 0;
            #10
            A = 4'b0111;
            B = 4'b1110;
            C = 0;
        end
    
endmodule
