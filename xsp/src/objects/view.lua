local view = {}

view[view_sample]	= {
	feature			= {
		{x=100,y=100,color=0xffffff,anchor={0,0}}	--使用绝对坐标
	},
	items			= {
		{area={0,0,100,100},anchor={0,0},feature={x=0,y=0,color=0xffffff}}	--判断view时允许二次检测是否存在若干个item
	},
	disable			= {
		{x=100,y=100,color=0xffffff,anchor={0,0}}	--使用绝对坐标
	}
}

--1--主页
view[view_home] = {
	feature = {
		{x=0+48,y=0+251,color=0x2fa2e0,anchor={-1,0}},
		{x=-13+48,y=153+251,color=0x20d7f7,anchor={-1,0}},
		{x=22+48,y=217+251,color=0xffffff,anchor={-1,0}},
		{x=1212+48+160,y=-207+251,color=0xf1f9fc,anchor={1,0}},
		{x=1004+48+160,y=260+251,color=0x45413a,anchor={1,0}},
		{x=1019+48+160,y=260+251,color=0x45413a,anchor={1,0}}
	},
	degree = 98
}

--2--选择副本类型：每日，主线，活动等
view[view_slc_dg_type] = {
	feature = {
		{x=0+1,y=0+20,color=0xffcb00,anchor={-1,0}},
		{x=34+1,y=21+20,color=0x000000,anchor={-1,0}},
		{x=1025+1+80,y=515+20,color=0x45b2ea,anchor={0,0}},
		{x=950+1+80,y=558+20,color=0x47b2ef,anchor={0,0}},
		{x=1210+1+80,y=216+20,color=0xffffff,anchor={0,0}},
		{x=1108,y=502,color=0xffffff},
		{x=972,y=499,color=0xffffff}
	},
	degree = 98
}

--3--选择主线副本，6-8，5-8e等
view[view_slc_dg_main] = {
	feature = {
--	{x=0+19,y=0+29,color=0x242222},
--	{x=12+19,y=0+29,color=0x242222},
--	{x=79+19,y=-15+29,color=0xffcc00},
--	{x=79+19,y=31+29,color=0xffcc00},
	{x=119+19,y=218+29,color=0xffffff},
	{x=157+19,y=543+29,color=0x53524a},
	{x=278+19,y=539+29,color=0xffc608},
	{x=594+19,y=511+29,color=0xfdc705},
	{x=623+19,y=543+29,color=0xfdc705},
	{x=1176+19,y=525+29,color=0xffffff},
	{x=1332+19,y=562+29,color=0xfdc705},
	{x=1218+19,y=664+29,color=0xffc705}
	},
	degree = 97
}

--4--选择队伍，队伍1，队伍5等
view[view_slc_team] = {
	feature = {
	{x=0,y=0,color=0x242323},
	{x=83,y=-13,color=0xf3c100},
	{x=71,y=17,color=0xf3c100},
	{x=205,y=-21,color=0xb6b6c7},
	{x=219,y=8,color=0x8e8e9d},
	{x=271,y=-15,color=0xffffff},
	{x=1232,y=0,color=0x828290},
	{x=765,y=-13,color=0x61616e},
	{x=962,y=521,color=0xffcc00},
	{x=1214,y=518,color=0xffcc00},
	{x=1067,y=552,color=0x85f119}
	},
	degree = 98
}

--5--战斗中-选择行动
view[view_bt_slc_acn] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=-6,y=8,color=0xffffff},
	{x=2,y=17,color=0xffffff},
	{x=1131,y=16,color=0xffffff},
	{x=1136,y=27,color=0xffffff},
	{x=1205,y=15,color=0xffffff},
	{x=1217,y=15,color=0xffffff},
	{x=1278,y=16,color=0xffffff},
	{x=1289,y=15,color=0xffffff},
	{x=1338,y=1,color=0xffe300},
	{x=1417,y=40,color=0xffe300},
	{x=1398,y=17,color=0xffe300},
	{x=1361,y=564,color=0xfff145},
	{x=1362,y=560,color=0xfff145},
	{x=1358,y=567,color=0xfff145},
	{x=1357,y=567,color=0xfff145},
	{x=1308,y=601,color=0xf7de39},
	{x=1337,y=601,color=0xf7de39}
	},
	degree = 98
}

