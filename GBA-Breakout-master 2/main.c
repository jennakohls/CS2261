// Sean Dai
// CS 2110: HW 11
#include "mylib.h"
#include "game.h"
#include <stdlib.h>
#include <stdio.h>

int main(void) {

    REG_DISPCNT = MODE4 | BG2_ENABLE | BUFFER1FLAG;

    while (1) {
        waitForVblank();
        flipPage();
        if (KEY_DOWN_NOW(BUTTON_START)) {
            switch (state) {
                case TITLE:
                    init_game();
                    break;
                case GAMEOVER:
                    reset();
                    break;
                case INGAME:
                    init_game();
                    break;
                case WIN:
                    reset();
                    break;
            }

        } else if (KEY_DOWN_NOW(BUTTON_SELECT) || state == TITLE) {
            reset();
        } else if (state == INGAME) {
            if KEY_DOWN_NOW(BUTTON_LEFT) {
                movePaddle(-2);
            } else if (KEY_DOWN_NOW(BUTTON_RIGHT)) {
                movePaddle(2);
            }
        }
        refresh();
    }
    return 0;
}
