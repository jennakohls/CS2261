#include "myLib.h"
#include "game.h"
#include "spritesheet.h"
#include "house.h"
//from lab09
//milestone 2

// Prototypes
void initialize();
void goToGame();
void game();

// States
enum {START, GAME, PAUSE, WIN, LOSE, INSTRUCTIONS};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

int main() {

    initialize();

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

    //REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    // Load spritesheet to CHARBLOCK
    //DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);

    // Load spritesheet palette
    //DMANow(3, spritesheetPal, SPRITEPALETTE, 256);

    // Hide Sprites
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
        goToGame();
    }
    //not sure why this was here
    //hOff++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    // Set bg1 hOff to curr hOff
    REG_BG1HOFF = hOff;
}

void goToInstructions(){
    //load instructions screen palette
    //background 1
    //load tiles to charblock and map to screenblock

    state = INSTRUCTIONS;
}

void instructions(){
    hideSprites();
    if(BUTTON_PRESSED(BUTTON_START)){
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    }
}
// Sets up the game state
void goToGame() {
    initGame();
    // Make sure changes do not appear onscreen
    waitForVBlank();

    // Set up the house background
    DMANow(3, housePal, PALETTE, 256);
    DMANow(3, houseTiles, &CHARBLOCK[0], houseTilesLen/2);
    DMANow(3, houseMap, &SCREENBLOCK[31], houseMapLen/2);
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;

    // Set up the sprites
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    // Set up the display
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    state = GAME;
}

// Runs every frame of the game state
void game() {

    updateGame();
    drawGame();

    if(BUTTON_PRESSED(BUTTON_START)){
        goToPause();
    }

    //FOR TESTING
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToWin();
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        goToLose();
    }

    //if(win condition) goToWin();
    //if(lose condition) goToLose();

}

// Sets up the pause state
void goToPause() {

    // Load pause screen palette
    DMANow(3, pausescreenPal, PALETTE, 256);

    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    // Load tiles to charblock and map to screenblock
    DMANow(3, pausescreenTiles, &CHARBLOCK[0], pausescreenTilesLen/2);
    DMANow(3, pausescreenMap, &SCREENBLOCK[31], pausescreenMapLen/2);

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {

    // Hide Sprites
    hideSprites();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();

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