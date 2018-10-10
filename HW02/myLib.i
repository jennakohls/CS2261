# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 25 "myLib.h"
extern unsigned short *videoBuffer;
# 40 "myLib.h"
void setPixel(int row, int col, unsigned short color);
void drawRect(int row, int col, int height, int width, unsigned short color);
void fillScreen(unsigned short color);
void drawAHeart(int row, int col, int pxSize, unsigned short color1,
        unsigned short color2);


void waitForVBlank();
# 68 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 79 "myLib.h"
int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 2 "myLib.c" 2

unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int row, int col, unsigned short color) {

 videoBuffer[((row)*(240)+(col))] = color;
}

void drawRect(int row, int col, int height, int width, unsigned short color) {

 for(int r = 0; r < height; r++) {
        for (int c = 0; c < width; c++) {
            setPixel(row+r, col+c, color);
        }
 }
}

void fillScreen(unsigned short color) {

 for(int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {

 while((*(volatile unsigned short *)0x4000006) > 160);
 while((*(volatile unsigned short *)0x4000006) < 160);
}

int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB) {

    return rowA < rowB + heightB - 1 && rowA + heightA - 1 > rowB
        && colA < colB + widthB - 1 && colA + widthA - 1 > colB;
}

void drawAHeart(int row, int col, int pxSize, unsigned short color1,
        unsigned short color2) {
    for(int i = 3 * pxSize; i < 5 * pxSize; i += pxSize) {
        drawRect(row + (1 * pxSize), col + i, pxSize, pxSize, color2);
    }
    for(int i = 8 * pxSize; i < 10 * pxSize; i+= pxSize) {
        drawRect(row + (1 * pxSize), col + i, pxSize, pxSize, color2);
    }
    drawRect(row + (2 * pxSize), col + (2 * pxSize), pxSize, pxSize, color2);
    drawRect(row + (2 * pxSize), col + (3 * pxSize), pxSize, pxSize, color1);
    drawRect(row + (2 * pxSize), col + (4 * pxSize), pxSize, pxSize, color1);
    drawRect(row + (3 * pxSize), col + (3 * pxSize), pxSize, pxSize, color1);
    drawRect(row + (2 * pxSize), col + (5 * pxSize), pxSize, pxSize, color2);
    drawRect(row + (3 * pxSize), col + (2 * pxSize), pxSize, pxSize, color2);

    for(int i = 7 * pxSize; i < 11 * pxSize; i+= pxSize) {
        drawRect(row + (2 * pxSize), col + i, pxSize, pxSize, color2);
    }
    for(int i = 4 * pxSize; i < 11 * pxSize; i+= pxSize) {
        drawRect(row + (3 * pxSize), col + i, pxSize, pxSize, color2);
    }
    for(int i = 2 * pxSize; i < 11 * pxSize; i+= pxSize) {
        drawRect(row + (4 * pxSize), col + i, pxSize, pxSize, color2);
    }
    for(int i = 3 * pxSize; i < 10 * pxSize; i+= pxSize) {
        drawRect(row + (5 * pxSize), col + i, pxSize, pxSize, color2);
    }
    for(int i = 4 * pxSize; i < 9 * pxSize; i+= pxSize) {
        drawRect(row + (6 * pxSize), col + i, pxSize, pxSize, color2);
    }
    for(int i = 5 * pxSize; i < 8 * pxSize; i+= pxSize) {
        drawRect(row + (7 * pxSize), col + i, pxSize, pxSize, color2);
    }
    drawRect(row + (8 * pxSize), col + (6 * pxSize), pxSize, pxSize, color2);
}