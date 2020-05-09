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
	{x=0,y=0,color=0x30b8df},
	{x=52,y=19,color=0x309fdf},
	{x=126,y=27,color=0xffffff},
	{x=137,y=-1,color=0xffffff},
	{x=20,y=116,color=0x85f11b},
	{x=30,y=114,color=0x8bf421},
	{x=36,y=117,color=0x86f019},
	{x=33,y=158,color=0x20d8f7},
	{x=17,y=172,color=0x1fc4ed},
	{x=33,y=166,color=0x21cbef},
	{x=989,y=229,color=0x665850},
	{x=1031,y=270,color=0x248ca2},
	{x=1048,y=258,color=0x44423b},
	{x=1065,y=254,color=0x44423b}
	},
	degree = 95
}

--2--选择副本类型：每日，主线，活动等
view[view_slc_dg_type] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=6,y=-8,color=0xffffff},
	{x=7,y=9,color=0xffffff},
	{x=128,y=-4,color=0xffffff},
	{x=577,y=576,color=0x3eb3f7},
	{x=615,y=554,color=0x39aeea},
	{x=625,y=548,color=0x3aadef},
	{x=899,y=553,color=0x4abaf5},
	{x=924,y=538,color=0x46b5ec},
	{x=977,y=508,color=0x48b0ec},
	{x=1105,y=289,color=0x40c0f6},
	{x=1135,y=271,color=0x3cbbef},
	{x=1165,y=253,color=0x3dbaee}
	},
	degree = 95
}

--3--选择主线副本，6-8，5-8e等
view[view_slc_dg_main] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=-62,y=21,color=0xffffff},
	{x=-94,y=113,color=0x8bf421},
	{x=-106,y=171,color=0x1fc4ed},
	{x=-41,y=321,color=0x55544d},
	{x=61,y=321,color=0xffc704},
	{x=409,y=299,color=0xffc704},
	{x=967,y=300,color=0xffc704},
	{x=986,y=308,color=0xffffff}
	},
	degree = 97
}

--4--选择队伍，队伍1，队伍5等
view[view_slc_team] = {
	feature = {
	{x=0,y=0,color=0x111111},
	{x=-4,y=-5,color=0x111111},
	{x=82,y=-21,color=0x7d6400},
	{x=73,y=19,color=0x7d6400},
	{x=128,y=-20,color=0xb6b7c7},
	{x=750,y=-16,color=0x61616d},
	{x=1152,y=-4,color=0x828290},
	{x=831,y=512,color=0xffcc00},
	{x=831,y=524,color=0xffcc00},
	{x=1171,y=527,color=0xffcc00},
	{x=1173,y=518,color=0xffcc00},
	{x=983,y=548,color=0x8cf522},
	{x=987,y=547,color=0x8bf425},
	{x=986,y=553,color=0x82ef17},
	{x=1081,y=560,color=0x1fc4ed},
	{x=1096,y=555,color=0x1cc9f3},
	{x=9,y=312,color=0x447810},
	{x=-2,y=367,color=0x0e6277},
	{x=65,y=524,color=0x282924}
	},
	degree = 95
}

--5--战斗中-选择行动
view[view_bt_slc_acn] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=4,y=-5,color=0xffffff},
	{x=5,y=6,color=0xffffff},
	{x=1077,y=6,color=0xffffff},
	{x=1084,y=6,color=0xffffff},
	{x=1144,y=11,color=0xffffff},
	{x=1150,y=7,color=0xffffff},
	{x=1200,y=-4,color=0xffe300},
	{x=1253,y=0,color=0xffe300},
	{x=1253,y=18,color=0xffe300},
	{x=1214,y=574,color=0xfff145},
	{x=1215,y=571,color=0xfff145},
	{x=1212,y=577,color=0xfff145}
	},
	degree = 98
}

--6--战斗中-播报中
view[view_bt_playing] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=7,y=0,color=0xffffff},
	{x=66,y=4,color=0xffffff},
	{x=71,y=2,color=0xffffff},
	{x=62,y=6,color=0xffffff},
	{x=129,y=-6,color=0xffe300},
	{x=175,y=-7,color=0xffe300},
	{x=179,y=8,color=0xffe300},
	{x=127,y=52,color=0xffe300},
	{x=185,y=50,color=0xffe300},
	{x=-67,y=640,color=0x2b2c2b},
	{x=-65,y=626,color=0x393a3a},
	{x=-75,y=627,color=0x39393a},
	{x=-77,y=638,color=0x2d2d2d},
	{x=-71,y=630,color=0xb4bbab}
	},
	degree = 98
}

