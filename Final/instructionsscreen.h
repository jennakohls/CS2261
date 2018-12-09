
//{{BLOCK(instructionsscreen)

//======================================================================
//
//	instructionsscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 546 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 17472 + 2048 = 20032
//
//	Time-stamp: 2018-12-05, 23:20:28
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSSCREEN_H
#define GRIT_INSTRUCTIONSSCREEN_H

#define instructionsscreenTilesLen 17472
extern const unsigned short instructionsscreenTiles[8736];

#define instructionsscreenMapLen 2048
extern const unsigned short instructionsscreenMap[1024];

#define instructionsscreenPalLen 512
extern const unsigned short instructionsscreenPal[256];

#endif // GRIT_INSTRUCTIONSSCREEN_H

//}}BLOCK(instructionsscreen)
