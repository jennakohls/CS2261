#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "text.h"
#include "game.h"

// Prototypes
void initialize();

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

// States
enum {START, GAME, PAUSE, WIN, LOSE};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;
int dead;

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

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {

    fillScreen(CYAN);
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
    fillScreen(BLACK);
    drawString(145,5,"Score: ",WHITE);
    state = GAME;
}

// Runs every frame of the game state
void game() {

    updateGame();
    sprintf(buffer,"%u",score);
    waitForVBlank();
    drawGame();
    drawRect(145,47,6,8,BLACK);
    drawString(145,47,buffer,WHITE);

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (score == 5)
        goToWin();
    else if (dead)
        goToLose();
}

// Sets up the pause state
void goToPause() {

    fillScreen(GRAY);
    drawString(10,10,"Pause",BLACK);
    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    waitForVBlank();
    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();
    else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the win state
void goToWin() {

    fillScreen(GREEN);
    drawString(10,10,"Win",BLACK);
    state = WIN;
}

// Runs every frame of the win state
void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {
    dead = 0;
    fillScreen(RED);
    drawString(10,10,"Lose",BLACK);
    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}