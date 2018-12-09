# 1 "bullets.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "bullets.c"
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
# 2 "bullets.c" 2
# 1 "trig.h" 1
const short sin_table[360];
const short cos_table[360];
# 3 "bullets.c" 2
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
# 4 "bullets.c" 2
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
# 5 "bullets.c" 2
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
# 6 "bullets.c" 2
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
# 7 "bullets.c" 2
# 1 "playerhit.h" 1
# 20 "playerhit.h"
extern const unsigned char playerhit[2586];
# 8 "bullets.c" 2
# 1 "enemyhit.h" 1
# 20 "enemyhit.h"
extern const unsigned char enemyhit[2088];
# 9 "bullets.c" 2

int bprow;
int bpcol;
int enemyHealth = 3;
int stoppingPoint = 0;

PBULLET pbullets[50];
EBULLET ebullets[50];

void initPBullets(){
    for(int i = 0; i < 50; i++){
        pbullets[i].active = 0;

        pbullets[i].row = 0;
        pbullets[i].col = 0;
        pbullets[i].rdel = 1;
        pbullets[i].cdel = 1;
        pbullets[i].width = 4;
        pbullets[i].height = 4;

        pbullets[i].numFrames = 1;
        pbullets[i].aniCounter = 0;
        pbullets[i].prevAniState = 0;
        pbullets[i].curFrame = 0;
        pbullets[i].hide = 0;

        pbullets[i].sin = 0;
        pbullets[i].cos = 0;
        pbullets[i].theta = 0;

        pbullets[i].pos.x = 0;
        pbullets[i].pos.y = 0;
        pbullets[i].pos.dx = 0;
        pbullets[i].pos.dy = 0;

    }
}

void clearPBullet(PBULLET *p){
        p->active = 0;

        p->row = 0;
        p->col = 0;
        p->rdel = 0;
        p->cdel = 0;
        p->width = 8;
        p->height = 8;

        p->numFrames = 1;
        p->aniCounter = 0;
        p->prevAniState = 0;
        p->curFrame = 0;
        p->hide = 0;

        p->sin = 0;
        p->cos = 0;
        p->theta = 0;

        p->pos.x = 0;
        p->pos.y = 0;
        p->pos.dx = 0;
        p->pos.dy = 0;
}

void clearEBullet(EBULLET *eb){


        eb->row = 0;
        eb->col = 0;
        eb->rdel = 0;
        eb->cdel = 0;
        eb->width = 8;
        eb->height = 8;

        eb->numFrames = 1;
        eb->aniCounter = 0;
        eb->prevAniState = 0;
        eb->curFrame = 0;
        eb->hide = 1;

        eb->sin = 0;
        eb->cos = 0;
        eb->theta = 0;

        eb->pos.x = 0;
        eb->pos.y = 0;
        eb->pos.dx = 0;
        eb->pos.dy = 0;
}

void initEBullets(){
    for(int i = 0; i < 50; i++){
        ebullets[i].active = 0;

        ebullets[i].row = 0;
        ebullets[i].col = 0;
        ebullets[i].rdel = 1;
        ebullets[i].cdel = 1;
        ebullets[i].width = 8;
        ebullets[i].height = 8;

        ebullets[i].numFrames = 1;
        ebullets[i].aniCounter = 0;
        ebullets[i].prevAniState = 0;
        ebullets[i].curFrame = 0;
        ebullets[i].hide = 0;

        ebullets[i].sin = 0;
        ebullets[i].cos = 0;
        ebullets[i].theta = 0;

        ebullets[i].pos.x = 0;
        ebullets[i].pos.y = 0;
        ebullets[i].pos.dx = 0;
        ebullets[i].pos.dy = 0;

    }
}

void firePBullet(){

    for(int i = 0; i < 50; i++){
        if(!pbullets[i].active){


            pbullets[i].active = 1;

            pbullets[i].row = (((player.pos.y) >> 16) - 16) + (player.height / 2);
            pbullets[i].col = (((player.pos.x) >> 16) - 8) + (player.width / 2);
            pbullets[i].pos.y = (((pbullets[i].row) << 16) + 16);
            pbullets[i].pos.x = (((pbullets[i].col) << 16) + 8);
            pbullets[i].rdel = 1;
            pbullets[i].cdel = 1;

            pbullets[i].theta = (player.theta + player.bulletTheta) % 360;
            pbullets[i].pos.dx -= player.sin << 3;
            pbullets[i].pos.dy -= player.cos << 3;





            if(pbullets[i].theta <= 270 && pbullets[i].theta > 90) {
                pbullets[i].rdel *= -1;

            }

            if(pbullets[i].theta <= 0 || pbullets[i].theta > 180) {
                pbullets[i].cdel *= -1;

            }
            if((pbullets[i].theta - 22 <= 0 && pbullets[i].theta + 22 >= 0) ||
                (pbullets[i].theta - 22 <= 180 && pbullets[i].theta + 22 >= 180)) {
                pbullets[i].cdel = 0;

            }
            if((pbullets[i].theta - 22 <= 270 && pbullets[i].theta + 22 >= 270) ||
                (pbullets[i].theta - 22 <= 90 && pbullets[i].theta + 22 >= 90)) {
                pbullets[i].rdel = 0;

            }

            break;
        }
    }
}

