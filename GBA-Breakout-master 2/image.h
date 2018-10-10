/* Sean Dai
 * Exported with brandontools v1.0
 * Invocation command was brandontools -mode4 -resize=20,32 -start=0 -weights=25,25,25,25 -dither=1 -dither_level=80 image /home/waxwing/Downloads/GBA emulator/HW11/struggle.jpg
 * Time-stamp: Tuesday 11/11/2014, 22:25:33
 *
 * Image Information
 * -----------------
 * /home/waxwing/Downloads/GBA emulator/HW11/struggle.jpg 20@32
 *
 * Quote/Fortune of the Day!
 * -------------------------
 * A C program is like a fast dance on a newly waxed dance floor by people carrying razors. - Waldi Ravens.
 *
 * An inch of time is an inch of gold.
 *
 * All bug reports / feature requests are to be sent to Brandon (brandon.whitehead@gatech.edu)
 */

#ifndef IMAGE_BITMAP_H
#define IMAGE_BITMAP_H

extern const unsigned short image_palette[182];
#define IMAGE_PALETTE_SIZE 182

extern const unsigned short struggle[320];
#define STRUGGLE_SIZE 320
#define STRUGGLE_WIDTH 20
#define STRUGGLE_HEIGHT 32

#endif

