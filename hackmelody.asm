// INITIALIZING VARIABLES, this will go at the start of the program with the other initialized variables that other parts need

// @currentnote = 0 by default. Intended range = 0-8
// @currentnote stores what note is currently being assigned
// 0 is rest, 1-8 are notes
@0
D=A
@currentnote
M=D

// @screencurrentnote = 0 by default. Intended range = 0-8
// @screencurrentnote stores what note is currently being drawn
// 0 is rest, 1-8 are notes
@0
D=A
@currentnote
M=D

// cursordrawbool 0 or 1 true or false
@cursordrawbool
M=0

// @scorecursor = 1 by default. Intended range = 1-32
// @scorecursor keeps track of what note in time we are on.
@1
D=A
@scorecursor
M=D

// @datacursor = 273 by default. Intended range = 273-16304
// @datacursor keeps track of what address we are on.
@273
D=A
@datacursor
M=D

// @pressed = 0 by default (false) , intended range = 0-1 (true and false)
@pressed
M=0

// @screencursor = 1 by default. Intended range = 1-32
// @screencursor keeps track of what note is being drawn during the screen update function

// note1-note32 = 0 by default. keeps track of the note at that specific time in the score. This is for the benefit of UPDATESCREEN
@0
D=A
@note1
M=D
@note2
M=D
@note3
M=D
@note4
M=D
@note5
M=D
@note6
M=D
@note7
M=D
@note8
M=D
@note9
M=D
@note10
M=D
@note11
M=D
@note12
M=D
@note13
M=D
@note14
M=D
@note15
M=D
@note16
M=D
@note17
M=D
@note18
M=D
@note19
M=D
@note20
M=D
@note21
M=D
@note22
M=D
@note23
M=D
@note24
M=D
@note25
M=D
@note26
M=D
@note27
M=D
@note28
M=D
@note29
M=D
@note30
M=D
@note31
M=D
@note32
M=D

// Amplitude variables are what the data written to the sound file will be in various patterns. This is not intended to be changed by the user but in the code for debugging.
// @amplitudehigh = 1111 1111 1111 1111 or -1
@amplitudehigh
M=0
M=M-1
// @amplitudelow = 0000 0000 0000 0000 or 0
@amplitudelow
M=0
// @amplitudehalf = 1111 1111 0000 0000 or -65536+256=-65280
@65280
D=A
@amplitudehalf
M=0
M=M-D
// @amplitudeotherhalf = 0000 0000 1111 1111 or 256
@256
D=A
@amplitudeotherhalf
M=D

// @patternfull = 500 default. Intended range: 0-500. This counts down after every time the datacursor increments during a pattern,
// and when it reaches zero, exit the pattern because every register has been filled.
@500
D=A
@patternfull
M=D

@START
0;JMP

// END OF INITIALIZING VARIABLES

// Write the header and then start listening to the keyboard. Header code was written by Michael
(START)
@18770
D=A
@251
M=D
@17990
D=A
@252
M=D
@32036
D=A
@253
M=D
@0
D=A
@254
M=D
@16727
D=A
@255
M=D
@17750
D=A
@256
M=D
@28006
D=A
@257
M=D
@8308
D=A
@258
M=D
@16
D=A
@259
M=D
@0
D=A
@260
M=D
@1
D=A
@261
M=D
@1
D=A
@262
M=D
@8000
D=A
@263
M=D
@0
D=A
@264
M=D
@8000
D=A
@265
M=D
@0
D=A
@266
M=D
@1
D=A
@267
M=D
@8
D=A
@268
M=D
@24932
D=A
@269
M=D
@24948
D=A
@270
M=D
@32000
D=A
@271
M=D
@0
D=A
@272
M=D

@KBD
D=M
@LISTEN
0;JMP

// PATTERNS - this part was written by Cadence Boyce
// Step 1 (Note dependent): For each of the labels that Michael’s code calls EXCEPT FOR BACKSPACE:
// Set @currentnote to the current note
// check if pressed is true and if so, go back to the listen loop
// then go to Step 2

(AFOUR)
@pressed // checks if pressed is true
D=M
@pressedcomparison
M=D
M=M-1
D=M
@LISTEN
D;JEQ // if so, go back to listen loop
@pressed // sets pressed to true
M=1

@1
D=A
@currentnote
M=D
@SCORETODATA
0;JMP

(BFOUR)
@pressed // checks if pressed is true
D=M
@pressedcomparison
M=D
M=M-1
D=M
@LISTEN
D;JEQ // if so, go back to listen loop
@pressed // sets pressed to true
M=1
@2
D=A
@currentnote
M=D
@SCORETODATA
0;JMP

(CFIVE)
@pressed // checks if pressed is true
D=M
@pressedcomparison
M=D
M=M-1
D=M
@LISTEN
D;JEQ // if so, go back to listen loop
@pressed // sets pressed to true
M=1
@3
D=A
@currentnote
M=D
@SCORETODATA
0;JMP

(DFIVE)
@pressed // checks if pressed is true
D=M
@pressedcomparison
M=D
M=M-1
D=M
@LISTEN
D;JEQ // if so, go back to listen loop
@pressed // sets pressed to true
M=1
@4
D=A
@currentnote
M=D
@SCORETODATA
0;JMP

