#include "myLib.h"
#include "trig.h"
#include "bullets.h"
#include "game.h"
#include "enemy.h"
#include "sound.h"
#include "playerhit.h"
#include "enemyhit.h"

int bprow;
int bpcol;
int enemyHealth = 3;
int stoppingPoint = 0;

PBULLET pbullets[PBULLETCOUNT];
EBULLET ebullets[EBULLETCOUNT];

void initPBullets(){
    for(int i = 0; i < PBULLETCOUNT; i++){
        pbullets[i].active = 0;

        pbullets[i].row = 0;
        pbullets[i].col = 0;
        pbullets[i].rdel = 1;
        pbullets[i].cdel = 1;
        pbullets[i].width = 4;
        pbullets[i].height = 4;

        pbullets[i].numFrames = 1;
        pbullets[i].aniCounter = 0;
        pbullets[i].prevAniState = 0;
        pbullets[i].curFrame = 0;
        pbullets[i].hide = 0;

        pbullets[i].sin = 0;
        pbullets[i].cos = 0;
        pbullets[i].theta = 0;

        pbullets[i].pos.x = 0;
        pbullets[i].pos.y = 0;
        pbullets[i].pos.dx = 0;
        pbullets[i].pos.dy = 0;

    }
}

void clearPBullet(PBULLET *p){
        p->active = 0;

        p->row = 0;
        p->col = 0;
        p->rdel = 0;
        p->cdel = 0;
        p->width = 8;
        p->height = 8;

        p->numFrames = 1;
        p->aniCounter = 0;
        p->prevAniState = 0;
        p->curFrame = 0;
        p->hide = 0;

        p->sin = 0;
        p->cos = 0;
        p->theta = 0;

        p->pos.x = 0;
        p->pos.y = 0;
        p->pos.dx = 0;
        p->pos.dy = 0;
}

void clearEBullet(EBULLET *eb){
        //eb->active = 0;

        eb->row = 0;
        eb->col = 0;
        eb->rdel = 0;
        eb->cdel = 0;
        eb->width = 8;
        eb->height = 8;

        eb->numFrames = 1;
        eb->aniCounter = 0;
        eb->prevAniState = 0;
        eb->curFrame = 0;
        eb->hide = 1;

        eb->sin = 0;
        eb->cos = 0;
        eb->theta = 0;

        eb->pos.x = 0;
        eb->pos.y = 0;
        eb->pos.dx = 0;
        eb->pos.dy = 0;
}

void initEBullets(){
    for(int i = 0; i < EBULLETCOUNT; i++){
        ebullets[i].active = 0;

        ebullets[i].row = 0;
        ebullets[i].col = 0;
        ebullets[i].rdel = 1;
        ebullets[i].cdel = 1;
        ebullets[i].width = 4;
        ebullets[i].height = 4;

        ebullets[i].numFrames = 1;
        ebullets[i].aniCounter = 0;
        ebullets[i].prevAniState = 0;
        ebullets[i].curFrame = 0;
        ebullets[i].hide = 0;

        ebullets[i].sin = 0;
        ebullets[i].cos = 0;
        ebullets[i].theta = 0;

        ebullets[i].pos.x = 0;
        ebullets[i].pos.y = 0;
        ebullets[i].pos.dx = 0;
        ebullets[i].pos.dy = 0;

    }
}

