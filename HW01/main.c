#include "myLib.h"

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
	REG_DISPCTL = MODE3 | BG2_ENABLE;
	bgColor = WHITE;
	fillScreen(bgColor);
}

void draw1() {
    drawHeart(40,60,9,WHITE,WHITE);
    drawHeart(50,70,7,BLACK,RED);
}
void draw2() {
    drawHeart(50,70,7,WHITE,WHITE);
    drawHeart(45,65,8,BLACK,RED);
}
void draw3() {
    drawHeart(45,65,8,WHITE,WHITE);
    drawHeart(50,70,7,BLACK,RED);
}
void draw4() {
    drawHeart(50,70,7,WHITE,WHITE);
    drawHeart(40,60,9,BLACK,RED);
}