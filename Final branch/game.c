#include "myLib.h"
#include "game.h"
#include "trig.h"
#include "bullets.h"
#include "enemy.h"
// Variables
int hOff;
int vOff;
OBJ_ATTR shadowOAM[128];
PLAYER player;
Position center;
ENEMY enemy;

int testvar;
//variables store how far a bullet is from the player

int bpmax;

int sinAngle;
int cosAngle;

// player animation states for aniState
enum {PIKAFRONT, PIKABACK, PIKARIGHT, PIKALEFT, PIKAIDLE};

// Initialize the game
void initGame() {

	// Place screen on map
    //note: was 96 and 6 for bigger background
    vOff = 0;
    hOff = 0;
    enemyHealth = 3;
    initPBullets();
    initEBullets();
    initPlayer();
    initEnemy();
}

// Updates the game each frame
void updateGame() {
    //update_rotations();
	 updatePlayer();
     updateEnemy();
     updatePBullets();
     updateEBullets();
}

// Draws the game each frame
void drawGame() {

    drawEnemy();
    drawPlayer();
    drawPBullets();
    drawEBullets();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}

// Initialize the player
void initPlayer() {

    player.width = 8;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    //player.worldRow = SCREENHEIGHT/2-player.width/2 + vOff;
    //player.worldCol = SCREENWIDTH/2-player.height/2 + hOff;
    player.prevAniState = 0;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 4;
    player.aniState = 0;
    player.pos.x = SCRN_TO_POS_X(SCREENWIDTH / 2);
    player.pos.y = SCRN_TO_POS_Y(SCREENHEIGHT / 2);
    player.theta = 0;
    player.bulletTheta = 0;

    player.pos.dx = 0;
    player.health = 3;

    player.isHit = 0;
    player.hitAni = 0;
    player.isInv = 0;
}

// Handle every-frame actions of the player
void updatePlayer() {

    if(BUTTON_HELD(BUTTON_UP)){

    //just normal motion now
    if(POS_TO_SCRN_Y(player.pos.y) + 16 >= 0){
        player.pos.y -= SCRN_TO_POS_Y(player.rdel);
    }
}
    else if(BUTTON_HELD(BUTTON_DOWN)){

        //just normal motion now
        //player.pos.y += SCRN_TO_POS_Y(player.rdel);
        //fix this to account for sprite box
        if(POS_TO_SCRN_Y(player.pos.y) + player.height <= 124){
            //also fix here: subtract out the sprite box
            //player.pos.y = SCRN_TO_POS_Y(0);
            player.pos.y += SCRN_TO_POS_Y(player.rdel);
        }
    } else if(BUTTON_HELD(BUTTON_LEFT)){

        //just normal motion now
        player.pos.x -= SCRN_TO_POS_X(player.cdel);
    }   else if(BUTTON_HELD(BUTTON_RIGHT)){
        //just normal motion now
        player.pos.x += SCRN_TO_POS_X(player.cdel);
    }

    else {
        player.pos.dx = 0;
        player.pos.dy = 0;
    }

    if (BUTTON_HELD(BUTTON_L))
        {
            player.theta += 3;
        }
    if (BUTTON_HELD(BUTTON_R))
    {
        player.theta -= 3;
    }
    if (player.theta >= 360)
    {
        player.theta -= 360;
    }
    if (player.theta < 0)
    {
        player.theta += 360;
    }
    player.sin = sin(player.theta);
    player.cos = cos(player.theta);
    update_pos(&player.pos);
    player.screenRow = POS_TO_SCRN_Y(player.pos.y);
    player.screenCol = POS_TO_SCRN_X(player.pos.x);
    //player.screenCol = player.worldCol - hOff;

     animatePlayer();
    // TODO: add bullet timer
    if(BUTTON_PRESSED(BUTTON_A)){
        firePBullet();
    }
}



