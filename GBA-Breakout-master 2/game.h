//Sean Dai
//CS 2110: HW 11
//Possible game states
#ifndef _GAME
#define _GAME
#define TITLE -1
#define GAMEOVER 0
#define INGAME 1
#define WIN 2

//In game TETRIS settings
#define PIECES 7
#define BOARD_WIDTH 10
#define BOARD_HEIGHT 20
#define PIXEL_FACTOR 8
#define START_X 130
#define START_Y 100
#define PADDLE_WIDTH 54
#define PADDLE_HEIGHT 4
#define PADDLE_COLOR 3

typedef struct {
    int y; //only horizontal distance matters
    int oldY;
} Paddle;

#define BALL_COLOR 3
#define BALL_WIDTH 8
#define BALL_HEIGHT 8
//The single block that moves across the screen
typedef struct BALL {
    int x;
    int y;
    int oldX;
    int oldY;
    int moveX;
    int moveY;
} Ball;

#define BLOCK_WIDTH 16
#define BLOCK_HEIGHT 10
#define BLOCK_COLOR 0 //RED
#define BLOCK_ROW 20
#define BLOCK_COL 30
#define TOTAL_BLOCKS 44
typedef struct {
    int x;
    int y;
    int isHit;
    int colorIndex;
} Block;
extern Block bricks[TOTAL_BLOCKS];
extern int state;
//Functions
void init_game();
void end_game();
void reset();
void next_level();
void drawPaddle();
void movePaddle(int);
int collidesWithPaddle();
int collidesWithBlock();
void moveBall();
void drawBall();
void init_blocks();
void drawBlocks();
void refresh();
void drawProgress();
#endif //_GAME