--6--战斗中-播报中
view[view_bt_playing] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=10,y=0,color=0xffffff},
	{x=4,y=11,color=0xffffff},
	{x=71,y=-2,color=0xffffff},
	{x=76,y=-1,color=0xffffff},
	{x=87,y=0,color=0xffffff},
	{x=144,y=6,color=0xffffff},
	{x=148,y=-1,color=0xffffff},
	{x=159,y=2,color=0xffffff},
	{x=208,y=-13,color=0xffe300},
	{x=225,y=1,color=0xffe300},
	{x=262,y=-2,color=0xffe300},
	{x=285,y=22,color=0xffe300},
	{x=-9,y=612,color=0x3d3b3b},
	{x=3,y=614,color=0x3c3939},
	{x=-4,y=617,color=0xb5bcab}
	},
	degree = 98
}

--7--战斗中-播报中-下面是蓝色点
view[view_bt_playing2] = {
	feature = {
	{x=0+1264,y=0+28,color=0xffcb00},
	{x=139+1264,y=0+28,color=0xffcb00},
	{x=111+1264,y=86+28,color=0x93f212},
	{x=-191+1264,y=589+28,color=0x21f7ff},
	{x=-297+1264,y=657+28,color=0xffcc00}
	},
	degree = 98
}

--8--战斗中-战斗经验结算
view[view_bt_report] = {
	feature = {	
	{x=0,y=0,color=0xffffff},
	{x=-7,y=8,color=0xffffff},
	{x=0,y=16,color=0xffffff},
	{x=1140,y=16,color=0x888888},
	{x=1135,y=28,color=0x7f7f7f},
	{x=1202,y=15,color=0x898989},
	{x=1214,y=14,color=0x898989},
	{x=1277,y=17,color=0x858585},
	{x=1286,y=15,color=0x898989},
	{x=1149,y=54,color=0x969696},
	{x=1152,y=58,color=0x969696},
	{x=1156,y=52,color=0x969696}
	},
	degree = 98
}

--34--战斗中-战斗经验结算
view[view_bt_report2] = {
	feature = {	
	{x=0,y=0,color=0xffffff},
	{x=8,y=10,color=0xffffff},
	{x=1131,y=9,color=0x838383},
	{x=1143,y=14,color=0x7f7f7f},
	{x=1204,y=7,color=0x858585},
	{x=1219,y=9,color=0x838383},
	{x=1156,y=34,color=0x969696},
	{x=1157,y=39,color=0x969696},
	{x=1159,y=44,color=0x969696},
	{x=1165,y=46,color=0x969696},
	{x=1187,y=39,color=0x969696},
	{x=1254,y=42,color=0x969696},
	{x=1269,y=31,color=0x969696},
	{x=1279,y=14,color=0x7f7f7f},
	{x=1290,y=7,color=0x858585}
	},
	degree = 98
}

--9--战斗中-打捞老婆
view[view_bt_waiting] = {
	feature = {
	{x=0+19,y=0+18,color=0xfdfdfd},
	{x=1247+19,y=7+18,color=0xffce00},
	{x=1384+19,y=9+18,color=0xffcb00},
	{x=1322+19,y=6+18,color=0xffcc00},
	{x=1244,y=47,color=0xfbc300}
	},
	degree = 98,
	disable = {
	{x=1022+19,y=522+18,color=0xa4fd23},
	{x=1041,y=538,color=0x21f7ff}
	}
}

--10--战斗中-捞到老婆
view[view_bt_get_waifu] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=-7,y=8,color=0xffffff},
	{x=0,y=16,color=0xffffff},
	{x=1220,y=471,color=0xffb900},
	{x=1215,y=472,color=0xffb900},
	{x=1200,y=477,color=0xffbc00},
	{x=1196,y=481,color=0xfeb800},
	{x=1188,y=487,color=0xffb900},
	{x=948,y=489,color=0xfeb900},
	{x=946,y=487,color=0xfeb800},
	{x=937,y=488,color=0xffb900},
	{x=1279,y=598,color=0xfecb00},
	{x=1279,y=605,color=0xfecb00}
	},
	degree = 98
}