(EFIVE)
@pressed // checks if pressed is true
D=M
@pressedcomparison
M=D
M=M-1
D=M
@LISTEN
D;JEQ // if so, go back to listen loop
@pressed // sets pressed to true
M=1
@5
D=A
@currentnote
M=D
@SCORETODATA
0;JMP

(FFIVE)
@pressed // checks if pressed is true
D=M
@pressedcomparison
M=D
M=M-1
D=M
@LISTEN
D;JEQ // if so, go back to listen loop
@pressed // sets pressed to true
M=1
@6
D=A
@currentnote
M=D
@SCORETODATA
0;JMP

(GFIVE)
@pressed // checks if pressed is true
D=M
@pressedcomparison
M=D
M=M-1
D=M
@LISTEN
D;JEQ // if so, go back to listen loop
@pressed // sets pressed to true
M=1
@7
D=A
@currentnote
M=D
@SCORETODATA
0;JMP

(AFIVE)
@pressed // checks if pressed is true
D=M
@pressedcomparison
M=D
M=M-1
D=M
@LISTEN
D;JEQ // if so, go back to listen loop
@pressed // sets pressed to true
M=1
@8
D=A
@currentnote
M=D
@SCORETODATA
0;JMP

(REST)
@pressed // checks if pressed is true
D=M
@pressedcomparison
M=D
M=M-1
D=M
@LISTEN
D;JEQ // if so, go back to listen loop
@pressed // sets pressed to true
M=1
@0
D=A
@currentnote
M=D
@SCORETODATA
0;JMP

// Step 2 (Note independent): Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor.
// while you're there, Set the noteX variable corresponding to scorecursor to currentnote.
// See the spec sheet for the full table of which notes in time correspond to which addresses.
// Then go to pattern selector to go to the labels that make patterns.
(SCORETODATA)
@scorecursor
D=M
@scorecursorcomparison // a copy of scorecursor that can be manipulated for comparisons
M=D

@scorecursorcomparison // jumps if scorecursor < 1 (it shouldn't be)
D=M
@INVALIDSCORECURSOR
D;JLE

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 1.
M=M-1
D=M
@SCORE1
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 2.
M=M-1
D=M
@SCORE2
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 3.
M=M-1
D=M
@SCORE3
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 4.
M=M-1
D=M
@SCORE4
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 5.
M=M-1
D=M
@SCORE5
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 6.
M=M-1
D=M
@SCORE6
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 7.
M=M-1
D=M
@SCORE7
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 8.
M=M-1
D=M
@SCORE8
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 9.
M=M-1
D=M
@SCORE9
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 10.
M=M-1
D=M
@SCORE10
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 11.
M=M-1
D=M
@SCORE11
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 12.
M=M-1
D=M
@SCORE12
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 13.
M=M-1
D=M
@SCORE13
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 14.
M=M-1
D=M
@SCORE14
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 15.
M=M-1
D=M
@SCORE15
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 16.
M=M-1
D=M
@SCORE16
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 17.
M=M-1
D=M
@SCORE17
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 18.
M=M-1
D=M
@SCORE18
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 19.
M=M-1
D=M
@SCORE19
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 20.
M=M-1
D=M
@SCORE20
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 21.
M=M-1
D=M
@SCORE21
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 22.
M=M-1
D=M
@SCORE22
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 23.
M=M-1
D=M
@SCORE23
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 24.
M=M-1
D=M
@SCORE24
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 25.
M=M-1
D=M
@SCORE25
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 26.
M=M-1
D=M
@SCORE26
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 27.
M=M-1
D=M
@SCORE27
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 28.
M=M-1
D=M
@SCORE28
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 29.
M=M-1
D=M
@SCORE29
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 30.
M=M-1
D=M
@SCORE30
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 31.
M=M-1
D=M
@SCORE31
D;JEQ

@scorecursorcomparison // subtract 1. If the result = 0, scorecursor is 32.
M=M-1
D=M
@SCORE32
D;JEQ

@INVALIDSCORECURSOR // jumps if scorecursor > 32 (it shouldn't be)
0;JMP