void firePBullet(){

    for(int i = 0; i < PBULLETCOUNT; i++){
        if(!pbullets[i].active){
            //initialize new bullet
            //pbullets[i].hide = 0;
            pbullets[i].active = 1;
            //put it in the middle of the player
            pbullets[i].row = POS_TO_SCRN_Y(player.pos.y) + (player.height * 2);
            pbullets[i].col = POS_TO_SCRN_X(player.pos.x) + (player.width * 2);
            pbullets[i].pos.y = SCRN_TO_POS_Y(pbullets[i].row);
            pbullets[i].pos.x = SCRN_TO_POS_X(pbullets[i].col);
            pbullets[i].rdel = 1;
            pbullets[i].cdel = 1;
            //get angle of bullet from current player delta
            pbullets[i].theta = (player.theta + player.bulletTheta) % 360;
            pbullets[i].pos.dx -= player.sin << 3;
            pbullets[i].pos.dy -= player.cos << 3;


            //update rdel and cdel just based on where the player was pointing when fired
            //old:
            //if(pbullets[i].theta >= 270 || pbullets[i].theta < 90) {
            if(pbullets[i].theta <= 270 && pbullets[i].theta > 90) {
                pbullets[i].rdel *= -1;

            }
            //if(pbullets[i].theta >= 0 && pbullets[i].theta < 180) {
            if(pbullets[i].theta <= 0 || pbullets[i].theta > 180) {
                pbullets[i].cdel *= -1;

            }
            if((pbullets[i].theta - 22 <= 0 && pbullets[i].theta + 22 >= 0) ||
                (pbullets[i].theta - 22 <= 180 && pbullets[i].theta + 22 >= 180)) {
                pbullets[i].cdel = 0;

            }
            if((pbullets[i].theta - 22 <= 270 && pbullets[i].theta + 22 >= 270) ||
                (pbullets[i].theta - 22 <= 90 && pbullets[i].theta + 22 >= 90)) {
                pbullets[i].rdel = 0;

            }

            break;
        }
    }
}

void fireEBullet(){
    if(enemy.atkState == 0){
        for(int i = 0; i < EBULLETCOUNT; i++){
            if(!ebullets[i].active){
                //initialize new bullet
                ebullets[i].active = 1;
                //put it in the middle of the enemy
                ebullets[i].row = enemy.screenRow + (enemy.height / 2);
                ebullets[i].col = enemy.screenCol + (enemy.width / 2);
                ebullets[i].pos.y = SCRN_TO_POS_Y(ebullets[i].row);
                ebullets[i].pos.x = SCRN_TO_POS_X(ebullets[i].col);
                ebullets[i].rdel = 0;
                ebullets[i].cdel = 0;

                //determine path to player
                bprow = SCRN_TO_POS_Y(player.pos.y) - ebullets[i].row;
                bpcol = SCRN_TO_POS_X(player.pos.x) - ebullets[i].col;
                // bpmax = (bprow > bpcol) ? bprow : bpcol;
                // bullets[i].rdel = bprow / bpmax;
                // bullets[i].cdel = bpcol / bpmax;
                if(ebullets[i].col < SCREENWIDTH / 2){
                    ebullets[i].cdel = (bpcol > 0) ? 1 : -1;
                } else {
                    ebullets[i].cdel = (bpcol < 0) ? 1 : -1;
                }

                if(ebullets[i].row < SCREENHEIGHT / 2){
                    ebullets[i].rdel = (bprow > 0) ? 1 : -1;
                } else {
                    ebullets[i].rdel = (bprow < 0) ? 1 : -1;
                }
                break;
            }
        }
    }
    if(enemy.atkState == 1){
        for(int j = 0; j < 5; j++){
                for(int i = 0; i < EBULLETCOUNT; i++){
                    if(!ebullets[i].active){
                        ebullets[i].active = 1;
                        ebullets[i].row = j * 32 + 12;
                        ebullets[i].col = 0;
                        ebullets[i].pos.y = SCRN_TO_POS_Y(ebullets[i].row);
                        //ebullets[i].pos.x = SCRN_TO_POS_X(ebullets[i].col);
                        ebullets[i].rdel = 0;
                        ebullets[i].cdel = 1;
                        break;
                }
            }
        }
    }
    if(enemy.atkState == 2){
        for(int i = 0; i < EBULLETCOUNT; i++){
            if(!ebullets[i].active){
                ebullets[i].active = 1;
                //make sure they don't move until told
                ebullets[i].rdel = 0;
                ebullets[i].cdel = 0;

                //NOTE: I have those '+/- 8's all separate because I /think/ once I have a
                //full sprite in here, I will want to take them out. If that turns out
                //not to be the case , I will
                // just change all the numbers I'm multiplying r by.
                if(count == 0){
                    ebullets[i].row = POS_TO_SCRN_Y(player.pos.y) + (2 * r) + 16;
                    ebullets[i].col = POS_TO_SCRN_X(player.pos.x) + (0 * r) + 16;
                } if(count == 1){
                    ebullets[i].row = POS_TO_SCRN_Y(player.pos.y) + (1 * r) + 16;
                    ebullets[i].col = POS_TO_SCRN_X(player.pos.x) + (1 * r) + 16;
                } if(count == 2){
                    ebullets[i].row = POS_TO_SCRN_Y(player.pos.y) + (0 * r) + 16;
                    ebullets[i].col = POS_TO_SCRN_X(player.pos.x) + (2 * r) + 16;
                } if(count == 3){
                    ebullets[i].row = POS_TO_SCRN_Y(player.pos.y) + (-1 * r) + 16;
                    ebullets[i].col = POS_TO_SCRN_X(player.pos.x) + (1 * r) + 16;
                } if(count == 4){
                    ebullets[i].row = POS_TO_SCRN_Y(player.pos.y) + (-2 * r) + 16;
                    ebullets[i].col = POS_TO_SCRN_X(player.pos.x) + (0 * r) + 16;
                } if(count == 5){
                    ebullets[i].row = POS_TO_SCRN_Y(player.pos.y) + (-1 * r) + 16;
                    ebullets[i].col = POS_TO_SCRN_X(player.pos.x) + (-1 * r) + 16;
                } if(count == 6){
                    ebullets[i].row = POS_TO_SCRN_Y(player.pos.y) + (0 * r) + 16;
                    ebullets[i].col = POS_TO_SCRN_X(player.pos.x) + (-2 * r) + 16;
                } if(count == 7){
                    ebullets[i].row = POS_TO_SCRN_Y(player.pos.y) + (1 * r) + 16;
                    ebullets[i].col = POS_TO_SCRN_X(player.pos.x) + (-1 * r) + 16;
                } if(count == 8){
                    ebullets[i].row = POS_TO_SCRN_Y(player.pos.y) + (2 * r) + 16;
                    ebullets[i].col = POS_TO_SCRN_X(player.pos.x) + (0 * r) + 16;
                    stoppingPoint = i;
                } if(count > 8){
                    //go back and start moving the previous 8 bullets
                    //right now it does it reverse order, eventually it'd be
                    //cool to start back at the first bullet placed
                    ebullets[stoppingPoint - count + 8].rdel = vDir(ebullets[stoppingPoint - count + 8].row);
                    ebullets[stoppingPoint - count + 8].cdel = hDir(ebullets[stoppingPoint - count + 8].col);
                }
                break;
            }
        }
    }
}