--11--战斗中-下一波
view[view_bt_next] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=-7,y=7,color=0xffffff},
	{x=1,y=15,color=0xffffff},
	{x=1277,y=19,color=0xffffff},
	{x=1286,y=15,color=0xffffff},
	{x=1287,y=13,color=0xffffff},
	{x=1288,y=15,color=0xffffff},
	{x=1312,y=590,color=0xffffff},
	{x=1316,y=597,color=0xffffff},
	{x=1315,y=608,color=0xffffff},
	{x=1313,y=621,color=0xffffff},
	{x=1335,y=606,color=0xffffff},
	{x=1327,y=600,color=0xffffff},
	{x=1324,y=610,color=0xffffff},
	{x=1322,y=604,color=0xffffff},
	{x=1371,y=650,color=0xfff600}
	},
	degree = 98
}

--12--战斗中-赶路到下一波
view[view_bt_moving] = {
	feature = {
	{x=0+19,y=0+18,color=0xfdfdfd},
	{x=-7+19,y=6+18,color=0xffffff},
	{x=1+19,y=14+18,color=0xffffff},
	{x=1388+19,y=13+18,color=0xffcb00},
	{x=1371+19,y=18+18,color=0xfec900}
	},
	degree = 98,
--	disable = {
--	{x=1320+20,y=7+17,color=0xffcc00},
--	{x=1379+20,y=647+17,color=0xe7b540}
--	}
}

--13--战斗中-总结算界面
view[view_bt_over] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=-6,y=7,color=0xffffff},
	{x=2,y=14,color=0xffffff},
	{x=1142,y=-13,color=0xffc000},
	{x=1128,y=32,color=0xf7ba03},
	{x=1368,y=-14,color=0xffc000},
	{x=1351,y=23,color=0xfabd01},
	{x=849,y=193,color=0xf1b002},
	{x=956,y=206,color=0xf1b002},
	{x=1240,y=207,color=0xf1b002},
	{x=1306,y=197,color=0xf1b002},
	{x=1233,y=40,color=0x1979a3},
	{x=1178,y=-14,color=0x0699de},
	{x=1166,y=15,color=0x0990d0},
	{x=1330,y=-12,color=0x089add},
	{x=1291,y=10,color=0x0a93d3}
	},
	degree = 98
}

--14--选择是否停止反复战斗
view[view_stop_repeat] = {
	feature = {
	{x=0,y=0,color=0x161211},
	{x=167,y=92,color=0xb6b6c7},
	{x=168,y=108,color=0xb6b6c7},
	{x=179,y=118,color=0x8e8e9d},
	{x=239,y=118,color=0x6c6c7b},
	{x=255,y=93,color=0x6c6c7b},
	{x=1110,y=117,color=0x5d5d6b},
	{x=1127,y=99,color=0x61616e},
	{x=618,y=534,color=0xffcc00},
	{x=742,y=532,color=0xffcc00},
	{x=646,y=492,color=0xffcc00},
	{x=741,y=491,color=0xffcc00},
	{x=1067,y=553,color=0x43780d}
	},
	degree = 98
}

--15--主页-继续远征
view[view_ctn_mission] = {
	feature = {
	{x=0+269,y=0+172,color=0xb6b6c7},
	{x=114+269,y=25+172,color=0x6c6c7b},
	{x=560+269,y=17+172,color=0x828290},
	{x=567+269,y=12+172,color=0x828290},
	{x=228+269,y=93+172,color=0xfdc705},
	{x=227+269,y=195+172,color=0xfdc705},
	{x=284+269,y=130+172,color=0x6ec21a},
	{x=397+269,y=126+172,color=0x1aacc6}
	},
	degree = 98
}