(SCORE1) // Note 1 start = 273
@273 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note1 = currentnote
D=M
@note1
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE2) // Note 2 start = 774
@774 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note2 = currentnote
D=M
@note2
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE3) // Note 3 start = 1275
@1275 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note3 = currentnote
D=M
@note3
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE4) // Note 4 start = 1776
@1776 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note4 = currentnote
D=M
@note4
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE5) // Note 5 start = 2277
@2277 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note5 = currentnote
D=M
@note5
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE6) // Note 6 start = 2778
@2778 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note6 = currentnote
D=M
@note6
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE7) // Note 7 start = 3279
@3279 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note7 = currentnote
D=M
@note7
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE8) // Note 8 start = 3780
@3780 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note8 = currentnote
D=M
@note8
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE9) // Note 9 start = 4281
@4281 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note9 = currentnote
D=M
@note9
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE10) // Note 10 start = 4782
@4782 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note10 = currentnote
D=M
@note10
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE11) // Note 11 start = 5283
@5283 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note11 = currentnote
D=M
@note11
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE12) // Note 12 start = 5784
@5784 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note12 = currentnote
D=M
@note12
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE13) // Note 13 start = 6285
@6285 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note13 = currentnote
D=M
@note13
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE14) // Note 14 start = 6786
@6786 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note14 = currentnote
D=M
@note14
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE15) // Note 15 start = 7287
@7287 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note15 = currentnote
D=M
@note15
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE16) // Note 16 start = 7788
@7788 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note16 = currentnote
D=M
@note16
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE17) // Note 17 start = 8289
@8289 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note17 = currentnote
D=M
@note17
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE18) // Note 18 start = 8790
@8790 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note18 = currentnote
D=M
@note18
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE19) // Note 19 start = 9291
@9291 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note19 = currentnote
D=M
@note19
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE20) // Note 20 start = 9792
@9792 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note20 = currentnote
D=M
@note20
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE21) // Note 21 start = 10293
@10293 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note21 = currentnote
D=M
@note21
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE22) // Note 22 start = 10794
@10794 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note22 = currentnote
D=M
@note22
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE23) // Note 23 start = 11295
@11295 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note23 = currentnote
D=M
@note23
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE24) // Note 24 start = 11796
@11796 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note24 = currentnote
D=M
@note24
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE25) // Note 25 start = 12297
@12297 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note25 = currentnote
D=M
@note25
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE26) // Note 26 start = 12798
@12798 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note26 = currentnote
D=M
@note26
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE27) // Note 27 start = 13299
@13299 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note27 = currentnote
D=M
@note27
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE28) // Note 28 start = 13800
@13800 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note28 = currentnote
D=M
@note28
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE29) // Note 29 start = 14301
@14301 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note29 = currentnote
D=M
@note29
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE30) // Note 30 start = 14802
@14802 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note30 = currentnote
D=M
@note30
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE31) // Note 31 start = 15303
@15303 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note31 = currentnote
D=M
@note31
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(SCORE32) // Note 32 start = 15804
@15804 // Set the @datacursor to the start of the address that corresponds to the note in time corresponding to @scorecursor
D=A
@datacursor
M=D
@currentnote // set note32 = currentnote
D=M
@note32
M=D 
@PATTERNSELECTOR // go to pattern selector
0;JMP

(PATTERNSELECTOR) // use currentnote to go to the label that creates the pattern for each note.
@currentnote
D=M
@currentnotecomparison // a copy of currentnote that can be manipulated
M=D
D=M

@RESTPATTERN
D;JEQ // if currentnote is already 0, go to a rest.

@currentnotecomparison
M=M-1
D=M
@AFOURPATTERN
D;JEQ // Subtract 1. If result is 0, currentnote is 1 so you go to AFOURPATTERN

@currentnotecomparison
M=M-1
D=M
@BFOURPATTERN
D;JEQ // Subtract 1. If result is 0, currentnote is 2 so you go to BFOURPATTERN

@currentnotecomparison
M=M-1
D=M
@CFIVEPATTERN
D;JEQ // Subtract 1. If result is 0, currentnote is 3 so you go to CFIVEPATTERN

@currentnotecomparison
M=M-1
D=M
@DFIVEPATTERN
D;JEQ // Subtract 1. If result is 0, currentnote is 4 so you go to DFIVEPATTERN

@currentnotecomparison
M=M-1
D=M
@EFIVEPATTERN
D;JEQ // Subtract 1. If result is 0, currentnote is 5 so you go to EFIVEPATTERN

@currentnotecomparison
M=M-1
D=M
@FFIVEPATTERN
D;JEQ // Subtract 1. If result is 0, currentnote is 6 so you go to FFIVEPATTERN

@currentnotecomparison
M=M-1
D=M
@GFIVEPATTERN
D;JEQ // Subtract 1. If result is 0, currentnote is 7 so you go to GFIVEPATTERN

@currentnotecomparison
M=M-1
D=M
@AFIVEPATTERN
D;JEQ // Subtract 1. If result is 0, currentnote is 8 so you go to AFIVEPATTERN

@RESTPATTERN
0;JMP // if currentnote is none of these, default to a rest.

// Step 3 (Note dependent) Do the pattern that corresponds to the note selected in the 500 register chunk of data starting with datacursor

(AFOURPATTERN)
// A4= 440 Hz. 8000/440=18.182, so about 18 samples per cycle. 9 of these samples will be amplitude and 9 will be 0.
@501
D=A 
@patternfull
M=D
@AFOURLOOP
0;JMP

(AFOURLOOP) // high high high high half low low low low 

// This code will be repeated 9 times with the values needed in the pattern:
@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehalf // grab amplitude half to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@AFOURLOOP // loop at the end of the pattern
0;JMP

(BFOURPATTERN)
// B4= ~494 Hz. 8000/494=16.194 so about 16 samples per cycle. 8 will be amplitude and 8 will be 0
@501
D=A 
@patternfull
M=D
@BFOURLOOP
0;JMP

(BFOURLOOP) // high high high high low low low low

// This code will be repeated 8 times with the values needed in the pattern:
@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@BFOURLOOP // loop at the end of the pattern
0;JMP

(CFIVEPATTERN)
// C#5 = ~554 Hz. 8000/554=14.44 so about 14 samples per cycle. 7 will be amplitude and 7 will be 0
@501
D=A 
@patternfull
M=D
@CFIVELOOP
0;JMP

(CFIVELOOP) // high high high half low low low

// This code will be repeated 7 times with the values needed in the pattern:
@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehalf // grab amplitude half to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@CFIVELOOP // loop at the end of the pattern
0;JMP

(DFIVEPATTERN)
// D5= ~587 Hz per cycle. 8000/587=13.629 so about 13 samples per cycle. 7 will be amplitude and 6 will be 0
@501
D=A 
@patternfull
M=D
@DFIVELOOP
0;JMP

