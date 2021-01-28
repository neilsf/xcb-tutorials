REM -- TETRIS
REM -- An XC=BASIC tutorial game

CONST SCREENRAM = $0400
CONST COLORRAM = $d800

REM -- Clear the screen
MEMSET SCREENRAM, 1000, 32
REM -- Clear color RAM
MEMSET COLORRAM, 1000, 0

REM -- Set border and background color
POKE 53280, 13 : POKE 53281, 1

REM -- Switch to upper case
POKE 53272, 21

REM -- Disable SHIFT + Commodore key
POKE 657,128 

REM -- Draw the stage using a series of PRINT statements
PRINT "{GRAY}"
CURPOS 14, 3
PRINT "{REV_ON}{176}{195}{195}{195}{195}{195}{195}{195}{195}{195}{195}{174}{REV_OFF}"
FOR i! = 4 TO 23
  CURPOS 14, i!
  PRINT "{REV_ON}{194}{REV_OFF}          {REV_ON}{194}{REV_OFF}" : REM 10 spaces in the middle
NEXT
CURPOS 14, 24
PRINT "{REV_ON}{173}{195}{195}{195}{195}{195}{195}{195}{195}{195}{195}{189}{REV_OFF}";
CURPOS 0,0

REM -- Write texts
TEXTAT 27, 10, "level:"
TEXTAT 27, 13, "score:"
TEXTAT 27, 16, "hi:"
TEXTAT 27, 19, "next:"

REM -- Set color to green where numbers will be displayed
MEMSET COLORRAM + 467, 2, 5 : REM row 11, col 27, 2 chars
MEMSET COLORRAM + 587, 6, 5 : REM row 14, col 27, 6 chars
MEMSET COLORRAM + 707, 6, 5 : REM row 17, col 27, 6 chars