--16--主页-玩家信息
view[view_player_info] = {
	feature = {
	{x=0+1223,y=0+12,color=0xffcc00},
	{x=214+1223,y=42+12,color=0xffcc00},
	{x=94+1223,y=77+12,color=0xffcc00},
	{x=-179+1223,y=317+12,color=0xffcc00},
	{x=-121+1223,y=604+12,color=0xfeca00}
	},
	degree = 98
}

--17--载入
view[view_sys_online] = {
	feature = {
--	{x=0,y=0,color=0xf8c714},
--	{x=4,y=4,color=0xefb500},
--	{x=4,y=13,color=0xe3a500},
--	{x=20,y=15,color=0xe2a200},
--	{x=3,y=22,color=0xefb811},
--	{x=13,y=22,color=0xefb70f},
--	{x=29,y=22,color=0xefb70f},
--	{x=50,y=22,color=0xefb710},
--	{x=71,y=22,color=0xefb710},
--	{x=64,y=6,color=0xeeb400},
--	{x=29,y=6,color=0xeeb400},
--	{x=34,y=4,color=0xefb501}
	{x=0,y=0,color=0xb2c7d3},
	{x=-8,y=44,color=0xb3c9d5},
	{x=114,y=45,color=0xb3c8d4},
	{x=153,y=45,color=0xb2c7d3},
	{x=205,y=2,color=0xb1c6d3},
	{x=249,y=1,color=0xb0c5d1},
	{x=274,y=45,color=0xb2c8d4},
	{x=166,y=84,color=0xffa351},
	{x=203,y=83,color=0xffa857},
	{x=244,y=89,color=0xffbb67},
	{x=423,y=43,color=0xb1c7d3},
	{x=350,y=44,color=0xb2c8d4}
	},
	degree = 98
}

--18--战斗中-敌方行动
view[view_bt_enemy_acn] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=-5,y=6,color=0xffffff},
	{x=2,y=14,color=0xffffff},
	{x=1136,y=13,color=0xffffff},
	{x=1137,y=25,color=0xffffff},
	{x=1203,y=13,color=0xffffff},
	{x=1219,y=14,color=0xffffff},
	{x=1277,y=17,color=0xffffff},
	{x=1290,y=15,color=0xffffff},
	{x=1284,y=20,color=0xffffff},
	{x=1346,y=2,color=0xffe300},
	{x=1391,y=10,color=0xffe300},
	{x=1411,y=26,color=0xffe300},
	{x=1412,y=5,color=0xffe300},
	{x=1324,y=337,color=0xffffe7},
	{x=1335,y=352,color=0xfffff1},
	{x=1325,y=357,color=0xffffe2},
	{x=1362,y=563,color=0x8f9294},
	{x=1361,y=560,color=0x8f9294},
	{x=1324,y=613,color=0xcecece}
	},
	degree = 98
}

--19--建造中心
view[view_creator] = {
	feature = {
	{x=0+30,y=0+47,color=0x232323},
	{x=90+30,y=-25+47,color=0xffcc00},
	{x=1402+30,y=59+47,color=0xffcc00},
	{x=887+30,y=4+47,color=0x5aeffc},
	{x=793+30,y=-25+47,color=0x9ed24b},
	{x=891+30,y=-16+47,color=0x15eaff}
	},
	degree = 98
}

--20--分解中心
view[view_reback] = {
	feature = {
	{x=0,y=0,color=0x232323},
	{x=268,y=287,color=0x85f119},
	{x=274,y=428,color=0x3f392e},
	{x=261,y=427,color=0x3f392e},
	{x=251,y=352,color=0x1ec6f1},
	{x=1294,y=486,color=0xffcc00},
	{x=1403,y=454,color=0xffcc00},
	{x=1399,y=482,color=0xffcc00}
	},
	degree = 98
}

