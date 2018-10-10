#include "myLib.h"

unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int row, int col, unsigned short color) {
	videoBuffer[OFFSET(row, col, SCREENWIDTH)] = color;
}

void drawRect(int row, int col, int height, int width, unsigned short color) {
    for(int i = 0; i < height; i++) {
        for(int j = 0; j < width; j++) {
            setPixel(row + i, col + j, color);
        }
    }
}

void drawHeart(int row, int col, int pxSize, unsigned short color1,
    unsigned short color2 ) {
    for(int i = 3 * pxSize; i < 5 * pxSize; i += pxSize) {
        drawRect(row, col + i, pxSize, pxSize, color1);
    }
    for(int i = 8 * pxSize; i < 10 * pxSize; i+= pxSize) {
        drawRect(row, col + i, pxSize, pxSize, color1);
    }
    drawRect(row + (1 * pxSize), col + (2 * pxSize), pxSize, pxSize, color1);
    drawRect(row + (1 * pxSize), col + (5 * pxSize), pxSize, pxSize, color1);
    drawRect(row + (1 * pxSize), col + (7 * pxSize), pxSize, pxSize, color1);
    drawRect(row + (1 * pxSize), col + (10 * pxSize), pxSize, pxSize, color1);
    drawRect(row + (2 * pxSize), col + pxSize, pxSize, pxSize, color1);
    drawRect(row + (3 * pxSize), col + pxSize, pxSize, pxSize, color1);
    drawRect(row + (4 * pxSize), col + pxSize, pxSize, pxSize, color1);
    drawRect(row + (2 * pxSize), col + (6 * pxSize), pxSize, pxSize, color1);
    drawRect(row + (2 * pxSize), col + (11 * pxSize), pxSize, pxSize, color1);
    drawRect(row + (3 * pxSize), col + (11 * pxSize), pxSize, pxSize, color1);
    drawRect(row + (4 * pxSize), col + (11 * pxSize), pxSize, pxSize, color1);
    for(int i = 2 * pxSize; i < 7 * pxSize; i+= pxSize) {
        drawRect(row + (i + 3 * pxSize), col + i, pxSize,
            pxSize, color1);
    }
    int j = 9 * pxSize;
    for(int i = 7 * pxSize; i < 12 * pxSize; i+= pxSize) {
        j -= pxSize;
        drawRect(row + j, col + i, pxSize, pxSize, color1);

    }
    for(int i = 3 * pxSize; i < 5 * pxSize; i += pxSize) {
        drawRect(row + (1 * pxSize), col + i, pxSize, pxSize, color2);
    }
    for(int i = 8 * pxSize; i < 10 * pxSize; i+= pxSize) {
        drawRect(row + (1 * pxSize), col + i, pxSize, pxSize, color2);
    }
    drawRect(row + (2 * pxSize), col + (2 * pxSize), pxSize, pxSize, color2);
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

void fillScreen(unsigned short color) {
    for(int i = 0; i < (160 * 240); i++) {
        videoBuffer[i] = color;
    }
}

void delay(int amount) {
    volatile int trash = 0;
    for (int i = 0; i < 1000 * amount; i++) {
        trash++;
    }
}
