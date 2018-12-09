/***
* what is finished about the game so far:
*   player bullets and enemy bullets
*   3 different attack styles for the enemies
*       - bullets follow the player
*       - a big screen of bullets moving left to right
*       - a circle (diamond) of bullets form around the player and then move towards them
*   2 movement styles for the enemy
*
*  ---New for M04----
*  art/sprites for enemy and player
*  both fish are now animated
*  backgrounds and background movement
*  music
*  enemy and player hit sound effects
*  the bullets are the same sprite, I tried some other things but everything more
*      complex than the little squares was too visually distracting, so I
*      decided to stick with what I had that clearly communicates player
*      vs. enemy bullets without creating a hectic or busy screen
*
* what still needs to be added:
* - some number balancing (that is, decide how many times you need to hit the enemy to
*       "kill" it, how often the player should be able to fire bullets, etc. )
* - Player Health UI
* - I have the groundwork laid for a small animation/highlight when the player gets hit
*
*
*any bugs that you have found:
*   - the collision (and bullet spawn locations) is still pretty wonky, I'm working on improving this
*   - pause/win/lose states have some weird artifacting
*
* how to play the game in its current state
*     use the arrow keys to move normally in four directions
*     L and R keys rotate the player -- this allows you to aim your bullets at the enemy
*         this does not affect how the arrow keys move you
*     press A to shoot at the enemy
*     hit the enemy 3 times to win (on the first two hits, it switches attack styles)
*     if you are hit by enemy bullets three times, you lose
***/

#include "myLib.h"
#include "game.h"
#include "bullets.h"
#include "enemy.h"
#include "winscreen.h"
#include "losescreen.h"
#include "startscreen.h"
#include "pausescreen.h"
#include "instructionsscreen.h"
#include "pond.h"
#include "pond0.h"
#include "pond1.h"
#include "pond3.h"
#include "spritesheet.h"
#include "calmstreams.h"
#include "sound.h"
#include "playerhit.h"

// Prototypes
void initialize();
void goToGame();
void game();
void goToStart();
void start();
void goToWin();
void win();
void goToLose();
void lose();
void goToPause();
void pause();
void goToInstructions();
void instructions();

// States
enum {START, GAME, PAUSE, WIN, LOSE, INSTRUCTIONS};
int state;
int scroll;

SOUND soundA;
SOUND soundB;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

int main() {

    setupSounds();
    setupInterrupts();
    initialize();

    playSoundA(calmstreams,CALMSTREAMSLEN,CALMSTREAMSFREQ, 1);

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch(state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
        }

    }
}

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    //Load spritesheet to CHARBLOCK
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);

    //Load spritesheet palette
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);

    //Hide Sprites
    hideSprites();

    // Set up the first state
    goToStart();
}

void goToStart() {

    // Load Start Screen palette
    DMANow(3, startscreenPal, PALETTE, 256);

    //// BACKGROUND 0
    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load tiles to charblock and map to screenblock
    DMANow(3, startscreenTiles, &CHARBLOCK[0], startscreenTilesLen/2);
    DMANow(3, startscreenMap, &SCREENBLOCK[31], startscreenMapLen/2);


    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    state = START;
}

// Runs every frame of the start state
void start() {

    // Hide Sprites
    hideSprites();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstructions();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
    }

    // Lock the framerate to 60 fps
    waitForVBlank();

    // Set bg1 hOff to curr hOff
    REG_BG1HOFF = hOff;
}

void goToInstructions(){
    DMANow(3, instructionsscreenPal, PALETTE, 256);

    //// BACKGROUND 0
    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load tiles to charblock and map to screenblock
    DMANow(3, instructionsscreenTiles, &CHARBLOCK[0], instructionsscreenTilesLen/2);
    DMANow(3, instructionsscreenMap, &SCREENBLOCK[31], instructionsscreenMapLen/2);

    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    state = INSTRUCTIONS;
}

void instructions(){
    hideSprites();
    if(BUTTON_PRESSED(BUTTON_START)){
        initGame();
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    }
}
// Sets up the game state
void goToGame() {
    // Make sure changes do not appear onscreen
    waitForVBlank();

    // Set up the backgrounds

    //pond without reeds
    REG_BG2CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    DMANow(3, pond0Pal, PALETTE, pond0PalLen / 2);
    DMANow(3, pond0Tiles, &CHARBLOCK[0], pond0TilesLen/2);
    DMANow(3, pond0Map, &SCREENBLOCK[28], pond0MapLen/2);


    //background 2 (lily pads; will move)
    //DMANow(3, pond1Pal, PALETTE, 256);
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(29) | BG_SIZE_SMALL;
    DMANow(3, pond1Tiles, &CHARBLOCK[1], pond1TilesLen/2);
    DMANow(3, pond1Map, &SCREENBLOCK[29], pond1MapLen/2);
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;

    //reeds
    REG_BG0CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL;
    DMANow(3, pond3Tiles, &CHARBLOCK[2], pond3TilesLen/2);
    DMANow(3, pond3Map, &SCREENBLOCK[30], pond3MapLen/2);


    // Set up the sprites
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    // Set up the display
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE | BG1_ENABLE | BG2_ENABLE;

    state = GAME;
}

// Runs every frame of the game state
void game() {

    updateGame();
    drawGame();

    if(scroll >= 20){
        hOff = (hOff + 1);
        //vOff = (vOff + 1) % 3;
        scroll = 0;
    } else {
        scroll++;
    }

    if(BUTTON_PRESSED(BUTTON_START)){
        goToPause();
    }

    // //FOR TESTING
    // if (BUTTON_PRESSED(BUTTON_L)) {
    //     goToWin();
    // }

    // if (BUTTON_PRESSED(BUTTON_R)) {
    //     goToLose();
    // }
    if(enemyHealth <= 0 && enemy.atkState != 1){ //make sure you don't win in the middle fight somehow
        goToWin();
    }

    if(player.health <= 0){
        goToLose();
    }

}

// Sets up the pause state
void goToPause() {

    // Load pause screen palette
    DMANow(3, pausescreenPal, PALETTE, 256);

    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG0_ENABLE;
    // Load tiles to charblock and map to screenblock
    DMANow(3, pausescreenTiles, &CHARBLOCK[0], pausescreenTilesLen/2);
    DMANow(3, pausescreenMap, &SCREENBLOCK[31], pausescreenMapLen/2);

    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {

    // Hide Sprites
    hideSprites();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();
    if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the win state
void goToWin() {

    // Load win screen palette
    DMANow(3, winscreenPal, PALETTE, 256);

    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    // Load tiles to charblock and map to screenblock
    DMANow(3, winscreenTiles, &CHARBLOCK[0], winscreenTilesLen/2);
    DMANow(3, winscreenMap, &SCREENBLOCK[31], winscreenMapLen/2);

    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    state = WIN;
}

// Runs every frame of the win state
void win() {
    // Hide Sprites
    hideSprites();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {

    // Load lose screen palette
    DMANow(3, losescreenPal, PALETTE, 256);

    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    // Load tiles to charblock and map to screenblock
    DMANow(3, losescreenTiles, &CHARBLOCK[0], losescreenTilesLen/2);
    DMANow(3, losescreenMap, &SCREENBLOCK[31], losescreenMapLen/2);

    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {

    // Hide Sprites
    hideSprites();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}