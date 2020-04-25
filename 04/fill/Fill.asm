// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(loop)
	@KBD
	D=M
	@init
	D;JEQ
	@output
	D;JGT
(output)
	@16384
	D=A
	@i
	M=D
(fill)
	@24544
	D=A
	@i
	D=D-M
	@loop
	D;JLE
	@32767
	D=A
	@i
	A=M
	M=D
	@i
	M=M+1
	@fill
	0;JMP
(init)
	@SCREEN
	M=0
	@loop
	0;JMP
