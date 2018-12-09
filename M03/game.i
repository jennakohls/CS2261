# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef short s16;
# 65 "myLib.h"
extern unsigned short *videoBuffer;
# 86 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 158 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 201 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 212 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 252 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 270 "myLib.h"
typedef struct ObjAffine
{
    u16 fill0[3];
    s16 pa;
    u16 fill1[3];
    s16 pb;
    u16 fill2[3];
    s16 pc;
    u16 fill3[3];
    s16 pd;
} ObjAffine;

typedef struct {
    int x;
    int y;
    int dx;
    int dy;
} Position;


typedef struct {
    u16 attr0;
    u16 attr1;
    u16 attr2;
    u16 fill;
} ObjAttr;

extern ObjAffine *affineBuffer;

void obj_position(ObjAttr *attr, int x, int y);
void aff_rotation(ObjAffine *aff, int angle);
void aff_matrix(ObjAffine *aff, int a, int b, int c, int d);
# 2 "game.c" 2
# 1 "game.h" 1





typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;

    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;

    int sin;
    int cos;
    int theta;

    int hide;
    Position pos;

    int health;
} PLAYER;


extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern PLAYER player;



void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();
void initEnemy();
void updateEnemy();
void updateBullets();
void drawEnemy();
void drawBullets();
void playerFireBullet();
void update_rotations();
void update_pos();
# 3 "game.c" 2
# 1 "trig.h" 1
const short sin_table[360];
const short cos_table[360];
# 4 "game.c" 2
# 1 "bullets.h" 1




typedef struct {
    int active;

    int row;
    int col;
    int rdel;
    int cdel;
    int height;
    int width;

    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;

    Position pos;
    int sin;
    int cos;
    int theta;
} PBULLET;


typedef struct {
    int active;

    int row;
    int col;
    int rdel;
    int cdel;
    int height;
    int width;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;

    Position pos;
    int sin;
    int cos;
    int theta;
} EBULLET;


void initEBullets();
void initPBullets();
void clearPBullet();
void updateEBullets();
void updatePBullets();
void drawPBullets();
void drawEBullets();
void firePBullet();
void fireEBullet();

extern int enemyHealth;
# 5 "game.c" 2
# 1 "enemy.h" 1

typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int atkState;
    int bottomL;
    int health;
    int bulletTimer;
} ENEMY;


extern ENEMY enemy;

void initEnemy();
void updateEnemy();
void drawEnemy();

void attack1();
void attack2();
void attack3();
# 6 "game.c" 2

int hOff;
int vOff;
OBJ_ATTR shadowOAM[128];
PLAYER player;
Position center;
ENEMY enemy;

int testvar;


int bpmax;

int sinAngle;
int cosAngle;


enum {PIKAFRONT, PIKABACK, PIKARIGHT, PIKALEFT, PIKAIDLE};


void initGame() {



    vOff = 0;
    hOff = 0;
    enemyHealth = 3;
    initPBullets();
    initEBullets();
    initPlayer();
    initEnemy();
}


void updateGame() {

  updatePlayer();
     updateEnemy();
     updatePBullets();
     updateEBullets();
}


void drawGame() {

    drawEnemy();
    drawPlayer();
    drawPBullets();
    drawEBullets();

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);



}


void initPlayer() {

    player.width = 8;
    player.height = 8;
    player.rdel = 1;
    player.cdel = 1;




    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 1;
    player.aniState = PIKAFRONT;
    player.pos.x = (((240 / 2) << 16) + 8);
    player.pos.y = (((160 / 2) << 16) + 16);
    player.theta = 0;
    player.pos.dx = 0;
    player.health = 3;
}


void updatePlayer() {

    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))){
# 132 "game.c"
    player.pos.y -= (((player.rdel) << 16) + 16);
}
    else if((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))){
# 149 "game.c"
        player.pos.y += (((player.rdel) << 16) + 16);
    } else if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))){
# 173 "game.c"
        player.pos.x -= (((player.cdel) << 16) + 8);
    } else if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))){
# 195 "game.c"
        player.pos.x += (((player.cdel) << 16) + 8);
    }

    else {
        player.pos.dx = 0;
        player.pos.dy = 0;
    }
# 210 "game.c"
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<9))))
        {
            player.theta += 3;
        }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<8))))
    {
        player.theta -= 3;
    }
    if (player.theta >= 360)
    {
        player.theta -= 360;
    }
    if (player.theta < 0)
    {
        player.theta += 360;
    }
    player.sin = (sin_table[player.theta]);
    player.cos = (cos_table[player.theta]);
    update_pos(&player.pos);



     animatePlayer();

    if((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))){
        firePBullet();
    }
}




void animatePlayer() {


    player.prevAniState = player.aniState;
    player.aniState = PIKAIDLE;


    if(player.aniCounter % 20 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }


    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))))
        player.aniState = PIKABACK;
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<7))))
        player.aniState = PIKAFRONT;
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5))))
        player.aniState = PIKALEFT;
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))))
        player.aniState = PIKARIGHT;


    if (player.aniState == PIKAIDLE) {
        player.curFrame = 0;
        player.aniCounter = 0;
        player.aniState = player.prevAniState;
    } else {
        player.aniCounter++;
    }
}


void drawPlayer() {

    if (player.hide) {
        shadowOAM[0].attr0 |= (2<<8);
    } else {



        shadowOAM[0].attr0 = (0xFF & ((((player.pos.y) >> 16) - 16))) | (0<<14) | (3<<8);


        shadowOAM[0].attr1 = (0x1FF & ((((player.pos.x) >> 16) - 8))) | (1<<14) | ((0) << 9);



        shadowOAM[0].attr2 = ((0)<<12) | ((0)*32+(testvar));


        aff_matrix(affineBuffer, player.cos, -player.sin, player.sin, player.cos);
    }
}

void update_pos(Position *pos)
{
    pos->x += pos->dx;
    if (pos->x < 0)
    {
        pos->x += (240 << 16);
    }
    else if (pos->x > 240 << 16)
    {
        pos->x -= 240 << 16;
    }

    pos->y += pos->dy;
    if (pos->y < 0)
    {
        pos->y += 160 << 16;
    }
    else if (pos->y > 160 << 16)
    {
        pos->y -= 160 << 16;
    }
}