--21--老婆分解
view[view_reback_waifu] = {
	feature = {
	{x=0,y=0,color=0x232323},
	{x=203,y=-17,color=0xaeadb0},
	{x=213,y=10,color=0x807f83},
	{x=371,y=-16,color=0x5c5b61},
	{x=408,y=-12,color=0x9d9da0},
	{x=427,y=14,color=0x9d9da0},
	{x=1266,y=35,color=0xffcc00},
	{x=1356,y=83,color=0xffcc00},
	{x=7,y=315,color=0x88f21d},
	{x=-5,y=371,color=0x1ec6f1},
	{x=1396,y=113,color=0xffffff},
	{x=1399,y=64,color=0xffffff},
	{x=1372,y=55,color=0x000000}
	},
	degree = 98
}

--22--老婆分解-分A级以上弹窗警告
view[view_reback_waifu_al] = {
	feature = {
	{x=0+28,y=0+45,color=0x000000},
	{x=510+28,y=511+45,color=0xff6700},
	{x=711+28,y=534+45,color=0xfec700},
	{x=872+28,y=486+45,color=0xfecd00},
	{x=7+28,y=358+45,color=0x106b7b}
	},
	degree = 98
}

--23--老婆分解-确定分解
view[view_reback_waifu_ac] = {
	feature = {
	{x=0+29,y=0+46,color=0x111111},
	{x=161+29,y=81+46,color=0xb6b6c7},
	{x=540+29,y=496+46,color=0xff6200},
	{x=739+29,y=494+46,color=0xffcc00},
	{x=1398+29,y=450+46,color=0x7f6600},
	{x=273+29,y=565+46,color=0x2c707c}
	},
	degree = 98
}

--24--老婆分解-获得物品
view[view_reback_get] = {
	feature = {
	{x=0+401,y=0+81,color=0xb6b6c7},
	{x=14+401,y=31+81,color=0x8e8e9d},
	{x=103+401,y=26+81,color=0x6c6c7b},
	{x=629+401,y=26+81,color=0x292834},
	{x=629+401,y=-1+81,color=0x636370},
	{x=315+401,y=149+81,color=0xfdfdfd},
	{x=328+401,y=143+81,color=0x87ed17},
	{x=209+401,y=167+81,color=0x8e919c},
	{x=438+401,y=150+81,color=0xfefefe},
	{x=442+401,y=166+81,color=0x0ac3f7}
	},
	degree = 98
}

--25--战斗中-撤退
view[view_bt_quit] = {
	feature = {
	{x=0,y=0,color=0x7d7d7d},
	{x=-8,y=8,color=0x7d7d7d},
	{x=-1,y=18,color=0x7d7d7d},
	{x=1195,y=16,color=0x7d7d7d},
	{x=1209,y=16,color=0x7d7d7d},
	{x=1282,y=16,color=0x7d7d7d},
	{x=1391,y=3,color=0x7d6f00},
	{x=1411,y=41,color=0x7d6f00},
	{x=476,y=397,color=0xff6200},
	{x=672,y=350,color=0xff6200},
	{x=646,y=396,color=0xff6200},
	{x=504,y=353,color=0xff6200},
	{x=724,y=394,color=0xffcc00},
	{x=752,y=351,color=0xffcc00},
	{x=888,y=398,color=0xffcc00},
	{x=909,y=355,color=0xffcc00}
	},
	degree = 98
}

--26--仓库满了
view[view_full_bag] = {
	feature = {
	{x=0+193,y=0+134,color=0xb6b6c7},
	{x=125+193,y=32+134,color=0x6c6c7a},
	{x=255+193,y=439+134,color=0xff6200},
	{x=451+193,y=441+134,color=0xffcc00},
	{x=653+193,y=440+134,color=0xffcc00},
	{x=803+193,y=400+134,color=0xffcc00}
	},
	degree = 98
}

