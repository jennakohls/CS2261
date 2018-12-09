/***
* what is finished about the game so far:
*   player bullets now work and are separate from enemy bullets
*   also better file organization, having everything together for enemies and bullets
*   the game now switches between enemy states! these will be 3 different sprites
*       so the player can tell when you're on a different enemy, but it's just one
*       'enemy' that switches between attack styles
*   3 different attack styles for the enemies
*       - bullets follow the player
*       - a big screen of bullets moving left to right
*       - a circle (diamond) of bullets form around the player and then move towards them
*       note: both of these 'follow'ing attacks don't work super well, but I think
*           I prefer it that way. I think, right now, enough of them actually go your way
*           so as to actually be a threat, but enough are still going somewhere else
*           that the game isn't too overstiimulating and you can still focus on attacking the enemy
*   2 movement styles
*       I thought about having another kind of movement, but I couldn't think
*       of anything that wouldn't be distracting or overly difficult, so I decided to
*       stick with just moving around the edge of the screen
*   changed the player movement, no more acceleration or anything,
*       the arrow keys just move in four directions
*
* what still needs to be added:
*   art/sprites for enemies, player, and bullets
*   animations
*   backgrounds
*   music
*   some number balancing (that is, decide how many times you need to hit the enemy to
*       "kill" it, how often the player should be able to fire bullets, etc. )
*   I would also like to add some UI element indicating how many enemies you still have to face
*       /how much health you have
*
*any bugs that you have found:
*   - the collision is pretty weird. i think this is a result of my sprites not
*   matching their actual size visually, so I think it'll be easier to fix it when I know how
*   big the real sprites are
*   - there are some enemy bullets that get stuck on attack 3 or don't go towards the player
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
#include "spritesheet.h"
//#include "house.h"
//from lab09
//milestone 2

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
    //not sure why this was here
    //hOff++;

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

    // Set up the house background
    DMANow(3, pondPal, PALETTE, 256);
    DMANow(3, pondTiles, &CHARBLOCK[0], pondTilesLen/2);
    DMANow(3, pondMap, &SCREENBLOCK[31], pondMapLen/2);
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
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
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