//return player vertical direction from a bullet as either -1, 0, or 1
int vDir(int row){
    if(row > SCREENHEIGHT / 2){
        if(row > player.pos.y) return 1;
        else if(row < player.pos.y) return -1;
        else return 0;
    } else if(row < SCREENHEIGHT / 2){
        if(row < player.pos.y) return 1;
        else if(row > player.pos.y) return -1;
        else return 0;
    }
    else return 0;
}

int hDir(int col){
    if(col > SCREENWIDTH / 2){
        if(col > player.pos.x) return 1;
        else if(col < player.pos.x) return -1;
        else return 0;
    } else if(col < SCREENWIDTH / 2){
        if(col < player.pos.x) return 1;
        else if(col > player.pos.x) return -1;
        else return 0;
    }
    else return 0;
}

void updatePBullets(){
    for(int i = 0; i < PBULLETCOUNT; i++){
        //player bullet behaviour
        if(pbullets[i].active){
            //if in screen
            if(pbullets[i].row + pbullets[i].rdel < SCREENHEIGHT &&
                pbullets[i].row + pbullets[i].rdel + pbullets[i].height > 0 &&
                pbullets[i].col + pbullets[i].cdel < SCREENWIDTH &&
                pbullets[i].col + pbullets[i].cdel + pbullets[i].width > 0){
                //update rdel and cdel with sin n stuff
                //bullets[i].rdel = POS_TO_SCRN_Y(bullets[i].pos.y);



                //basic template for movement
                pbullets[i].row = (pbullets[i].row + pbullets[i].rdel);
                pbullets[i].col = (pbullets[i].col + pbullets[i].cdel);

                //collision with enemy
                if(collision(pbullets[i].row, pbullets[i].col, pbullets[i].height,
                    pbullets[i].width, enemy.screenRow, enemy.screenCol, enemy.height, enemy.width) && !enemy.isHit){

                    playSoundB(enemyhit, ENEMYHITLEN, ENEMYHITFREQ, 0);
                    for(int k = 0; k < EBULLETCOUNT; k++){
                        ebullets[k].hide = 1;
                    }
                    clearEnemy();
                    enemy.atkState = (enemy.atkState + 1) % NUMATTACKS;
                    //enemy.curFrame = (enemy.curFrame + 1) % enemy.numFrames;
                    enemyHealth -= 1;
                    //animation for being hit here
                    enemy.isHit = 1;
                }
            } else { //bullet has left screen
                clearPBullet(&pbullets[i]);
            }
        }
    }
}

