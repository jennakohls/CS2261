// Constants
#define MAPHEIGHT 160
#define MAPWIDTH 240

//struct for player
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

// Variables
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern PLAYER player;


// Prototypes
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
