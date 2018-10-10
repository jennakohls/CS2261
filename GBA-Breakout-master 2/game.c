//Sean Dai
//CS 2110 : HW 11
#include "mylib.h"
#include "start_screen.h"
#include "game_over_screen.h"
#include "winner_screen.h"
#include "game.h"
#include "text.h"
#include "icon.h"
#include "image.h"
#include <stdlib.h>
#include <stdio.h>


int state = TITLE;
int score = 0;
const unsigned short colorSwatch[7] = {RED,GREEN,BLUE,WHITE,BLACK,GOLD,BROWN};
const int BACKGROUND_COLOR = 5; //corresponds to indexed color in colorSwatch

int level = 1;
const int MAX_LIVES = 7;
int lives_remaining = 10;

Paddle pd = {0,0};
Ball blip = {0,0,0,0};
Block bricks[TOTAL_BLOCKS];
int blocks_left = TOTAL_BLOCKS;

//location of the pacman & poster in the game over screen
int endingX = 30;
int endingY = 90;
int ending2X = 120;
int ending2Y = 180;

int hasLeveled = 0;
char buffer[30];

//Resets all game settings & return back to title screen
void reset() {
	state = TITLE;
	score = 0;
	level = 1;
	hasLeveled = 0;
	lives_remaining = MAX_LIVES;
	init_palette(start_screen_palette);
    drawImage4(0,0,240,160,start_screen);
}

//Starts the game by initializing in-game screen & basic settings
void init_game() {
	state = INGAME;
	blocks_left = TOTAL_BLOCKS;
    pd.oldY = START_Y;
    pd.y = START_Y;
    blip.x = START_X - 20;
    blip.y = START_Y + (PADDLE_WIDTH >> 1);
    blip.oldX = blip.x;
    blip.oldY = blip.y;
    blip.moveX = -1;
    blip.moveY = -1;
    init_blocks();
}

//Starts the next level by initializing blocks and increases blip movement speed
//and level difficulty
void next_level() {
	init_game();
	level++;
	hasLeveled = 1;
	if (level >= 2) {
        blip.moveX = -2;
        blip.moveY = -2;
	}
    if (level == 3) {
        state = WIN;
    }
}

//initializes the array holding blocks with bricks
void init_blocks() {
    int i;
    for (i = 0; i < TOTAL_BLOCKS; ++i) {
        bricks[i].x = BLOCK_ROW + (i/11)*BLOCK_HEIGHT;
        bricks[i].y = BLOCK_COL + (BLOCK_WIDTH * (i%11));
        bricks[i].isHit = 0;
        bricks[i].colorIndex = rand() & 3;
    }
}

//Ends the game and displays the GAME OVER screen.
void end_game() {
	state = GAMEOVER;
	init_palette(game_over_screen_palette);
    drawImage4(0,0,240,160,game_over);

    //Draws a moving pacman figure across the end screen
    if (endingY >= WIDTH) endingY =0;
    if (ending2Y <= 0) ending2Y =  WIDTH;
    int randTile = rand() % 3;
    drawImage4(ending2X,--ending2Y,STRUGGLE_WIDTH,STRUGGLE_HEIGHT,struggle);
    drawImage4(endingX,++endingY,PACWOMAN_WIDTH,PACWOMAN_HEIGHT,pacwoman + (randTile * PACWOMAN_WIDTH/4));
}

void drawPaddle() {
    drawRect4(START_X,pd.oldY,PADDLE_WIDTH,PADDLE_HEIGHT,BACKGROUND_COLOR);
    drawRect4(START_X,pd.y,PADDLE_WIDTH,PADDLE_HEIGHT,PADDLE_COLOR);
}

//Moves the paddle horizontally on the game board
//@param dy the integer distance to move the paddle
void movePaddle(int dy) {
    if (pd.y + (PADDLE_WIDTH) + dy > WIDTH || (pd.y + dy) < 0) {
        return;
    }

    pd.oldY = pd.y;
    pd.y += dy;
}

