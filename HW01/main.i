# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 25 "myLib.h"
extern unsigned short *videoBuffer;
# 39 "myLib.h"
void setPixel(int row, int col, unsigned short color);
void drawRect(int row, int col, int height, int width, unsigned short color);
void fillScreen(unsigned short color);


void delay(int amount);
# 2 "main.c" 2

void initialize();
void draw1();
void draw2();
void draw3();
void draw4();

unsigned short bgColor;

int main() {

 initialize();

 while(1) {
  draw1();
        delay(200);
        draw2();
        delay(100);
        draw3();
        delay(100);
        draw4();
        delay(100);
 }
}
void initialize() {
 (*(unsigned short *)0x4000000) = 3 | (1<<10);
 bgColor = ((31) | (31)<<5 | (31)<<10);
 fillScreen(bgColor);
}

void draw1() {
    drawHeart(40,60,9,((31) | (31)<<5 | (31)<<10),((31) | (31)<<5 | (31)<<10));
    drawHeart(50,70,7,0,((31) | (0)<<5 | (0)<<10));
}
void draw2() {
    drawHeart(50,70,7,((31) | (31)<<5 | (31)<<10),((31) | (31)<<5 | (31)<<10));
    drawHeart(45,65,8,0,((31) | (0)<<5 | (0)<<10));
}
void draw3() {
    drawHeart(45,65,8,((31) | (31)<<5 | (31)<<10),((31) | (31)<<5 | (31)<<10));
    drawHeart(50,70,7,0,((31) | (0)<<5 | (0)<<10));
}
void draw4() {
    drawHeart(50,70,7,((31) | (31)<<5 | (31)<<10),((31) | (31)<<5 | (31)<<10));
    drawHeart(40,60,9,0,((31) | (0)<<5 | (0)<<10));
}
