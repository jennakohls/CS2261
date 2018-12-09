#define PBULLETCOUNT 50
#define EBULLETCOUNT 50

//Struct for player bullets
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

//Struct for enemy bullets
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

//Prototypes
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