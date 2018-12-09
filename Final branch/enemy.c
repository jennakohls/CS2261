#include "myLib.h"
#include "game.h"
#include "trig.h"
#include "bullets.h"
#include "enemy.h"

//enemy attack states for atkState
enum {ATK1, ATK2, ATK3};

int count = 0;

void initEnemy(){
    enemy.width = 8;
    enemy.height = 16;
    enemy.rdel = 1;
    enemy.cdel = 1;

    // Place the enemy in the bottom corner
    //enemy.worldRow = 120;
    //enemy.worldCol = 20;
    enemy.screenRow = 10;
    enemy.screenCol = 10;
    enemy.aniCounter = 0;
    enemy.curFrame = 0;
    enemy.numFrames = 4;
    enemy.aniState = 0;
    enemy.atkState = ATK1;
    enemy.hitAni = 0;

    enemy.bottomL = 1;
    enemy.health = 3;
    enemy.bulletTimer = 30;

    enemy.isHit = 0;
}

void updateEnemy(){
    //enemy.screenRow = (enemy.screenRow + 1) % SCREENHEIGHT;
    switch(enemy.atkState) {

            case ATK1:
                attack1();
                break;
            case ATK2:
                //bprow = 0;
                attack2();
                break;
            case ATK3:
                attack3();
                break;
        }

        //This just ensures if you spam a bunch of bullets, you can't kill
        //  the enemy all in one go
        if(enemy.isHit > 0 && enemy.isHit < 20){
            enemy.isHit++;
        } else enemy.isHit = 0;

}

void animateEnemy(){
    if(enemy.aniCounter % 20 == 0) {
        enemy.curFrame = (enemy.curFrame + 1) % enemy.numFrames;
    }
    enemy.aniCounter++;
    if(enemy.aniState == 0 || enemy.aniState == 3) {
        enemy.width = 8;
        enemy.height = 16;
    } else if(enemy.aniState == 1 || enemy.aniState == 2) {
        enemy.width = 16;
        enemy.height = 8;
    }
}


void attack1(){
        //moves in a square
        if(enemy.screenRow < SCREENHEIGHT - 30  &&
            enemy.screenCol < SCREENWIDTH - 10 && enemy.bottomL){
            enemy.screenRow += enemy.rdel;
            enemy.aniState = 0;
        } else if(enemy.screenCol < SCREENWIDTH - 18 - enemy.width && enemy.bottomL){
            enemy.screenCol += enemy.cdel;
            enemy.aniState = 1;
            //testvar = 1;
        } else if(enemy.screenRow > 10 && enemy.screenCol > 10){
            enemy.bottomL = 0;
            enemy.screenRow -= enemy.rdel;
            enemy.aniState = 3;
            //testvar = 0;
        } else if(enemy.screenCol > 10){
            enemy.screenCol -= enemy.cdel;
            enemy.aniState = 2;
        } else {
            enemy.bottomL = 1;
        }

    if(enemy.bulletTimer >= 50){
        fireEBullet();
        enemy.bulletTimer = 0;
    }

    enemy.bulletTimer++;

    animateEnemy();

}

void attack2(){
        //moves in a square
        if(enemy.screenRow < SCREENHEIGHT - 30  &&
            enemy.screenCol < SCREENWIDTH - 10 && enemy.bottomL){
            enemy.screenRow += enemy.rdel;
            enemy.aniState = 0;
        } else if(enemy.screenCol < SCREENWIDTH - 18 - enemy.width && enemy.bottomL){
            enemy.screenCol += enemy.cdel;
            enemy.aniState = 1;
            //testvar = 1;
        } else if(enemy.screenRow > 10 && enemy.screenCol > 10){
            enemy.bottomL = 0;
            enemy.screenRow -= enemy.rdel;
            enemy.aniState = 3;
            //testvar = 0;
        } else if(enemy.screenCol > 10){
            enemy.screenCol -= enemy.cdel;
            enemy.aniState = 2;
        } else {
            enemy.bottomL = 1;
        }

    if(enemy.bulletTimer >= 40){
        fireEBullet();
        bprow++;
        enemy.bulletTimer = 0;
    }

    enemy.bulletTimer++;

    animateEnemy();

}

void attack3(){
   //move in a square in the opposite direction
    if(enemy.screenCol < SCREENWIDTH - 18 - enemy.width && enemy.screenRow <= 10){
            enemy.screenCol += enemy.cdel;
            enemy.aniState = 1;
        } else {
    if(enemy.screenRow < SCREENHEIGHT - 28 - enemy.height &&
            enemy.screenCol < SCREENWIDTH - 10 - enemy.width && enemy.bottomL){
            enemy.screenRow += enemy.rdel;
            enemy.aniState = 0;
        } else
    if(enemy.screenCol > 10 && enemy.bottomL){
            enemy.screenCol -= enemy.cdel;
            enemy.aniState = 2;
            //testvar = 1;
        } else
    if(enemy.screenRow > 10){
            enemy.bottomL = 0;
            enemy.screenRow -= enemy.rdel;
            enemy.aniState = 3;
            //testvar = 0;
        } else

            enemy.bottomL = 1;
        }

    //form the circle of bullets
    if(count < 17) {
        if(enemy.bulletTimer >= 20){
            fireEBullet();
            //bprow++;
            enemy.bulletTimer = 0;
            count++;
        }
    } else if(enemy.bulletTimer >= 100){ //wait awhile and then do it again
        count = 0;
        enemy.bulletTimer = 0;
    }
    enemy.bulletTimer++;

    animateEnemy();
}

void clearEnemy(){
    enemy.screenRow = 10;
    enemy.screenCol = 10;
    enemy.width = 4;
    enemy.height = 4;
    enemy.rdel = 1;
    enemy.cdel = 1;
}

void drawEnemy(){
    if (enemy.hide) {
        shadowOAM[1].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[1].attr0 = (ROWMASK & enemy.screenRow) | ATTR0_SQUARE;
        shadowOAM[1].attr1 = (COLMASK & enemy.screenCol) | ATTR1_MEDIUM;
        shadowOAM[1].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(enemy.curFrame * 4, enemy.aniState * 4 + 1);
        //shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,1);
    }
}