#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Variables
PLAYER player;
BALL balls[BALLCOUNT];
HEART hearts[HEARTCOUNT];
int heartsRemaining;

// Initialize the game
void initGame() {
	initPlayer();
	initBalls();
	heartsRemaining = HEARTCOUNT;
	initHearts();
}

// Updates the game each frame
void updateGame() {
	for (int i = 0; i < BALLCOUNT; i++) {
		updateBall(&balls[i]);
	}
	for (int i = 0; i < HEARTCOUNT; i++) {
		updateHeart(&hearts[i]);
	}
	updatePlayer();
}

// Draws the game each frame
void drawGame() {
	drawPlayer();
	drawBar();
	for (int i = 0; i < BALLCOUNT; i++){
		drawBall(&balls[i]);
	}
	for (int i = 0; i < HEARTCOUNT; i++){
		drawHeart(&hearts[i]);
	}
}

// Draws the bar protecting the player
void drawBar() {
	drawRect(120, 0, 3, 240, RED);
}

//Initialize the hearts
void initHearts() {
	for(int i = 0; i < HEARTCOUNT; i++) {
		hearts[i].pxSize = 2;
		hearts[i].row = 8;
		hearts[i].col = 160 + (25 * i);
		hearts[i].color1 = WHITE;
		hearts[i].color2 = RED;
		hearts[i].erased = 0;
	}
}

//Draw the active hearts
void drawHeart(HEART* h) {
	if(!h->erased) {
		drawAHeart(h->row, h->col, h->pxSize,h->color1,h->color2);
	}
}

//update the hearts
void updateHeart(HEART* h) {
	if(!h->erased) {
		drawAHeart(h->row, h->col, h->pxSize,h->color1,h->color2);
	}
}

// Initialize the player
void initPlayer() {
	player.row = 140;
	player.col = 118;
	player.oldRow = player.row;
	player.oldCol = player.col;
	player.cdel = 1;
	player.height = 10;
	player.width = 5;
	player.color = GREEN;
}

// Handle every-frame actions of the player
void updatePlayer() {

	// Move the player
	if (BUTTON_HELD(BUTTON_LEFT)
		&& player.col >= player.cdel) {
		player.col -= player.cdel;

	} else if (BUTTON_HELD(BUTTON_RIGHT)
		&& player.col + player.width - 1 < SCREENWIDTH - player.cdel) {
		player.col += player.cdel;
	}
}

// Draw the player
void drawPlayer() {
	drawRect(player.oldRow, player.oldCol, player.height, player.width, BLACK);
	drawRect(player.row, player.col, player.height, player.width, player.color);
	player.oldRow = player.row;
	player.oldCol = player.col;
}

// Initialize the balls
void initBalls() {
	for (int i = 0; i < BALLCOUNT; i++) {
		balls[i].height = 10;
		balls[i].width = 10;
		balls[i].row = rand() % 100;
		balls[i].col = rand() % 240;
		balls[i].oldRow = balls[i].row;
		balls[i].oldCol = balls[i].col;
		balls[i].rdel = 2;
		balls[i].cdel = 1;
		balls[i].color = BLUE;
		balls[i].active = 1;
		balls[i].erased = 0;
	}
}

// Handle every-frame actions of a ball
void updateBall(BALL* b) {
	if (b->active) {
		// Bounce the ball off the sides of the box
		if (b->row <= 0 || b->row + b->height-1 >= 160){
			b->oldRow = b->row;
			b->row = 0;
			b->oldCol = b->col;
			b->col = rand() % 240;
		}
		// Move the ball
		b->row += b->rdel;
		// Handle ball-player collisions
			if(collision(b->row, b->col, b->height, b-> width,
					player.row, player.col, player.height,
					player.width)){
				b->active = 0;
				for(int i = 0; i < HEARTCOUNT; i++) {
					if(!hearts[i].erased) {
						drawAHeart(hearts[i].row,hearts[i].col,hearts[i].pxSize,
							BLACK,BLACK);
						hearts[i].erased = 1;
						break;
					}
				}
				heartsRemaining--;
			}
	}
}
// Draw a ball
void drawBall(BALL* b) {
	if(b->active) {
		drawRect(b->oldRow, b->oldCol, b->height, b->width, BLACK);
		drawRect(b->row, b->col, b->height, b->width, b->color);
	} else if (!b->erased) {
		drawRect(b->oldRow, b->oldCol, b->height, b->width, BLACK);
		b->erased = 1;
	}
	b->oldRow = b->row;
	b->oldCol = b->col;
}