--7--战斗中-播报中-下面是蓝色点（弃用）
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
	{x=6,y=-6,color=0xffffff},
	{x=5,y=5,color=0xffffff},
	{x=1198,y=54,color=0x7f7419},
	{x=1204,y=55,color=0x7f7419},
	{x=1237,y=57,color=0x7e7317},
	{x=1077,y=5,color=0xffffff},
	{x=1084,y=5,color=0xffffff},
	{x=1141,y=9,color=0xffffff},
	{x=1151,y=6,color=0xffffff},
	{x=1219,y=88,color=0x7b6d03},
	{x=1244,y=87,color=0x7a6d03},
	{x=1265,y=88,color=0xffe300},
	{x=1263,y=57,color=0xffe300}
	},
	degree = 98
}

--34--战斗中-战斗经验结算
view[view_bt_report2] = {
	feature = {	
	{x=0,y=0,color=0xffffff},
	{x=6,y=-6,color=0xffffff},
	{x=5,y=5,color=0xffffff},
	{x=1198,y=54,color=0x7f7419},
	{x=1204,y=55,color=0x7f7419},
	{x=1237,y=57,color=0x7e7317},
	{x=1077,y=5,color=0xffffff},
	{x=1084,y=5,color=0xffffff},
	{x=1141,y=9,color=0xffffff},
	{x=1151,y=6,color=0xffffff},
	{x=1219,y=88,color=0x7b6d03},
	{x=1244,y=87,color=0x7a6d03},
	{x=1265,y=88,color=0xffe300},
	{x=1263,y=57,color=0xffe300}
	},
	degree = 98
}

--9--战斗中-打捞老婆（弃用）
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
	{x=5,y=-5,color=0xffffff},
	{x=4,y=6,color=0xffffff},
	{x=1076,y=6,color=0xffffff},
	{x=1086,y=6,color=0xffffff},
	{x=1147,y=10,color=0xffffff},
	{x=1203,y=59,color=0xffe300},
	{x=1219,y=85,color=0xffe300},
	{x=1261,y=90,color=0xffe300},
	{x=1087,y=493,color=0xffb900},
	{x=1090,y=490,color=0xffb800},
	{x=1080,y=495,color=0xffba00},
	{x=1063,y=507,color=0xffb900},
	{x=1072,y=498,color=0xffbd00},
	{x=1143,y=601,color=0xfecb00}
	},
	degree = 98
}

--11--战斗中-下一波
view[view_bt_next] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=6,y=-6,color=0xffffff},
	{x=6,y=7,color=0xffffff},
	{x=112,y=97,color=0xfdc303},
	{x=123,y=97,color=0xfdc304},
	{x=132,y=99,color=0xfdc202},
	{x=187,y=99,color=0xfbc105},
	{x=212,y=96,color=0xfcc101},
	{x=1173,y=599,color=0xffffff},
	{x=1180,y=602,color=0xffffff},
	{x=1193,y=610,color=0xffffff},
	{x=1184,y=621,color=0xffffff},
	{x=1173,y=625,color=0xffffff},
	{x=1175,y=613,color=0xffffff},
	{x=1144,y=11,color=0xffffff},
	{x=1148,y=8,color=0xffffff}
	},
	degree = 98
}

--12--战斗中-赶路到下一波（弃用）
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
	{x=5,y=-6,color=0xffffff},
	{x=3,y=5,color=0xffffff},
	{x=727,y=202,color=0xf1b002},
	{x=741,y=214,color=0xf1b002},
	{x=1172,y=202,color=0xf1b002},
	{x=1180,y=216,color=0xf1b002},
	{x=1026,y=-15,color=0xffc000},
	{x=1035,y=-16,color=0xffc000},
	{x=1195,y=-13,color=0x049de4},
	{x=1218,y=-3,color=0xffc000},
	{x=681,y=682,color=0xecbf13},
	{x=1228,y=696,color=0xeebf11},
	{x=1228,y=676,color=0xeabf17},
	{x=682,y=572,color=0xd8bf2a}
	},
	degree = 98
}

