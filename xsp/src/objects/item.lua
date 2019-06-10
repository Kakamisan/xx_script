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
	body = {788-723,440-483,799-723,452-483},
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

item[item_reback_scroll] = {
	body = {1173-1175,655-82,1178-1175,693-82},
	area = {1174,81,1176,83},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	degree = 98
}

return item