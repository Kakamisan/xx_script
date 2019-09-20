local item = {}

item[item_sample]	= {
	body			= {30,30,70,70},	--有效点击区域（相对feature第一个点的偏移量）
	area			= {0,0,100,100},	--检测区域
--	pivot			= {0,0},
	anchor			= {0,0},			--锚点类型（对area有效）
	feature			= {
		{x=0,y=0,color=0xffffff}	--检测特征
	}
--	degree			= 100
}

item[item_mission_over] = {
	area = {145,654,218,668},
	feature = {
		{x=0,y=0,color=0x213300}
	},
	degree = 99
}

item[item_mission_over2] = {
	body = {161-160,329-322,188-160,345-322},
	area = {146,316,202,475},
	feature = {
		{x=0,y=0,color=0x71e500},
	{x=37,y=0,color=0x71e500},
	{x=36,y=20,color=0x71e500},
	{x=-8,y=17,color=0x71e500},
	{x=-8,y=28,color=0x71e500}
	},
	degree = 99
}

item[item_mission_over3] = {
	area = {147,657,217,666},
	feature = {
		{x=0,y=0,color=0x436600}
	},
	degree = 99
}

item[item_A_waifu] = {
	body = {479-415,248-245,489-415,258-245},
	area = {226,74,1136,709},
	feature = {
		{x=0,y=0,color=0x13cbee},
	{x=-3,y=14,color=0x10c0e9},
	{x=-3,y=45,color=0x06b1e5},
	{x=1,y=47,color=0x05b1e3},
	{x=0,y=24,color=0x0cbae6}
	},
	degree = 98
}

item[item_B_waifu] = {
	body = {788-723,490-484,799-723,502-484},
	area = {226,74,1136,709},
	feature = {
		{x=0,y=0,color=0x25a814},
	{x=-4,y=4,color=0x22a611},
	{x=0,y=12,color=0x1fa20f},
	{x=-5,y=16,color=0x1f9f0f},
	{x=0,y=47,color=0x179a07},
	{x=0,y=16,color=0x20a10f},
	{x=-1,y=38,color=0x199c09},
	{x=-4,y=33,color=0x1b9e0b}
	},
	degree = 98
}

item[item_reback_scroll] = {
	--body = {1173-1175,655-82,1178-1175,693-82},
	body = {1173-1175,368-82,1178-1175,400-82},
	area = {1174,81,1176,83},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	degree = 98
}

item[item_move_reset] = {
	body = {635-646,633-616,658-646,662-616},
	area = {1,472,862,717},
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=-22,y=16,color=0xffffff},
	{x=-23,y=46,color=0xffffff},
	{x=-13,y=41,color=0xffffff},
	{x=-14,y=21,color=0xffffff},
	{x=15,y=21,color=0xffffff},
	{x=13,y=39,color=0xffffff},
	{x=0,y=41,color=0x000000},
	{x=1,y=58,color=0xffffff},
	{x=27,y=31,color=0xfefefe}
	},
	degree = 98
}

item[item_turn_end] = {
	area = {1321,332,1384,392},
	feature = {
	{x=0,y=0,color=0xffffd7},
	{x=4,y=6,color=0xffffe4},
	{x=10,y=9,color=0xffffed},
	{x=20,y=14,color=0xffffef},
	{x=34,y=20,color=0xffffd2},
	{x=3,y=11,color=0xffffe8},
	{x=4,y=25,color=0xffffe5},
	{x=3,y=32,color=0xffffda}
	},
	degree = 98
}

item[item_target_self] = {
	body = {350-328,240-262,394-328,280-262},
	area = {9,5,716,713},
	feature = {
	{x=0,y=0,color=0xffad0c},
	{x=8,y=-13,color=0xffb80e},
	{x=75,y=-35,color=0x878787},
	{x=79,y=-20,color=0x878787},
	{x=87,y=-17,color=0x878787},
	{x=95,y=-24,color=0xffffff},
	{x=95,y=-36,color=0xffffff},
	{x=86,y=-41,color=0xffffff},
	{x=67,y=-9,color=0xffffff},
	{x=50,y=13,color=0xffffff},
	{x=36,y=9,color=0xffffff}
	},
	degree = 99
}

item[item_target_enemy] = {
	body = {777-779,95-102,789-779,106-102},
	area = {699,41,1421,559},
	feature = {
	{x=0,y=0,color=0xff404e},
	{x=1,y=0,color=0xff404e},
	{x=2,y=0,color=0xff404e},
	{x=3,y=0,color=0xff404e},
	{x=1,y=1,color=0xff3b53},
	{x=2,y=1,color=0xff3b53}
	},
	degree = 99
}

item[item_target_friend] = {
	body = {559-559,166-183,570-559,182-183},
	area = {35,8,704,655},
	feature = {
	{x=0,y=0,color=0xe2f508},
	{x=1,y=0,color=0xe3f508},
	{x=2,y=0,color=0xe3f508},
	{x=2,y=1,color=0xe6f908},
	{x=1,y=1,color=0xe5f808},
	{x=0,y=1,color=0xe4f708}
	},
	degree = 99
}

item[item_target_set] = {
	body = {954-963,190-196,974-963,204-196},
	area = {0,0,1,1},
	feature = {
		{x=0,y=0,color=0xff00ff},
		{x=1,y=1,color=0xffff00}
	}
}

item[item_A_eqm] = {
	body = {312-251,220-220,323-251,233-220},
	area = {226,74,1136,709},
	feature = {
	{x=0,y=0,color=0x13caf0},
	{x=-3,y=3,color=0x10c6ef},
	{x=0,y=11,color=0x10c2ea},
	{x=-3,y=16,color=0x10bfe8},
	{x=0,y=34,color=0x08b5e4},
	{x=0,y=47,color=0x05b0e3}
	},
	degree = 98
}

item[item_B_eqm] = {
	body = {618-558,432-433,630-558,443-433},
	area = {226,74,1136,709},
	feature = {
	{x=0,y=0,color=0x26a914},
	{x=-5,y=5,color=0x21a910},
	{x=0,y=10,color=0x22a60f},
	{x=-5,y=16,color=0x20a011},
	{x=0,y=24,color=0x1da00d},
	{x=0,y=49,color=0x189808}
	},
	degree = 98
}

return item