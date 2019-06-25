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
	body = {479-415,198-245,489-415,208-245},
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
	body = {788-723,440-484,799-723,452-484},
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
	body = {1173-1175,655-82,1178-1175,693-82},
	area = {1174,81,1176,83},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	degree = 98
}

item[item_move_reset] = {
	body = {809-821,641-618,836-821,668-618},
	area = {1,615,970,691},
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=1,y=27,color=0x000000},
	{x=6,y=30,color=0x000000},
	{x=0,y=38,color=0x000000},
	{x=0,y=44,color=0x000000},
	{x=-23,y=32,color=0xffffff},
	{x=5,y=60,color=0xffffff},
	{x=21,y=23,color=0xffffff}
	},
	degree = 98
}

item[item_turn_end] = {
	area = {991,334,1404,502},
	feature = {
	{x=0,y=0,color=0xffc300},
	{x=11,y=0,color=0xfdc100},
	{x=-5,y=15,color=0xffc300},
	{x=6,y=15,color=0xffc300},
	{x=33,y=1,color=0xffc300},
	{x=43,y=1,color=0xffc300},
	{x=33,y=15,color=0xffc300},
	{x=71,y=0,color=0xffc300},
	{x=60,y=16,color=0xffc300},
	{x=71,y=16,color=0xffc300},
	{x=97,y=4,color=0xffc300},
	{x=109,y=1,color=0xffc300},
	{x=97,y=16,color=0xffc300},
	{x=127,y=16,color=0xffc300},
	{x=141,y=0,color=0xffc300},
	{x=138,y=13,color=0xffc300}
	},
	degree = 99
}

item[item_target_self] = {
	body = {531-483,254-225,554-483,281-225},
	area = {9,5,716,713},
	feature = {
	{x=0,y=0,color=0xffa72b},
	{x=131,y=75,color=0xffa72b},
	{x=95,y=104,color=0xff9c29},
	{x=22,y=101,color=0xffac2a},
	{x=-12,y=41,color=0xffa826},
	{x=108,y=-26,color=0xffac2a},
	{x=41,y=104,color=0xffa529}
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

return item