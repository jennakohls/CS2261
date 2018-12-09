# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 15 "main.c"
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
# 16 "main.c" 2
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
# 17 "main.c" 2
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
# 18 "main.c" 2
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
# 19 "main.c" 2
# 1 "winscreen.h" 1
# 22 "winscreen.h"
extern const unsigned short winscreenTiles[8112];


extern const unsigned short winscreenMap[1024];


extern const unsigned short winscreenPal[256];
# 20 "main.c" 2
# 1 "losescreen.h" 1
# 22 "losescreen.h"
extern const unsigned short losescreenTiles[8160];


extern const unsigned short losescreenMap[1024];


extern const unsigned short losescreenPal[256];
# 21 "main.c" 2
# 1 "startscreen.h" 1
# 22 "startscreen.h"
extern const unsigned short startscreenTiles[8416];


extern const unsigned short startscreenMap[1024];


extern const unsigned short startscreenPal[256];
# 22 "main.c" 2
# 1 "pausescreen.h" 1
# 22 "pausescreen.h"
extern const unsigned short pausescreenTiles[7600];


extern const unsigned short pausescreenMap[1024];


extern const unsigned short pausescreenPal[256];
# 23 "main.c" 2
# 1 "instructionsscreen.h" 1
# 22 "instructionsscreen.h"
extern const unsigned short instructionsscreenTiles[8736];


extern const unsigned short instructionsscreenMap[1024];


extern const unsigned short instructionsscreenPal[256];
# 24 "main.c" 2
# 1 "pond.h" 1
# 22 "pond.h"
extern const unsigned short pondTiles[8048];


extern const unsigned short pondMap[1024];


extern const unsigned short pondPal[256];
# 25 "main.c" 2
# 1 "pond0.h" 1
# 22 "pond0.h"
extern const unsigned short pond0Tiles[6768];


extern const unsigned short pond0Map[1024];


extern const unsigned short pond0Pal[256];
# 26 "main.c" 2
# 1 "pond1.h" 1
# 22 "pond1.h"
extern const unsigned short pond1Tiles[2624];


extern const unsigned short pond1Map[1024];


extern const unsigned short pond1Pal[256];
# 27 "main.c" 2
# 1 "pond3.h" 1
# 22 "pond3.h"
extern const unsigned short pond3Tiles[3152];


extern const unsigned short pond3Map[1024];


extern const unsigned short pond3Pal[256];
# 28 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 29 "main.c" 2
# 1 "calmstreams.h" 1
# 20 "calmstreams.h"
extern const unsigned char calmstreams[1335128];
# 30 "main.c" 2
# 1 "sound.h" 1
SOUND soundA;
SOUND soundB;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 31 "main.c" 2
# 1 "playerhit.h" 1
# 20 "playerhit.h"
extern const unsigned char playerhit[2586];
# 32 "main.c" 2
# 1 "startscreen00.h" 1
# 22 "startscreen00.h"
extern const unsigned short startscreen00Tiles[7456];


extern const unsigned short startscreen00Map[1024];


extern const unsigned short startscreen00Pal[256];
# 33 "main.c" 2
# 1 "startscreen01.h" 1
# 22 "startscreen01.h"
extern const unsigned short startscreen01Tiles[7312];


extern const unsigned short startscreen01Map[1024];


extern const unsigned short startscreen01Pal[256];
# 34 "main.c" 2
# 1 "startscreen02.h" 1
# 22 "startscreen02.h"
extern const unsigned short startscreen02Tiles[6944];


extern const unsigned short startscreen02Map[1024];


extern const unsigned short startscreen02Pal[256];
# 35 "main.c" 2
# 1 "startscreen03.h" 1
# 22 "startscreen03.h"
extern const unsigned short startscreen03Tiles[6976];


extern const unsigned short startscreen03Map[1024];


extern const unsigned short startscreen03Pal[256];
# 36 "main.c" 2
# 1 "startscreen04.h" 1
# 22 "startscreen04.h"
extern const unsigned short startscreen04Tiles[7072];


extern const unsigned short startscreen04Map[1024];


extern const unsigned short startscreen04Pal[256];
# 37 "main.c" 2
# 1 "startscreen05.h" 1
# 22 "startscreen05.h"
extern const unsigned short startscreen05Tiles[7120];


extern const unsigned short startscreen05Map[1024];


extern const unsigned short startscreen05Pal[256];
# 38 "main.c" 2
# 1 "startscreen06.h" 1
# 22 "startscreen06.h"
extern const unsigned short startscreen06Tiles[6944];


extern const unsigned short startscreen06Map[1024];


extern const unsigned short startscreen06Pal[256];
# 39 "main.c" 2
# 1 "startscreen07.h" 1
# 22 "startscreen07.h"
extern const unsigned short startscreen07Tiles[6992];


