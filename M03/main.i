# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 48 "main.c"
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
# 49 "main.c" 2
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
# 50 "main.c" 2
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
# 51 "main.c" 2
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
extern int count;



void initEnemy();
void updateEnemy();
void drawEnemy();
void clearEnemy();

void attack1();
void attack2();
void attack3();
# 52 "main.c" 2
# 1 "winscreen.h" 1
# 22 "winscreen.h"
extern const unsigned short winscreenTiles[8112];


extern const unsigned short winscreenMap[1024];


extern const unsigned short winscreenPal[256];
# 53 "main.c" 2
# 1 "losescreen.h" 1
# 22 "losescreen.h"
extern const unsigned short losescreenTiles[8160];


extern const unsigned short losescreenMap[1024];


extern const unsigned short losescreenPal[256];
# 54 "main.c" 2
# 1 "startscreen.h" 1
# 22 "startscreen.h"
extern const unsigned short startscreenTiles[8416];


extern const unsigned short startscreenMap[1024];


extern const unsigned short startscreenPal[256];
# 55 "main.c" 2
# 1 "pausescreen.h" 1
# 22 "pausescreen.h"
extern const unsigned short pausescreenTiles[8304];


extern const unsigned short pausescreenMap[1024];


extern const unsigned short pausescreenPal[256];
# 56 "main.c" 2
# 1 "instructionsscreen.h" 1
# 22 "instructionsscreen.h"
extern const unsigned short instructionsscreenTiles[9040];


extern const unsigned short instructionsscreenMap[1024];


extern const unsigned short instructionsscreenPal[256];
# 57 "main.c" 2
# 1 "pond.h" 1
# 22 "pond.h"
extern const unsigned short pondTiles[8048];


extern const unsigned short pondMap[1024];


extern const unsigned short pondPal[256];
# 58 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[9600];


extern const unsigned short spritesheetPal[16];
# 59 "main.c" 2





void initialize();
void goToGame();
void game();
void goToStart();
void start();
void goToWin();
void win();
void goToLose();
void lose();
void goToPause();
void pause();
void goToInstructions();
void instructions();


enum {START, GAME, PAUSE, WIN, LOSE, INSTRUCTIONS};
int state;


unsigned short buttons;
unsigned short oldButtons;

int main() {

    initialize();

    while(1) {


        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


        switch(state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
        }

    }
}


void initialize() {

    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);


    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 19200/2);


    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 256);


    hideSprites();


    goToStart();
}

void goToStart() {


    DMANow(3, startscreenPal, ((unsigned short *)0x5000000), 256);



    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8);


    DMANow(3, startscreenTiles, &((charblock *)0x6000000)[0], 16832/2);
    DMANow(3, startscreenMap, &((screenblock *)0x6000000)[31], 2048/2);


    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = START;
}


void start() {


    hideSprites();


    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToInstructions();
    }
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        initGame();
        goToGame();
    }




    waitForVBlank();


    (*(volatile unsigned short *)0x04000014) = hOff;
}

void goToInstructions(){
    DMANow(3, instructionsscreenPal, ((unsigned short *)0x5000000), 256);



    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8);


    DMANow(3, instructionsscreenTiles, &((charblock *)0x6000000)[0], 18080/2);
    DMANow(3, instructionsscreenMap, &((screenblock *)0x6000000)[31], 2048/2);


    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = INSTRUCTIONS;
}

void instructions(){
    hideSprites();
    if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        initGame();
        goToGame();
    }
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        goToStart();
    }
}

void goToGame() {

    waitForVBlank();


    DMANow(3, pondPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, pondTiles, &((charblock *)0x6000000)[0], 16096/2);
    DMANow(3, pondMap, &((screenblock *)0x6000000)[31], 2048/2);
    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<14);


    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 19200/2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 32/2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);


    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);

    state = GAME;
}


void game() {

    updateGame();
    drawGame();

    if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        goToPause();
    }
# 255 "main.c"
    if(enemyHealth <= 0 && enemy.atkState != 1){
        goToWin();
    }

    if(player.health <= 0){
        goToLose();
    }

}


void goToPause() {


    DMANow(3, pausescreenPal, ((unsigned short *)0x5000000), 256);


    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8);

    DMANow(3, pausescreenTiles, &((charblock *)0x6000000)[0], 16608/2);
    DMANow(3, pausescreenMap, &((screenblock *)0x6000000)[31], 2048/2);


    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = PAUSE;
}


void pause() {


    hideSprites();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
        goToGame();
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2)))))
        goToStart();
}


void goToWin() {


    DMANow(3, winscreenPal, ((unsigned short *)0x5000000), 256);


    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8);

    DMANow(3, winscreenTiles, &((charblock *)0x6000000)[0], 16224/2);
    DMANow(3, winscreenMap, &((screenblock *)0x6000000)[31], 2048/2);


    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = WIN;
}


void win() {

    hideSprites();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
        goToStart();
}


void goToLose() {


    DMANow(3, losescreenPal, ((unsigned short *)0x5000000), 256);


    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8);

    DMANow(3, losescreenTiles, &((charblock *)0x6000000)[0], 16320/2);
    DMANow(3, losescreenMap, &((screenblock *)0x6000000)[31], 2048/2);


    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = LOSE;
}


void lose() {


    hideSprites();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}