(DFIVELOOP) // high high high half low low otherhalf high high high low low low
// Because this cycle is an odd number of samples and there are 2 samples per register, this pattern has two cycles 
// so that we can always fill entire registers at once

// This code will be repeated 13 times with the values needed in the pattern:
@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehalf // grab amplitude half to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudeotherhalf // grab amplitude otherhalf to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@DFIVELOOP // loop at the end of the pattern
0;JMP

(EFIVEPATTERN)
// E5 = ~659 Hz. 8000/659=12.14 so about 12 samples per cycle. 6 will be amplitude and 6 will be 0
@501
D=A 
@patternfull
M=D
@EFIVELOOP
0;JMP

(EFIVELOOP) // high high high low low low

// This code will be repeated 6 times with the values needed in the pattern:
@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@EFIVELOOP // loop at the end of the pattern
0;JMP

(FFIVEPATTERN)
// F#5 = ~740 Hz. 8000/740=10.811 so about 11 samples per cycle. 6 will be amplitude and 5 will be 0
@501
D=A 
@patternfull
M=D
@FFIVELOOP
0;JMP

(FFIVELOOP) // high high high low low otherhalf high high half low low
// Because this cycle is an odd number of samples and there are 2 samples per register, this pattern has two cycles 
// so that we can always fill entire registers at once

// This code will be repeated 11 times with the values needed in the pattern:
@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudeotherhalf // grab amplitude otherhalf to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehalf // grab amplitude half to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@FFIVELOOP // loop at the end of the pattern
0;JMP

(GFIVEPATTERN)
// G#5 = ~831 Hz. 8000/831=9.627 so about 10 samples per cycle. 5 will be amplitude and 5 will be 0
@501
D=A 
@patternfull
M=D
@GFIVELOOP
0;JMP

(GFIVELOOP) // high high half low low

// This code will be repeated 5 times with the values needed in the pattern:
@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehalf // grab amplitude half to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@GFIVELOOP // loop at the end of the pattern
0;JMP

(AFIVEPATTERN)
// A5 = 880 Hz. 8000/880=9.091 so about 9 samples per cycle. 5 will be amplitude and 4 will be 0
@501
D=A 
@patternfull
M=D
@AFIVELOOP
0;JMP

(AFIVELOOP) // high high half low otherhalf high high low low
// Because this cycle is an odd number of samples and there are 2 samples per register, this pattern has two cycles 
// so that we can always fill entire registers at once

// This code will be repeated 9 times with the values needed in the pattern:
@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehalf // grab amplitude half to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude half to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudeotherhalf // grab amplitude otherhalf to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudehigh // grab amplitude high to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@AFIVELOOP // loop at the end of the pattern
0;JMP

(RESTPATTERN)
// a rest would be all 0s
@501
D=A 
@patternfull
M=D
@RESTLOOP
0;JMP

(RESTLOOP) // all low, so this pattern is only 1 register long

@amplitudelow // grab amplitude low to fill
D=M
@datacursor // go to address pointed at by datacursor and fill with value you grabbed
A=M
M=D
@datacursor // increment data cursor
M=M+1
@patternfull // check if you have already reached 500 notes
M=M-1
D=M
@INCREMENTSCORECURSOR // if the condition is met, increment the score cursor
D;JEQ

@RESTLOOP // loop at the end of the pattern
0;JMP

(INCREMENTSCORECURSOR) // increment scorecursor and then correct for overflow (if scorecursor > 32, set to 1)
@scorecursor
M=M+1
D=M
@scorecursorcomparison // a copy of scorecursor to manipulate for comparison
M=D
@32
D=A
@scorecursorcomparison
M=M-D
D=M
@INCREMENTOVERFLOW
D;JGT // if scorecursor - 32 > 0, scorecursor > 32
@UPDATESCREEN
0;JMP

(INCREMENTOVERFLOW)
@scorecursor
M=1
@UPDATESCREEN
0;JMP

(BACKSPACE) // now to handle BACKSPACE, it just decrements scorecursor. If it goes to 0, set to 32
@pressed // checks if pressed is true
D=M
@pressedcomparison
M=D
M=M-1
D=M
@LISTEN
D;JEQ // if so, go back to listen loop
@pressed // sets pressed to true
M=1
@scorecursor
M=M-1
D=M // put scorecursor into D register to compare
@BACKSPACEOVERFLOW
D;JLE // check if scorecursor is less than or equal to 0
@UPDATESCREEN
0;JMP

(BACKSPACEOVERFLOW) // If scorecursor goes to 0 while backspacing, set scorecursor to 32
@32
D=A
@scorecursor
M=D
@UPDATESCREEN // now go where it was going to go if it didn't overflow
0;JMP

(INVALIDSCORECURSOR) // if score cursor is not in intended range and was not caught when incrementing/decrementing somehow, 
// set score cursor to 1 and leave patterns.
@scorecursor
M=1
@UPDATESCREEN
0;JMP

// END OF PATTERNS

// UPDATESCREEN draws the current score on the screen and then goes back to the listen loop.
(UPDATESCREEN)
@SCREENUPDATE
0;JMP

