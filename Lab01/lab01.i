# 1 "lab01.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lab01.c"
# 23 "lab01.c"
typedef unsigned short u16;
typedef unsigned char u8;


void setPixel(int, int, unsigned short);
void drawTriangle(int, int, int, u16);


unsigned short *videoBuffer = (unsigned short *)0x6000000;

int main() {
    (*(unsigned short *)0x4000000) = 3 | (1<<10);
    drawTriangle(10,10,20,((31) | (31)<<5 | (0)<<10));
    drawTriangle(50,20,30,((0) | (31)<<5 | (0)<<10));
    drawTriangle(80,120,35,((0) | (0)<<5 | (31)<<10));
    while(1);
}


void setPixel(int row, int col, unsigned short color) {
    videoBuffer[((row)*(240)+(col))] = color;
}

void drawVerticalLine(u8 x, u8 y, u8 length, u16 color) {
    int i;
    for(i = 0; i < length; i++) {
        setPixel(x, y + i, color);
    }
}

void drawHorizontalLine(u8 x, u8 y, u8 length, u16 color) {
    for(u8 i=0; i<length; i++){
        setPixel(x + i, y, color);
    }
}

void drawDiagonalLine(u8 x, u8 y, int length, u16 color) {
    for(u8 i=0; i<length; i++){
        setPixel(x + i, y-i, color);
    }
}

void drawTriangle(int row, int col, int size, u16 color) {
    drawVerticalLine(row,col,size,color);
    drawHorizontalLine(row,col,size,color);
    drawDiagonalLine(row,col+size,size,color);
}
