`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2018 03:34:01 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder_4( input [3:0] A,   input [3:0] B,  input C, output [3:0] Sum, output carry);

     wire fa1_sum;
     wire fa2_sum;
     wire fa1_carry;
     wire fa2_carry;
     wire fa3_sum;
     wire fa4_sum;
     wire fa3_carry;
     wire fa4_carry;

    full_adder u1_full_adder (.A(A[0]), .B(B[0]), .C(C), .Sum(fa1_sum),.carry(fa1_carry));                  
    full_adder u2_full_adder( .A(A[1]), .B(B[1]), .C(fa1_carry),  .Sum(fa2_sum), .carry(fa2_carry)  ); 
    full_adder u3_full_adder  ( .A(A[2]),.B(B[2]),.C(fa2_carry), .Sum(fa3_sum),.carry(fa3_carry) ); 
    full_adder u4_full_adder  (  .A(A[3]), .B(B[3]),.C(fa3_carry), .Sum(fa4_sum),  .carry(fa4_carry) ); 
   
    assign Sum[0] = fa1_sum;
    assign Sum[1] = fa2_sum;
    assign Sum[2] = fa3_sum;
    assign Sum[3] = fa4_sum;
      
    assign carry = fa4_carry;
    
endmodule