//SUPER not working tetris game
#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Variables
//PLAYER player;
//BULLET bullets[BULLETCOUNT];
//BALL balls[BALLCOUNT];
BLOCK blocks[BLOCKCOUNT];
//BLOCK activeBlock;
//int ballsRemaining;

// Initialize the game
void initGame() {
	initBlocks();
}

// Updates the game each frame
void updateGame() {
    updateActiveBlock();
	// for(int i = 0; i < BLOCKCOUNT; i++){
	// 	updateBlock(&blocks[i]);
	// }
}

// Draws the game each frame
void drawGame() {
    //drawBackground();
    //drawPreviewBlock;
	for (int i = 0; i < BLOCKCOUNT; i++){
		drawBlock(&blocks[i]);
	}
}

// void drawBackground() {
// }
//
void initBlocks() {
    blocks[0].row = 5;
    blocks[0].col = 110;
    blocks[0].oldRow = blocks[0].row;
    blocks[0].oldCol = blocks[0].col;
    blocks[0].rdel = 1;
    blocks[0].cdel = 2;
    blocks[0].type = 'i';
    //these will change if i implement better rotation but.. seems like i can
    //hard code them here
    blocks[0].height = 4 * BLOCKSIZE;
    blocks[0].width = 1 * BLOCKSIZE;

    blocks[0].color = RED;
    blocks[0].rotation = 0;
    blocks[0].oldRotation = 0;
    blocks[0].active = 1;
    blocks[0].placed = 0;
}

void initNewBlock(BLOCK *b) {
    b->row = 5;
    b->col = 110;
    b->oldRow = blocks[0].row;
    b->oldCol = blocks[0].col;
    b->rdel = 1;
    b->cdel = BLOCKSIZE;
    b->type = 'i';
    //these will change if i implement better rotation but.. seems like i can
    //hard code them here
    b->height = 4 * BLOCKSIZE;
    b->width = 1 * BLOCKSIZE;

    b->color = RED;
    b->rotation = 0;
    b->oldRotation = 0;
    b->active = 1;
    b->placed = 0;
}

// Handle every-frame actions of the active block
void updateActiveBlock() {

    //BLOCK* activeBlock = findActiveBlock();
    int ab = findActiveBlock();
    //activeBlock = findActiveBlock();
	// Move the block
    blocks[ab].oldCol = blocks[ab].col;
	if (BUTTON_PRESSED(BUTTON_LEFT)
		&& blocks[ab].col >= blocks[ab].cdel) {
		blocks[ab].oldCol = blocks[ab].col;
        blocks[ab].col -= blocks[ab].cdel;

	} else if (BUTTON_PRESSED(BUTTON_RIGHT)
		&& blocks[ab].col + blocks[ab].width - 1 < SCREENWIDTH - blocks[ab].cdel) {
		blocks[ab].oldCol = blocks[ab].col;
        blocks[ab].col += blocks[ab].cdel;
	} else if (BUTTON_PRESSED(BUTTON_UP)) {
        blocks[ab].oldRotation = blocks[ab].rotation;
        drawIBlock(blocks[ab].oldRow,blocks[ab].oldCol,blocks[ab].rotation,BLACK);
        blocks[ab].rotation = (blocks[ab].rotation + 1 ) % 4;
        if(blocks[ab].rotation == 0 || blocks[ab].rotation == 2) {
            blocks[ab].height = 4 * BLOCKSIZE;
            blocks[ab].width = 1 * BLOCKSIZE;
        }
        if(blocks[ab].rotation == 1 || blocks[ab].rotation == 3) {
            blocks[ab].height = 2 * BLOCKSIZE;
            blocks[ab].width = 4 * BLOCKSIZE;
        }
    }

    blocks[ab].oldRow = blocks[ab].row;
    blocks[ab].row += blocks[ab].rdel;



    if(blocks[ab].row + blocks[ab].height >= 160 ||
        blocks[ab].col + blocks[ab].width >= 240) {
        blocks[ab].active = 0;
        blocks[ab].placed = 1;
        initNewBlock(&blocks[ab + 1]);
    }

    for (int i = 0; i < BLOCKCOUNT; i++){
          if(blocks[i].placed == 1) {
              if(collision(blocks[ab].row, blocks[ab].col, blocks[ab].height, blocks[ab].width,
                     blocks[i].row, blocks[i].col, blocks[i].height,
                     blocks[i].width)){
                        blocks[ab].active = 0;
                        blocks[ab].placed = 1;
                        initNewBlock(&blocks[ab + 1]);
             }
         }
     }

}

int findActiveBlock() {
    for (int i = 0; i < BLOCKCOUNT; i++) {
        if(blocks[i].active) {
            return i;
        }
    }
    return 1;
}

// void rotate(BLOCK* b) {
//     if (b->type == 'i') {
//         if(b->rotation == 0) {
//             b->rotation = 1;
//         }
//     }
//     if (b->type == 'i') {
//         if(b->rotation == 1) {
//             drawIBlock(b->row,b->col,1,BLACK);
//             drawIBLock(b->row,b->col,2,b->color);
//         }
//     }
//     if (b->type == 'i') {
//         if(b->rotation == 2) {
//             drawIBlock(b->row,b->col,2,BLACK);
//             drawIBLock(b->row,b->col,3,b->color);
//         }
//     }
//     if (b->type == 'i') {
//         if(b->rotation == 3) {
//             drawIBlock(b->row,b->col,3,BLACK);
//             drawIBLock(b->row,b->col,0,b->color);
//         }
//     }
// }

