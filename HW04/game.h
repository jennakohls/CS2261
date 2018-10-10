typedef struct {
	int x;
	int y;
	int oldX;
	int oldY;
	int active;
	unsigned short color;
} BRICK;


#define BALL_WIDTH 8
#define BALL_HEIGHT 8
typedef struct {
	int x;
	int y;
	int oldX;
	int oldY;
	int xdel;
	int ydel;
	unsigned short color;
	int height;
	int width;
} BALL;

#define START_X 130
#define START_Y 100
#define PADDLE_WIDTH 54
#define PADDLE_HEIGHT 4

typedef struct {
	int x;
	int y;
	int oldY;
	int width;
	int height;
	int ydel;
	unsigned short color;
} PADDLE;

#define BRICKCOUNT 44
#define BRICK_WIDTH 16
#define BRICK_HEIGHT 9

// // Variables
extern int livesRemaining;
extern int bricksRemaining;
extern BRICK bricks[BRICKCOUNT];
extern PADDLE paddle;

// // Prototypes
void initGame();
void updateGame();
void drawGame();
void initPaddle();
void updatePaddle();
void drawPaddle();
void initPlayer();
void updatePlayer();
void drawPlayer();
void initBall();
void updateBall();
void drawBall();
void initBricks();
void drawBricks();
void updateBricks();