#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Prototypes
void initialize();

// State Prototypes
void start();
void goToStart();
void pause();
void goToPause();
void game();
void goToGame();
void win();
void goToWin();
void lose();
void goToLose();

// States
enum {START, GAME, PAUSE, WIN, LOSE};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

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
            case PAUSE:
                pause();
                break;
            case GAME:
                game();
                break;
            case LOSE:
                lose();
                break;
            case WIN:
                win();
                break;
            default:
                break;
        }

    }
}
// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;
    seed = 0;
    // TODO 1.3: Call your goToStart function here
    goToStart();
}

// TODO 1.1: Make your state and state transition functions
void goToStart() {
    fillScreen(CYAN);
    state = START;
}

void start() {
    initGame();
    seed ++;
    if(BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);
        goToGame();
    }
}

void goToPause() {
    fillScreen(GRAY);
    state = PAUSE;
}

void pause() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToGame() {
    fillScreen(BLACK);
    state = GAME;
}

void game() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if(BUTTON_PRESSED(BUTTON_B)) {
        goToLose();
    }
    if(ballsRemaining == 0) {
        goToWin();
    }
//    if(BUTTON_PRESSED(BUTTON_A)) {
//        goToWin();
//    }
    updateGame();
    waitForVBlank();
    drawGame();
}

void goToLose() {
    fillScreen(RED);
    state = LOSE;
}

void lose() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToWin() {
    fillScreen(GREEN);
    state = WIN;
}

void win() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}


