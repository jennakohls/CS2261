// Player Struct
typedef struct {
	char type;
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	unsigned short color;
	int oldRotation;
	int rotation;
	int active;
	int placed;
} BLOCK;


// Constants
#define SPEED 2
#define BLOCKCOUNT 100
#define BLOCKSIZE 6

// Variables
extern BLOCK blocks[BLOCKCOUNT];

// Prototypes
void initGame();
void updateGame();
void drawGame();
// UNCOMMENT 2.3
void initBlocks();
void updateActiveBlock();
void drawIBlock(int row, int col, int rotation, unsigned short color);
int findActiveBlock();
void drawBlock();
// UNCOMMENT 3.2
// void initBullets();
// void fireBullet();
// void updateBullet(BULLET *);
// void drawBullet(BULLET *);
// void initBalls();
// void updateBall(BALL *);
// void drawBall(BALL *);