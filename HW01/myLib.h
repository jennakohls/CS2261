#ifndef MY_LIB_H
#define MY_LIB_H

// Common Typedefs
typedef unsigned short u16;

// Common Macros
#define OFFSET(r,c,rowlen) ((r)*(rowlen)+(c))

// ================================= DISPLAY ==================================

// Display Control Register
#define REG_DISPCTL (*(unsigned short *)0x4000000)
#define MODE3 3
#define BG2_ENABLE (1<<10)

// Display Status Registers
#define SCANLINECOUNTER (*(volatile unsigned short *)0x4000006)

// Display Constants
#define SCREENHEIGHT 160
#define SCREENWIDTH 240

// Video Buffer
extern unsigned short *videoBuffer;

// Color
#define COLOR(r,g,b) ((r) | (g)<<5 | (b)<<10)
#define BLACK 0
#define WHITE COLOR(31,31,31)
#define RED COLOR(31,0,0)
#define GREEN COLOR(0,31,0)
#define BLUE COLOR(0,0,31)
#define CYAN COLOR(0,31,31)
#define MAGENTA COLOR(31,0,31)
#define YELLOW COLOR(31,31,0)

// Mode 3 Drawing Functions
void setPixel(int row, int col, unsigned short color);
void drawRect(int row, int col, int height, int width, unsigned short color);
void fillScreen(unsigned short color);

// Miscellaneous Drawing Functions
void delay(int amount);

#endif