//Tile struct
typedef struct {
	int row;
	int col;
	int edge;
	int active;
} TILE;

//Player Struct
typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int drawing;
	int direction;
} PLAYER;


// Ball Struct
typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
} BALL;

// Constants
#define BALLCOUNT 5
#define TILECOUNT 400
#define TILESPERROW 20
#define TILESPERCOL 20
#define TILESIZE 8
#define PLAYERSIZE 8

// Variables
extern PLAYER player;
extern BALL balls[BALLCOUNT];
extern int livesRemaining;
extern int score;
extern int tempScore;
extern TILE tile[TILECOUNT];

// Custom Game Colors
#define NUMCOLORS 6
enum {BLACKID=(256-NUMCOLORS), BLUEID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[NUMCOLORS];

// Prototypes
void initGame();
void updateGame();
void drawGame();
void initTiles();
void updateTile(TILE *);
void drawTile(TILE *);
void initPlayer();
void updatePlayer();
void drawPlayer();
void initBalls();
void updateBall(BALL *);
void drawBall(BALL *);