void drawBlock(BLOCK* b) {
    if (b->type == 'i') {
        drawIBlock(b->oldRow,b->oldCol,b->rotation,BLACK);
        drawIBlock(b->row,b->col,b->rotation,b->color);
    }
}
void drawIBlock(int row, int col, int rotation, unsigned short color) {
    if(rotation == 0) {
        for (int i = 0; i < 4; i++) {
            drawRect(row + (i * BLOCKSIZE), col + BLOCKSIZE, BLOCKSIZE, BLOCKSIZE, color);
        }
    }
    if(rotation == 1) {
        for (int i = 0; i < 4; i++) {
            drawRect(row + BLOCKSIZE, col + (i * BLOCKSIZE), BLOCKSIZE, BLOCKSIZE, color);
        }
    }
    if(rotation == 2) {
        for (int i = 0; i < 4; i++) {
            drawRect(row + (i * BLOCKSIZE), col + (2 * BLOCKSIZE), BLOCKSIZE, BLOCKSIZE, color);
        }
    }
    if(rotation == 3) {
        for (int i = 0; i < 4; i++) {
            drawRect(row + (2 * BLOCKSIZE), col + (i * BLOCKSIZE), BLOCKSIZE, BLOCKSIZE, color);
        }
    }
}
// // Draw the player
// void drawPlayer() {
// 	drawRect(player.oldRow, player.oldCol, player.height, player.width, BLACK);
// 	drawRect(player.row, player.col, player.height, player.width, player.color);
// 	player.oldRow = player.row;
// 	player.oldCol = player.col;
// }

// // Initialize the pool of bullets
// void initBullets() {
// 	for(int i = 0; i < BULLETCOUNT; i++) {
// 		bullets[i].height = 2;
// 		bullets[i].width = 1;
// 		bullets[i].row = -1 * bullets[i].height;
// 		bullets[i].col = 0;
// 		bullets[i].oldRow = player.row;
// 		bullets[i].oldCol = player.col;
// 		bullets[i].rdel = -2;
// 		bullets[i].color = WHITE;
// 		bullets[i].active = 0;
// 	}
// }

// // Spawn a bullet
// void fireBullet() {
// 	for(int i = 0; i < BULLETCOUNT; i++) {
// 		if(bullets[i].active == 0) {
// 			bullets[i].oldRow = bullets[i].row;
// 			bullets[i].row = player.row;
// 			bullets[i].oldCol = bullets[i].col;
// 			bullets[i].col = player.col + (player.width / 2)
// 				+ (bullets[i].width / 2);
// 			bullets[i].active = 1;
// 			bullets[i].erased = 0;
// 			break;
// 		}
// 	}
// }

// // Handle every-frame actions of a bullet
// void updateBullet(BULLET* b) {
// 	if(b->active) {
// 		b->oldRow = b->row;
// 		b->row = b->row + b->rdel;
// 		drawBullet(b);
// 		if(b->row > 240 || b->col > 160) {
// 			b->active = 0;
// 		}
// 	}
// }


// // Draw a bullet
// void drawBullet(BULLET* b) {
// 	if(b->active) {
// 		drawRect(b->oldRow, b->oldCol, b->height, b->width, BLACK);
// 		drawRect(b->row, b->col, b->height, b->width, b->color);
// 	} else if (!b->erased) {
// 		drawRect(b->oldRow, b->oldCol, b->height, b->width, BLACK);
// 		b->erased = 1;
// 	}
// 	b->oldRow = b->row;
// 	b->oldCol = b->col;
// }

// // Initialize the balls
// void initBalls() {
// 	for (int i = 0; i < BALLCOUNT; i++) {
// 		balls[i].height = 10;
// 		balls[i].width = 10;
// 		balls[i].row = rand() % 110;
// 		balls[i].col = rand() % 130 + 10;
// 		balls[i].oldRow = balls[i].row;
// 		balls[i].oldCol = balls[i].col;
// 		balls[i].rdel = 1;
// 		balls[i].cdel = 1;
// 		balls[i].color = BLUE;
// 		balls[i].active = 1;
// 		balls[i].erased = 0;
// 	}
// }

// // Handle every-frame actions of a ball
// void updateBall(BALL* b) {
// 	if (b->active) {
// 		// Bounce the ball off the sides of the box
// 		if (b->row <= 0 || b->row + b->height-1 >= 120)
// 			b->rdel *= -1;
// 		if (b->col <= 0 || b->col + b->width-1 >= SCREENWIDTH-1)
// 			b->cdel *= -1;
// 		// Move the ball
// 		b->row += b->rdel;
// 		b->col += b->cdel;
// 		// Handle ball-bullet collisions
// 		for (int i = 0; i < BULLETCOUNT; i++){
// 			if(bullets[i].active == 1) {
// 				if(collision(b->row, b->col, b->height, b-> width,
// 						bullets[i].row, bullets[i].col, bullets[i].height,
// 						bullets[i].width)){
// 					bullets[i].active = 0;
// 					b->active = 0;
// 					ballsRemaining--;
// 				}
// 			}
// 		}
// 	}
// }
// // Draw a ball
// void drawBall(BALL* b) {
// 	if(b->active) {
// 		drawRect(b->oldRow, b->oldCol, b->height, b->width, BLACK);
// 		drawRect(b->row, b->col, b->height, b->width, b->color);
// 	} else if (!b->erased) {
// 		drawRect(b->oldRow, b->oldCol, b->height, b->width, BLACK);
// 		b->erased = 1;
// 	}
// 	b->oldRow = b->row;
// 	b->oldCol = b->col;
// }