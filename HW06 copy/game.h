typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int width;
	int height;
	int bulletTimer;
} PLAYER;

typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int width;
	int height;
	int active;
	int aniState;
	int aniCounter;
	int curFrame;
	int numFrames;
} ENEMY;

typedef struct{
	int row;
	int col;
	int rdel;
	int width;
	int height;
	int active;
	int player;
	int enemy;
} BULLET;


// Prototypes
void initGame();
void initPlayer();
void drawGame();
void drawPlayer();
void drawEnemy();
void updateGame();
void updatePlayer();
void updateEnemy();
void initEnemies();
void updateBullet();


// Definitions
#define ENEMYCOUNT 25
#define BULLETCOUNT 20

extern BULLET bullets[BULLETCOUNT];
extern ENEMY enemies[ENEMYCOUNT];