--14--选择是否停止反复战斗
view[view_stop_repeat] = {
	feature = {
	{x=0,y=0,color=0x112009},
	{x=-13,y=55,color=0x031b23},
	{x=118,y=-224,color=0xd3d5dc},
	{x=377,y=-206,color=0xd3d5dc},
	{x=1002,y=-221,color=0xd3d5dc},
	{x=519,y=176,color=0xfeca01},
	{x=676,y=222,color=0xfdc804},
	{x=1154,y=206,color=0x403506},
	{x=186,y=-327,color=0x404245},
	{x=848,y=210,color=0x3a515f}
	},
	degree = 95
}

--15--主页-继续远征
view[view_ctn_mission] = {
	feature = {
	{x=0,y=0,color=0xb6b7c7},
	{x=4,y=21,color=0xb6b7c7},
	{x=31,y=6,color=0x6c6c7d},
	{x=110,y=25,color=0x6c6c7d},
	{x=228,y=85,color=0xffc704},
	{x=237,y=100,color=0xffc704},
	{x=287,y=133,color=0x72c31b},
	{x=289,y=136,color=0x6bc115},
	{x=387,y=143,color=0x16a0c1},
	{x=393,y=146,color=0x169ec2},
	{x=564,y=22,color=0x828290},
	{x=595,y=18,color=0x2a2836},
	{x=512,y=33,color=0x282634},
	{x=455,y=25,color=0x5e5e6e},
	{x=533,y=-2,color=0x65646d},
	{x=232,y=203,color=0xffc704},
	{x=230,y=191,color=0xffc704},
	{x=115,y=188,color=0xffc704},
	{x=114,y=101,color=0xffc704}
	},
	degree = 98
}

--16--主页-玩家信息
view[view_player_info] = {
	feature = {
	{x=0,y=0,color=0xffcc00},
	{x=35,y=6,color=0xffcc00},
	{x=17,y=23,color=0x000000},
	{x=727,y=-526,color=0xffcc00},
	{x=736,y=-536,color=0xffcc00},
	{x=745,y=-528,color=0xffffff},
	{x=776,y=-543,color=0xffffff},
	{x=1070,y=-619,color=0xffcc00},
	{x=1047,y=-626,color=0x000000},
	{x=1069,y=-644,color=0xffcc00},
	{x=872,y=-642,color=0xffcc00},
	{x=891,y=-634,color=0xffcc00},
	{x=1067,y=-540,color=0xffcc00},
	{x=686,y=-48,color=0xffcc00},
	{x=736,y=-66,color=0xffcc00},
	{x=686,y=-335,color=0xffcc00},
	{x=734,y=-351,color=0xffcc00},
	{x=742,y=-4,color=0x5e5e67}
	},
	degree = 98
}

--17--载入
view[view_sys_online] = {
	feature = {
	{x=0,y=0,color=0xafc5d1},
	{x=-13,y=33,color=0xb3c9d5},
	{x=41,y=45,color=0xb2c8d4},
	{x=97,y=2,color=0xb1c7d3},
	{x=153,y=1,color=0xaec3cf},
	{x=154,y=46,color=0xb2c7d3},
	{x=273,y=47,color=0xb3c9d5},
	{x=313,y=46,color=0xb3c9d5},
	{x=423,y=1,color=0xb2c7d3},
	{x=166,y=85,color=0xffa351},
	{x=168,y=90,color=0xffbb67},
	{x=204,y=85,color=0xffa554},
	{x=205,y=90,color=0xffbb67},
	{x=244,y=85,color=0xffa452},
	{x=244,y=90,color=0xffbb68}
	},
	degree = 95
}

--18--战斗中-敌方行动
view[view_bt_enemy_acn] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=5,y=-5,color=0xffffff},
	{x=6,y=8,color=0xffffff},
	{x=1077,y=9,color=0xffffff},
	{x=1085,y=7,color=0xffffff},
	{x=1142,y=12,color=0xffffff},
	{x=1146,y=11,color=0xffffff},
	{x=1259,y=5,color=0xffe300},
	{x=1261,y=18,color=0xffe300},
	{x=1256,y=56,color=0xffe300},
	{x=1253,y=86,color=0xffe300},
	{x=1215,y=576,color=0x8f9294},
	{x=1212,y=573,color=0x8f9294},
	{x=1186,y=384,color=0xfffff1},
	{x=1182,y=619,color=0xcecece},
	{x=1188,y=653,color=0xcecece}
	},
	degree = 98
}

