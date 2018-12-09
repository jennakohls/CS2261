#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Variables
int lives;
int move;
// Sprite Variables
PLAYER player;
ENEMY enemies[ENEMYCOUNT];
BULLET bullets[BULLETCOUNT];

void initGame() {
	initPlayer();
	initEnemies();
}

void updateGame() {
	updatePlayer();

	for (int i = 0; i < ENEMYCOUNT; i++) {
		if (enemies[i].col < 1 || enemies[i].col + enemies[i].width >
			SCREENWIDTH - 1) {
			move = 1;
	 	}
		updateEnemy(&enemies[i]);
	}

	for (int i = 0; i < BULLETCOUNT; i++){
		updateBullet(&bullets[i]);
	}
}


void drawGame() {
	drawPlayer();
	for (int i = 0; i < ENEMYCOUNT; i++) {
		//indexes of enemies in shadowOAM start at 6
		drawEnemy(&enemies[i], i + 6);
	}
	for (int i = 0; i < BULLETCOUNT; i++){
		drawBullet(&bullets[i]);
	}
}

void initPlayer() {
	player.width = 16;
	player.height = 8;
	player.rdel = 2;
	player.cdel = 2;
	player.row = 150;
	player.col = 112;
	player.bulletTimer = 20;
}

void updatePlayer() {
	if (BUTTON_HELD(BUTTON_RIGHT) && player.col  + player.width < 240) {
		player.col++;
	}

	if (BUTTON_HELD(BUTTON_LEFT) && player.col > 0) {
		player.col--;
	}

	//fire bullets
	if (BUTTON_PRESSED(BUTTON_A) && player.bulletTimer >= 20) {
		firePlayerBullet();
		player.bulletTimer = 0;
	}

	player.bulletTimer++;
}

void firePlayerBullet(){
	for (int i = 0; i < BULLETCOUNT; i++){
		//find the first inactive  bullet
		if(!bullets[i].active){
			//make it a player bullet
			bullets[i].player = 1;
			//position it
			bullets[i].row = player.row;
			bullets[i].col = player.col + player.width/2
				- bullets[i].width/2;
			//make it active
			bullets[i].active = 1;
			//only do this for the first bullet
			break;
		}
	}
}

void drawPlayer() {
	shadowOAM[0].attr0 = player.row | ATTR0_4BPP | ATTR0_WIDE;
	shadowOAM[0].attr1 = player.col | ATTR1_TINY;
	shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,0);
}

void initBullets() {

	for (int i = 0; i < BULLETCOUNT; i++) {

		bullets[i].height = 8;
		bullets[i].width = 8;
		bullets[i].row = 0;
		bullets[i].col = 0;
		bullets[i].rdel = 1;
		bullets[i].active = 0;
		bullets[i].player = 0;
		bullets[i].enemy = 0;
	}
}

void drawBullet(BULLET *b){
	if(b->active){
		shadowOAM[32].attr0 = b->row | ATTR0_4BPP | ATTR0_SQUARE;
		shadowOAM[32].attr1 = b->col | ATTR1_TINY;
		shadowOAM[32].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2,6);
	}
	else {
		shadowOAM[32].attr0 = ATTR0_HIDE;
	}
}

void updateBullet(BULLET* b) {

	//update active player bullets (move them up)
	if (b->active && b->player) {
		if(b->row + b->height - 1 >= 0){
			b->row -= b->rdel;
		} else {
			b->active = 0;
		}
	} else if(b->active){
		//move enemy bullets down
		if(b->row + b->height + 1 <= 160){
			b->row += b->rdel;
		} else {
			b->active = 0;
		}
	}
}

void initEnemies() {
	int row = 0;
	int aniState = 0;

	for (int i = 0; i < ENEMYCOUNT; i++) {
		// new row
		if (i % 5 == 0) {
			enemies[i].col = 20;
			row += 20;
			// set the enemy types, basically
			if (aniState < 4) {
				aniState += 2;
			} else {
				aniState = 0;
			}
		} else {
			enemies[i].col = enemies[i - 1].col + 31;
		}

		enemies[i].row = row;
		enemies[i].rdel = 2;
		enemies[i].cdel = -1;
		enemies[i].width = 16;
		enemies[i].height = 16;
		enemies[i].active = 1;
		enemies[i].aniState = aniState;
		enemies[i].aniCounter = 0;
		enemies[i].curFrame = 0;
		enemies[i].numFrames = 2;
	}
}

void drawEnemy(ENEMY* e, int index) {
	if (e->active) {
		shadowOAM[index].attr0 = e->row | ATTR0_4BPP | ATTR0_SQUARE;
		shadowOAM[index].attr1 = e->col | ATTR1_SMALL;
		shadowOAM[index].attr2 = ATTR2_PALROW(0) |
			ATTR2_TILEID(e->curFrame * 2 + 2, e->aniState);
	} else {
		shadowOAM[index].attr0 = ATTR0_HIDE;
	}
}

void updateEnemy(ENEMY* e) {

	//enemies move every 20 frames
	if (e->aniCounter % 20 == 0) {
		if (e->curFrame < e->numFrames - 1) {
			e->curFrame++;
		} else {
			e->curFrame = 0;
		}
	}
	e->aniCounter++;

	//WALL COLLISION check every enemy!
	// for (int i = 0; i < ENEMYCOUNT; i++) {
	// 	if (enemies[i].col < 1 || enemies[i].col + enemies[i].width >
	// 		SCREENWIDTH - 1) {
	// 		e->cdel *= -1;
	// 		e->row += e->rdel;
	// 	}
	// }
	// if(e->col < 1 || e->col + e->width + 1> SCREENWIDTH) {
	// 	e->cdel *=
	// }
	if(move){
		e->cdel *= -1;
		e->row += e->rdel;
		move = 0;
	}
	e->col += e->cdel;
}