// Listen code written by Michael
// Listen for keypresses and jump to corresponding note label
(LISTEN)
@KBD
D=M
@65 // ASCII for 'A'
D=D-A
@AFOUR
D;JEQ
@1// ASCII for 'B'
D=D-A
@BFOUR
D;JEQ
@1 // ASCII for 'C'
D=D-A
@CFIVE
D;JEQ
@1 // ASCII for 'D'
D=D-A
@DFIVE
D;JEQ
@1// ASCII for 'E'
D=D-A
@EFIVE
D;JEQ
@1// ASCII for 'F'
D=D-A
@FFIVE
D;JEQ
@1// ASCII for 'G'
D=D-A
@GFIVE
D;JEQ
@1// ASCII for 'H'
D=D-A
@AFIVE
D;JEQ
@10 // ASCII for 'R'
D=D-A
@REST
D;JEQ
@6 // ASCII for 'X'
D=D-A
@BACKSPACE
D;JEQ
@pressed // sets pressed to false if kbd does not detect one of the keys that does something
M=0 // so that holding a key does not do multiple notes
@LISTEN
0;JMP

(SCREENUPDATE)
// First, white out the screen from 21450-22873
@screencursor
M=1
@21450
D=A
@screentargetaddress
M=D
@1487
D=A
@whiteloopcounter
M=D
@WHITELOOP
0;JMP
@drawcursorbool // drawcursorbool says whether you are drawing the cursor on screen or not
M=0

(WHITELOOP)
@screentargetaddress
A=M
M=0
@whiteloopcounter
M=M-1
D=M
@SCREENUPDATE1
D;JEQ
@screentargetaddress
M=M+1
@WHITELOOP
0;JMP

(SCREENUPDATE1)
// evaluate screencursor and go to different labels depending on its value
@screencursor
D=M
@screencursorcomparison // copy of screencursor that can be manipulated
M=D

// if screencursor is 1, set screentargetaddress to 21514
// and set screencurrentnote to note1
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR1
D;JEQ

// if screencursor is 2, set screentargetaddress to 21515
// and set screencurrentnote to note2
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR2
D;JEQ

// if screencursor is 3, set screentargetaddress to 21516
// and set screencurrentnote to note3
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR3
D;JEQ

// if screencursor is 4, set screentargetaddress to 21517
// and set screencurrentnote to note4
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR4
D;JEQ

// if screencursor is 5, set screentargetaddress to 21518
// and set screencurrentnote to note5
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR5
D;JEQ

// if screencursor is 6, set screentargetaddress to 21519
// and set screencurrentnote to note6
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR6
D;JEQ

// if screencursor is 7, set screentargetaddress to 21520
// and set screencurrentnote to note7
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR7
D;JEQ

// if screencursor is 8, set screentargetaddress to 21521
// and set screencurrentnote to note8
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR8
D;JEQ

// if screencursor is 9, set screentargetaddress to 21522
// and set screencurrentnote to note9
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR9
D;JEQ

// if screencursor is 10, set screentargetaddress to 21523
// and set screencurrentnote to note10
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR10
D;JEQ

// if screencursor is 11, set screentargetaddress to 21524
// and set screencurrentnote to note11
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR11
D;JEQ

// if screencursor is 12, set screentargetaddress to 21525
// and set screencurrentnote to note12
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR12
D;JEQ

// if screencursor is 13, set screentargetaddress to 21526
// and set screencurrentnote to note13
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR13
D;JEQ

// if screencursor is 14, set screentargetaddress to 21527
// and set screencurrentnote to note14
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR14
D;JEQ

// if screencursor is 15, set screentargetaddress to 21528
// and set screencurrentnote to note15
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR15
D;JEQ

// if screencursor is 16, set screentargetaddress to 21529
// and set screencurrentnote to note16
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR16
D;JEQ

// if screencursor is 17, set screentargetaddress to 22410
// and set screencurrentnote to note17
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR17
D;JEQ

// if screencursor is 17, set screentargetaddress to 22411
// and set screencurrentnote to note18
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR18
D;JEQ

// if screencursor is 19, set screentargetaddress to 22412
// and set screencurrentnote to note19
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR19
D;JEQ

// if screencursor is 20, set screentargetaddress to 22413
// and set screencurrentnote to note20
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR20
D;JEQ

// if screencursor is 21, set screentargetaddress to 22414
// and set screencurrentnote to note21
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR21
D;JEQ

// if screencursor is 22, set screentargetaddress to 22415
// and set screencurrentnote to note22
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR22
D;JEQ

// if screencursor is 23, set screentargetaddress to 22416
// and set screencurrentnote to note23
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR23
D;JEQ

// if screencursor is 24, set screentargetaddress to 22417
// and set screencurrentnote to note24
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR24
D;JEQ

// if screencursor is 25, set screentargetaddress to 22418
// and set screencurrentnote to note25
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR25
D;JEQ

// if screencursor is 26, set screentargetaddress to 22419
// and set screencurrentnote to note26
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR26
D;JEQ

// if screencursor is 27, set screentargetaddress to 22420
// and set screencurrentnote to note27
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR27
D;JEQ

// if screencursor is 28, set screentargetaddress to 22421
// and set screencurrentnote to note28
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR28
D;JEQ

// if screencursor is 29, set screentargetaddress to 22422
// and set screencurrentnote to note29
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR29
D;JEQ

// if screencursor is 30, set screentargetaddress to 22423
// and set screencurrentnote to note30
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR30
D;JEQ

// if screencursor is 31, set screentargetaddress to 22424
// and set screencurrentnote to note31
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR31
D;JEQ

