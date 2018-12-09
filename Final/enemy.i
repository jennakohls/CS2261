# 1 "enemy.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "enemy.c"
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
# 341 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;
# 2 "enemy.c" 2
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
    int bulletTheta;

    int hide;
    Position pos;

    int health;
    int isHit;
    int hitAni;
    int isInv;
    int cheat;
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
# 3 "enemy.c" 2
# 1 "trig.h" 1
const short sin_table[360];
const short cos_table[360];
# 4 "enemy.c" 2
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
extern int bprow;
# 5 "enemy.c" 2
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
    int hitAni;

    int isHit;
} ENEMY;


extern ENEMY enemy;
extern int count;



void initEnemy();
void updateEnemy();
void drawEnemy();
void clearEnemy();

void attack1();
void attack2();
void attack3();
# 6 "enemy.c" 2


enum {ATK1, ATK2, ATK3};

int count = 0;

void initEnemy(){
    enemy.width = 8;
    enemy.height = 16;
    enemy.rdel = 1;
    enemy.cdel = 1;




    enemy.screenRow = 10;
    enemy.screenCol = 10;
    enemy.aniCounter = 0;
    enemy.curFrame = 0;
    enemy.numFrames = 4;
    enemy.aniState = 0;
    enemy.atkState = ATK1;
    enemy.hitAni = 0;

    enemy.bottomL = 1;
    enemy.health = 3;
    enemy.bulletTimer = 30;

    enemy.isHit = 0;
}

void updateEnemy(){

    switch(enemy.atkState) {

            case ATK1:
                attack1();
                break;
            case ATK2:

                attack2();
                break;
            case ATK3:
                attack3();
                break;
        }



        if(enemy.isHit > 0 && enemy.isHit < 20){
            enemy.isHit++;
        } else enemy.isHit = 0;

}

void animateEnemy(){
    if(enemy.aniCounter % 20 == 0) {
        enemy.curFrame = (enemy.curFrame + 1) % enemy.numFrames;
    }
    enemy.aniCounter++;
    if(enemy.aniState == 0 || enemy.aniState == 3) {
        enemy.width = 8;
        enemy.height = 16;
    } else if(enemy.aniState == 1 || enemy.aniState == 2) {
        enemy.width = 16;
        enemy.height = 8;
    }
}


void attack1(){

        if(enemy.screenRow < 160 - 30 &&
            enemy.screenCol < 240 - 10 && enemy.bottomL){
            enemy.screenRow += enemy.rdel;
            enemy.aniState = 0;
        } else if(enemy.screenCol < 240 - 18 - enemy.width && enemy.bottomL){
            enemy.screenCol += enemy.cdel;
            enemy.aniState = 1;

        } else if(enemy.screenRow > 10 && enemy.screenCol > 10){
            enemy.bottomL = 0;
            enemy.screenRow -= enemy.rdel;
            enemy.aniState = 3;

        } else if(enemy.screenCol > 10){
            enemy.screenCol -= enemy.cdel;
            enemy.aniState = 2;
        } else {
            enemy.bottomL = 1;
        }

    if(enemy.bulletTimer >= 50){
        fireEBullet();
        enemy.bulletTimer = 0;
    }

    enemy.bulletTimer++;

    animateEnemy();

}

void attack2(){

        if(enemy.screenRow < 160 - 30 &&
            enemy.screenCol < 240 - 10 && enemy.bottomL){
            enemy.screenRow += enemy.rdel;
            enemy.aniState = 0;
        } else if(enemy.screenCol < 240 - 18 - enemy.width && enemy.bottomL){
            enemy.screenCol += enemy.cdel;
            enemy.aniState = 1;

        } else if(enemy.screenRow > 10 && enemy.screenCol > 10){
            enemy.bottomL = 0;
            enemy.screenRow -= enemy.rdel;
            enemy.aniState = 3;

        } else if(enemy.screenCol > 10){
            enemy.screenCol -= enemy.cdel;
            enemy.aniState = 2;
        } else {
            enemy.bottomL = 1;
        }

    if(enemy.bulletTimer >= 40){
        fireEBullet();
        bprow++;
        enemy.bulletTimer = 0;
    }

    enemy.bulletTimer++;

    animateEnemy();

}

void attack3(){

    if(enemy.screenCol < 240 - 18 - enemy.width && enemy.screenRow <= 10){
            enemy.screenCol += enemy.cdel;
            enemy.aniState = 1;
        } else {
    if(enemy.screenRow < 160 - 28 - enemy.height &&
            enemy.screenCol < 240 - 10 - enemy.width && enemy.bottomL){
            enemy.screenRow += enemy.rdel;
            enemy.aniState = 0;
        } else
    if(enemy.screenCol > 10 && enemy.bottomL){
            enemy.screenCol -= enemy.cdel;
            enemy.aniState = 2;

        } else
    if(enemy.screenRow > 10){
            enemy.bottomL = 0;
            enemy.screenRow -= enemy.rdel;
            enemy.aniState = 3;

        } else

            enemy.bottomL = 1;
        }


    if(count < 17) {
        if(enemy.bulletTimer >= 20){
            fireEBullet();

            enemy.bulletTimer = 0;
            count++;
        }
    } else if(enemy.bulletTimer >= 100){
        count = 0;
        enemy.bulletTimer = 0;
    }
    enemy.bulletTimer++;

    animateEnemy();
}

void clearEnemy(){
    enemy.screenRow = 10;
    enemy.screenCol = 10;
    enemy.width = 4;
    enemy.height = 4;
    enemy.rdel = 1;
    enemy.cdel = 1;
}

void drawEnemy(){
    if (enemy.hide) {
        shadowOAM[1].attr0 |= (2<<8);
    } else {
        shadowOAM[1].attr0 = (0xFF & enemy.screenRow) | (0<<14);
        shadowOAM[1].attr1 = (0x1FF & enemy.screenCol) | (2<<14);
        shadowOAM[1].attr2 = ((2)<<12) | ((enemy.curFrame * 4)*32+(enemy.aniState * 4 + 1));

    }
}