void drawBall() {
    drawRect4(blip.oldX,blip.oldY,BALL_WIDTH,BALL_HEIGHT,BACKGROUND_COLOR);
    drawRect4(blip.x,blip.y,BALL_WIDTH,BALL_HEIGHT,BALL_COLOR);
}
//Moves the ball around the screen in a given trajector
void moveBall() {
    blip.oldX = blip.x;
    blip.oldY = blip.y;

    //Goes beneath the screen so lose life.
    if (blip.oldX + blip.moveX >= HEIGHT) {
        lives_remaining--;
        if (lives_remaining <= 0) {
            end_game();
        //restore the blip back to screen
        } else {
            delay(50);
            blip.x = START_X - 20;
            blip.y = pd.y + (PADDLE_WIDTH >> 1);
        }
    }
    if (blip.oldX + blip.moveX <= 0) blip.moveX = -blip.moveX;
    if (blip.oldY + blip.moveY + BALL_WIDTH/2 >= WIDTH-2) blip.moveY = -blip.moveY;
    if (blip.oldY + blip.moveY <= 0) blip.moveY = -blip.moveY;
    if (collidesWithPaddle()) blip.moveX = -blip.moveX;
    blip.x += blip.moveX;
    blip.y += blip.moveY;
}

//Draws each block in the bricks array
void drawBlocks() {
    int i;
    for (i = 0; i < TOTAL_BLOCKS; ++i) {
        if (bricks[i].isHit) {
            drawRect4(bricks[i].x, bricks[i].y, BLOCK_WIDTH,BLOCK_HEIGHT,BACKGROUND_COLOR);
        } else {
                drawRect4(bricks[i].x,bricks[i].y,BLOCK_WIDTH,BLOCK_HEIGHT,bricks[i].colorIndex);
        }
    }

}

//Returns 1 if blip touches the paddle
int collidesWithPaddle() {
    if (abs(blip.x - START_X) == PADDLE_HEIGHT) {
        int hdist = blip.y - pd.y;
        if (hdist >= 0 && hdist <= PADDLE_WIDTH) {
            return 1;
        }
    }
    return 0;
}

//Returns 1 if the blip hits one of the blocks on screen
//Sets the isHit flag if there is a collision
int collidesWithBlock() {
    for (int i = 0; i < TOTAL_BLOCKS; ++i) {
        if (!bricks[i].isHit && (blip.x - bricks[i].x) > 0 && (blip.x - bricks[i].x) <= BLOCK_HEIGHT) {
            int diff = blip.y - bricks[i].y;
            if (diff >= 0 && diff <= BLOCK_WIDTH ) {
                bricks[i].isHit = 1;
                return 1;
            }
        }
    }
    return 0;
}

//Redraws the game state for each iteration of the loop.
//Determines whether game is won/lost.
void refresh() {
    switch(state) {
        case TITLE:
                break;
        case INGAME:
                init_palette(colorSwatch);
                blank_screen(BACKGROUND_COLOR);
                moveBall();

                //Removes block when hit & alters blip's trajector
                if (collidesWithBlock()) {
                    blip.moveX = -blip.moveX;
                    score += level;
                    blocks_left--;
                }

                //Updates the screen with moving pictures
                drawBlocks();
                drawPaddle();
                drawBall();
                drawProgress();

                if (blocks_left == 0) {
                    next_level();
                }
                break;
        case GAMEOVER:
                end_game();
                break;
        case WIN:
                init_palette(winner_screen_palette);
                drawImage4(0,0,238,158,winner_is_you);
                break;
    }

}

//Draws the current score, level, and number of lives remaining.
 void drawProgress() {
    sprintf(buffer, "%d", score);
    drawString4(150,212,buffer,4);
    sprintf(buffer, "Lvl %d", level);
    drawString4(150, 110, buffer,4);
    if (level > 0 && hasLeveled) {
        hasLeveled = 0;
        sprintf(buffer, "NEXT LVL: PREPARE TO GET REKT");
        drawString4(100, 40, buffer,4);
        delay(200);
    }
    sprintf(buffer, "Lives:%d", lives_remaining);
    drawString4(150, 4, buffer,4);

 }