--19--建造中心
view[view_creator] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=4,y=-7,color=0xffffff},
	{x=5,y=5,color=0xffffff},
	{x=1072,y=123,color=0xffcf04},
	{x=1235,y=119,color=0xffcf04},
	{x=1228,y=619,color=0xffcf04},
	{x=1227,y=660,color=0xfecd04},
	{x=130,y=-5,color=0xfefefe},
	{x=-13,y=130,color=0x245886},
	{x=-3,y=189,color=0x21537e},
	{x=1013,y=126,color=0x0e242d},
	{x=1009,y=194,color=0x0e242d}
	},
	degree = 95
}

--20--分解中心
view[view_reback] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=7,y=-8,color=0xffffff},
	{x=5,y=6,color=0xffffff},
	{x=132,y=-3,color=0xfefefe},
	{x=1075,y=114,color=0x091823},
	{x=1227,y=119,color=0x08131c},
	{x=1069,y=468,color=0xffcf04},
	{x=1223,y=470,color=0xffcf04},
	{x=99,y=222,color=0xffce04},
	{x=92,y=295,color=0x8df519},
	{x=92,y=354,color=0x33d1fb}
	},
	degree = 95
}

--21--老婆分解
view[view_reback_waifu] = {
	feature = {
	{x=0,y=0,color=0xffffff},
	{x=6,y=-6,color=0xffffff},
	{x=6,y=9,color=0xffffff},
	{x=129,y=-4,color=0xffffff},
	{x=1066,y=149,color=0xffcf04},
	{x=1066,y=93,color=0xffcf04},
	{x=1198,y=129,color=0x373737},
	{x=1202,y=128,color=0x373737},
	{x=1213,y=132,color=0xffffff},
	{x=1061,y=654,color=0xffe269},
	{x=1220,y=671,color=0xffe269}
	},
	degree = 98
}

--22--老婆分解-分A级以上弹窗警告
view[view_reback_waifu_al] = {
	feature = {
	{x=0,y=0,color=0x404245},
	{x=4,y=-7,color=0x404245},
	{x=121,y=1,color=0x404245},
	{x=121,y=100,color=0xd3d5dc},
	{x=865,y=102,color=0xd3d5dc},
	{x=1018,y=104,color=0xd3d5dc},
	{x=409,y=506,color=0xfe4701},
	{x=633,y=501,color=0xfeca01},
	{x=797,y=551,color=0xfcc705},
	{x=1064,y=641,color=0x403b20},
	{x=1212,y=666,color=0x403b20},
	{x=1199,y=129,color=0x0e1013}
	},
	degree = 98
}

--23--老婆分解-确定分解
view[view_reback_waifu_ac] = {
	feature = {
	{x=0,y=0,color=0x404245},
	{x=4,y=-7,color=0x404245},
	{x=137,y=101,color=0xd3d5dc},
	{x=963,y=117,color=0xd3d5dc},
	{x=1152,y=469,color=0x403607},
	{x=1237,y=419,color=0x403607},
	{x=404,y=500,color=0xfe4700},
	{x=633,y=500,color=0xfeca01},
	{x=800,y=549,color=0xfdc804},
	{x=1183,y=120,color=0x02070d},
	{x=839,y=649,color=0x3f3407},
	{x=980,y=649,color=0x3f3407}
	},
	degree = 98
}

--24--老婆分解-获得物品
view[view_reback_get] = {
	feature = {
	{x=0,y=0,color=0x7d7d7d},
	{x=91,y=294,color=0x45780c},
	{x=93,y=353,color=0x19667b},
	{x=288,y=96,color=0xd3d5dc},
	{x=838,y=97,color=0xd3d5dc},
	{x=497,y=130,color=0xd3d5dc},
	{x=504,y=148,color=0xd3d5dc},
	{x=497,y=332,color=0xd3d5dc},
	{x=504,y=349,color=0xd3d5dc},
	{x=1106,y=466,color=0x7d6502},
	{x=1229,y=471,color=0x7d6502},
	{x=578,y=314,color=0x1d303a},
	{x=770,y=334,color=0x1f323f},
	{x=1094,y=105,color=0x040b10}
	},
	degree = 98
}

