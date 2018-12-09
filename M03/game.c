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

    //REG_BG0HOFF = hOff;
    //REG_BG0VOFF = vOff;
}

// Initialize the player
void initPlayer() {

    player.width = 8;
    player.height = 8;
    player.rdel = 1;
    player.cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    //player.worldRow = SCREENHEIGHT/2-player.width/2 + vOff;
    //player.worldCol = SCREENWIDTH/2-player.height/2 + hOff;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 1;
    player.aniState = PIKAFRONT;
    player.pos.x = SCRN_TO_POS_X(SCREENWIDTH / 2);
    player.pos.y = SCRN_TO_POS_Y(SCREENHEIGHT / 2);
    player.theta = 0;
    player.pos.dx = 0;
    player.health = 3;
}

// Handle every-frame actions of the player
void updatePlayer() {

    if(BUTTON_HELD(BUTTON_UP)){
        //go forward
        //if(player.pos.dx > -15 && player.pos.dy > -15){
       //      player.pos.dx -= player.sin << 3;
       //      player.pos.dy -= player.cos << 3;
       // }
         //player.pos.dx = 1;
        //update_pos(&player.pos);
        //player.pos.x = (player.pos.x + 1) % SCREENWIDTH;
        //testvar = 1;
        // limit player speed
        // sinAngle = player.pos.dx - (player.sin << 3);
        // cosAngle = player.pos.dy - (player.cos << 3);

        //code for increasing speed
        // player.pos.dx -= player.sin << 3;
        // player.pos.dy -= player.cos << 3;
        // if (sq(player.pos.dx >> 16) + sq(player.pos.dy >> 16) > 3)
        //     {
        //         player.pos.dx -= player.pos.dx >> 4;
        //         player.pos.dy -= player.pos.dy >> 4;
        //     }

        // //simple forward movement
            //if(testvar <= 3){ //only do this once ever
                // player.pos.dx -= player.sin << 5;
                // player.pos.dy -= player.cos << 5;
                //testvar++;
            //}

    // {
    //     //testvar = 0;
    //     player.pos.dx = 0;
    //     player.pos.dy = 0;
    //     //player.pos.dx = 0;
    //     // update_pos(&player.pos);
    // }
    // player.pos.dx = sinAngle;
    // player.pos.dy = cosAngle;
    // if(BUTTON_PRESSED(BUTTON_DOWN)){
    //     player.pos.dx = 0;
    //     player.pos.dy = 0;

    //just normal motion now
    player.pos.y -= SCRN_TO_POS_Y(player.rdel);
}
    else if(BUTTON_HELD(BUTTON_DOWN)){
        // player.pos.dx = 0;
        // player.pos.dy = 0;
        // //if (sq(player.pos.dx >> 16) + sq(player.pos.dy >> 16) > 5){
        //     player.pos.dx += player.sin << 3;
        //     player.pos.dy += player.cos << 3;
        // //}
        // //THIS LINE DOES NOT WORK lmao
        // if (sq(player.pos.dx >> 16) + sq(player.pos.dy >> 16) < 3)
        //     {
        //         player.pos.dx += player.pos.dx >> 4;
        //         player.pos.dy += player.pos.dy >> 4;
        //     }

        //just normal motion now
        player.pos.y += SCRN_TO_POS_Y(player.rdel);
    } else if(BUTTON_HELD(BUTTON_LEFT)){
        // player.pos.dx = 0;
        // player.pos.dy = 0;
        //if (sq(player.pos.dx >> 16) + sq(player.pos.dy >> 16) > 5){

        //}
        // //special case: if pointed vertical
        // if(player.sin == 0) {
        //     player.pos.dx -= 256 << 3;
        // } else if(player.sin > 0) { // i think??
        //     player.pos.dx -= player.sin << 3;
        //     player.pos.dy += player.cos << 3;
        // } else{
        //     player.pos.dx += player.sin << 3;
        //     player.pos.dy -= player.cos << 3;
        // }
        // if (sq(player.pos.dx >> 16) + sq(player.pos.dy >> 16) < -3)
        //     {
        //         player.pos.dx += player.pos.dx >> 4;
        //         player.pos.dy += player.pos.dy >> 4;
        //     }

        //just normal motion now
        player.pos.x -= SCRN_TO_POS_X(player.cdel);
    }   else if(BUTTON_HELD(BUTTON_RIGHT)){
        // player.pos.dx = 0;
        // player.pos.dy = 0;
        //if (sq(player.pos.dx >> 16) + sq(player.pos.dy >> 16) > 5){

        //}
        //special case: if pointed horizontal
        // if(player.cos == 0) {
        //     player.pos.dy += 256 << 3;
        // } else {
        //     player.pos.dx += player.sin << 3;
        //     player.pos.dy -= player.cos << 3;
        // }
        // if (sq(player.pos.dx >> 16) + sq(player.pos.dy >> 16) < -3)
        //     {
        //         player.pos.dx += player.pos.dx >> 4;
        //         player.pos.dy += player.pos.dy >> 4;
        //     }
        //

        //just normal motion now
        player.pos.x += SCRN_TO_POS_X(player.cdel);
    }

    else {
        player.pos.dx = 0;
        player.pos.dy = 0;
    }
    // if(BUTTON_HELD(BUTTON_LEFT)){
    //     //rotate left
    //     player.pos.y++;
    // }
    // if(BUTTON_HELD(BUTTON_RIGHT)){
    //     //rotate right
    // }

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
    //player.screenRow = player.worldRow - vOff;
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
    player.aniState = PIKAIDLE;

    // Change the animation frame every 20 frames of gameplay
    if(player.aniCounter % 20 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    // Control movement and change animation state, also controls bullet direction
    if(BUTTON_HELD(BUTTON_UP))
        player.aniState = PIKABACK;
    if(BUTTON_HELD(BUTTON_DOWN))
        player.aniState = PIKAFRONT;
    if(BUTTON_HELD(BUTTON_LEFT))
        player.aniState = PIKALEFT;
    if(BUTTON_HELD(BUTTON_RIGHT))
        player.aniState = PIKARIGHT;

    // If the player aniState is idle, frame is player standing
    if (player.aniState == PIKAIDLE) {
        player.curFrame = 0;
        player.aniCounter = 0;
        player.aniState = player.prevAniState;
    } else {
        player.aniCounter++;
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
        shadowOAM[0].attr1 = (COLMASK & (POS_TO_SCRN_X(player.pos.x))) | ATTR1_SMALL | AFFINE_ID(0);

        //put back in to animate the player
        //shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.curFrame * 2, player.aniState * 2);
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, testvar);

        // update player sprite rotation
        aff_matrix(affineBuffer, player.cos, -player.sin, player.sin, player.cos);
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