// if screencursor is 32, set screentargetaddress to 22425
// and set screencurrentnote to note32
@screencursorcomparison
M=M-1
D=M
@SCREENCURSOR32
D;JEQ

// else, go to cursordraw or listen based on whether you're currently drawing the cursor or not
@CURSORORLISTEN
0;JMP

(SCREENCURSOR1)
@21514
D=A
@screentargetaddress
M=D
@note1
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR2)
@21515
D=A
@screentargetaddress
M=D
@note2
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR3)
@21516
D=A
@screentargetaddress
M=D
@note3
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR4)
@21517
D=A
@screentargetaddress
M=D
@note4
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR5)
@21518
D=A
@screentargetaddress
M=D
@note5
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR6)
@21519
D=A
@screentargetaddress
M=D
@note6
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR7)
@21520
D=A
@screentargetaddress
M=D
@note7
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR8)
@21521
D=A
@screentargetaddress
M=D
@note8
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR9)
@21522
D=A
@screentargetaddress
M=D
@note9
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR10)
@21523
D=A
@screentargetaddress
M=D
@note10
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR11)
@21524
D=A
@screentargetaddress
M=D
@note11
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR12)
@21525
D=A
@screentargetaddress
M=D
@note12
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR13)
@21526
D=A
@screentargetaddress
M=D
@note13
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR14)
@21527
D=A
@screentargetaddress
M=D
@note14
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR15)
@21528
D=A
@screentargetaddress
M=D
@note15
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR16)
@21529
D=A
@screentargetaddress
M=D
@note16
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR17)
@22410
D=A
@screentargetaddress
M=D
@note17
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR18)
@22411
D=A
@screentargetaddress
M=D
@note18
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR19)
@22412
D=A
@screentargetaddress
M=D
@note19
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR20)
@22413
D=A
@screentargetaddress
M=D
@note20
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR21)
@22414
D=A
@screentargetaddress
M=D
@note21
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR22)
@22415
D=A
@screentargetaddress
M=D
@note22
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR23)
@22416
D=A
@screentargetaddress
M=D
@note23
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR24)
@22417
D=A
@screentargetaddress
M=D
@note24
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR25)
@22418
D=A
@screentargetaddress
M=D
@note25
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR26)
@22419
D=A
@screentargetaddress
M=D
@note26
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR27)
@22420
D=A
@screentargetaddress
M=D
@note27
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR28)
@22421
D=A
@screentargetaddress
M=D
@note28
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR29)
@22422
D=A
@screentargetaddress
M=D
@note29
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR30)
@22423
D=A
@screentargetaddress
M=D
@note30
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR31)
@22424
D=A
@screentargetaddress
M=D
@note31
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENCURSOR32)
@22425
D=A
@screentargetaddress
M=D
@note32
D=M
@screencurrentnote
M=D
@SCREENUPDATE2ORCURSORDRAW2
0;JMP

(SCREENUPDATE2)
// evaluate screencurrentnote and go to different labels depending on its value
@screencurrentnote
D=M
@screencurrentnotecomparison // copy of screencursor that can be manipulated
M=D

// if screencurrentnote is 1, add 448 to screentargetaddress and draw -1 there
@screencurrentnotecomparison
M=M-1
D=M
@SCREENCN1
D;JEQ

// if screencurrentnote is 2, add 384 to screentargetaddress and draw -1 there
@screencurrentnotecomparison
M=M-1
D=M
@SCREENCN2
D;JEQ

// if screencurrentnote is 3, add 320 to screentargetaddress and draw -1 there
@screencurrentnotecomparison
M=M-1
D=M
@SCREENCN3
D;JEQ

// if screencurrentnote is 4, add 256 to screentargetaddress and draw -1 there
@screencurrentnotecomparison
M=M-1
D=M
@SCREENCN4
D;JEQ

// if screencurrentnote is 5, add 192 to screentargetaddress and draw -1 there
@screencurrentnotecomparison
M=M-1
D=M
@SCREENCN5
D;JEQ

// if screencurrentnote is 6, add 128 to screentargetaddress and draw -1 there
@screencurrentnotecomparison
M=M-1
D=M
@SCREENCN6
D;JEQ

// if screencurrentnote is 7, add 64 to screentargetaddress and draw -1 there
@screencurrentnotecomparison
M=M-1
D=M
@SCREENCN7
D;JEQ

// if screencurrentnote is 8, add 0 to screentargetaddress and draw -1 there
@screencurrentnotecomparison
M=M-1
D=M
@SCREENCN8
D;JEQ

// else, don't draw anything
@SCREENUPDATE3
0;JMP

(SCREENCN1)
@448
D=A
@screentargetaddress
M=D+M
D=M
A=D
M=0
M=M-1
@SCREENUPDATE3
0;JMP

(SCREENCN2)
@384
D=A
@screentargetaddress
M=D+M
D=M
A=D
M=0
M=M-1
@SCREENUPDATE3
0;JMP

(SCREENCN3)
@320
D=A
@screentargetaddress
M=D+M
D=M
A=D
M=0
M=M-1
@SCREENUPDATE3
0;JMP

(SCREENCN4)
@256
D=A
@screentargetaddress
M=D+M
D=M
A=D
M=0
M=M-1
@SCREENUPDATE3
0;JMP

