/*
 * Exported with brandontools v1.0
 * Invocation command was brandontools -mode4 -resize=240,160 -start=0 -weights=25,25,25,25 -dither=1 -dither_level=80 start_screen /home/waxwing/Downloads/GBA emulator/HW11/BreakoutTitle.png
 * Time-stamp: Tuesday 11/11/2014, 10:41:45
 *
 * Image Information
 * -----------------
 * /home/waxwing/Downloads/GBA emulator/HW11/BreakoutTitle.png 240@160
 *
 * Quote/Fortune of the Day!
 * -------------------------
 * To err is human... to really foul up requires the root password.
 *
 * If your desires are not to extravagant they will be granted.
 *
 * All bug reports / feature requests are to be sent to Brandon (brandon.whitehead@gatech.edu)
 */

#ifndef START_SCREEN_BITMAP_H
#define START_SCREEN_BITMAP_H

extern const unsigned short start_screen_palette[212];
#define START_SCREEN_PALETTE_SIZE 212

extern const unsigned short start_screen[19200];
#define START_SCREEN_SIZE 19200
#define START_SCREEN_WIDTH 240
#define START_SCREEN_HEIGHT 160

#endif

