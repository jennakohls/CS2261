// Struct for enemy
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

#define NUMATTACKS 3
extern ENEMY enemy;
extern int count;
//radius
#define r 16

void initEnemy();
void updateEnemy();
void drawEnemy();
void clearEnemy();

void attack1();
void attack2();
void attack3();