extern const unsigned short startscreen07Map[1024];


extern const unsigned short startscreen07Pal[256];
# 40 "main.c" 2
# 1 "startscreen08.h" 1
# 22 "startscreen08.h"
extern const unsigned short startscreen08Tiles[7024];


extern const unsigned short startscreen08Map[1024];


extern const unsigned short startscreen08Pal[256];
# 41 "main.c" 2
# 1 "startscreen09.h" 1
# 22 "startscreen09.h"
extern const unsigned short startscreen09Tiles[7168];


extern const unsigned short startscreen09Map[1024];


extern const unsigned short startscreen09Pal[256];
# 42 "main.c" 2
# 1 "startscreen10.h" 1
# 22 "startscreen10.h"
extern const unsigned short startscreen10Tiles[6400];


extern const unsigned short startscreen10Map[1024];


extern const unsigned short startscreen10Pal[256];
# 43 "main.c" 2
# 1 "startscreen11.h" 1
# 22 "startscreen11.h"
extern const unsigned short startscreen11Tiles[6480];


extern const unsigned short startscreen11Map[1024];


extern const unsigned short startscreen11Pal[256];
# 44 "main.c" 2
# 1 "startscreen12.h" 1
# 22 "startscreen12.h"
extern const unsigned short startscreen12Tiles[6304];


extern const unsigned short startscreen12Map[1024];


extern const unsigned short startscreen12Pal[256];
# 45 "main.c" 2
# 1 "startscreen13.h" 1
# 22 "startscreen13.h"
extern const unsigned short startscreen13Tiles[6256];


extern const unsigned short startscreen13Map[1024];


extern const unsigned short startscreen13Pal[256];
# 46 "main.c" 2
# 1 "startscreen14.h" 1
# 22 "startscreen14.h"
extern const unsigned short startscreen14Tiles[6288];


extern const unsigned short startscreen14Map[1024];


extern const unsigned short startscreen14Pal[256];
# 47 "main.c" 2
# 1 "startscreen15.h" 1
# 22 "startscreen15.h"
extern const unsigned short startscreen15Tiles[6256];


extern const unsigned short startscreen15Map[1024];


extern const unsigned short startscreen15Pal[256];
# 48 "main.c" 2
# 1 "instructionsscreen00.h" 1
# 22 "instructionsscreen00.h"
extern const unsigned short instructionsscreen00Tiles[8192];


extern const unsigned short instructionsscreen00Map[1024];


extern const unsigned short instructionsscreen00Pal[256];
# 49 "main.c" 2
# 1 "instructionsscreen01.h" 1
# 22 "instructionsscreen01.h"
extern const unsigned short instructionsscreen01Tiles[8400];


extern const unsigned short instructionsscreen01Map[1024];


extern const unsigned short instructionsscreen01Pal[256];
# 50 "main.c" 2
# 1 "instructionsscreen02.h" 1
# 22 "instructionsscreen02.h"
extern const unsigned short instructionsscreen02Tiles[8144];


extern const unsigned short instructionsscreen02Map[1024];


extern const unsigned short instructionsscreen02Pal[256];
# 51 "main.c" 2
# 1 "instructionsscreen03.h" 1
# 22 "instructionsscreen03.h"
extern const unsigned short instructionsscreen03Tiles[8336];


extern const unsigned short instructionsscreen03Map[1024];


extern const unsigned short instructionsscreen03Pal[256];
# 52 "main.c" 2
# 1 "instructionsscreen04.h" 1
# 22 "instructionsscreen04.h"
extern const unsigned short instructionsscreen04Tiles[8720];


extern const unsigned short instructionsscreen04Map[1024];


extern const unsigned short instructionsscreen04Pal[256];
# 53 "main.c" 2
# 1 "instructionsscreen05.h" 1
# 22 "instructionsscreen05.h"
extern const unsigned short instructionsscreen05Tiles[8720];


extern const unsigned short instructionsscreen05Map[1024];


extern const unsigned short instructionsscreen05Pal[256];
# 54 "main.c" 2
# 1 "instructionsscreen06.h" 1
# 22 "instructionsscreen06.h"
extern const unsigned short instructionsscreen06Tiles[8736];


extern const unsigned short instructionsscreen06Map[1024];


extern const unsigned short instructionsscreen06Pal[256];
# 55 "main.c" 2
# 1 "instructionsscreen07.h" 1
# 22 "instructionsscreen07.h"
extern const unsigned short instructionsscreen07Tiles[8752];


extern const unsigned short instructionsscreen07Map[1024];


extern const unsigned short instructionsscreen07Pal[256];
# 56 "main.c" 2
# 1 "instructionsscreen08.h" 1
# 22 "instructionsscreen08.h"
extern const unsigned short instructionsscreen08Tiles[8752];


