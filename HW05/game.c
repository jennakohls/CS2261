#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "pacman.h"

// Variables
PLAYER player;
BALL balls[BALLCOUNT];
int livesRemaining = 2;
int score = 0;
int tempScore = 0;
TILE tiles[TILECOUNT];

// Initialize the game
void initGame() {


    // Initialize the colors
    unsigned short colors[NUMCOLORS] = {BLACK, BLUE, GREEN, RED, WHITE, GRAY};

    // //TODO 4.2: Load the pumpkin image's colors
     DMANow(3, pacmanPal, PALETTE, 256);

    // Load the custom game colors to the end
    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256-NUMCOLORS+i] = colors[i];
    }

    livesRemaining = 2;
    score = 0;
    tempScore = 0;
    initTiles();
    initPlayer();
    initBalls();
}

// Updates the game each frame
void updateGame() {

	updatePlayer();

	// Update all the tiles
	for (int i = 0; i < TILECOUNT; i++){
		updateTile(&tiles[i]);
	} //update all the balls
	for (int i = 0; i < BALLCOUNT; i++){
		updateBall(&balls[i]);
	}

}

// Draws the game each frame
void drawGame() {

     fillScreen4(BLACKID);

	// Draw all the tiles
	for (int i = 0; i < TILECOUNT; i++)
		drawTile(&tiles[i]);
	for (int i = 0; i < BALLCOUNT; i++)
		drawBall(&balls[i]);
	drawPlayer();
}

void initTiles(){
	for(int i = 0; i < TILECOUNT; i++){
		tiles[i].col = (i * TILESIZE) % (TILESIZE * TILESPERCOL);
		tiles[i].row = (i / TILESPERROW) * TILESIZE;
		tiles[i].active = 0;
		if(tiles[i].col == 0 || tiles[i].col ==
			(TILESIZE * TILESPERCOL - TILESIZE)||
			tiles[i].row == 0 || tiles[i].row ==
			(TILESIZE * TILESPERCOL - TILESIZE)){
			tiles[i].edge = 1;
		} else {
			tiles[i].edge = 0;
		}
	}
}

void updateTile(TILE *t){
	//player starts drawing
	if(collision(t->row, t->col, TILESIZE, TILESIZE, player.row, player.col,
		PLAYERSIZE, PLAYERSIZE) && !t->edge){
		t->active = 1;
		player.drawing = 1;
	}
	//player reaches an edge after drawing
	if(collision(t->row, t->col, TILESIZE, TILESIZE, player.row, player.col,
		PLAYERSIZE, PLAYERSIZE) && t->edge && player.drawing){
		player.direction = 0;
		for(int i = 0; i < TILECOUNT; i++){
			if(tiles[i].active){
				tiles[i].active = 0;
				tiles[i].edge = 1;
				tempScore++;
			}
		}

		score += tempScore;
		tempScore = 0;
	}
}

void drawTile(TILE *t){
	if(t->active) {
		drawRect4(t->row, t->col, TILESIZE, TILESIZE, REDID);
	} else if(t->edge) {
		drawRect4(t->row, t->col, TILESIZE, TILESIZE, BLUEID);
	} else {
		drawRect4(t->row, t->col, TILESIZE, TILESIZE, BLACKID);
	}
}

// Initialize the player
void initPlayer() {
	player.row = 0;
	player.col = 0;
	player.rdel = 8;
	player.cdel = 8;
	player.drawing = 0;
	player.direction = 0;
}

// Handle every-frame actions of the player
void updatePlayer() {
	if(!player.drawing) {
		// Move the player
		if (BUTTON_HELD(BUTTON_LEFT)
			&& player.col >= player.cdel) {
			player.col -= player.cdel;
			player.direction = 4;

		} else if (BUTTON_HELD(BUTTON_RIGHT)
			&& player.col + PLAYERSIZE - 1 < 160 - player.cdel) {
			player.col += player.cdel;
			player.direction = 2;
		} else if (BUTTON_HELD(BUTTON_UP) && player.row - player.cdel >= 0){
			player.row -= player.rdel;
			player.direction = 1;
		} else if (BUTTON_HELD(BUTTON_DOWN) && player.row + player.cdel + PLAYERSIZE <= 160){
			player.row += player.rdel;
			player.direction = 3;
		}
	} else { //move the player and prevent moving in the same direction
			///you started from
		if (BUTTON_HELD(BUTTON_LEFT)
			&& player.col >= player.cdel && !(player.direction == 4)) {
			player.col -= player.cdel;
			player.direction = 2;
		} else if (BUTTON_HELD(BUTTON_RIGHT)
			&& player.col + PLAYERSIZE - 1 < 160 - player.cdel
			&& !(player.direction == 2)) {
			player.col += player.cdel;
			player.direction = 4;

		} else if (BUTTON_HELD(BUTTON_UP) && player.row - player.cdel >= 0
			&& !(player.direction == 1)){
			player.row -= player.rdel;
			player.direction = 3;
		} else if (BUTTON_HELD(BUTTON_DOWN) && player.row + player.cdel +
			PLAYERSIZE <= 160 && !(player.direction == 3)){
			player.row += player.rdel;
			player.direction = 1;
		}
	}
}

// Draw the player
void drawPlayer() {
	drawImage4(player.row, player.col, PLAYERSIZE, PLAYERSIZE, pacmanBitmap);
}

// Initialize the balls
void initBalls() {
	for (int i = 0; i < BALLCOUNT; i++) {
		balls[i].height = 6;
		balls[i].width = 6;
		balls[i].row = rand() % 144 + 8;
		balls[i].col = rand() % 144 + 8;
		balls[i].rdel = 2;
		balls[i].cdel = 2;
		balls[i].active = 1;
	}
}

// Handle every-frame actions of a ball
void updateBall(BALL* b) {

	if (b->active) {

		// Bounce within playable area
		if(b->row + b->height + b->rdel > 152 || b->row + b->rdel < 8) {
			b->rdel *= -1;
		}
		if(b->col + b->width + b->cdel > 152 || b->col + b->cdel < 8) {
			b->cdel *= -1;
		}
		for(int i = 0; i < TILECOUNT; i++){
			if(tiles[i].active){
				if(collision(b->row, b->col, b->height, b->width, tiles[i].row,
					tiles[i].col, TILESIZE, TILESIZE)){
					b->cdel *= -1;
					b->rdel *= -1;
					//trigger loss
					livesRemaining = 0;
				}
			}
		}
		// Move the ball
		b->row += b->rdel;
		b->col += b->cdel;

	}
}

// Draw a ball
void drawBall(BALL* b) {
	if(b->active) {
			drawRect4(b->row, b->col, b->height, b->width, WHITEID);
	}
}