// Handle player animation states
void animatePlayer() {

    // Set previous state to current state
    player.prevAniState = player.aniState;
    player.aniState = 4;

    // Change the animation frame every 20 frames of gameplay
    if(player.aniCounter % 20 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    // Control movement and change animation state, also controls bullet direction
    if(BUTTON_HELD(BUTTON_UP)){
        player.bulletTheta = 180;
        player.width = 8;
        player.height = 16;
        player.aniState = 3;
        player.theta = 0;
    }
    if(BUTTON_HELD(BUTTON_DOWN)){
        player.bulletTheta = 0;
        player.width = 8;
        player.height = 16;
        player.aniState = 0;
        player.theta = 0;
    }
    if(BUTTON_HELD(BUTTON_LEFT)){
        player.bulletTheta = 270;
        player.width = 16;
        player.height = 8;
        player.aniState = 2;
        player.theta = 0;
    }
    if(BUTTON_HELD(BUTTON_RIGHT)){
        player.bulletTheta = 90;
        player.width = 16;
        player.height = 8;
        player.aniState = 1;
        player.theta = 0;
    }

    // if(player.theta > 5 && player.theta < 355) {
    //     player.aniState = 0;
    // }


    // If the player aniState is idle, frame is player standing
    if (player.aniState == 4) {
        player.curFrame = 0;
        player.aniCounter = 0;
        player.aniState = player.prevAniState;
    } else{
        player.aniCounter++;
    }
    //player.aniCounter++;

    // //hit animation
    // if(player.isHit){
    //     if(player.hitAni < 5){
    //         player.curFrame = 5;
    //         player.hitAni++;
    //         testvar = 4;
    //     } else {
    //         player.curFrame = 0;
    //         player.isHit = 0;
    //         }
    //     }
if(player.cheat){
    player.curFrame = 4;
}
    if(player.isInv < 50 && player.isInv > 0 && !player.cheat){
        player.isInv++;
    } else {
        player.isInv = 0;
    }
}

// Draw the player
void drawPlayer() {

    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        // shadowOAM[0].attr0 = (ROWMASK & player.screenRow) | ATTR0_SQUARE | ATTR0_DOUBLEAFFINE;
        // shadowOAM[0].attr1 = (COLMASK & player.screenCol) | ATTR1_SMALL | AFFINE_ID(0);

        shadowOAM[0].attr0 = (ROWMASK & (POS_TO_SCRN_Y(player.pos.y))) | ATTR0_SQUARE | ATTR0_DOUBLEAFFINE;
        //shadowOAM[0].attr0 = (ROWMASK & ((player.pos.y >> 16) - 16)) | ATTR0_SQUARE | ATTR0_DOUBLEAFFINE;
        //shadowOAM[0].attr1 = (COLMASK & ((player.pos.x >> 16) - 8)) | ATTR1_SMALL | AFFINE_ID(0);
        shadowOAM[0].attr1 = (COLMASK & (POS_TO_SCRN_X(player.pos.x))) | ATTR1_MEDIUM | AFFINE_ID(0);

        //put back in to animate the player
        //shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.curFrame * 2, player.aniState * 2);
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.curFrame * 4 + testvar,player.aniState * 4 + 1);
        //shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.curFrame * 4, player.aniState * 4 + 1);
        // update player sprite rotation
        aff_matrix(affineBuffer, player.cos, -player.sin, player.sin, player.cos);
    }

    //Draw the health bar
    if(player.health == 3){
    shadowOAM[102].attr0 = (ROWMASK & 153) | ATTR0_WIDE;
    shadowOAM[102].attr1 = (COLMASK & 100) | ATTR1_LARGE;
    shadowOAM[102].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,17);
    shadowOAM[103].attr0 = (ROWMASK & 153) | ATTR0_WIDE;
    shadowOAM[103].attr1 = (COLMASK & 113) | ATTR1_LARGE;
    shadowOAM[103].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,17);
    } else if(player.health == 2){
    shadowOAM[102].attr0 = (ROWMASK & 153) | ATTR0_WIDE;
    shadowOAM[102].attr1 = (COLMASK & 100) | ATTR1_MEDIUM;
    shadowOAM[102].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,17);
    shadowOAM[103].attr0 = (ROWMASK & 153) | ATTR0_WIDE;
    shadowOAM[103].attr1 = (COLMASK & 120) | ATTR1_MEDIUM;
    shadowOAM[103].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,17);
    } else if(player.health == 1){
    shadowOAM[103].attr0 |= ATTR0_HIDE;
    shadowOAM[102].attr0 = (ROWMASK & 153) | ATTR0_WIDE;
    shadowOAM[102].attr1 = (COLMASK & 98) | ATTR1_MEDIUM;
    shadowOAM[102].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0,17);
    }

}

void update_pos(Position *pos)
{
    pos->x += pos->dx;
    if (pos->x < 0)
    {
        pos->x += (SCREENWIDTH << 16);
    }
    else if (pos->x > SCREENWIDTH << 16)
    {
        pos->x -= SCREENWIDTH << 16;
    }

    pos->y += pos->dy;
    if (pos->y < 0)
    {
        pos->y += SCREENHEIGHT << 16;
    }
    else if (pos->y > SCREENHEIGHT << 16)
    {
        pos->y -= SCREENHEIGHT << 16;
    }
}