extern const unsigned short instructionsscreen08Map[1024];


extern const unsigned short instructionsscreen08Pal[256];
# 57 "main.c" 2
# 1 "instructionsscreen09.h" 1
# 22 "instructionsscreen09.h"
extern const unsigned short instructionsscreen09Tiles[8720];


extern const unsigned short instructionsscreen09Map[1024];


extern const unsigned short instructionsscreen09Pal[256];
# 58 "main.c" 2
# 1 "instructionsscreen10.h" 1
# 22 "instructionsscreen10.h"
extern const unsigned short instructionsscreen10Tiles[8720];


extern const unsigned short instructionsscreen10Map[1024];


extern const unsigned short instructionsscreen10Pal[256];
# 59 "main.c" 2
# 1 "instructionsscreen11.h" 1
# 22 "instructionsscreen11.h"
extern const unsigned short instructionsscreen11Tiles[8784];


extern const unsigned short instructionsscreen11Map[1024];


extern const unsigned short instructionsscreen11Pal[256];
# 60 "main.c" 2
# 1 "instructionsscreen12.h" 1
# 22 "instructionsscreen12.h"
extern const unsigned short instructionsscreen12Tiles[8752];


extern const unsigned short instructionsscreen12Map[1024];


extern const unsigned short instructionsscreen12Pal[256];
# 61 "main.c" 2
# 1 "instructionsscreen13.h" 1
# 22 "instructionsscreen13.h"
extern const unsigned short instructionsscreen13Tiles[8768];


extern const unsigned short instructionsscreen13Map[1024];


extern const unsigned short instructionsscreen13Pal[256];
# 62 "main.c" 2
# 1 "instructionsscreen14.h" 1
# 22 "instructionsscreen14.h"
extern const unsigned short instructionsscreen14Tiles[8704];


extern const unsigned short instructionsscreen14Map[1024];


extern const unsigned short instructionsscreen14Pal[256];
# 63 "main.c" 2
# 1 "instructionsscreen15.h" 1
# 22 "instructionsscreen15.h"
extern const unsigned short instructionsscreen15Tiles[8704];


extern const unsigned short instructionsscreen15Map[1024];


extern const unsigned short instructionsscreen15Pal[256];
# 64 "main.c" 2


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
void animateMenu();
void animateInstr();


enum {START, GAME, PAUSE, WIN, LOSE, INSTRUCTIONS};
int state;
int scroll;
int menuAniTimer;
int menuAni;
int instrAni;
int instrAniTimer;

SOUND soundA;
SOUND soundB;


unsigned short buttons;
unsigned short oldButtons;

int main() {

    setupSounds();
    setupInterrupts();
    initialize();

    playSoundA(calmstreams,1335128 - 600,11025, 1);

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


    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768/2);


    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 256);


    hideSprites();


    goToStart();
}

void goToStart() {


    DMANow(3, startscreen00Pal, ((unsigned short *)0x5000000), 256);



    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8);


    DMANow(3, startscreen00Tiles, &((charblock *)0x6000000)[0], 14912/2);
    DMANow(3, startscreen00Map, &((screenblock *)0x6000000)[31], 2048/2);



    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);


    state = START;

    (*(unsigned short *)0x4000000) = 0 | (1<<8);
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

    if(menuAniTimer >= 8){
        animateMenu();
        menuAniTimer = 0;
    }

    menuAniTimer++;
}

