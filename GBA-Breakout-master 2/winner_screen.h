/*
 * Exported with brandontools v1.0
 * Invocation command was brandontools -mode4 -resize=238,158 -start=0 -weights=25,25,25,25 -dither=1 -dither_level=80 winner_screen /home/waxwing/Downloads/GBA emulator/HW11/winner_is_you.jpg 
 * Time-stamp: Tuesday 11/11/2014, 20:15:08
 * 
 * Image Information
 * -----------------
 * /home/waxwing/Downloads/GBA emulator/HW11/winner_is_you.jpg 238@158
 * 
 * Quote/Fortune of the Day!
 * -------------------------
 * A C program is like a fast dance on a newly waxed dance floor by people carrying razors. - Waldi Ravens.
 * 
 * You have a yearning for perfection.
 * 
 * All bug reports / feature requests are to be sent to Brandon (brandon.whitehead@gatech.edu)
 */

#ifndef WINNER_SCREEN_BITMAP_H
#define WINNER_SCREEN_BITMAP_H

extern const unsigned short winner_screen_palette[256];
#define WINNER_SCREEN_PALETTE_SIZE 256

extern const unsigned short winner_is_you[18802];
#define WINNER_IS_YOU_SIZE 18802
#define WINNER_IS_YOU_WIDTH 238
#define WINNER_IS_YOU_HEIGHT 158

#endif

