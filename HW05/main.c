#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "text.h"
#include "game.h"
#include "pacxon.h"

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToLose();
void lose();
void goToWin();
void win();

// States
enum {START, GAME, PAUSE, LOSE, WIN};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

// Text Buffer
char buffer[7];
char buffer1[6];

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
            case LOSE:
                lose();
                break;
            case WIN:
                win();
                break;
        }

    }
}

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {

    DMANow(3, pacxonPal, PALETTE, 256);
    drawFullscreenImage4(pacxonBitmap);

    waitForVBlank();
    flipPage();


    state = START;

    // Begin the seed randomization
    seed = 0;
}

// Runs every frame of the start state
void start() {

    seed++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        // Seed the random generator
        srand(seed);

        goToGame();
        initGame();
    }
}

// Sets up the game state
void goToGame() {

    state = GAME;
}

// Runs every frame of the game state
void game() {

    updateGame();
    drawGame();

    // Update the score
    sprintf(buffer, "Score:");
    drawString4(8, 172, buffer, WHITEID);

    sprintf(buffer1, "%d", score);
    drawString4(24, 172, buffer1, WHITEID);

    waitForVBlank();
    flipPage();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (livesRemaining == 0)
        goToLose();
    else if (score == 324)
        goToWin();
}

// Sets up the pause state
void goToPause() {

    fillScreen4(GRAYID);
    drawString4(80-3, 120-15, "Pause", BLACKID);

    waitForVBlank();
    flipPage();

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();
    else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}


// Sets up the lose state
void goToLose() {

    fillScreen4(REDID);
    drawString4(65, 100, "You Lost", BLACKID);
    drawString4(77, 60, "Press Start to Restart", BLACKID);

    waitForVBlank();
    flipPage();

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

void goToWin(){

    //set up win screen
    fillScreen4(GREENID);
    drawString4(65, 100, "You Won!", BLACKID);
    drawString4(77, 60, "Press Start to Restart", BLACKID);

    waitForVBlank();
    flipPage();

    state = WIN;
}

void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}