void animateMenu(){
    if(menuAni == 0){
        DMANow(3, startscreen00Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen00Tiles, &((charblock *)0x6000000)[0], 14912/2);
        DMANow(3, startscreen00Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 1){
        DMANow(3, startscreen01Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen01Tiles, &((charblock *)0x6000000)[0], 14624/2);
        DMANow(3, startscreen01Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 2){
        DMANow(3, startscreen02Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen02Tiles, &((charblock *)0x6000000)[0], 13888/2);
        DMANow(3, startscreen02Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 3){
        DMANow(3, startscreen03Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen03Tiles, &((charblock *)0x6000000)[0], 13952/2);
        DMANow(3, startscreen03Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 4){
        DMANow(3, startscreen04Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen04Tiles, &((charblock *)0x6000000)[0], 14144/2);
        DMANow(3, startscreen04Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 5){
        DMANow(3, startscreen05Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen05Tiles, &((charblock *)0x6000000)[0], 14240/2);
        DMANow(3, startscreen05Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 6){
        DMANow(3, startscreen06Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen06Tiles, &((charblock *)0x6000000)[0], 13888/2);
        DMANow(3, startscreen06Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 7){
        DMANow(3, startscreen07Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen07Tiles, &((charblock *)0x6000000)[0], 13984/2);
        DMANow(3, startscreen07Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 8){
        DMANow(3, startscreen08Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen08Tiles, &((charblock *)0x6000000)[0], 14048/2);
        DMANow(3, startscreen08Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 9){
        DMANow(3, startscreen09Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen09Tiles, &((charblock *)0x6000000)[0], 14336/2);
        DMANow(3, startscreen09Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 10){
        DMANow(3, startscreen10Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen10Tiles, &((charblock *)0x6000000)[0], 12800/2);
        DMANow(3, startscreen10Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 11){
        DMANow(3, startscreen11Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen11Tiles, &((charblock *)0x6000000)[0], 12960/2);
        DMANow(3, startscreen11Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 12){
        DMANow(3, startscreen12Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen12Tiles, &((charblock *)0x6000000)[0], 12608/2);
        DMANow(3, startscreen12Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 13){
        DMANow(3, startscreen13Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen13Tiles, &((charblock *)0x6000000)[0], 12512/2);
        DMANow(3, startscreen13Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 14){
        DMANow(3, startscreen14Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen14Tiles, &((charblock *)0x6000000)[0], 12576/2);
        DMANow(3, startscreen14Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(menuAni == 15){
        DMANow(3, startscreen15Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, startscreen15Tiles, &((charblock *)0x6000000)[0], 12512/2);
        DMANow(3, startscreen15Map, &((screenblock *)0x6000000)[31], 2048/2);
    }

    menuAni = (menuAni + 1) % 16;
}

void goToInstructions(){
    DMANow(3, instructionsscreenPal, ((unsigned short *)0x5000000), 256);



    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8);


    DMANow(3, instructionsscreenTiles, &((charblock *)0x6000000)[0], 17472/2);
    DMANow(3, instructionsscreenMap, &((screenblock *)0x6000000)[31], 2048/2);


    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = INSTRUCTIONS;

    (*(unsigned short *)0x4000000) = 0 | (1<<8);

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

    if(instrAniTimer >= 8){
        animateInstr();
        instrAniTimer = 0;
    }

    instrAniTimer++;
}

void animateInstr(){
    if(instrAni == 0){
        DMANow(3, instructionsscreen00Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, instructionsscreen00Tiles, &((charblock *)0x6000000)[0], 16384/2);
        DMANow(3, instructionsscreen00Map, &((screenblock *)0x6000000)[31], 2048/2);
    } else if(instrAni == 1){
        DMANow(3, instructionsscreen01Pal, ((unsigned short *)0x5000000), 256);
        DMANow(3, instructionsscreen01Tiles, &((charblock *)0x6000000)[0], 16800/2);
        DMANow(3, instructionsscreen01Map, &((screenblock *)0x6000000)[31], 2048/2);
# 383 "main.c"
    }

    instrAni = (instrAni + 1) % 2;
}

void goToGame() {

    waitForVBlank();


    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12) | (1<<9) | (1<<10);

    (*(volatile unsigned short*)0x400000C) = ((0)<<2) | ((28)<<8) | (0<<14) | (0<<7);
    DMANow(3, pond0Pal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, pond0Tiles, &((charblock *)0x6000000)[0], 13536/2);
    DMANow(3, pond0Map, &((screenblock *)0x6000000)[28], 2048/2);




    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((29)<<8) | (0<<14);
    DMANow(3, pond1Tiles, &((charblock *)0x6000000)[1], 5248/2);
    DMANow(3, pond1Map, &((screenblock *)0x6000000)[29], 2048/2);
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;


    (*(volatile unsigned short*)0x4000008) = ((2)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, pond3Tiles, &((charblock *)0x6000000)[2], 6304/2);
    DMANow(3, pond3Map, &((screenblock *)0x6000000)[30], 2048/2);



    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768/2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512/2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);




    state = GAME;
}


void game() {

    updateGame();
    drawGame();

    if(scroll >= 20){
        hOff = (hOff + 1);

        scroll = 0;
    } else {
        scroll++;
    }

    if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        goToPause();
    }
# 454 "main.c"
    if((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
        player.isInv = (player.isInv + 1) % 2;
        player.cheat = (player.cheat + 1) % 2;
    }
    if(enemyHealth <= 0 && enemy.atkState != 1){
        goToWin();
    }

    if(player.health <= 0){
        goToLose();
    }

}


void goToPause() {


    DMANow(3, pausescreenPal, ((unsigned short *)0x5000000), 256);


    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8) | (1<<8);

    DMANow(3, pausescreenTiles, &((charblock *)0x6000000)[0], 15200/2);
    DMANow(3, pausescreenMap, &((screenblock *)0x6000000)[31], 2048/2);


    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = PAUSE;

    (*(unsigned short *)0x4000000) = 0 | (1<<8);
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

    (*(unsigned short *)0x4000000) = 0 | (1<<8);
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

    (*(unsigned short *)0x4000000) = 0 | (1<<8);
}


void lose() {


    hideSprites();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}
