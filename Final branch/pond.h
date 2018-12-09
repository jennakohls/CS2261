
//{{BLOCK(pond)

//======================================================================
//
//	pond, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 503 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 16096 + 2048 = 18656
//
//	Time-stamp: 2018-11-13, 23:42:56
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_POND_H
#define GRIT_POND_H

#define pondTilesLen 16096
extern const unsigned short pondTiles[8048];

#define pondMapLen 2048
extern const unsigned short pondMap[1024];

#define pondPalLen 512
extern const unsigned short pondPal[256];

#endif // GRIT_POND_H

//}}BLOCK(pond)
