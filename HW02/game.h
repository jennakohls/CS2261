// Player Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int cdel;
	int height;
	int width;
	unsigned short color;
} PLAYER;


// Ball Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	unsigned short color;
	int active;
	int erased;
} BALL;

// Ball Struct
typedef struct {
	int row;
	int col;
	int pxSize;
	unsigned short color1;
	unsigned short color2;
	int erased;
} HEART;

// Constants
#define BALLCOUNT 8
#define HEARTCOUNT 3

// Variables
extern PLAYER player;
extern BALL balls[BALLCOUNT];
extern HEART hearts[HEARTCOUNT];
extern int heartsRemaining;

// Prototypes
void initGame();
void updateGame();
void drawGame();
void drawBar();
void initPlayer();
void updatePlayer();
void drawPlayer();
void initBalls();
void updateBall(BALL *);
void drawBall(BALL *);
void initHearts();
void updateHeart(HEART *);
void drawHeart(HEART *);