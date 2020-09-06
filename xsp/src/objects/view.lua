local view = {}

--view[view_sample]	= {
--	feature			= {
--		{x=100,y=100,color=0xffffff,anchor={0,0}}	--使用绝对坐标
--	},
--	items			= {
--		{area={0,0,100,100},anchor={0,0},feature={x=0,y=0,color=0xffffff}}	--判断view时允许二次检测是否存在若干个item
--	},
--	disable			= {
--		{x=100,y=100,color=0xffffff,anchor={0,0}}	--使用绝对坐标
--	}
--}

view[view_pjjc]	= {
	feature			= {
		{x=0,y=0,color=0x6ba2ff},
	{x=1248,y=-5,color=0x4ac3ff},
	{x=1344,y=20,color=0xd99460},
	{x=1093,y=705,color=0xc6495a},
	{x=461,y=722,color=0xffe7ad},
	{x=100,y=687,color=0x84b2ff},
	{x=31,y=450,color=0x5a96f7},
	{x=181,y=452,color=0x5a96f7},
	{x=30,y=495,color=0x5a96f7},
	{x=183,y=490,color=0x5a96f7},
	{x=158,y=540,color=0x5a96f7},
	{x=370,y=538,color=0x5a96f7}
	}
}

view[view_pjjc_team]	= {
	feature			= {
		{x=0,y=0,color=0x4f8cde},
	{x=253,y=5,color=0x4a86de},
	{x=530,y=5,color=0x4a86de},
	{x=894,y=4,color=0x4a86de},
	{x=1254,y=0,color=0x4f8cde},
	{x=952,y=170,color=0x6ba0ff},
	{x=960,y=175,color=0x6ba2ff},
	{x=1274,y=621,color=0x4a8eff},
	{x=1092,y=622,color=0x4a8dff},
	{x=841,y=609,color=0xf7f7f7},
	{x=844,y=634,color=0xf7f7f7},
	{x=1026,y=603,color=0xffffff},
	{x=1026,y=634,color=0xf7f7f7},
	{x=1270,y=599,color=0x85d7ff}
	}
}

view[view_slc_team]	= {
	feature			= {
		{x=0,y=0,color=0x4a86de},
	{x=36,y=-3,color=0x4a89de},
	{x=299,y=1,color=0x4a83de},
	{x=431,y=2,color=0x4a82de},
	{x=870,y=-4,color=0x4a8ade},
	{x=1121,y=0,color=0x4a86de},
	{x=1298,y=0,color=0x4a86de},
	{x=3,y=628,color=0xfff7f7},
	{x=1,y=664,color=0xfff7f7},
	{x=130,y=622,color=0xfff7f7},
	{x=127,y=670,color=0xfff7f7},
	{x=1279,y=627,color=0xfff7f7},
	{x=1277,y=669,color=0xfff7f7},
	{x=1120,y=635,color=0xfff7f7},
	{x=1122,y=671,color=0xfff7f7},
	{x=1206,y=198,color=0x4a8fff},
	{x=1205,y=369,color=0x529bff},
	{x=1206,y=551,color=0x4d94ff},
	{x=1025,y=555,color=0x4a8eff},
	{x=1026,y=377,color=0x4a8eff}
	}
}

return view