--25--战斗中-撤退
view[view_bt_quit] = {
	feature = {
	{x=0,y=0,color=0x7d7d7d},
	{x=6,y=-6,color=0x7d7d7d},
	{x=5,y=7,color=0x7d7d7d},
	{x=439,y=384,color=0xff6200},
	{x=440,y=365,color=0xff6200},
	{x=455,y=351,color=0xff6200},
	{x=585,y=350,color=0xff6200},
	{x=582,y=369,color=0xff6200},
	{x=667,y=373,color=0xffcc00},
	{x=681,y=355,color=0xffcc00},
	{x=801,y=354,color=0xffcc00},
	{x=1076,y=7,color=0x7d7d7d},
	{x=1254,y=6,color=0x7d6f00},
	{x=1252,y=57,color=0x7d6f00},
	{x=1219,y=89,color=0x7d6f00}
	},
	degree = 98
}

--35--战斗中-撤退2
view[view_bt_quit2] = {
	feature = {
	{x=0,y=0,color=0xff6200},
	{x=13,y=-15,color=0xff6200},
	{x=28,y=-25,color=0xff6200},
	{x=162,y=-31,color=0xff6200},
	{x=162,y=-15,color=0xff6200},
	{x=144,y=-2,color=0xff6200},
	{x=223,y=1,color=0xffcc00},
	{x=225,y=-20,color=0xffcc00},
	{x=241,y=-27,color=0xffcc00},
	{x=378,y=-36,color=0xffcc00},
	{x=378,y=-24,color=0xffcc00},
	{x=351,y=7,color=0xffcc00},
	{x=706,y=-369,color=0x7d7d7d},
	{x=714,y=-369,color=0x7d7d7d},
	{x=714,y=-375,color=0x7d7d7d}
	},
	degree = 98
}

--26--仓库满了(手动)
view[view_full_bag] = {
	feature = {
	{x=0,y=0,color=0x080808},
	{x=-6,y=-5,color=0x080808},
	{x=84,y=-17,color=0x3e3200},
	{x=75,y=16,color=0x3e3200},
	{x=127,y=-13,color=0x5b5b63},
	{x=82,y=87,color=0xb6b7c7},
	{x=86,y=103,color=0xb6b7c7},
	{x=126,y=94,color=0x6c6c7d},
	{x=371,y=104,color=0x5f5f6d},
	{x=333,y=527,color=0xff6200},
	{x=485,y=493,color=0xff6200},
	{x=534,y=531,color=0xffcc00},
	{x=681,y=491,color=0xffcc00},
	{x=738,y=530,color=0xffcc00},
	{x=883,y=491,color=0xffcc00},
	{x=985,y=552,color=0x43790e},
	{x=1088,y=559,color=0x0e6379}
	},
	degree = 98
}

--27--升级
view[view_level_up] = {
	feature = {
	{x=0,y=0,color=0xb6b7c7},
	{x=0,y=17,color=0xb6b7c7},
	{x=27,y=7,color=0x6c6c7d},
	{x=107,y=22,color=0x6c6c7d},
	{x=140,y=4,color=0x61626d},
	{x=167,y=20,color=0x5e5e6e},
	{x=856,y=27,color=0x5d5c69},
	{x=905,y=3,color=0x63636f},
	{x=1006,y=-3,color=0x65646d},
	{x=448,y=445,color=0xffcc00},
	{x=447,y=423,color=0xffcc00},
	{x=470,y=399,color=0xffcc00},
	{x=606,y=400,color=0xffcc00},
	{x=604,y=417,color=0xffcc00},
	{x=586,y=440,color=0xffcc00},
	{x=556,y=443,color=0xffcc00},
	{x=520,y=444,color=0xffcc00},
	{x=487,y=443,color=0xffcc00},
	{x=499,y=399,color=0xffcc00},
	{x=556,y=401,color=0xffcc00}
	},
	degree = 98
}

