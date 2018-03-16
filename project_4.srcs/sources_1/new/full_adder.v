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


module full_adder(
    input  A,  //input A
    input  B,  //input B
    input C, //input C
    output Sum,
    output carry
    );

    
     wire ha1_sum;
     wire ha2_sum;
     wire ha1_carry;
     wire ha2_carry;
  
     //Instantiate the half adder 1
    half_adder u1_half_adder
     (
     .Data_in_A(A),
     .Data_in_B(B),
     .Data_out_Sum(ha1_sum),
     .Data_out_Carry(ha1_carry)
     );                    
     half_adder u2_half_adder
      (
      .Data_in_A(ha1_sum),
      .Data_in_B(C),
      .Data_out_Sum(ha2_sum),
      .Data_out_Carry(ha2_carry)
      ); 
      
                           
     

    //sum output from 2nd half adder is connected to full adder output
    assign Sum = ha2_sum;  
    //The carry's from both the half adders are OR'ed to get the final carry./
    assign carry = ha1_carry | ha2_carry;
    
endmodule