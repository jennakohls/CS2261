#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "startscreen.h"
#include "pausescreen.h"
#include "winscreen.h"
#include "losescreen.h"
#include "spritesheet.h"
#include "background.h"

// Prototypes
void initialize();
void initGame();
void updateGame();
void drawGame();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

//Shadow OAM
OBJ_ATTR shadowOAM[128];

// State Machine
enum {START, GAME, PAUSE, WIN, LOSE};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Offsets
unsigned short hOff;

// Random Seed
int seed;

// Text Buffer
char buffer[41];

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
        }

    }
}

// Initializes the game in Mode 0, and sets up the GBA
void initialize() {
    // Load spritesheet to CHARBLOCK
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);

    // Load spritesheet palette
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);

    // Hide Sprites
    hideSprites();

    // Enable Mode 0, one background, and sprites
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    // Initialize hOff to 0
    hOff = 0;

    // Set up the first state
    goToStart();
}

// Sets up the start state
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
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        initGame();
    }
    hOff++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    // Set bg1 hOff to curr hOff
    REG_BG1HOFF = hOff;
}

// Sets up the game state
void goToGame() {
    // Load background palette
    DMANow(3, backgroundPal, PALETTE, 256);

    //// BACKGROUND 0
    // Set background 0 control register
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    // Load tiles to charblock and map to screenblock
    DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen/2);
    DMANow(3, backgroundMap, &SCREENBLOCK[31], backgroundMapLen/2);

    state = GAME;
}

// Runs every frame of the game state
void game() {

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }

    // //FOR TESTING
    // if (BUTTON_PRESSED(BUTTON_A)) {
    //     goToWin();
    // }

    // if (BUTTON_PRESSED(BUTTON_B)) {
    //     goToLose();
    // }

    updateGame();
    drawGame();

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

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