--28--修复
view[view_need_repair] = {
	feature = {
	{x=0,y=0,color=0x080808},
	{x=84,y=-16,color=0x3e3200},
	{x=92,y=92,color=0xb6b7c7},
	{x=134,y=98,color=0x6c6c7d},
	{x=291,y=97,color=0x61606d},
	{x=988,y=82,color=0x65646f},
	{x=1156,y=-1,color=0x414148},
	{x=1168,y=516,color=0x7f6600},
	{x=1168,y=519,color=0x7f6600},
	{x=441,y=522,color=0xff6200},
	{x=580,y=492,color=0xff6200},
	{x=565,y=518,color=0xff6200},
	{x=635,y=529,color=0xffcc00},
	{x=788,y=493,color=0xffcc00},
	{x=788,y=506,color=0xffcc00},
	{x=986,y=551,color=0x43790e},
	{x=1094,y=559,color=0x0e6379}
	},
	degree = 98
}

--29--重连
view[view_re_connect] = {
	feature = {
	{x=0,y=0,color=0xd3d5dc},
	{x=86,y=17,color=0xd3d5dc},
	{x=526,y=11,color=0xd3d5dc},
	{x=764,y=-2,color=0xd3d5dc},
	{x=280,y=396,color=0xfeca01},
	{x=421,y=395,color=0xfeca01},
	{x=450,y=447,color=0xfdc804},
	{x=308,y=448,color=0xfcc705},
	{x=89,y=8,color=0xd3d5dc},
	{x=241,y=8,color=0xd3d5dc},
	{x=767,y=-1,color=0xd3d5dc},
	{x=364,y=451,color=0xfdc804},
	{x=350,y=399,color=0xfeca01}
	},
	degree = 98
}

--30--装备分解-获得物品
view[view_reback_get2] = {
	feature = {
	{x=0,y=0,color=0x111111},
	{x=-6,y=-5,color=0x111111},
	{x=304,y=-23,color=0x4d4d4f},
	{x=340,y=10,color=0x4d4d4f},
	{x=288,y=41,color=0xb6b7c7},
	{x=333,y=45,color=0x6c6c7d},
	{x=798,y=41,color=0x61626d},
	{x=1033,y=58,color=0x7d6e31},
	{x=1062,y=38,color=0x7d6400},
	{x=1237,y=466,color=0x7d6400},
	{x=1231,y=413,color=0x202123},
	{x=1222,y=338,color=0x202123},
	{x=1132,y=491,color=0x7d6400},
	{x=535,y=574,color=0xffc903},
	{x=680,y=542,color=0xffc904}
	},
	degree = 98
}

--31--掉线重连2
view[view_re_connect2] = {
	feature = {
	{x=0,y=0,color=0xb6b7c7},
	{x=0,y=17,color=0xb6b7c7},
	{x=27,y=7,color=0x6c6c7d},
	{x=107,y=22,color=0x6c6c7d},
	{x=140,y=4,color=0x61626d},
	{x=167,y=20,color=0x5e5e6e},
	{x=856,y=27,color=0x5d5c69},
	{x=905,y=3,color=0x63636f},
	{x=1006,y=-3,color=0x65646d},
	{x=448,y=445,color=0xffcc00},
	{x=447,y=423,color=0xffcc00},
	{x=470,y=399,color=0xffcc00},
	{x=606,y=400,color=0xffcc00},
	{x=604,y=417,color=0xffcc00},
	{x=586,y=440,color=0xffcc00},
	{x=556,y=443,color=0xffcc00},
	{x=520,y=444,color=0xffcc00},
	{x=487,y=443,color=0xffcc00},
	{x=499,y=399,color=0xffcc00},
	{x=556,y=401,color=0xffcc00}
	},
	degree = 98
}

--32--标题界面
view[view_title] = {
	feature = {
	{x=0,y=0,color=0x0f0f0b},
	{x=1276,y=717,color=0x111211},
	{x=412,y=337,color=0xffffff},
	{x=456,y=311,color=0xffffff},
	{x=490,y=294,color=0xffffff},
	{x=523,y=295,color=0xffffff},
	{x=558,y=292,color=0xffffff},
	{x=538,y=345,color=0xffffff},
	{x=692,y=280,color=0xffffff},
	{x=624,y=279,color=0xffffff},
	{x=727,y=294,color=0xffffff},
	{x=749,y=319,color=0xffffff},
	{x=792,y=301,color=0xffffff},
	{x=838,y=291,color=0xffffff},
	{x=817,y=316,color=0xffffff},
	{x=948,y=289,color=0xffffff}
	},
	degree = 98
}

