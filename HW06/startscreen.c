
//{{BLOCK(startscreen)

//======================================================================
//
//	startscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 85 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2720 + 2048 = 5280
//
//	Time-stamp: 2018-11-02, 22:45:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short startscreenTiles[1360] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0xCE00,0x0000,0xCE00,0x0000,0xCE00,0x0000,0xCC5E,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xCCCC,0x2CCC,0xCCCC,0x2CCC,0xCCCC,0x2CCC,0xFFFC,0xCCFF,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0xC500,0x0000,0xC500,0x0000,0xC500,0x0055,0xC500,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xBCCC,0xFFFF,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x00CC,0x0000,0x00CC,0x0000,0x00CC,0x0000,0x55CC,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xE000,0xCCCC,0xE000,0xCCCC,0xE000,0xCCCC,0xC550,0xFFFC,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xCCCC,0x0000,0xCCCC,0x0000,0xCCCC,0x0000,0xCCFF,0x0255,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x5520,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xFFCC,0xFFFF,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x000C,0xCC50,0x000C,0xCC50,0x000C,0xCC50,0x0000,0xCC50,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0CCC,0x0000,0x0CCC,0x0000,0x0CCC,0x0000,0x00FF,0x0000,

	0x0000,0xCCC5,0x0000,0xCCC5,0x0000,0xCCC5,0x0000,0xCCC5,
	0x0000,0xC522,0x0000,0xCE00,0x0000,0xCE00,0x0000,0xCE00,
	0x000C,0xCC00,0x0BBC,0x7700,0x0CCC,0x0000,0x0CCC,0x0000,
	0xBCCC,0x3BBB,0xCCCC,0x2CCC,0xCCCC,0x2CCC,0xCCCC,0x2CCC,
	0x00CC,0xC500,0x0077,0xC500,0x0000,0xC500,0x0000,0xC500,
	0x0000,0xC500,0x0000,0xC500,0x0000,0xC500,0x0000,0xC500,
	0xBCCC,0x0000,0xBCCC,0x0000,0xBCCC,0x0000,0xBCCC,0x0000,
	0x7CCC,0xBBBB,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,

	0xCCCC,0x0000,0xCCCC,0x0000,0xCCCC,0x0000,0xCCCC,0x0000,
	0x22CC,0x0000,0x00CC,0x0000,0x00CC,0x0000,0x00CC,0x0000,
	0xCCC0,0x000C,0xCCC0,0x000C,0xCCC0,0x000C,0xCCC0,0x000C,
	0xCCC0,0xBBBC,0xCCC0,0xCCCC,0xCCC0,0xCCCC,0xCCC0,0xCCCC,
	0xCC00,0x0ECC,0xCC00,0x0ECC,0xCC00,0x0ECC,0xCC00,0x0ECC,
	0xCCBB,0x0ECC,0xCCCC,0x0ECC,0xCCCC,0x0ECC,0xCCCC,0x0ECC,
	0x0000,0xCCE0,0xB000,0xCCEB,0xC000,0xCCCC,0xC000,0xCCCC,
	0xC000,0xCCCC,0xC000,0xCCCC,0xC000,0xCCCC,0xC000,0xCCCC,

	0x00CC,0x0000,0x0077,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0xCC50,0x0000,0xCC50,0x0000,0xCC50,0x0000,0xCC50,
	0x0000,0xCC50,0x0000,0xCC50,0x0000,0xCC50,0x0000,0xCC50,
	0x00CC,0x0000,0x00CC,0x0000,0x00CC,0x0000,0x00CC,0x0000,
	0xBBCC,0x03BB,0xCCCC,0x07CC,0xCCCC,0x07CC,0xCCCC,0x07CC,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x33FF,0x0000,0xCCC5,
	0x0000,0xCCC5,0x0000,0xCC5E,0x0000,0xCE00,0x0000,0xCE00,

	0xC000,0xCCCC,0xC000,0xCCCC,0xE00F,0xCCEE,0x000C,0xCC00,
	0x000C,0xCC00,0x000C,0xCC00,0xCCCC,0x2CCC,0xCCCC,0x2CCC,
	0x00CC,0xC500,0x00CC,0xC500,0x00CC,0xC500,0x00CC,0xC500,
	0x00CC,0xC500,0x0055,0xC500,0x0000,0xC500,0x0000,0xC500,
	0xBCCC,0x0000,0xBCCC,0x0000,0xBCCC,0x0000,0xBCCC,0x0000,
	0xBCCC,0x0000,0xBCCC,0x0000,0xBCCC,0x0000,0xBCCC,0x0000,
	0xCCC0,0x000C,0xCCC0,0x000C,0xCCC0,0x000C,0xCCC0,0x000C,
	0xCCC0,0x000C,0xCCC0,0x000C,0xCCC0,0x000C,0xCCC0,0x000C,

	0xCC00,0x0ECC,0xCC00,0x0ECC,0xCC00,0x0ECC,0xCC00,0x0ECC,
	0xCC00,0x0ECC,0xCC00,0x0ECC,0xCC00,0x0ECC,0xCC00,0x0ECC,
	0xC000,0xCCCC,0xC000,0xCCCC,0xE000,0xCCCE,0x0000,0xCCE0,
	0x0000,0xCCE0,0x0000,0x55E0,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0033,0x0000,0x00CC,0x0000,
	0x00CC,0x0000,0x00CC,0x0000,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0x0000,0xCC50,0x0000,0xCC50,0x0000,0xCC50,0x0000,0xCC50,
	0x0000,0xCC50,0x0000,0xCC50,0x000C,0xCC50,0x000C,0xCC50,

	0x00CC,0x0000,0x00CC,0x0000,0x00CC,0x0000,0x00CC,0x0000,
	0x00CC,0x0000,0x00CC,0x0000,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0CCC,0x0000,0x0CCC,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x6000,0x6666,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0006,0x0066,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x6000,0x0066,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x6660,0x6000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0066,0x6000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x6666,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x6660,0x0666,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x6660,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x6666,0x0066,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x6660,0x6666,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0006,0x6000,
	0x8600,0x8888,0x8600,0x8444,0x6000,0x0D4D,0x0000,0x0D4D,
	0x0000,0x0D4D,0x0000,0x0D4D,0x0000,0x0D4D,0x0000,0x0D4D,
	0x6009,0x0688,0x6008,0x0644,0x6000,0x8D44,0x6000,0xD444,
	0x6000,0x4444,0x6000,0xDD44,0x6000,0x0644,0x6000,0x0644,
	0x8000,0x0088,0x8000,0x00D4,0x8000,0x00D4,0xD066,0x00D4,
	0xD08D,0x00D4,0xD084,0x00D4,0x4D48,0x00D4,0x44D8,0x00D4,

	0x8880,0x8006,0x44D0,0xD006,0x44D0,0xD006,0x44D0,0xD006,
	0x44D0,0xD006,0x44D0,0xD006,0x44D0,0xD006,0x4D80,0xD006,
	0x0088,0x8600,0x0044,0x4A00,0x0044,0x4D80,0x0044,0x4440,
	0x0044,0x4440,0x0044,0x4440,0x0044,0x4440,0x0084,0x4440,
	0x8888,0x0006,0xD888,0x0006,0x8006,0x008D,0x8000,0x00D4,
	0x8000,0x00D4,0x8006,0x00D4,0x4DDD,0x00D4,0xDD8D,0x00D4,
	0x8880,0x0888,0x44D0,0x6DD8,0xD4D0,0x8466,0xD4D0,0x4860,
	0x84D0,0x8000,0xD4D0,0xD000,0xD4D0,0xD000,0xD4D0,0xD000,

	0x0000,0x8880,0x0000,0x44D0,0x0009,0x44D0,0x0068,0x44D0,
	0x0684,0x44D0,0x0644,0x44D0,0x0644,0x44D0,0x0644,0x44D0,
	0x8888,0x0088,0xD88D,0x0088,0x0006,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x084D,0x0000,0x088D,0x0000,
	0x8890,0x8888,0x4480,0x4888,0xD480,0xD006,0xD480,0xD000,
	0xD480,0x8000,0xD480,0xD606,0x4480,0x4DDD,0x4480,0x44DD,
	0x0008,0x8600,0x000D,0x4600,0x0084,0x4D80,0x0084,0x4480,
	0x00D4,0x44D0,0x0084,0x4D80,0x0008,0x4600,0x000D,0x8600,

	0x8888,0x0009,0x48DD,0x0008,0xD006,0x0084,0x800A,0x0088,
	0x0064,0x0000,0x0064,0x0000,0x4444,0x0009,0x4448,0x0008,
	0x0000,0x0D4D,0x0000,0x0D4D,0x0000,0x0D4D,0x6000,0x6D4D,
	0x8600,0xDDDD,0x6000,0x6666,0x0000,0x0000,0x0000,0x0000,
	0x6000,0x0644,0x6000,0x0644,0x6000,0x0644,0x6006,0x0644,
	0x6009,0x06D8,0x0006,0x0066,0x0000,0x0000,0x0000,0x0000,
	0x4D60,0x00D4,0xDA00,0x00D4,0xD000,0x00D4,0xD000,0x00D4,
	0x8000,0x008D,0x6000,0x0066,0x0000,0x0000,0x0000,0x0000,

	0x4600,0x4DDD,0x4600,0x4444,0xD600,0x4444,0x8600,0x844D,
	0x0000,0x0888,0x0000,0x0666,0x0000,0x0000,0x0000,0x0000,
	0x0009,0x4440,0x0008,0x4440,0x0008,0x4440,0x0009,0x4440,
	0x0000,0xDDD0,0x0000,0x6660,0x0000,0x0000,0x0000,0x0000,
	0x8000,0x00D4,0x8000,0x00D4,0x8000,0x00D4,0x8000,0x00D4,
	0x8000,0x008D,0x6000,0x0066,0x0000,0x0000,0x0000,0x0000,
	0xD4D0,0xD000,0xD4D0,0x4100,0xD4D0,0x4D60,0x44D0,0x84A6,
	0xDD80,0x0DDD,0x6660,0x0666,0x0000,0x0000,0x0000,0x0000,

	0x0644,0x44D0,0x00A8,0x44D0,0x0008,0x44D0,0x0009,0x44D0,
	0x0000,0xDD80,0x0000,0x6660,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x6666,0x0066,
	0xDDDD,0x0088,0x6666,0x0066,0x0000,0x0000,0x0000,0x0000,
	0xD480,0x4460,0xD480,0x4A00,0xD480,0xD000,0xD480,0xD000,
	0x8D80,0x8000,0x6660,0x6000,0x0000,0x0000,0x0000,0x0000,
	0x000D,0x0000,0x0014,0x1110,0x0084,0x4D80,0x00D4,0x4880,
	0x008D,0xD600,0x0066,0x6000,0x0000,0x0000,0x0000,0x0000,

	0x4480,0x00D4,0xDAA0,0x0044,0xD006,0x0044,0xD66A,0x008D,
	0xDDDD,0x0009,0x6666,0x0006,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0xC300,0xCCCC,0xC300,0xCCCC,
	0x0000,0x0000,0x0000,0x0000,0xC300,0xCCCC,0xC300,0xCCCC,
	0xC300,0xCCCC,0xC300,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0x0000,0x0000,0x0000,0x0000,0xCCCC,0x0007,0xCCCC,0x0007,
	0xCCCC,0x0007,0xCCCC,0x0007,0xCCCC,0xCCCC,0xCCCC,0xCCCC,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0xCCCC,0x0003,0xCCCC,0x0003,
	0xC300,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0xFFFF,0xCCCF,0x0000,0xCCC0,0x0000,0xCCC0,0x0000,0xCCC0,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0xF7CC,0x2FFF,0x0BCC,0x2000,0x0BCC,0x2000,0x0BCC,0x2000,

	0xCCCC,0x0003,0xCCCC,0x0CCC,0xCCCC,0x0CCC,0xCCCC,0x0CCC,
	0xCCCC,0x0CCC,0xCCCC,0x0CCC,0xCCCC,0x0CCC,0xCCCC,0x0CCC,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x5550,0x0000,0xCCC0,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0x000C,
	0xCCCC,0x000C,0xCCCC,0x000C,0xFECC,0x555F,0x0ECC,0xCCC0,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xC700,0xBCCC,
	0xC700,0xBCCC,0xC700,0xBCCC,0xFB55,0x5CC7,0x0BCC,0xCCCB,

	0xCCCC,0x0CCC,0xCCCC,0x0CCC,0xCCCC,0x0CCC,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0055,0x0000,0x00CC,0x0000,
	0x0000,0xCCC0,0xBBBB,0x222B,0xCCCC,0x000C,0xCCCC,0x000C,
	0xEEEE,0x000E,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0ECC,0xCCC0,0x0722,0x2220,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0BCC,0xCCCB,0x0322,0x2273,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x00CC,0x0000,0xBB22,0x0BBB,0xC500,0x0CCC,0xCC00,0x0CCC,
	0xE200,0x02EE,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short startscreenMap[1024] __attribute__((aligned(4)))=
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
	0x0000,0x0001,0x0002,0x0003,0x0004,0x0005,0x0006,0x0007,
	0x0008,0x0009,0x000A,0x0009,0x000B,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x000C,0x000D,0x000E,0x000F,0x0010,0x0011,0x0012,
	0x0013,0x0014,0x0015,0x0016,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0017,0x0018,0x0019,0x001A,0x0000,0x001B,0x001C,
	0x001D,0x001E,0x001F,0x0020,0x0021,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0022,0x0023,0x0024,0x0025,0x0026,0x0027,0x0028,
	0x0029,0x002A,0x002B,0x002C,0x0422,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x002D,0x002E,0x002F,0x0030,0x0031,0x0032,0x0033,
	0x0034,0x0035,0x0036,0x0037,0x0038,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0039,0x003A,0x003B,0x003C,0x003D,0x003E,0x003F,
	0x0040,0x0041,0x0042,0x0043,0x0044,0x0000,0x0000,0x0000,
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
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0045,0x0046,0x0047,
	0x0048,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0049,0x004A,0x004B,
	0x004C,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x004D,0x004E,0x004F,
	0x0050,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0051,0x0052,0x0053,
	0x0054,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
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

const unsigned short startscreenPal[256] __attribute__((aligned(4)))=
{
	0x0000,0x1648,0x5AD6,0x18C6,0x03E8,0x739C,0x00A0,0x4631,
	0x1B8B,0x2F4E,0x0161,0x2D6B,0x7FFF,0x0FC9,0x6739,0x0C63,
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

//}}BLOCK(startscreen)