void fireEBullet(){
    if(enemy.atkState == 0){
        for(int i = 0; i < 50; i++){
            if(!ebullets[i].active){

                ebullets[i].active = 1;

                ebullets[i].row = enemy.screenRow + (enemy.height / 2);
                ebullets[i].col = enemy.screenCol + (enemy.width / 2);
                ebullets[i].pos.y = (((ebullets[i].row) << 16) + 16);
                ebullets[i].pos.x = (((ebullets[i].col) << 16) + 8);
                ebullets[i].rdel = 0;
                ebullets[i].cdel = 0;


                bprow = (((player.pos.y) << 16) + 16) - ebullets[i].row;
                bpcol = (((player.pos.x) << 16) + 8) - ebullets[i].col;



                if(ebullets[i].col < 240 / 2){
                    ebullets[i].cdel = (bpcol > 0) ? 1 : -1;
                } else {
                    ebullets[i].cdel = (bpcol < 0) ? 1 : -1;
                }

                if(ebullets[i].row < 160 / 2){
                    ebullets[i].rdel = (bprow > 0) ? 1 : -1;
                } else {
                    ebullets[i].rdel = (bprow < 0) ? 1 : -1;
                }
                break;
            }
        }
    }
    if(enemy.atkState == 1){
        for(int j = 0; j < 5; j++){
                for(int i = 0; i < 50; i++){
                    if(!ebullets[i].active){
                        ebullets[i].active = 1;
                        ebullets[i].row = j * 32 + 12;
                        ebullets[i].col = 0;
                        ebullets[i].pos.y = (((ebullets[i].row) << 16) + 16);

                        ebullets[i].rdel = 0;
                        ebullets[i].cdel = 1;
                        break;
                }
            }
        }
    }
    if(enemy.atkState == 2){
        for(int i = 0; i < 50; i++){
            if(!ebullets[i].active){
                ebullets[i].active = 1;

                ebullets[i].rdel = 0;
                ebullets[i].cdel = 0;





                if(count == 0){
                    ebullets[i].row = (((player.pos.y) >> 16) - 16) + (2 * 16) + 8;
                    ebullets[i].col = (((player.pos.x) >> 16) - 8) + (0 * 16) + 8;
                } if(count == 1){
                    ebullets[i].row = (((player.pos.y) >> 16) - 16) + (1 * 16) + 8;
                    ebullets[i].col = (((player.pos.x) >> 16) - 8) + (1 * 16) + 8;
                } if(count == 2){
                    ebullets[i].row = (((player.pos.y) >> 16) - 16) + (0 * 16) + 8;
                    ebullets[i].col = (((player.pos.x) >> 16) - 8) + (2 * 16) + 8;
                } if(count == 3){
                    ebullets[i].row = (((player.pos.y) >> 16) - 16) + (-1 * 16) + 8;
                    ebullets[i].col = (((player.pos.x) >> 16) - 8) + (1 * 16) + 8;
                } if(count == 4){
                    ebullets[i].row = (((player.pos.y) >> 16) - 16) + (-2 * 16) + 8;
                    ebullets[i].col = (((player.pos.x) >> 16) - 8) + (0 * 16) + 8;
                } if(count == 5){
                    ebullets[i].row = (((player.pos.y) >> 16) - 16) + (-1 * 16) + 8;
                    ebullets[i].col = (((player.pos.x) >> 16) - 8) + (-1 * 16) + 8;
                } if(count == 6){
                    ebullets[i].row = (((player.pos.y) >> 16) - 16) + (0 * 16) + 8;
                    ebullets[i].col = (((player.pos.x) >> 16) - 8) + (-2 * 16) + 8;
                } if(count == 7){
                    ebullets[i].row = (((player.pos.y) >> 16) - 16) + (1 * 16) + 8;
                    ebullets[i].col = (((player.pos.x) >> 16) - 8) + (-1 * 16) + 8;
                } if(count == 8){
                    ebullets[i].row = (((player.pos.y) >> 16) - 16) + (2 * 16) + 8;
                    ebullets[i].col = (((player.pos.x) >> 16) - 8) + (0 * 16) + 8;
                    stoppingPoint = i;
                } if(count > 8){



                    ebullets[stoppingPoint - count + 8].rdel = vDir(ebullets[stoppingPoint - count + 8].row);
                    ebullets[stoppingPoint - count + 8].cdel = hDir(ebullets[stoppingPoint - count + 8].col);
                }
                break;
            }
        }
    }
}


