/* SEAN DAI
 * Exported with brandontools v1.0
 * Invocation command was brandontools -mode4 -resize=240,160 -start=0 -weights=25,25,25,25 -dither=1 -dither_level=80 game_over_screen /home/waxwing/Downloads/GBA emulator/HW11/game_over.png 
 * Time-stamp: Tuesday 11/11/2014, 00:39:06
 * 
 * Image Information
 * -----------------
 * /home/waxwing/Downloads/GBA emulator/HW11/game_over.png 240@160
 * 
 * Quote/Fortune of the Day!
 * -------------------------
 * To err is human... to really foul up requires the root password.
 * 
 * Tonight you will be blinded by passion.
 * 
 * All bug reports / feature requests are to be sent to Brandon (brandon.whitehead@gatech.edu)
 */

#ifndef GAME_OVER_SCREEN_BITMAP_H
#define GAME_OVER_SCREEN_BITMAP_H

extern const unsigned short game_over_screen_palette[256];
#define GAME_OVER_SCREEN_PALETTE_SIZE 256

extern const unsigned short game_over[19200];
#define GAME_OVER_SIZE 19200
#define GAME_OVER_WIDTH 240
#define GAME_OVER_HEIGHT 160

#endif