void updateEBullets(){
    for(int i = 0; i < EBULLETCOUNT; i++){
        //enemy bullet behaviour
        if(ebullets[i].active){
            //if in screen
            if(ebullets[i].row + ebullets[i].rdel < SCREENHEIGHT &&
                ebullets[i].row + ebullets[i].rdel + ebullets[i].height > 0 &&
                ebullets[i].col + ebullets[i].cdel < SCREENWIDTH &&
                ebullets[i].col + ebullets[i].cdel + ebullets[i].width > 0){

                ebullets[i].row = (ebullets[i].row + ebullets[i].rdel);
                ebullets[i].col = (ebullets[i].col + ebullets[i].cdel);

                //collision with player
                if(collision(ebullets[i].row, ebullets[i].col,
                    ebullets[i].height, ebullets[i].width, player.screenRow + 16,
                    player.screenCol + 16, player.height, player.width) &&
                    !player.isInv && !player.cheat){
                    // //to test
                    // ebullets[i].rdel = 0;
                    // ebullets[i].cdel = 0;
                    player.isInv = 1;
                    player.health -= 1;
                    ebullets[i].active = 0;
                    ebullets[i].hide = 1;
                    player.isHit = 1;
                    playSoundB(playerhit, PLAYERHITLEN - 300, PLAYERHITFREQ, 0);


                    //testvar = 1;
                    //animation for being hit here
                }
            } else {
                ebullets[i].active = 0;
                ebullets[i].hide = 0;
            }
        }
    }
}

void drawPBullets(){
    //draw player bullets
    for(int i = 0; i < PBULLETCOUNT; i++){
        if(pbullets[i].active){
            if (pbullets[i].hide) {
                shadowOAM[52 + i].attr0 |= ATTR0_HIDE;
            } else {
                shadowOAM[52 + i].attr0 = (ROWMASK & pbullets[i].row) | ATTR0_SQUARE;
                shadowOAM[52 + i].attr1 = (COLMASK & pbullets[i].col) | ATTR1_TINY;
                shadowOAM[52 + i].attr2 = ATTR2_PALROW(1) |
                    //ATTR2_TILEID(pbullets[i].curFrame * 2, pbullets[i].aniState * 2 + 3);
                    ATTR2_TILEID(1,0);
            }
        }
    }
}

void drawEBullets(){
    //draw player bullets
    for(int i = 0; i < EBULLETCOUNT; i++){
        shadowOAM[2 + i].attr0 |= ATTR0_HIDE;
        if(ebullets[i].active){
            if (ebullets[i].hide) {
                clearEBullet(&ebullets[i]);
                initEBullets();
                // shadowOAM[2 + i].attr0 |= ATTR0_HIDE;
                //initEBullets();
            } else {
                shadowOAM[2 + i].attr0 = (ROWMASK & ebullets[i].row) | ATTR0_SQUARE;
                shadowOAM[2 + i].attr1 = (COLMASK & ebullets[i].col) | ATTR1_TINY;
                shadowOAM[2 + i].attr2 = ATTR2_PALROW(1) |
                    //ATTR2_TILEID(ebullets[i].curFrame * 2, ebullets[i].aniState * 2 + 3);
                    ATTR2_TILEID(2,0);
            }
        }
    }
}