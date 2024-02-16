`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 10:53:55 AM
// Design Name: 
// Module Name: InstMem
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

module InstMem (input [5:0] addr, output [31:0] data_out);
   reg [31:0] mem [0:63];
   assign data_out = mem[addr];
   

    initial begin
    
//        mem[0]=32'b000000000000_00000_010_00001_0000011 ; //lw x1, 0(x0)
//        mem[1]=32'b000000000100_00000_010_00010_0000011 ; //lw x2, 4(x0)
//        mem[2]=32'b000000001000_00000_010_00011_0000011 ; //lw x3, 8(x0)
//        mem[3]=32'b0000000_00010_00001_110_00100_0110011 ; //or x4, x1, x2
//        mem[4]=32'b00000000001100100000010001100011; //beq x4, x3, 4
//        mem[5]=32'b0000000_00010_00001_000_00011_0110011 ; //add x3, x1, x2        
//        mem[6]=32'b0000000_00010_00011_000_00101_0110011 ; //add x5, x3, x2
//        mem[7]=32'b0000000_00101_00000_010_01100_0100011; //sw x5, 12(x0)
//        mem[8]=32'b000000001100_00000_010_00110_0000011 ; //lw x6, 12(x0)
//        mem[9]=32'b0000000_00001_00110_111_00111_0110011 ; //and x7, x6, x1
//        mem[10]=32'b0100000_00010_00001_000_01000_0110011 ; //sub x8, x1, x2
//        mem[11]=32'b0000000_00010_00001_000_00000_0110011 ; //add x0, x1, x2
//        mem[12]=32'b0000000_00001_00000_000_01001_0110011 ; //add 9, x0, addr
        
//        mem[0]=32'b00000000000000000010000010000011; //lw x1, 0(x0) 
//        mem[1]=32'b00000000010000000010000100000011; //lw x2, 4(x0)
//        mem[2]=32'b00000000100000000010000110000011; //lw x3, 8(x0) 
//        mem[3]=32'b00000000001000001000000010110011; //add x1, x1, x2                   
//        mem[4]=32'b00000000001100001000010001100011; //beq x1, x3, End
//        mem[5]=32'b11111110000000000000110011100011; //beq x0, x0, L1
//        mem[6]=32'b01000000001100011000000110110011; //sub x3, x3, x3


// RAMY TESTING

//        mem[0]=32'b00000001000000000000101100010011; // addi x22, x0, 16
        
//         mem[0]=32'b11111111000000000000101100010011; // addi x22, x0, -16
//         mem[1]=32'b00000000000110110101101110010011; // srli x23, x22, 1
//         mem[2]=32'b01000000000110110101110000010011; // srai x24, x22, 1
//         mem[3]=32'b00000000000100000000110010010011; // addi x25, x0, 1
//         mem[4]=32'b01000001100110110101110100110011; // sra x26, x22, x25
//         mem[5]=32'b00000000101010110100110110010011; // xori x27, x22, 10
//         mem[6]=32'b00000001100110110100111000110011; // xor x28, x22, x25
//         mem[7]=32'b00000001100110110101111010110011; // srl x29, x22, x25
//         mem[8]=32'b00000001001110001000000010110111; // lui x1, 5000
//         mem[9]=32'b00010010110000000010001000010011; // slti x4, x0, 300
//        mem[10]=32'b11111111101100000010001010010011; // slti x5, x0, -5
//        mem[11]=32'b11111111101100000011001100010011; // sltiu x6, x0, -5
//        mem[12]=32'b00010010110000000011001110010011; // sltiu x7, x0, 300
//        mem[13]=32'b11111111111100000110010000010011; // ori x8, x0, -1
//        mem[14]=32'b00000000000100001111010010010011; // andi x9, x1, 1
//        mem[15]=32'b00000000000000000000010100000011; // lb x10, 0(x0)
//        mem[16]=32'b00000000000000000001010110000011; // lh x11, 0(x0)
//        mem[17]=32'b00000000000000000010011000000011; // lw x12, 0(x0)
//        mem[18]=32'b00000000000100001000000010010011; // addi x1, x1, 1
//        mem[19]=32'b00000000000000000100011010000011; // lbu x13, 0(x0)
//        mem[20]=32'b00000000000000000101011100000011; // lhu x14, 0(x0)

// Load and Store Testing
//        mem[0]=32'b00000001001110001000000010110111; // lui x1, 5000
//        mem[1]=32'b00000000000100001000000010010011; // addi x1, x1, 1
//        mem[2]=32'b00000000000100000010001000100011; // sw x1, 4(x0)
//        mem[3]=32'b00000000000100000001010000100011; // sh x1, 8(x0)
//        mem[4]=32'b00000000000100000000010100100011; // sb x1, 10(x0)
//        mem[5]=32'b00000000010000000010111110000011; // lw x31, 4(x0)
//        mem[6]=32'b00000000010000000001111100000011; // lh x30, 4(x0)
//        mem[7]=32'b00000000010000000000111010000011; // lb x29, 4(x0)
//        mem[8]=32'b00000000000000000000000001110011; // ECALL
//        mem[9]=32'b00000000010000000101111000000011; // lhu x28, 4(x0)
//        mem[10]=32'b00000000000100000000000001110011; // EBREAK
        

// BRANCHING TESTING
  
//         mem[0]=32'h00500093;  // addi x1, x1, 5
//         mem[1]=32'hffc00113;  // addi x2, x2, -4
//         mem[2]=32'h00108463;  // beq x1, x1, 8
//         mem[3]=32'h00a00193;  // addi x3, x0, 10 
//         mem[4]=32'h00b00213;  //  addi x4 x0 11
//         mem[5]=32'h00209463;  //  bne x1 x2    
//         mem[6]=32'h00a00193;  //  addi x3 x0 10
//         mem[7]=32'h00c00213;  //  addi x4 x0 12
//         mem[8]=32'h0020d463;  //  bge x1 x2 8  
//         mem[9]=32'h00a00193;  //  addi x3 x0 10
//        mem[10]=32'h00d00213; //  addi x4 x0 13
//        mem[11]=32'h0020e463; //  bltu x1 x2 8	
//        mem[12]=32'h00a00193; //  addi x3 x0 10
//        mem[13]=32'h00e00213; //  addi x4 x0 14
//        mem[14]=32'h00114463; //  blt x2, x1, 8
//        mem[15]=32'h00a00193; //  addi x3, x0, 10
//        mem[16]=32'h00f00213; //  addi x4, x0, 15
//        mem[17]=32'h00117463; //  bgeu x2, x1, 8
//        mem[18]=32'h00a00193; //  addi x3, x0, 10
//        mem[19]=32'h01000213; //  addi x4, x0, 16
//        mem[20]=32'h008002ef; //  jal x5, 8
//        mem[21]=32'h00a00193; //  addi x3, x0, 10 
//        mem[22]=32'h01100213; //  addi x4, x0, 17
//        mem[23]=32'h00028067; // jalr x0, 0(x5)
//        mem[23]=32'h000283e7; // jalr x7, 0(x5)
//        mem[23]=32'h0x00036f97; // auipc x31, 54
//        mem[24]=32'h0x00036f37; // lui x30, addr 
                  
       


// ZEIN TESTING SLT AND SLTU 
//        mem[0]=32'b11111111000000000000101100010011; // addi x22, x0, -16
//        mem[1]=32'b00000000111000000000101110010011; // addi x23, x0, 14
//        mem[2]=32'b00000001011010111010110000110011; // slt x24, x23, x22 (should be 0)
//        mem[3]=32'b00000001011110110010110010110011; // slt x25, x22, x23 (should be 1)
//        mem[4]=32'b00000001011010111011110100110011; // sltu x26, x23, x22 (should be 1)
//        mem[5]=32'b00000001011110110011110110110011; // sltu x27, x22, x23 (should be 0)

// AMR TESTING


         mem[0] = 32'b00000000000000001001010100010111; // auipc x10, 9
         mem[1] = 32'b00000000000000001001010010110111; // lui x9, 9
         mem[2] = 32'b00000000010001010000010110010011; // addi x11, x10, 4
         mem[3] = 32'b00000000000001010000011000110011; //add x12, x10, x0
         mem[4] = 32'b00000000100000000000000011101111; //jal ra,8
         mem[5] = 32'b00000000000000000000000000001111; // fence 
         mem[6] = 32'b00001000101101010000110001100011; //beq x10, x11, 152
         mem[7] = 32'b00000000101101010001010001100011 ;//bne x10, x11, 8
         mem[8] = 32'b00000000000000000000000001110011; // ecall 
         mem[9] = 32'b00000011001000000000001100010011; //addi x6, x0, 50
        mem[10] = 32'b00000000001000110001001100010011; //slli x6, x6, 2
        mem[11] = 32'b00000000001000000000001110010011 ; //addi x7, x0, 2
        mem[12] = 32'b00000000011100000000000000100011;//sb x7, 0(x0)
        mem[13] = 32'b00000000101000000001000000100011; //sh x10, 0(x0)
        mem[14] = 32'b00000000101000000010000000100011; // sw x10, 0(x0)
        mem[15] = 32'b00000000000000000000111000000011; // lb x28, 0(x0)
        mem[16] = 32'b00000000000000000001111010000011;//lh x29, 0(x0)
        mem[17] = 32'b00000000000000000010111100000011; //lw x30, 0(x0)
        mem[18] = 32'b00000000000000000100111110000011; //lbu x31, 0(x0)
        mem[19] = 32'b00000000000000000101001100000011; //lhu x6, 0(x0)
        mem[20] = 32'b00000110101101100101000001100011; // bge x12, x11, 96
        mem[21] = 32'b00000100110001011100111001100011; //blt x11, x12, 92
        mem[22] = 32'b00000100101101100111110001100011; //bgeu x12, x11, 88         
        mem[23] = 32'b00000100110001011110101001100011; //bltu x11, x12, 84
        mem[24] = 32'b11111001110001100011001100010011; //sltiu x6, x12, -100 
        mem[25] = 32'b00000000001100110100111000010011; //xori x28, x6, 3
        mem[26] = 32'b00000000010111100110111000010011; //ori x28, x28, 5
        mem[27] = 32'b00000000010111100111111000010011; //andi x28, x28, 5
        mem[28] = 32'b00000000000111100101111000010011; //srli x28, x28, 1
        mem[29] = 32'b00000010100011100000111000010011; //addi x28, x28, 40
        mem[30] = 32'b01000000001011100101111000010011; //srai x28, x28, 2
        mem[31] = 32'b00000000001100000000001110010011; //addi x7, x0, 3
        mem[32] = 32'b01000000011111100000111000110011; // sub x28, x28, x7
        mem[33] = 32'b00000001110011100001111000110011; //sll x28, x28, x28
        mem[34] = 32'b00000001110011100010111100110011; //slt x30, x28, x28
        mem[35] = 32'b00000000011000000000111010010011; //addi x29, x0, 6
        mem[36] = 32'b00000001110011101011111100110011; //sltu x30, x29, x28
        mem[37] = 32'b00000001110111110100111100110011; //xor x30, x30, x29
        mem[38] = 32'b00000000010011110001111100010011; //slli x30, x30, 4
        mem[39] = 32'b00000000011111110101111100110011; //srl x30, x30, x7
        mem[40] = 32'b01000000011111110101111100110011; //sra x30, x30, x7
        mem[41] = 32'b00000000011111110110111100110011; //or x30, x30, x7
        mem[42] = 32'b00000001110111110111111100110011; //and x30, x30, x29
        mem[43] = 32'b00000000000100000000000001110011;// ebreak
        mem[44] = 32'b00000000000000001000000001100111; // jalr x0, 0(x1)


// LAST R-TYPE TEST
//   mem[0] = 32'hff600093;  // addi x1, x0, -10
//   mem[1] = 32'h00f00113;  // addi x2, x0, 15
//   mem[2] = 32'h00100f93;  // addi x31, x0, 1
//   mem[3] = 32'h002081b3;  // add x3, x1, x2
//   mem[4] = 32'h40110233;  // sub x4, x2, x1
//   mem[5] = 32'h402082b3;  // sub x5, x1, x2
//   mem[6] = 32'h0ff0000f; // fence
//   mem[7] = 32'h01f09333;  // sll x6, x1, x31
//   mem[8] = 32'h001163b3;  // or x7 x2, x1
//   mem[9] = 32'h00117433;  // and x8, x2, x1
//   mem[10] =32'h00100073; // ebreak // EBREAK IS NOT WORKING
//   mem[11] =32'hfff00493;  // addi x9, x0,  -1

//mem[0] = 32'b00000000010001010000010110010011; // addi x11, x10, 4
//mem[1] = 32'b00000000000000000000010001100011; // BEQ x0, x0, 8
//mem[2] = 32'b00000000000001010000011000110011; //add x12, x10, x0
//mem[3] = 32'b00000000000000000001010001100011; // BNE x0, x0, 8
//mem[4] = 32'b00000011001000000000001100010011; //addi x6, x0, 50
//mem[5] = 32'b00000000000000000001010001100011; // BLT x0, x11, 8
//mem[6] = 32'b00000000001000110001001100010011; //slli x6, x6, 2
//mem[7] = 32'b00000000000000000001010001100011; // BGE x11, x0, 8
//mem[8] = 32'b00000000001000000000001110010011 ; //addi x7, x0, 2
//mem[9] = 32'b00000000000000000001010001100011; // BLTU x0, x11, 8
//mem[10] = 32'b01111111111100000000000100010011; //addi x2, x0, 2047
//mem[11] = 32'b00000000000000000001010001100011; // BGEU x11, x0, 8
//mem[12] = 32'b00000000010000000101000100000011; //lhu x2, 4(x0)
//mem[13] = 32'b00000011101000000000000001101111; //jal x0, 58
//mem[14] = 32'b00000011001000000000001100010011; //addi x6, x0, 50
//mem[15] = 32'b00000101010000000000000001100111; // jalr x0, 84(x0)
//mem[16] = 32'b00000011001000000000001100010011; //addi x6, x0, 50
//mem[17] = 32'b00000000000100000000000001110011; //EBREAK
 
 
 
 
// TESTING SRAI  
// mem[50]=32'b0000000_00000_00000_000_00000_0110011 ; //add x0, x0, x0
// mem[51]=32'b0000000_00000_00000_000_00000_0110011 ; //add x0, x0, x0
// mem[52]=32'b0000000_00000_00000_000_00000_0110011 ; //add x0, x0, x0
// mem[53]=32'hffd00b13;                               //addi x22, x0, -3
// mem[54]=32'b0000000_00000_00000_000_00000_0110011 ; //add x0, x0, x0
// mem[55]=32'b0000000_00000_00000_000_00000_0110011 ; //add x0, x0, x0
// mem[56]=32'b0000000_00000_00000_000_00000_0110011 ; //add x0, x0, x0
// mem[57]=32'b01000000000110110101110000010011;       // srai x24, x22, 1
// mem[58]=32'b0000000_00000_00000_000_00000_0110011 ; //add x0, x0, x0
// mem[59]=32'b0000000_00000_00000_000_00000_0110011 ; //add x0, x0, x0
// mem[60]=32'b0000000_00000_00000_000_00000_0110011 ; //add x0, x0, x0
// mem[61]=32'h001b5c93;                               //srli x25, x22, 1


    end
    

   
endmodule