int vDir(int row){
    if(row > 160 / 2){
        if(row > player.pos.y) return 1;
        else if(row < player.pos.y) return -1;
        else return 0;
    } else if(row < 160 / 2){
        if(row < player.pos.y) return 1;
        else if(row > player.pos.y) return -1;
        else return 0;
    }
    else return 0;
}

int hDir(int col){
    if(col > 240 / 2){
        if(col > player.pos.x) return 1;
        else if(col < player.pos.x) return -1;
        else return 0;
    } else if(col < 240 / 2){
        if(col < player.pos.x) return 1;
        else if(col > player.pos.x) return -1;
        else return 0;
    }
    else return 0;
}

void updatePBullets(){
    for(int i = 0; i < 50; i++){

        if(pbullets[i].active){

            if(pbullets[i].row + pbullets[i].rdel < 160 &&
                pbullets[i].row + pbullets[i].rdel + pbullets[i].height > 0 &&
                pbullets[i].col + pbullets[i].cdel < 240 &&
                pbullets[i].col + pbullets[i].cdel + pbullets[i].width > 0){






                pbullets[i].row = (pbullets[i].row + pbullets[i].rdel);
                pbullets[i].col = (pbullets[i].col + pbullets[i].cdel);


                if(collision(pbullets[i].row, pbullets[i].col, pbullets[i].height,
                    pbullets[i].width, enemy.screenRow, enemy.screenCol, enemy.height, enemy.width)){
                    playSoundB(enemyhit, 2088, 11025, 0);
                    for(int k = 0; k < 50; k++){
                        ebullets[k].hide = 1;
                    }
                    clearEnemy();
                    enemy.atkState = (enemy.atkState + 1) % 3;

                    enemyHealth -= 1;

                    enemy.isHit = 1;
                }
            } else {
                clearPBullet(&pbullets[i]);
            }
        }
    }
}

void updateEBullets(){
    for(int i = 0; i < 50; i++){

        if(ebullets[i].active){

            if(ebullets[i].row + ebullets[i].rdel < 160 &&
                ebullets[i].row + ebullets[i].rdel + ebullets[i].height > 0 &&
                ebullets[i].col + ebullets[i].cdel < 240 &&
                ebullets[i].col + ebullets[i].cdel + ebullets[i].width > 0){





                ebullets[i].row = (ebullets[i].row + ebullets[i].rdel);
                ebullets[i].col = (ebullets[i].col + ebullets[i].cdel);


                if(collision(ebullets[i].row, ebullets[i].col,
                    ebullets[i].height, ebullets[i].width, (((player.pos.y) >> 16) - 16),
                    (((player.pos.x) >> 16) - 8), player.height, player.width)){
                    player.health -= 1;
                    ebullets[i].active = 0;
                    ebullets[i].hide = 1;
                    player.isHit = 1;
                    playSoundB(playerhit, 2586 - 300, 11025, 0);


                }
            } else {
                ebullets[i].active = 0;
                ebullets[i].hide = 0;
            }
        }
    }
}

void drawPBullets(){

    for(int i = 0; i < 50; i++){
        if(pbullets[i].active){
            if (pbullets[i].hide) {
                shadowOAM[52 + i].attr0 |= (2<<8);
            } else {
                shadowOAM[52 + i].attr0 = (0xFF & pbullets[i].row) | (0<<14);
                shadowOAM[52 + i].attr1 = (0x1FF & pbullets[i].col) | (0<<14);
                shadowOAM[52 + i].attr2 = ((1)<<12) |

                    ((1)*32+(0));
            }
        }
    }
}

void drawEBullets(){

    for(int i = 0; i < 50; i++){
        shadowOAM[2 + i].attr0 |= (2<<8);
        if(ebullets[i].active){
            if (ebullets[i].hide) {
                clearEBullet(&ebullets[i]);
                initEBullets();


            } else {
                shadowOAM[2 + i].attr0 = (0xFF & ebullets[i].row) | (0<<14);
                shadowOAM[2 + i].attr1 = (0x1FF & ebullets[i].col) | (0<<14);
                shadowOAM[2 + i].attr2 = ((1)<<12) |

                    ((2)*32+(0));
            }
        }
    }
}
