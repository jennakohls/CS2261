/***
*
* how to play the game:
*     use the arrow keys to move normally in four directions
*     L and R keys rotate the player -- this allows you to aim your bullets at the enemy
*         this does not affect how the arrow keys move you
*     press A to shoot at the enemy
*     hit the enemy 3 times to win (on the first two hits, it switches attack styles)
*     if you are hit by enemy bullets three times, you lose
*
*     cheat: press B to toggle on and off invincibility - you will no longer
*     take damage when hit by bullets
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
#include "startscreen00.h"
#include "startscreen01.h"
#include "startscreen02.h"
#include "startscreen03.h"
#include "startscreen04.h"
#include "startscreen05.h"
#include "startscreen06.h"
#include "startscreen07.h"
#include "startscreen08.h"
#include "startscreen09.h"
#include "startscreen10.h"
#include "startscreen11.h"
#include "startscreen12.h"
#include "startscreen13.h"
#include "startscreen14.h"
#include "startscreen15.h"
#include "instructionsscreen00.h"
#include "instructionsscreen01.h"
#include "instructionsscreen02.h"
#include "instructionsscreen03.h"
#include "instructionsscreen04.h"
#include "instructionsscreen05.h"
#include "instructionsscreen06.h"
#include "instructionsscreen07.h"
#include "instructionsscreen08.h"
#include "instructionsscreen09.h"
#include "instructionsscreen10.h"
#include "instructionsscreen11.h"
#include "instructionsscreen12.h"
#include "instructionsscreen13.h"
#include "instructionsscreen14.h"
#include "instructionsscreen15.h"

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
void animateMenu();
void animateInstr();

// States
enum {START, GAME, PAUSE, WIN, LOSE, INSTRUCTIONS};
int state;
int scroll;
int menuAniTimer;
int menuAni;
int instrAni;
int instrAniTimer;

SOUND soundA;
SOUND soundB;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

int main() {

    setupSounds();
    setupInterrupts();
    initialize();

    playSoundA(calmstreams,CALMSTREAMSLEN - 600,CALMSTREAMSFREQ, 1);

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
    DMANow(3, startscreen00Pal, PALETTE, 256);

    //// BACKGROUND 0
    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    // Load tiles to charblock and map to screenblock
    DMANow(3, startscreen00Tiles, &CHARBLOCK[0], startscreen00TilesLen/2);
    DMANow(3, startscreen00Map, &SCREENBLOCK[31], startscreen00MapLen/2);


    // re-hide the sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);


    state = START;

    REG_DISPCTL = MODE0 | BG0_ENABLE;
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

    if(menuAniTimer >= 8){
        animateMenu();
        menuAniTimer = 0;
    }

    menuAniTimer++;
}

void animateMenu(){
    if(menuAni == 0){
        DMANow(3, startscreen00Pal, PALETTE, 256);
        DMANow(3, startscreen00Tiles, &CHARBLOCK[0], startscreen00TilesLen/2);
        DMANow(3, startscreen00Map, &SCREENBLOCK[31], startscreen00MapLen/2);
    } else if(menuAni == 1){
        DMANow(3, startscreen01Pal, PALETTE, 256);
        DMANow(3, startscreen01Tiles, &CHARBLOCK[0], startscreen01TilesLen/2);
        DMANow(3, startscreen01Map, &SCREENBLOCK[31], startscreen01MapLen/2);
    } else if(menuAni == 2){
        DMANow(3, startscreen02Pal, PALETTE, 256);
        DMANow(3, startscreen02Tiles, &CHARBLOCK[0], startscreen02TilesLen/2);
        DMANow(3, startscreen02Map, &SCREENBLOCK[31], startscreen02MapLen/2);
    } else if(menuAni == 3){
        DMANow(3, startscreen03Pal, PALETTE, 256);
        DMANow(3, startscreen03Tiles, &CHARBLOCK[0], startscreen03TilesLen/2);
        DMANow(3, startscreen03Map, &SCREENBLOCK[31], startscreen03MapLen/2);
    } else if(menuAni == 4){
        DMANow(3, startscreen04Pal, PALETTE, 256);
        DMANow(3, startscreen04Tiles, &CHARBLOCK[0], startscreen04TilesLen/2);
        DMANow(3, startscreen04Map, &SCREENBLOCK[31], startscreen04MapLen/2);
    } else if(menuAni == 5){
        DMANow(3, startscreen05Pal, PALETTE, 256);
        DMANow(3, startscreen05Tiles, &CHARBLOCK[0], startscreen05TilesLen/2);
        DMANow(3, startscreen05Map, &SCREENBLOCK[31], startscreen05MapLen/2);
    } else if(menuAni == 6){
        DMANow(3, startscreen06Pal, PALETTE, 256);
        DMANow(3, startscreen06Tiles, &CHARBLOCK[0], startscreen06TilesLen/2);
        DMANow(3, startscreen06Map, &SCREENBLOCK[31], startscreen06MapLen/2);
    } else if(menuAni == 7){
        DMANow(3, startscreen07Pal, PALETTE, 256);
        DMANow(3, startscreen07Tiles, &CHARBLOCK[0], startscreen07TilesLen/2);
        DMANow(3, startscreen07Map, &SCREENBLOCK[31], startscreen07MapLen/2);
    } else if(menuAni == 8){
        DMANow(3, startscreen08Pal, PALETTE, 256);
        DMANow(3, startscreen08Tiles, &CHARBLOCK[0], startscreen08TilesLen/2);
        DMANow(3, startscreen08Map, &SCREENBLOCK[31], startscreen08MapLen/2);
    } else if(menuAni == 9){
        DMANow(3, startscreen09Pal, PALETTE, 256);
        DMANow(3, startscreen09Tiles, &CHARBLOCK[0], startscreen09TilesLen/2);
        DMANow(3, startscreen09Map, &SCREENBLOCK[31], startscreen09MapLen/2);
    } else if(menuAni == 10){
        DMANow(3, startscreen10Pal, PALETTE, 256);
        DMANow(3, startscreen10Tiles, &CHARBLOCK[0], startscreen10TilesLen/2);
        DMANow(3, startscreen10Map, &SCREENBLOCK[31], startscreen10MapLen/2);
    } else if(menuAni == 11){
        DMANow(3, startscreen11Pal, PALETTE, 256);
        DMANow(3, startscreen11Tiles, &CHARBLOCK[0], startscreen11TilesLen/2);
        DMANow(3, startscreen11Map, &SCREENBLOCK[31], startscreen11MapLen/2);
    } else if(menuAni == 12){
        DMANow(3, startscreen12Pal, PALETTE, 256);
        DMANow(3, startscreen12Tiles, &CHARBLOCK[0], startscreen12TilesLen/2);
        DMANow(3, startscreen12Map, &SCREENBLOCK[31], startscreen12MapLen/2);
    } else if(menuAni == 13){
        DMANow(3, startscreen13Pal, PALETTE, 256);
        DMANow(3, startscreen13Tiles, &CHARBLOCK[0], startscreen13TilesLen/2);
        DMANow(3, startscreen13Map, &SCREENBLOCK[31], startscreen13MapLen/2);
    } else if(menuAni == 14){
        DMANow(3, startscreen14Pal, PALETTE, 256);
        DMANow(3, startscreen14Tiles, &CHARBLOCK[0], startscreen14TilesLen/2);
        DMANow(3, startscreen14Map, &SCREENBLOCK[31], startscreen14MapLen/2);
    } else if(menuAni == 15){
        DMANow(3, startscreen15Pal, PALETTE, 256);
        DMANow(3, startscreen15Tiles, &CHARBLOCK[0], startscreen15TilesLen/2);
        DMANow(3, startscreen15Map, &SCREENBLOCK[31], startscreen15MapLen/2);
    }

    menuAni = (menuAni + 1) % 16;
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

    REG_DISPCTL = MODE0 | BG0_ENABLE;

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

    if(instrAniTimer >= 8){
        animateInstr();
        instrAniTimer = 0;
    }

    instrAniTimer++;
}

void animateInstr(){
    if(instrAni == 0){
        DMANow(3, instructionsscreen00Pal, PALETTE, 256);
        DMANow(3, instructionsscreen00Tiles, &CHARBLOCK[0], instructionsscreen00TilesLen/2);
        DMANow(3, instructionsscreen00Map, &SCREENBLOCK[31], instructionsscreen00MapLen/2);
    } else if(instrAni == 1){
        DMANow(3, instructionsscreen01Pal, PALETTE, 256);
        DMANow(3, instructionsscreen01Tiles, &CHARBLOCK[0], instructionsscreen01TilesLen/2);
        DMANow(3, instructionsscreen01Map, &SCREENBLOCK[31], instructionsscreen01MapLen/2);
    // } else if(instrAni == 2){
    //     DMANow(3, instructionsscreen02Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen02Tiles, &CHARBLOCK[0], instructionsscreen02TilesLen/2);
    //     DMANow(3, instructionsscreen02Map, &SCREENBLOCK[31], instructionsscreen02MapLen/2);
    // } else if(instrAni == 3){
    //     DMANow(3, instructionsscreen03Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen03Tiles, &CHARBLOCK[0], instructionsscreen03TilesLen/2);
    //     DMANow(3, instructionsscreen03Map, &SCREENBLOCK[31], instructionsscreen03MapLen/2);
    // } else if(instrAni == 4){
    //     DMANow(3, instructionsscreen04Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen04Tiles, &CHARBLOCK[0], instructionsscreen04TilesLen/2);
    //     DMANow(3, instructionsscreen04Map, &SCREENBLOCK[31], instructionsscreen04MapLen/2);
    // } else if(instrAni == 5){
    //     DMANow(3, instructionsscreen05Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen05Tiles, &CHARBLOCK[0], instructionsscreen05TilesLen/2);
    //     DMANow(3, instructionsscreen05Map, &SCREENBLOCK[31], instructionsscreen05MapLen/2);
    // } else if(instrAni == 6){
    //     DMANow(3, instructionsscreen06Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen06Tiles, &CHARBLOCK[0], instructionsscreen06TilesLen/2);
    //     DMANow(3, instructionsscreen06Map, &SCREENBLOCK[31], instructionsscreen06MapLen/2);
    // } else if(instrAni == 7){
    //     DMANow(3, instructionsscreen07Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen07Tiles, &CHARBLOCK[0], instructionsscreen07TilesLen/2);
    //     DMANow(3, instructionsscreen07Map, &SCREENBLOCK[31], instructionsscreen07MapLen/2);
    // } else if(instrAni == 8){
    //     DMANow(3, instructionsscreen08Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen08Tiles, &CHARBLOCK[0], instructionsscreen08TilesLen/2);
    //     DMANow(3, instructionsscreen08Map, &SCREENBLOCK[31], instructionsscreen08MapLen/2);
    // } else if(instrAni == 9){
    //     DMANow(3, instructionsscreen09Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen09Tiles, &CHARBLOCK[0], instructionsscreen09TilesLen/2);
    //     DMANow(3, instructionsscreen09Map, &SCREENBLOCK[31], instructionsscreen09MapLen/2);
    // } else if(instrAni == 10){
    //     DMANow(3, instructionsscreen10Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen10Tiles, &CHARBLOCK[0], instructionsscreen10TilesLen/2);
    //     DMANow(3, instructionsscreen10Map, &SCREENBLOCK[31], instructionsscreen10MapLen/2);
    // } else if(instrAni == 11){
    //     DMANow(3, instructionsscreen11Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen11Tiles, &CHARBLOCK[0], instructionsscreen11TilesLen/2);
    //     DMANow(3, instructionsscreen11Map, &SCREENBLOCK[31], instructionsscreen11MapLen/2);
    // } else if(instrAni == 12){
    //     DMANow(3, instructionsscreen12Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen12Tiles, &CHARBLOCK[0], instructionsscreen12TilesLen/2);
    //     DMANow(3, instructionsscreen12Map, &SCREENBLOCK[31], instructionsscreen12MapLen/2);
    // } else if(instrAni == 13){
    //     DMANow(3, instructionsscreen13Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen13Tiles, &CHARBLOCK[0], instructionsscreen13TilesLen/2);
    //     DMANow(3, instructionsscreen13Map, &SCREENBLOCK[31], instructionsscreen13MapLen/2);
    // } else if(instrAni == 14){
    //     DMANow(3, instructionsscreen14Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen14Tiles, &CHARBLOCK[0], instructionsscreen14TilesLen/2);
    //     DMANow(3, instructionsscreen14Map, &SCREENBLOCK[31], instructionsscreen14MapLen/2);
    // } else if(instrAni == 15){
    //     DMANow(3, instructionsscreen15Pal, PALETTE, 256);
    //     DMANow(3, instructionsscreen15Tiles, &CHARBLOCK[0], instructionsscreen15TilesLen/2);
    //     DMANow(3, instructionsscreen15Map, &SCREENBLOCK[31], instructionsscreen15MapLen/2);
    }

    instrAni = (instrAni + 1) % 2;
}
// Sets up the game state
void goToGame() {
    // Make sure changes do not appear onscreen
    waitForVBlank();

    // Set up the backgrounds
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE | BG1_ENABLE | BG2_ENABLE;
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

    if(BUTTON_PRESSED(BUTTON_B)){
        player.isInv = (player.isInv + 1) % 2;
        player.cheat = (player.cheat + 1) % 2;
    }
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

    REG_DISPCTL = MODE0 | BG0_ENABLE;
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

    REG_DISPCTL = MODE0 | BG0_ENABLE;
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

    REG_DISPCTL = MODE0 | BG0_ENABLE;
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