--27--升级
view[view_level_up] = {
	feature = {
	{x=0,y=0,color=0xb6b6c7},
	{x=6,y=2,color=0xb6b6c7},
	{x=1081,y=39,color=0x5d5d6a},
	{x=1110,y=11,color=0x62626e},
	{x=11,y=28,color=0xb6b6c7},
	{x=1,y=33,color=0xb6b6c7},
	{x=16,y=37,color=0x8e8e9d},
	{x=26,y=39,color=0x8e8e9d},
	{x=45,y=5,color=0x6c6c7b},
	{x=120,y=3,color=0x6c6c7b},
	{x=139,y=34,color=0x6c6c7b},
	{x=165,y=35,color=0x5d5d6b},
	{x=144,y=2,color=0x646470},
	{x=519,y=510,color=0xffcc00},
	{x=518,y=490,color=0xffcc00},
	{x=544,y=467,color=0xffcc00},
	{x=691,y=467,color=0xffcc00},
	{x=685,y=486,color=0xffcc00},
	{x=656,y=512,color=0xffcc00},
	{x=1062,y=31,color=0x5e5e6c}
	},
	degree = 98
}

--28--修复
view[view_need_repair] = {
	feature = {
	{x=0+272,y=0+24,color=0x5b5b63},
	{x=7+272,y=12+24,color=0x5b5b63},
	{x=62+272,y=5+24,color=0x7f7f7f},
	{x=68+272,y=5+24,color=0x7f7f7f},
	{x=65+272,y=13+24,color=0x7f7f7f},
	{x=-76+272,y=112+24,color=0xb6b6c7},
	{x=-75+272,y=129+24,color=0xb6b6c7},
	{x=15+272,y=129+24,color=0x6c6c7b},
	{x=277+272,y=552+24,color=0xff6200},
	{x=296+272,y=515+24,color=0xff6200},
	{x=327+272,y=510+24,color=0xff6200},
	{x=350+272,y=512+24,color=0xff6200},
	{x=371+272,y=512+24,color=0xff6200},
	{x=406+272,y=514+24,color=0xff6200},
	{x=421+272,y=522+24,color=0xff6200},
	{x=409+272,y=538+24,color=0xff6200},
	{x=397+272,y=551+24,color=0xff6200},
	{x=474+272,y=552+24,color=0xffcc00},
	{x=496+272,y=552+24,color=0xffcc00},
	{x=539+272,y=552+24,color=0xffcc00}
	},
	degree = 98
}

--29--重连
view[view_re_connect] = {
	feature = {
	{x=0+193,y=0+131,color=0xb6b6c7},
	{x=2+193,y=21+131,color=0xb6b6c7},
	{x=14+193,y=30+131,color=0x8e8e9d},
	{x=27+193,y=34+131,color=0x8d8d9d},
	{x=16+193,y=-6+131,color=0x9999a6},
	{x=19+193,y=4+131,color=0x6c6c7b},
	{x=123+193,y=33+131,color=0x6c6c7b},
	{x=1052+193,y=0+131,color=0x646470},
	{x=949+193,y=26+131,color=0x5e5e6c},
	{x=448+193,y=446+131,color=0xffcc00},
	{x=472+193,y=446+131,color=0xffcc00},
	{x=516+193,y=445+131,color=0xffcc00},
	{x=552+193,y=445+131,color=0xffcc00},
	{x=583+193,y=445+131,color=0xffcc00},
	{x=603+193,y=419+131,color=0xffcc00},
	{x=603+193,y=402+131,color=0xffcc00},
	{x=471+193,y=404+131,color=0xffcc00},
	{x=510+193,y=404+131,color=0xffcc00},
	{x=536+193,y=404+131,color=0xffcc00},
	{x=559+193,y=404+131,color=0xffcc00}
	},
	degree = 98
}

--30--装备分解-获得物品
view[view_reback_get2] = {
	feature = {
	{x=0+396,y=0+77,color=0xb6b6c7},
	{x=18+396,y=-2+77,color=0x9999a6},
	{x=1+396,y=31+77,color=0xb6b6c7},
	{x=13+396,y=34+77,color=0x8e8e9d},
	{x=106+396,y=-1+77,color=0x6c6c7b},
	{x=124+396,y=35+77,color=0x6c6c7b},
	{x=645+396,y=-2+77,color=0x64646f},
	{x=540+396,y=30+77,color=0x5d5d6b},
	{x=252+396,y=144+77,color=0x848691},
	{x=385+396,y=156+77,color=0xfcffff},
	{x=387+396,y=153+77,color=0xfffeff},
--	{x=410+396,y=498+77,color=0xfeca01},
--	{x=239+396,y=548+77,color=0xfdc804},
--	{x=265+396,y=497+77,color=0xfeca01},
--	{x=384+396,y=552+77,color=0xfdc803}
	{x=1044,y=124,color=0x434350},
	{x=-646+1044,y=432+124,color=0x4d4d5b}
	},
	degree = 98
}

