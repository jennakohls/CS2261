/* Sean Dai
 * Exported with brandontools v1.0
 * Invocation command was brandontools -mode4 -resize=80,16 -start=0 -weights=25,25,25,25 -dither=1 -dither_level=80 icon /home/waxwing/Downloads/GBA emulator/HW11/pacwoman.png
 * Time-stamp: Tuesday 11/11/2014, 21:09:23
 *
 * Image Information
 * -----------------
 * /home/waxwing/Downloads/GBA emulator/HW11/pacwoman.png 80@16
 *
 * Quote/Fortune of the Day!
 * -------------------------
 * A C program is like a fast dance on a newly waxed dance floor by people carrying razors. - Waldi Ravens.
 *
 * Don't let the past and useless detail choke your existence.
 *
 * All bug reports / feature requests are to be sent to Brandon (brandon.whitehead@gatech.edu)
 */

#ifndef ICON_BITMAP_H
#define ICON_BITMAP_H

extern const unsigned short icon_palette[136];
#define ICON_PALETTE_SIZE 136

extern const unsigned short pacwoman[640];
#define PACWOMAN_SIZE 640
#define PACWOMAN_WIDTH 80
#define PACWOMAN_HEIGHT 16

#endif

