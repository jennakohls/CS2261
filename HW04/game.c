#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Variables
PADDLE paddle;
BALL ball;
BRICK bricks[BRICKCOUNT];
int livesRemaining;
int bricksRemaining;
const unsigned short BACKGROUND_COLOR = BLACK;
extern int score;

// Initialize the game
void initGame() {
	score = 0;
	livesRemaining = 3;
	bricksRemaining = BRICKCOUNT;
	initPaddle();
	initBall();
	initBricks();
}

// Updates the game each frame
void updateGame() {
	updatePaddle();
	updateBall();
	updateBricks();
}

// Draws the game each frame
void drawGame() {
	drawPaddle();
	drawBall();
	drawBricks();
}

void drawPaddle() {
	drawRect(START_X,paddle.oldY,PADDLE_HEIGHT,PADDLE_WIDTH,BACKGROUND_COLOR);
	drawRect(START_X,paddle.y,PADDLE_HEIGHT,PADDLE_WIDTH,paddle.color);

	paddle.oldY = paddle.y;

}

void drawBall() {
	drawRect(ball.oldX, ball.oldY, ball.width, ball.height, BACKGROUND_COLOR);
	drawRect(ball.x, ball.y, ball.width, ball.height, ball.color);

	ball.oldX = ball.x;
	ball.oldY = ball.y;
}

void drawBricks() {
	for(int i = 0; i < BRICKCOUNT; i++) {
		if(bricks[i].active){
			drawRect(bricks[i].oldX, bricks[i].oldY, BRICK_HEIGHT, BRICK_WIDTH,
				BACKGROUND_COLOR);
			drawRect(bricks[i].x, bricks[i].y, BRICK_HEIGHT, BRICK_WIDTH,
				bricks[i].color);
		}
		bricks[i].oldY = bricks[i].y;
		bricks[i].oldX = bricks[i].x;
	}
}

void updateBricks(){
	for(int i = 0; i < BRICKCOUNT; i++){
		if(bricks[i].active && (collision(ball.x, ball.y, ball.height,
			ball.width, bricks[i].x, bricks[i].y, BRICK_HEIGHT, BRICK_WIDTH) ||
			(collision(ball.x, ball.y, ball.height,
			ball.width, bricks[i].oldX, bricks[i].oldY, BRICK_HEIGHT,
			BRICK_WIDTH)))){
				bricks[i].active = 0;
				drawRect(bricks[i].x, bricks[i].y, BRICK_HEIGHT, BRICK_WIDTH,
				BACKGROUND_COLOR);
				ball.xdel = -1 * ball.xdel;
				score++;
				bricksRemaining--;
		}
		if(bricks[i].x & 1) {
			bricks[i].oldY = bricks[i].y;
			bricks[i].y += 1;
			if (bricks[i].y >= SCREENWIDTH) bricks[i].y = 0;
		} else{
			bricks[i].oldY = bricks[i].y;
			bricks[i].y -= 1;
			if (bricks[i].y <=0 ) bricks[i].y = SCREENWIDTH - 1;
		}
	}
}

void updatePaddle() {

	if (BUTTON_HELD(BUTTON_LEFT) && (paddle.y - paddle.ydel >= 0)){
			paddle.y -= paddle.ydel;
	}
	if (BUTTON_HELD(BUTTON_RIGHT) &&
		(paddle.y + paddle.ydel + paddle.width <= SCREENWIDTH)){
			paddle.y += paddle.ydel;
	}
}

void updateBall() {
	//handle death from falling below paddle
	if(ball.oldX + ball.xdel >= SCREENHEIGHT - 20) {
		livesRemaining--;
		//set ball back to height where it will bounce off the paddle nicely
		ball.x = 110;
		ball.y = paddle.y + (paddle.width / 2);
		//make one deactive block reactivate
		for(int i = 0; i < BRICKCOUNT; i++){
			if(!bricks[i].active) {
				bricks[i].active = 1;
				break;
			}
		}
	}

	//bounce from top
	if (ball.oldX + ball.xdel <= 0){
		ball.xdel = -1 * ball.xdel;
	}
	//bounce from right
	if (ball.oldY + ball.ydel + ball.width >= SCREENWIDTH){
		ball.ydel = -1 * ball.ydel;
	}
	//bounce from left
	if (ball.oldY + ball.ydel <= 0) {
		ball.ydel = -1 * ball.ydel;
	}
	//bounce off of paddle
	if(collision(ball.x, ball.y, ball.height, ball.width, paddle.x, paddle.y,
		paddle.height, paddle.width)) {
		ball.xdel = -1 * ball.xdel;
	}
	ball.x += ball.xdel;
	ball.y += ball.ydel;
}

// Initialize the paddle, ball, and bricks
void initPaddle() {
	paddle.y = START_Y;
	paddle.x = START_X;
	paddle.oldY = paddle.y;
	paddle.color = WHITE;
	paddle.width = PADDLE_WIDTH;
	paddle.height = PADDLE_HEIGHT;
	paddle.ydel = 2;
}

void initBall() {
	ball.x = START_X - 20;
	ball.y = START_Y + (PADDLE_WIDTH >> 1);
	ball.oldX = ball.x;
	ball.oldY = ball.y;
	ball.xdel = -1;
	ball.ydel = -1;
	ball.height = 8;
	ball.width = 8;
	ball.color = WHITE;
}

void initBricks() {
	for (int i = 0; i < BRICKCOUNT; i++) {
		bricks[i].x = 20 + (i * 2/11) * BRICK_HEIGHT;
		bricks[i].y = 30 + (BRICK_WIDTH * ((i * 2) % 11));
		bricks[i].active = 1;
		bricks[i].color = RED;
		bricks[i].oldX = bricks[i].x;
		bricks[i].oldY = bricks[i].y;
	}
}