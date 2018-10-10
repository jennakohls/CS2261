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
int score;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Text Buffer
char buffer[41];
char buffer1[41];

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
    goToStart();
}

// Sets up the start state
void goToStart() {

    fillScreen(BLACK);
    drawString(80,60,"PRESS START TO BEGIN", WHITE);
    state = START;
}

// Runs every frame of the start state
void start() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        initGame();
    }
}

// Sets up the game state
void goToGame() {
    fillScreen(BLACK);
    drawString(145,5,"Score: ",WHITE);
    drawString(145,130,"Lives Remaining: ",WHITE);

    state = GAME;
}

// Runs every frame of the game state
void game() {

    updateGame();
    sprintf(buffer,"%u",score);
    sprintf(buffer1,"%u",livesRemaining);

    waitForVBlank();
    drawGame();

    drawRect(145,47,6,16,BLACK);
    drawString(145,47,buffer,WHITE);
    drawRect(145,227,6,8,BLACK);
    drawString(145,227,buffer1,WHITE);

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
     else if (livesRemaining == 0)
         goToLose();
    else if (bricksRemaining == 0)
        goToWin();
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
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();
    else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the win state
void goToWin() {

    fillScreen(GREEN);
    drawString(10,10,"You Won! :)",WHITE);

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
    fillScreen(RED);
    drawString(10,10,"You Lost :(",BLACK);

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}