(SCREENCN5)
@192
D=A
@screentargetaddress
M=D+M
D=M
A=D
M=0
M=M-1
@SCREENUPDATE3
0;JMP

(SCREENCN6)
@128
D=A
@screentargetaddress
M=D+M
D=M
A=D
M=0
M=M-1
@SCREENUPDATE3
0;JMP

(SCREENCN7)
@64
D=A
@screentargetaddress
M=D+M
D=M
A=D
M=0
M=M-1
@SCREENUPDATE3
0;JMP

(SCREENCN8)
@screentargetaddress
D=M
A=D
M=0
M=M-1
@SCREENUPDATE3
0;JMP

(SCREENUPDATE3)
// increment screencursor and loop back to screenupdate1
@screencursor
M=M+1
@SCREENUPDATE1
0;JMP

(CURSORORLISTEN)
// evaluates cursordrawbool
// if it is false (0), go to cursordraw
@cursordrawbool
D=M
@CURSORDRAW
D;JEQ
// If it is true (1), go to listen
@LISTEN
0;JMP

(SCREENUPDATE2ORCURSORDRAW2)
// evaluates cursordrawbool
// If it is true (1), go to cursordraw2
@cursordrawbool
D=M
D=D-1
@CURSORDRAW2
D;JEQ
// if it is false (0), go to screenupdate2
@SCREENUPDATE2
0;JMP

(CURSORDRAW)
// set cursordrawbool to 1
@cursordrawbool
M=1
// evaluate scorecursor and go to different screencursor locations based on it
@scorecursor
D=M
@scorecursorcomparison // a version of scorecursor that can be manipulated
M=D

@scorecursorcomparison // scorecursor is 1
M=M-1 
D=M
@SCREENCURSOR1
D;JEQ

@scorecursorcomparison // scorecursor is 2
M=M-1 
D=M
@SCREENCURSOR2
D;JEQ

@scorecursorcomparison // scorecursor is 3
M=M-1 
D=M
@SCREENCURSOR3
D;JEQ

@scorecursorcomparison // scorecursor is 4
M=M-1 
D=M
@SCREENCURSOR4
D;JEQ

@scorecursorcomparison // scorecursor is 5
M=M-1 
D=M
@SCREENCURSOR5
D;JEQ

@scorecursorcomparison // scorecursor is 6
M=M-1 
D=M
@SCREENCURSOR6
D;JEQ

@scorecursorcomparison // scorecursor is 7
M=M-1 
D=M
@SCREENCURSOR7
D;JEQ

@scorecursorcomparison // scorecursor is 8
M=M-1 
D=M
@SCREENCURSOR8
D;JEQ

@scorecursorcomparison // scorecursor is 9
M=M-1 
D=M
@SCREENCURSOR9
D;JEQ

@scorecursorcomparison // scorecursor is 10
M=M-1 
D=M
@SCREENCURSOR10
D;JEQ

@scorecursorcomparison // scorecursor is 11
M=M-1 
D=M
@SCREENCURSOR11
D;JEQ

@scorecursorcomparison // scorecursor is 12
M=M-1 
D=M
@SCREENCURSOR12
D;JEQ

@scorecursorcomparison // scorecursor is 13
M=M-1 
D=M
@SCREENCURSOR13
D;JEQ

@scorecursorcomparison // scorecursor is 14
M=M-1 
D=M
@SCREENCURSOR14
D;JEQ

@scorecursorcomparison // scorecursor is 15
M=M-1 
D=M
@SCREENCURSOR15
D;JEQ

@scorecursorcomparison // scorecursor is 16
M=M-1 
D=M
@SCREENCURSOR16
D;JEQ

@scorecursorcomparison // scorecursor is 17
M=M-1 
D=M
@SCREENCURSOR17
D;JEQ

@scorecursorcomparison // scorecursor is 18
M=M-1 
D=M
@SCREENCURSOR18
D;JEQ

@scorecursorcomparison // scorecursor is 19
M=M-1 
D=M
@SCREENCURSOR19
D;JEQ

@scorecursorcomparison // scorecursor is 20
M=M-1 
D=M
@SCREENCURSOR20
D;JEQ

@scorecursorcomparison // scorecursor is 21
M=M-1 
D=M
@SCREENCURSOR21
D;JEQ

@scorecursorcomparison // scorecursor is 22
M=M-1 
D=M
@SCREENCURSOR22
D;JEQ

@scorecursorcomparison // scorecursor is 23
M=M-1 
D=M
@SCREENCURSOR23
D;JEQ

@scorecursorcomparison // scorecursor is 24
M=M-1 
D=M
@SCREENCURSOR24
D;JEQ

@scorecursorcomparison // scorecursor is 25
M=M-1 
D=M
@SCREENCURSOR25
D;JEQ

@scorecursorcomparison // scorecursor is 26
M=M-1 
D=M
@SCREENCURSOR26
D;JEQ

@scorecursorcomparison // scorecursor is 27
M=M-1 
D=M
@SCREENCURSOR27
D;JEQ

@scorecursorcomparison // scorecursor is 28
M=M-1 
D=M
@SCREENCURSOR28
D;JEQ

@scorecursorcomparison // scorecursor is 29
M=M-1 
D=M
@SCREENCURSOR29
D;JEQ

@scorecursorcomparison // scorecursor is 30
M=M-1 
D=M
@SCREENCURSOR30
D;JEQ

