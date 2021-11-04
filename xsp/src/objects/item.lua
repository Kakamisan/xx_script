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
	area = {65,654,139,667},
	feature = {
		{x=0,y=0,color=0x213300}
	},
	degree = 99
}

item[item_mission_over2] = {
	body = {161-160,329-322,188-160,345-322},
	area = {141,314,204,477},
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
	area = {65,654,139,667},
	feature = {
		{x=0,y=0,color=0x426600}
	},
	degree = 95
}

item[item_A_waifu] = {
	body = {130-72,257-323,164-72,316-323},
	area = {48,136,1030,709},
	feature = {
		{x=0,y=0,color=0x12c7ec},
	{x=4,y=-4,color=0x14caee},
	{x=3,y=11,color=0x10c0e8},
	{x=1,y=20,color=0x0cbae6},
	{x=3,y=40,color=0x06b1e3},
	{x=4,y=23,color=0x0bb8e5}
	},
	degree = 95
}

item[item_B_waifu] = {
	body = {788-723,490-484,799-723,502-484},
	area = {48,136,1030,709},
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
	degree = 95
}

item[item_reback_scroll] = {
	area = {1046,165,1053,173},
	feature = {
		{x=0,y=0,color=0x627789}
	},
	degree = 98
}

item[item_reback_scroll_bottom] = {
	area = {1045,696,1053,702},
	feature = {
		{x=0,y=0,color=0x627789}
	},
	degree = 98
}

item[item_move_reset] = {
	body = {411-417,636-612,425-417,652-612},
	area = {15,503,741,684},
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=-22,y=32,color=0xffffff},
	{x=24,y=33,color=0xffffff},
	{x=1,y=55,color=0xffffff},
	{x=1,y=40,color=0x000000},
	{x=0,y=34,color=0x000000},
	{x=7,y=26,color=0x000000},
	{x=1,y=23,color=0x000000},
	{x=1,y=27,color=0xffffff},
	{x=-10,y=42,color=0xffffff},
	{x=10,y=44,color=0xffffff},
	{x=14,y=23,color=0xffffff},
	{x=-8,y=18,color=0xffffff},
	{x=14,y=12,color=0xffffff},
	{x=-15,y=14,color=0xffffff}
	},
	degree = 95
}

item[item_turn_end] = {
	area = {1168,12,1266,449},
	feature = {
	{x=0,y=0,color=0xffe300},
	{x=44,y=0,color=0xffe300},
	{x=53,y=26,color=0xffe300},
	{x=0,y=59,color=0xffe300},
	{x=43,y=59,color=0xffe300},
	{x=47,y=89,color=0xffe300},
	{x=-15,y=389,color=0xfffff1},
	{x=-21,y=383,color=0xffffee},
	{x=-23,y=393,color=0xffffe3},
	{x=-9,y=384,color=0xffffee},
	{x=-23,y=375,color=0xffffe5},
	{x=-21,y=396,color=0xffffe1},
	{x=-2,y=387,color=0xffffda}
	},
	degree = 92
}

item[item_target_self] = {
	body = {350-328,240-262,394-328,280-262},
	area = {3,88,712,571},
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
	area = {627,57,1275,556},
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
	area = {3,88,712,571},
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
	body = {133-74,254-311,155-74,283-311},
	area = {59,158,1015,695},
	feature = {
	{x=0,y=0,color=0x11caed},
	{x=3,y=-2,color=0x14cbef},
	{x=1,y=18,color=0x0cbde7},
	{x=2,y=24,color=0x0abbe7},
	{x=1,y=34,color=0x08b5e3},
	{x=3,y=25,color=0x0bbbe7},
	{x=134,y=-132,color=0x00dfff},
	{x=107,y=-118,color=0x00dfff},
	{x=133,y=-106,color=0x00e0ff}
	},
	degree = 95
}

item[item_B_eqm] = {
	body = {618-558,432-433,630-558,443-433},
	area = {70,80,1079,685},
	feature = {
	{x=0,y=0,color=0x25a813},
	{x=-2,y=3,color=0x24a713},
	{x=0,y=15,color=0x1fa20f},
	{x=-1,y=19,color=0x1ea10e},
	{x=-1,y=24,color=0x1d9f0d},
	{x=-1,y=34,color=0x1a9d09},
	{x=-1,y=41,color=0x189b08}
	},
	degree = 95
}

return item