--33--EVENT活动信息页
view[view_event] = {
	feature = {
	{x=0,y=0,color=0x232323},
	{x=-5,y=-7,color=0x232323},
	{x=5,y=-8,color=0x232323},
	{x=83,y=-19,color=0xffcc00},
	{x=81,y=15,color=0xffcc00},
	{x=1112,y=86,color=0xffc704},
	{x=1121,y=115,color=0xffc704},
	{x=1156,y=84,color=0xffc704},
	{x=1207,y=86,color=0x90f927},
	{x=1229,y=84,color=0x90f927},
	{x=1231,y=147,color=0x90f927},
	{x=1143,y=147,color=0x90f927},
	{x=1187,y=144,color=0x90f927},
	{x=1051,y=158,color=0xffd951},
	{x=1060,y=155,color=0xffd951},
	{x=995,y=165,color=0xffd951},
	{x=974,y=145,color=0xffc704}
	},
	degree = 98
}

--36--仓库满了(自动)
view[view_full_bag2] = {
	feature = {
	{x=0,y=0,color=0x080808},
	{x=-4,y=-5,color=0x090808},
	{x=7,y=-4,color=0x090808},
	{x=129,y=-17,color=0x5b5b63},
	{x=91,y=92,color=0xb6b7c7},
	{x=145,y=100,color=0x6c6c7d},
	{x=296,y=95,color=0x61626d},
	{x=984,y=98,color=0x61606d},
	{x=10,y=315,color=0x213c07},
	{x=1,y=369,color=0x07313b},
	{x=534,y=532,color=0xffcc00},
	{x=536,y=516,color=0xffcc00},
	{x=563,y=490,color=0xffcc00},
	{x=684,y=490,color=0xffcc00},
	{x=684,y=505,color=0xffcc00},
	{x=664,y=533,color=0xffcc00},
	{x=607,y=532,color=0xffcc00},
	{x=618,y=489,color=0xffcc00},
	{x=986,y=553,color=0x42780d},
	{x=1091,y=561,color=0x0e6379}
	},
	degree = 98
}

--37--上线公告
view[view_notice] = {
	feature = {
	{x=0,y=0,color=0x61626d},
	{x=19,y=22,color=0x61626d},
	{x=790,y=11,color=0xc6c5c9},
	{x=784,y=6,color=0xc6c6c9},
	{x=796,y=5,color=0xc6c6c9},
	{x=795,y=19,color=0xc6c5c9},
	{x=619,y=568,color=0x7a7c7c},
	{x=610,y=551,color=0x3a3b42},
	{x=697,y=571,color=0x7a7c7c},
	{x=696,y=555,color=0x3b3b42},
	{x=1008,y=565,color=0x68767a}
	},
	degree = 98
}

--38--分解-分解中
view[view_rebacking] = {
	feature = {
	{x=0,y=0,color=0x404245},
	{x=7,y=-8,color=0x404245},
	{x=131,y=-4,color=0x404245},
	{x=96,y=119,color=0xd2d4db},
	{x=726,y=118,color=0xd2d4db},
	{x=1019,y=116,color=0xd2d4db},
	{x=1230,y=419,color=0x403607},
	{x=1233,y=470,color=0x403607},
	{x=981,y=646,color=0x3f3407},
	{x=839,y=638,color=0x3f3407},
	{x=729,y=513,color=0x32495e},
	{x=493,y=503,color=0x2f485a}
	},
	degree = 98
}

--39--分解-选取上限
view[view_reback_full] = {
	feature = {
	{x=0,y=0,color=0x42780d},
	{x=-11,y=53,color=0x0e6379},
	{x=76,y=-227,color=0xb6b7c7},
	{x=80,y=-209,color=0xb6b7c7},
	{x=131,y=-222,color=0x6c6c7d},
	{x=167,y=-203,color=0x6c6c7d},
	{x=513,y=-213,color=0x61606d},
	{x=803,y=-218,color=0x61606d},
	{x=1063,y=-233,color=0x65646f},
	{x=1028,y=-206,color=0x5e5e6e},
	{x=523,y=213,color=0xffcc00},
	{x=676,y=176,color=0xffcc00},
	{x=314,y=-329,color=0x4f4e51},
	{x=330,y=-306,color=0x4f4e51},
	{x=1234,y=233,color=0x3a7104}
	},
	degree = 98
}


return view