
//{{BLOCK(winscreen)

//======================================================================
//
//	winscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 89 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2848 + 2048 = 5408
//
//	Time-stamp: 2018-11-02, 22:52:57
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short winscreenTiles[1424] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,
	0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,
	0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,
	0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,

	0x0000,0x3350,0x0000,0x3330,0x0000,0x3330,0x3300,0x3333,
	0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0033,0x0000,0x0033,0x0000,0x0033,0x0000,0x0033,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3000,0x3333,0x3000,0x3333,0x3000,0x3333,0x3000,0x3333,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0333,0x0000,
	0x0333,0x0000,0x0333,0x0000,0x0333,0x0000,0x0333,0x0000,

	0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,
	0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,
	0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,
	0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,
	0x3333,0x3333,0x3333,0x3333,0x3339,0x3333,0x0000,0x3333,
	0x8000,0x3333,0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,
	0x0000,0x3300,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,

	0x3333,0x0033,0x3333,0x0033,0x3333,0x00D3,0x0333,0x0000,
	0x0B33,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3000,0x3333,0x3000,0x3333,0x3000,0x3333,0x3000,0x3333,
	0x3000,0x3333,0x3000,0x3333,0x3000,0x3333,0x3000,0x3333,
	0x0333,0x0000,0x0333,0x0000,0x0333,0x0000,0x0333,0x0000,
	0x0333,0x0000,0x0333,0x0000,0x0333,0x0000,0x0333,0x0000,
	0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,
	0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0xB000,

	0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,
	0x3300,0x3333,0x0000,0x3330,0x0000,0x3330,0x0000,0x3310,
	0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,
	0x0000,0x3300,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,
	0x3333,0x3333,0x3330,0x3333,0x3330,0x3333,0x3330,0x3333,
	0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,
	0x3333,0x0333,0x0333,0x0000,0x0333,0x0000,0x0333,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x3380,0x0000,0x3350,
	0x0000,0x3390,0x0000,0x3390,0x0000,0x3390,0x0000,0x3390,
	0x0000,0x0000,0x0000,0x0000,0x3333,0x0733,0x3333,0x0333,
	0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,
	0x0000,0x0000,0x0000,0x0000,0x3330,0x3333,0x3332,0x3333,
	0x3339,0x3333,0x3339,0x3333,0x333C,0x3333,0x333C,0x3333,

	0x0000,0x0000,0x0000,0x0000,0x00D3,0x0000,0x0033,0x0000,
	0x0033,0x0000,0x0033,0x0000,0x0033,0x0000,0x0033,0x0000,
	0x0000,0x0000,0x0000,0x8000,0x0000,0x2000,0x0000,0xC000,
	0x0000,0xC000,0x0000,0xC000,0x0000,0xC000,0x0000,0xC000,
	0x0000,0x0000,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x33C0,0x0000,0x33A0,0x0000,0x3340,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3333,0x0333,0x3333,0x3333,0x3333,0x3333,0x0000,0x3330,
	0x0000,0x3330,0x0000,0x3330,0x0000,0x3330,0x0000,0x3330,
	0x0000,0x0000,0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,
	0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,
	0x0033,0x0000,0x0033,0x3000,0x0033,0x3000,0x0000,0x3000,
	0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,
	0x0000,0xC000,0x0000,0xC000,0x0000,0xC000,0x0000,0xC000,
	0x0000,0xC000,0x0000,0xC000,0x0000,0xC000,0x0000,0xC000,

	0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,
	0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x3333,0x3333,
	0x0033,0x3000,0x0033,0x3000,0x0033,0x3000,0x0033,0x3000,
	0x0033,0x3000,0x0033,0x3000,0x0033,0x3000,0x3333,0x3333,
	0x3333,0x1103,0x3333,0x0003,0x3333,0x0003,0x3333,0x0003,
	0x3333,0x0003,0x3333,0x0003,0x3333,0x0003,0x3333,0x3333,
	0xE1D1,0x3338,0x0000,0x3330,0x0000,0x3330,0x0000,0x3330,
	0x0000,0x3330,0x0000,0x3330,0x0000,0x3330,0x3333,0x3333,

	0x0333,0xF115,0x0333,0x0000,0x0333,0x0000,0x0333,0x0000,
	0x0333,0x0000,0x0333,0x0000,0x0333,0x0000,0x3333,0x3333,
	0x3301,0x3333,0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,
	0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,0x3333,0x3333,
	0x0000,0xC000,0x0000,0xC000,0x0000,0x9000,0x0000,0xC000,
	0x0000,0x2000,0x0000,0x4000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x0000,0x3300,0x0000,0x3300,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x0003,0x0000,0x0003,0x0000,
	0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,
	0x0000,0x3300,0x0000,0x8000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x8088,0x33C0,0x0000,0x33C0,0x0000,0x3390,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x0033,0x8000,0x0033,0x0000,0x0033,0x0000,
	0x0003,0x0000,0x0003,0x0000,0x0003,0x0000,0x0003,0x0000,
	0x0003,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x3390,0x0000,0x3390,0x0000,0x3380,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,

	0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,0x3333,0x0333,
	0x3333,0x0733,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3330,0x3333,0x3330,0x3333,0x3330,0x3333,0x3330,0x3333,
	0x3330,0x3333,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0033,0x0000,0x0033,0x0000,0x0033,0x0000,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3200,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3333,0x0333,0x3333,0x8333,0x3333,0x8333,0x3333,0x0333,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0003,0x0000,0x0003,0x0000,0x0003,0x0000,0x0001,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x3330,0x0000,0x3330,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3333,0x0003,0x3333,0x0003,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x3300,0x0000,0x3300,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3333,0x0033,0x3333,0x0033,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x3333,0x3333,0x3333,0x3333,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0B33,0x0000,0x0333,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0xFA00,0xE5E5,0x3300,0x3333,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0005,0x0000,0x0033,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0xE000,0xE5EF,0x3300,0x3333,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x00AF,0x0000,0x0433,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3000,0x3333,0x3000,0x3333,
	0x3000,0x3333,0x3000,0x3333,0x3000,0x3333,0x3000,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x0000,0x3333,0x0000,
	0x3333,0x0000,0x3333,0x0000,0x3333,0x0000,0x3333,0x0000,
	0x0333,0x0000,0x0A33,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3380,0x3333,0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,
	0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,
	0x0033,0x0000,0x3333,0x0003,0x3333,0x0043,0x3333,0x0083,
	0x3333,0x0003,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,
	0x3300,0x3333,0x3306,0x3333,0x3303,0x3333,0x3F03,0x3333,
	0x0233,0x0000,0x0C33,0x0000,0x0C33,0x0000,0x0C33,0x0000,
	0x0C33,0x0000,0x0C33,0x0000,0x0C33,0x0000,0x0C33,0x0000,

	0x3333,0x3003,0x3333,0x3003,0x3333,0x3003,0x3333,0x3003,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,0x3300,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3363,0x3333,
	0x3333,0x0000,0x3333,0x0000,0x3333,0x0000,0x3333,0x0000,
	0x3333,0x0000,0x3333,0x0000,0x3333,0x0000,0x3333,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x0063,0x3333,0x0033,0x3333,0x0033,0x3333,

	0x0C33,0x0000,0x0C33,0x0000,0x0C33,0x0000,0x0C33,0x0000,
	0x0C33,0x0000,0x0C33,0x0000,0x0C33,0x0000,0x0C33,0x0000,
	0x0000,0x3330,0x0000,0x3330,0x0000,0x3330,0x0000,0x3330,
	0x0000,0x3330,0x0000,0x3330,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x0003,
	0x3333,0x0003,0x3333,0x0003,0x0000,0x0000,0x0000,0x0000,
	0x3004,0x3333,0x3009,0x3333,0x3000,0x3333,0x0000,0x3300,
	0x0000,0x3300,0x0000,0x3300,0x0000,0x0000,0x0000,0x0000,

	0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,0x3333,0x0033,
	0x3333,0x0033,0x3333,0x0033,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x3330,0x0000,0x3330,
	0x0000,0x3330,0x0000,0x3330,0x0000,0x0000,0x0000,0x0000,
	0x3000,0x3333,0x3000,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x0000,0x3333,0x0000,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0733,0x0000,0x0333,0x0000,
	0x0333,0x0000,0x0633,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,0x3300,0x3333,
	0x3380,0x3333,0x3300,0x3333,0x0000,0x0000,0x0000,0x0000,
	0x0033,0x2000,0x0033,0xB000,0x0033,0x8000,0x0033,0x0000,
	0x0033,0x0000,0x00F3,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3F00,0x3333,
	0x3300,0x3333,0x3100,0x3333,0x0000,0x0000,0x0000,0x0000,

	0x0C33,0x0000,0x0C33,0x0000,0x0C33,0x0000,0x0C33,0x0000,
	0x0E33,0x0000,0x0833,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short winscreenMap[1024] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0001,0x0002,0x0003,0x0000,0x0004,0x0005,0x0006,
	0x0007,0x0002,0x0003,0x0008,0x0009,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x000A,0x000B,0x000C,0x0000,0x0403,0x0402,0x000D,
	0x000E,0x0002,0x0003,0x0008,0x0009,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x000F,0x0009,0x0000,0x0000,0x0010,0x0805,0x0806,
	0x0807,0x0011,0x0012,0x0013,0x0014,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0015,0x0016,0x0000,0x0000,0x0000,
	0x0000,0x0017,0x0018,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0019,0x001A,0x001B,0x001C,0x001D,0x0000,0x0000,
	0x041D,0x041C,0x001E,0x001A,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x001F,0x0001,0x0020,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0021,0x0001,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x001F,0x0001,0x0001,0x0022,0x0023,0x0001,0x0001,
	0x0024,0x0025,0x0001,0x0001,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0026,0x0027,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0028,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0029,0x002A,0x002B,0x002C,0x002C,0x002C,
	0x002C,0x042B,0x002D,0x002E,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0811,0x002F,0x0030,0x0000,0x0000,0x0000,
	0x0000,0x0031,0x0032,0x082E,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0033,0x0034,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0035,0x0036,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0037,0x0038,0x0039,0x003A,0x0000,0x0037,0x003B,0x003B,
	0x003C,0x0000,0x003D,0x003E,0x003F,0x0040,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x040E,0x040D,0x0002,0x0003,0x0000,0x0837,0x0041,0x0042,
	0x0043,0x0000,0x0044,0x0045,0x0046,0x0047,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x040E,0x0048,0x0049,0x0003,0x0000,0x0000,0x000D,0x004A,
	0x0000,0x0000,0x0403,0x004B,0x0001,0x004C,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x004D,0x004E,0x004F,0x0050,0x0000,0x0051,0x0052,0x0053,
	0x0054,0x0000,0x0055,0x0056,0x0057,0x0058,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short winscreenPal[256] __attribute__((aligned(4)))=
{
	0x0000,0x0220,0x00E0,0x03E0,0x0040,0x0160,0x02A0,0x01C0,
	0x0020,0x00A0,0x0120,0x0300,0x0060,0x0240,0x0180,0x01E0,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(winscreen)