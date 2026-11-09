// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/ALU.tst

load ALU.hdl,
output-file ALU.out,
compare-to ALU.cmp,
output-list a%B1.16.1 b%B1.16.1 za%B1.1.1 na%B1.1.1 zb%B1.1.1 
            nb%B1.1.1 f%B1.1.1 no%B1.1.1 out%B1.16.1 zr%B1.1.1
            ng%B1.1.1;

set a %B0000000000000000,  // a = 0
set b %B1111111111111111;  // b = -1

// Compute 0
set za 1,
set na 0,
set zb 1,
set nb 0,
set f  1,
set no 0,
eval,
output;

// Compute 1
set za 1,
set na 1,
set zb 1,
set nb 1,
set f  1,
set no 1,
eval,
output;

// Compute -1
set za 1,
set na 1,
set zb 1,
set nb 0,
set f  1,
set no 0,
eval,
output;

// Compute a
set za 0,
set na 0,
set zb 1,
set nb 1,
set f  0,
set no 0,
eval,
output;

// Compute b
set za 1,
set na 1,
set zb 0,
set nb 0,
set f  0,
set no 0,
eval,
output;

// Compute ~a
set za 0,
set na 0,
set zb 1,
set nb 1,
set f  0,
set no 1,
eval,
output;

// Compute ~b
set za 1,
set na 1,
set zb 0,
set nb 0,
set f  0,
set no 1,
eval,
output;

// Compute -a
set za 0,
set na 0,
set zb 1,
set nb 1,
set f  1,
set no 1,
eval,
output;

// Compute -b
set za 1,
set na 1,
set zb 0,
set nb 0,
set f  1,
set no 1,
eval,
output;

// Compute a + 1
set za 0,
set na 1,
set zb 1,
set nb 1,
set f  1,
set no 1,
eval,
output;

// Compute b + 1
set za 1,
set na 1,
set zb 0,
set nb 1,
set f  1,
set no 1,
eval,
output;

// Compute a - 1
set za 0,
set na 0,
set zb 1,
set nb 1,
set f  1,
set no 0,
eval,
output;

// Compute b - 1
set za 1,
set na 1,
set zb 0,
set nb 0,
set f  1,
set no 0,
eval,
output;

// Compute a + b
set za 0,
set na 0,
set zb 0,
set nb 0,
set f  1,
set no 0,
eval,
output;

// Compute a - b
set za 0,
set na 1,
set zb 0,
set nb 0,
set f  1,
set no 1,
eval,
output;

// Compute b - a
set za 0,
set na 0,
set zb 0,
set nb 1,
set f  1,
set no 1,
eval,
output;

// Compute a & b
set za 0,
set na 0,
set zb 0,
set nb 0,
set f  0,
set no 0,
eval,
output;

// Compute a | b
set za 0,
set na 1,
set zb 0,
set nb 1,
set f  0,
set no 1,
eval,
output;

set a %B000000000010001,  // a = 17
set b %B000000000000011;  // b =  3

// Compute 0
set za 1,
set na 0,
set zb 1,
set nb 0,
set f  1,
set no 0,
eval,
output;

// Compute 1
set za 1,
set na 1,
set zb 1,
set nb 1,
set f  1,
set no 1,
eval,
output;

// Compute -1
set za 1,
set na 1,
set zb 1,
set nb 0,
set f  1,
set no 0,
eval,
output;

// Compute a
set za 0,
set na 0,
set zb 1,
set nb 1,
set f  0,
set no 0,
eval,
output;

// Compute b
set za 1,
set na 1,
set zb 0,
set nb 0,
set f  0,
set no 0,
eval,
output;

// Compute ~a
set za 0,
set na 0,
set zb 1,
set nb 1,
set f  0,
set no 1,
eval,
output;

// Compute ~b
set za 1,
set na 1,
set zb 0,
set nb 0,
set f  0,
set no 1,
eval,
output;

// Compute -a
set za 0,
set na 0,
set zb 1,
set nb 1,
set f  1,
set no 1,
eval,
output;

// Compute -b
set za 1,
set na 1,
set zb 0,
set nb 0,
set f  1,
set no 1,
eval,
output;

// Compute a + 1
set za 0,
set na 1,
set zb 1,
set nb 1,
set f  1,
set no 1,
eval,
output;

// Compute b + 1
set za 1,
set na 1,
set zb 0,
set nb 1,
set f  1,
set no 1,
eval,
output;

// Compute a - 1
set za 0,
set na 0,
set zb 1,
set nb 1,
set f  1,
set no 0,
eval,
output;

// Compute b - 1
set za 1,
set na 1,
set zb 0,
set nb 0,
set f  1,
set no 0,
eval,
output;

// Compute a + b
set za 0,
set na 0,
set zb 0,
set nb 0,
set f  1,
set no 0,
eval,
output;

// Compute a - b
set za 0,
set na 1,
set zb 0,
set nb 0,
set f  1,
set no 1,
eval,
output;

// Compute b - a
set za 0,
set na 0,
set zb 0,
set nb 1,
set f  1,
set no 1,
eval,
output;

// Compute a & b
set za 0,
set na 0,
set zb 0,
set nb 0,
set f  0,
set no 0,
eval,
output;

// Compute a | b
set za 0,
set na 1,
set zb 0,
set nb 1,
set f  0,
set no 1,
eval,
output;
