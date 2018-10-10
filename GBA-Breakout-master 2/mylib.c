// Sean Dai
// CS 2110: HW 11

#include "mylib.h"
#include <stdlib.h>

u16* videoBuffer = (u16*) 0x6000000; //global variable

// A function to set pixel (r,c) to the color passed in.
void setPixel4(int r, int c, u8 color) {
    int pxl = OFFSET(r,c,240);
    int index = pxl/2;
    if (c & 1) {
        videoBuffer[index] = (videoBuffer[index] & 0x00FF) | (index << 8);
    } else {
        videoBuffer[index] = (videoBuffer[index] & 0xFF00) | (index);
    }

}

//A function to draw a FILLED rectangle starting at (r,c)
void drawRect4(int r, int c, int width, int height, u8 color) {
    int i;
    volatile u16 cl = color | (color << 8);
    for (i = 0; i < height; ++i) {
        DMA[3].src = &cl;
        DMA[3].dst = videoBuffer + OFFSET(r + i, c, WIDTH)/2;
        DMA[3].cnt = (width >> 1) | DMA_SOURCE_FIXED | DMA_ON;
    }
}

/* NOT USED ANYMORE
// A function to draw a HOLLOW rectangle starting at (r,c)
void drawHollowRect(int r, int c, int width, int height, u16 color) {
    int x,y;
    for (x = 0; x < height; ++x) {
        setPixel(r, c+x, color);
        setPixel(r+width-1, c+x, color);
    }
    for (y = 0; y < width; ++y) {
        setPixel(r+y,c,color);
        setPixel(r+y,c+height-1,color);
    }

}

void plotLine(int x0, int y0, int x1, int y1, u16 color) {
    int dx,dy,d,x;
    dx = x1 - x0;
    dy = y1 - y0;
//    if (dx < 0) dx = -dx;
//    if (dy < 0) dy = -dy;

    d = (dy << 1) - dx;
    setPixel(x0,y0,color);
    int y = y0;

    if (dx == 0) { //Horizontal line
        int xx;
        for (xx = x0+1; xx <= dy; ++xx) {
            y++;
            setPixel(x0,y,color);
        }
    } else {
        for (x = x0 + 1; x <= x1; ++x) {
            if (d > 0) {
                y++;
                setPixel(x,y,color);
                d += ((dy << 1) - (dx << 1));
            } else {
                setPixel(x,y,color);
                d += (dy << 1);
            }
        }
    }
}
*/
void delay(int time) {
    for (volatile int i = 0; i < time * 1000; ++i);
}

void waitForVblank() {
    while (SCANLINECOUNTER > 160);
    while (SCANLINECOUNTER <= 160);
}

/* Draws image using DMA.
    r = row of image
    c = column of image
    width = width of image
    height = height of image
    image = const pointer to image that we wish to draw
 */
void drawImage4(int r, int c, int width, int height, const u16* image) {
    int i;
    for (i = 0; i < height; ++i) {
        DMA[3].src = &image[OFFSET(i, 0, width>>1)];
        DMA[3].dst = videoBuffer + OFFSET(r + i, c, 240)/2;
        DMA[3].cnt = (width>>1) | DMA_ON;
    }
}
//Flips the current page to one of the 2 buffers.
void flipPage() {
    if (REG_DISPCNT & BUFFER1FLAG) {
        videoBuffer = BUFFER1;
        REG_DISPCNT = REG_DISPCNT & ~BUFFER1FLAG;
    } else {
        //write to buffer1 now
        videoBuffer = BUFFER0;
        REG_DISPCNT = REG_DISPCNT | BUFFER1FLAG;
    }

}
void blank_screen(u8 color) {
    vu16 clr = color | (color << 8);
    REG_DMA3SAD = (vu32)&clr;
    REG_DMA3DAD = (vu32)videoBuffer;
    REG_DMA3CNT = 19200 | DMA_ON | DMA_SOURCE_FIXED;
}

//fills the palette in memory with the given colors
void init_palette(const unsigned short *palette) {
    int i;
    for (i = 0; i < 255; ++i) {
        PALETTE[i] = (vu16)palette[i];
    }

}