--31--掉线重连2
view[view_re_connect2] = {
	feature = {
	{x=0+191,y=0+129,color=0xb6b6c7},
	{x=16+191,y=-2+129,color=0x9999a6},
	{x=24+191,y=-4+129,color=0x9898a6},
	{x=-1+191,y=30+129,color=0xb6b6c7},
	{x=4+191,y=35+129,color=0x8e8e9d},
	{x=28+191,y=37+129,color=0x8e8e9d},
	{x=1055+191,y=-2+129,color=0x64646f},
	{x=1053+191,y=4+129,color=0x63636f},
	{x=966+191,y=13+129,color=0x61616e},
	{x=950+191,y=30+129,color=0x5d5d6b},
	{x=455+191,y=447+129,color=0xe1a000},
	{x=479+191,y=448+129,color=0xe1a000},
	{x=524+191,y=449+129,color=0xe1a000},
	{x=579+191,y=447+129,color=0xe1a000},
	{x=603+191,y=421+129,color=0xe1a000},
	{x=601+191,y=408+129,color=0xe1a000},
	{x=477+191,y=405+129,color=0xe1a000},
	{x=532+191,y=405+129,color=0xe1a000},
	{x=558+191,y=404+129,color=0xe1a000}
	},
	degree = 98
}

--32--标题界面
view[view_title] = {
	feature = {
	{x=0+540,y=0+344,color=0xffffff},
	{x=5+540,y=3+344,color=0xffffff},
	{x=15+540,y=7+344,color=0xffffff},
	{x=36+540,y=-6+344,color=0xffffff},
	{x=39+540,y=-21+344,color=0xffffff},
	{x=4+540,y=-25+344,color=0xffffff},
	{x=-7+540,y=-34+344,color=0xffffff},
	{x=7+540,y=-55+344,color=0xffffff},
	{x=30+540,y=-52+344,color=0xffffff},
	{x=40+540,y=-46+344,color=0xffffff},
	{x=30+540,y=-43+344,color=0xffffff},
	{x=60+540,y=-49+344,color=0xffffff},
	{x=-538+540,y=370+344,color=0x010101},
	{x=80+540,y=-23+344,color=0xffffff},
	{x=87+540,y=11+344,color=0xffffff},
	{x=170+540,y=-65+344,color=0xffffff},
	{x=191+540,y=-70+344,color=0xffffff},
	{x=223+540,y=-72+344,color=0xffffff},
	{x=247+540,y=-52+344,color=0xffffff},
	{x=-537+540,y=-339+344,color=0x020202}
	},
	degree = 98
}

--33--EVENT活动信息页
view[view_event] = {
	feature = {
	{x=0,y=0,color=0x232323},
	{x=87,y=-13,color=0xffcc00},
	{x=75,y=19,color=0xffcc00},
	{x=1052,y=106,color=0xfed850},
	{x=1063,y=85,color=0xfdc705},
	{x=1192,y=84,color=0xfdc705},
	{x=1134,y=161,color=0xfed850},
	{x=1277,y=91,color=0x90f927},
	{x=1301,y=91,color=0x90f927},
	{x=1245,y=149,color=0x90f927},
	{x=1269,y=149,color=0x90f927},
	{x=1281,y=149,color=0x90f927},
	{x=1302,y=149,color=0x90f927},
	{x=1072,y=167,color=0xfed850},
	{x=1062,y=156,color=0xfed850},
	{x=1051,y=145,color=0xfcc606}
	},
	degree = 98
}

return view