@scorecursorcomparison // scorecursor is 31
M=M-1 
D=M
@SCREENCURSOR31
D;JEQ

@scorecursorcomparison // scorecursor is 32
M=M-1 
D=M
@SCREENCURSOR32
D;JEQ

@LISTEN // scorecursor won't be outside of these bounds but if it is, go to listen loop ig?
0;JMP

(CURSORDRAW2)
// loop over the square you are blacking out and write -1 in each register (increment by 32), preserving screentargetaddress' value 
@screentargetaddress
D=M
@screentargetaddresscursor // store it in here to preserve screentargetaddress' value
M=D

@16 // set cursordraw2amount to the number of rows you wanna draw so that it exits when the loop is finished
D=A
@cursordraw2amount
M=D

@CURSORDRAW2LOOP // go to loop
0;JMP

(CURSORDRAW2LOOP) // check if cursordraw2amount is 0 and exit loop if so, then draw -1 in screentargetaddresscursor address, 
// then increment screentargetaddresscursor by 32 and decrement cursordraw2amount by 1 and loop
@cursordraw2amount
D=M
@CURSORDRAW3 // exit loop and go to cursordraw3
D;JEQ

@screentargetaddresscursor // draw -1 in screentargetaddresscursor address
D=M
A=D
M=0
M=M-1

@32 // increment screentargetaddresscursor by 32
D=A
@screentargetaddresscursor
M=D+M

@cursordraw2amount // decrement cursordraw2amount by 1
M=M-1

@CURSORDRAW2LOOP // loop
0;JMP

(CURSORDRAW3)
// evaluate screencurrentnote and go to different labels depending on its value
@screencurrentnote
D=M
@screencurrentnotecomparison // copy that can be manipulated
M=D

// if screencurrentnote is 1, add 448 to screentargetaddress and draw 0 there
@screencurrentnotecomparison
M=M-1
D=M
@CURSORWHITE1
D;JEQ

// if screencurrentnote is 2, add 384 to screentargetaddress and draw 0 there
@screencurrentnotecomparison
M=M-1
D=M
@CURSORWHITE2
D;JEQ

// if screencurrentnote is 3, add 320 to screentargetaddress and draw 0 there
@screencurrentnotecomparison
M=M-1
D=M
@CURSORWHITE3
D;JEQ

// if screencurrentnote is 4, add 256 to screentargetaddress and draw 0 there
@screencurrentnotecomparison
M=M-1
D=M
@CURSORWHITE4
D;JEQ

// if screencurrentnote is 5, add 192 to screentargetaddress and draw 0 there
@screencurrentnotecomparison
M=M-1
D=M
@CURSORWHITE5
D;JEQ

// if screencurrentnote is 6, add 128 to screentargetaddress and draw 0 there
@screencurrentnotecomparison
M=M-1
D=M
@CURSORWHITE6
D;JEQ

// if screencurrentnote is 7, add 64 to screentargetaddress and draw 0 there
@screencurrentnotecomparison
M=M-1
D=M
@CURSORWHITE7
D;JEQ

// if screencurrentnote is 8, add 0 to screentargetaddress and draw 0 there
@screencurrentnotecomparison
M=M-1
D=M
@CURSORWHITE8
D;JEQ

// else, don't draw anything
@cursordrawbool
M=0
@LISTEN
0;JMP

// once this all is done, go back to listen loop.

(CURSORWHITE1)
@screentargetaddress
D=M
@screentargetaddresswhite
M=D
@448
D=A
@screentargetaddresswhite
M=D+M
D=M
A=D
M=0
@cursordrawbool
M=0
@LISTEN
0;JMP

(CURSORWHITE2)
@screentargetaddress
D=M
@screentargetaddresswhite
M=D
@384
D=A
@screentargetaddresswhite
M=D+M
D=M
A=D
M=0
@cursordrawbool
M=0
@LISTEN
0;JMP


(CURSORWHITE3)
@screentargetaddress
D=M
@screentargetaddresswhite
M=D
@320
D=A
@screentargetaddresswhite
M=D+M
D=M
A=D
M=0
@cursordrawbool
M=0
@LISTEN
0;JMP

(CURSORWHITE4)
@screentargetaddress
D=M
@screentargetaddresswhite
M=D
@256
D=A
@screentargetaddresswhite
M=D+M
D=M
A=D
M=0
@cursordrawbool
M=0
@LISTEN
0;JMP


(CURSORWHITE5)
@screentargetaddress
D=M
@screentargetaddresswhite
M=D
@192
D=A
@screentargetaddresswhite
M=D+M
D=M
A=D
M=0
@cursordrawbool
M=0
@LISTEN
0;JMP


(CURSORWHITE6)
@screentargetaddress
D=M
@screentargetaddresswhite
M=D
@128
D=A
@screentargetaddresswhite
M=D+M
D=M
A=D
M=0
@cursordrawbool
M=0
@LISTEN
0;JMP

(CURSORWHITE7)
@screentargetaddress
D=M
@screentargetaddresswhite
M=D
@64
D=A
@screentargetaddresswhite
M=D+M
D=M
A=D
M=0
@cursordrawbool
M=0
@LISTEN
0;JMP

(CURSORWHITE8)
@screentargetaddress
D=M
@screentargetaddresswhite
M=D
@0
D=A
@screentargetaddresswhite
M=D+M
D=M
A=D
M=0
@cursordrawbool
M=0
@LISTEN
0;JMP
