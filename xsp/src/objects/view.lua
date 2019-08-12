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
	{x=0+1,y=0+19,color=0xffcd00,anchor={-1,0}},
	{x=34+1,y=12+19,color=0x262423,anchor={-1,0}},
	{x=256+1+80,y=12+19,color=0xfdfdfd,anchor={0,0}},
	{x=1161+1+80,y=574+19,color=0x20d7f7,anchor={0,0}},
	{x=1032+1+80,y=579+19,color=0x84ef18,anchor={0,0}}
	},
	degree = 98
}

--5--战斗中-选择行动
view[view_bt_slc_acn] = {
	feature = {
		{x=0+19,y=0+17,color=0xfdfdfd},
	{x=-7+19,y=7+17,color=0xffffff},
	{x=1+19,y=15+17,color=0xffffff},
--	{x=1135+19,y=15+17,color=0xfef469},
--	{x=1138+19,y=27+17,color=0xfdf268},
--	{x=1144+19,y=21+17,color=0xfff167},
	{x=1227+19,y=10+17,color=0xffcc00},
	{x=1245+19,y=10+17,color=0xffcb00},
	{x=1366+19,y=26+17,color=0xfcc500},
	{x=1383+19,y=8+17,color=0xffcc00},
	{x=1355+19,y=98+17,color=0x93f212},
	{x=1391+19,y=113+17,color=0xf6feef},
	{x=1391+19,y=141+17,color=0xf9fff2},
	{x=1415+19,y=153+17,color=0xafe406},
	{x=1321+19,y=664+17,color=0xffd800},
	{x=948+19,y=667+17,color=0xffcc00}
	},
	degree = 98
}

--6--战斗中-播报中
view[view_bt_playing] = {
	feature = {
	{x=0+1243,y=0+26,color=0xffcc00},
	{x=22+1243,y=0+26,color=0xffce00},
	{x=88+1243,y=0+26,color=0xffcc00},
	{x=140+1243,y=16+26,color=0xfcc500},
	{x=168+1243,y=8+26,color=0xffcb00},
	{x=159+1243,y=1+26,color=0xffcb00},
	{x=132+1243,y=89+26,color=0x93f212},
	{x=167+1243,y=104+26,color=0xf6feef},
	{x=167+1243,y=133+26,color=0xf9fff2},
	{x=193+1243,y=145+26,color=0xafe406},
	{x=-276+1243,y=659+26,color=0xffcc00},
	{x=-193+1243,y=669+26,color=0xfffffe}
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
	{x=0+19,y=0+18,color=0xfdfdfd},
	{x=1247+19,y=7+18,color=0x8d7b2f},
	{x=1384+19,y=10+18,color=0x8a762b},
	{x=1316+19,y=18+18,color=0x857023}
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
--	{x=0+20,y=0+17,color=0xfdfdfd},
--	{x=1383+20,y=11+17,color=0xffcb00},
--	{x=1320+20,y=7+17,color=0xffcc00},
--	{x=1279+20,y=595+17,color=0xfecb00},
--	{x=1221+20,y=469+17,color=0xffb800}

--	18,18
	{x=0,y=0,color=0xffffff},
	{x=-6,y=6,color=0xffffff},
	{x=2,y=14,color=0xffffff},
	{x=1222,y=469,color=0xffb900},
	{x=1191,y=486,color=0xffb900},
	{x=951,y=485,color=0xffbb00},
	{x=955,y=488,color=0xfbb902},
	{x=1203,y=476,color=0xfeb800},
	{x=1281,y=596,color=0xfecb00},
	{x=1281,y=604,color=0xfecb00}
	},
	degree = 98
}

--11--战斗中-下一波
view[view_bt_next] = {
	feature = {
--	{x=0+18,y=0+18,color=0xfefefe},
--	{x=1385+18,y=11+18,color=0xffcb00},
--	{x=1380+18,y=646+18,color=0xe7b540},
--	{x=1346+18,y=617+18,color=0xfef8e6}

--	18,18
	{x=0,y=0,color=0xffffff},
	{x=-6,y=6,color=0xffffff},
	{x=2,y=13,color=0xffffff},
	{x=1375,y=15,color=0xffcb00},
	{x=1388,y=15,color=0xffcb00},
	{x=1298,y=594,color=0xfdf8e6},
	{x=1315,y=639,color=0xfdf7e6},
	{x=1372,y=570,color=0xecc840},
	{x=1372,y=661,color=0xe5b03f},
	{x=1284,y=634,color=0xe6a500}
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
	{x=0+20,y=0+17,color=0xfdfdfd},
	{x=1171+20,y=199+17,color=0xf1b002},
	{x=1175+20,y=-11+17,color=0x049ee5},
	{x=1241+20,y=40+17,color=0xd69300}
	},
	degree = 98
}

--14--选择是否停止反复战斗
view[view_stop_repeat] = {
	feature = {
	{x=0+34,y=0+31,color=0x1b1312},
	{x=74+34,y=-14+31,color=0x876801},
	{x=765+34,y=502+31,color=0xffcc00},
	{x=608+34,y=546+31,color=0xffcc00},
	{x=1290+34,y=643+31,color=0x7e6302}
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
	{x=0+682,y=0+348,color=0xffa756},
	{x=38+682,y=0+348,color=0xffa857},
	{x=77+682,y=0+348,color=0xffa857},
	{x=-523+682,y=334+348,color=0xefb502},
	{x=188,y=694,color=0xe1a100}
	},
	degree = 98
}

--18--战斗中-敌方行动
view[view_bt_enemy_acn] = {
	feature = {
	{x=0+20,y=0+17,color=0xfdfdfd},
	{x=-8+20,y=8+17,color=0xffffff},
	{x=0+20,y=14+17,color=0xffffff},
	{x=1137+20,y=20+17,color=0xfff469},
	{x=1225+20,y=11+17,color=0xffcc00},
	{x=1245+20,y=11+17,color=0xffcc00},
	{x=1364+20,y=26+17,color=0xfcc500},
	{x=1390+20,y=17+17,color=0xffcb00},
	{x=1382+20,y=10+17,color=0xffcb00},
	{x=1048+20,y=595+17,color=0xcecece},
	{x=1079+20,y=598+17,color=0xcecece},
	{x=1132+20,y=598+17,color=0xcecece},
	{x=1161+20,y=595+17,color=0xcecece},
	{x=949+20,y=674+17,color=0xffcc00},
	{x=1358+20,y=99+17,color=0x93f212},
	{x=1412+20,y=153+17,color=0xafe406},
	{x=1390+20,y=121+17,color=0xf6fdef},
	{x=1323+20,y=661+17,color=0x313131}
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
	{x=220+24,y=65+40,color=0x61616d},
	{x=243+24,y=40+40,color=0x61616d},
	{x=411+24,y=95+40,color=0x61616d},
	{x=410+24,y=199+40,color=0x61616d},
	{x=391+24,y=233+40,color=0x60606c},
	{x=410+24,y=287+40,color=0x5e5d69},
	{x=271+24,y=287+40,color=0x8af41f},
	{x=258+24,y=350+40,color=0x1dcaf4},
	{x=784+24,y=-12+40,color=0x3f392e},
	{x=800+24,y=-12+40,color=0x3f392e},
	{x=1117+24,y=0+40,color=0x9d9da0},
	{x=1140+24,y=-1+40,color=0x9d9d9f},
	{x=1094+24,y=24+40,color=0x9d9da0},
	{x=1117+24,y=25+40,color=0x9d9da0}
	},
	degree = 98
}

--21--老婆分解
view[view_reback_waifu] = {
	feature = {
	{x=0+28,y=0+47,color=0x000000},
	{x=1262+28,y=81+47,color=0xffcc00},
	{x=1397+28,y=659+47,color=0xffc900},
	{x=7+28,y=356+47,color=0x20d7f7},
	{x=441+28,y=16+47,color=0x9e9e9e}
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
	{x=0+18,y=0+18,color=0x7d7d7d},
	{x=1+18,y=14+18,color=0x7d7d7d},
	{x=1315+18,y=8+18,color=0x7d6400},
	{x=1385+18,y=11+18,color=0x7d6400},
	{x=1360+18,y=97+18,color=0x487709},
	{x=495+18,y=388+18,color=0xff6200},
	{x=656+18,y=354+18,color=0xff6200},
	{x=746+18,y=386+18,color=0xffcc00},
	{x=907+18,y=360+18,color=0xffcc00}
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
	{x=0.667*(0+190),y=0.667*(0+149),color=0xb6b6c7},
	{x=0.667*(-2+190),y=0.667*(49+149),color=0xb6b6c7},
	{x=0.667*(13+190),y=0.667*(28+149),color=0xb6b6c7},
	{x=0.667*(39+190),y=0.667*(25+149),color=0x6c6c7b},
	{x=0.667*(167+190),y=0.667*(5+149),color=0x6c6c7b},
	{x=0.667*(195+190),y=0.667*(55+149),color=0x6c6c7b},
	{x=0.667*(1596+190),y=0.667*(53+149),color=0x5d5d6b},
	{x=0.667*(1775+190),y=0.667*(2+149),color=0x646470},
	{x=0.667*(756+190),y=0.667*(757+149),color=0xfecb00},
	{x=0.667*(795+190),y=0.667*(686+149),color=0xffcc00},
	{x=0.667*(757+190),y=0.667*(722+149),color=0xffcc00},
	{x=0.667*(824+190),y=0.667*(686+149),color=0xffcc00},
	{x=0.667*(866+190),y=0.667*(686+149),color=0xffcc00},
	{x=0.667*(903+190),y=0.667*(687+149),color=0xffcc00},
	{x=0.667*(946+190),y=0.667*(687+149),color=0xffcc00},
	{x=0.667*(986+190),y=0.667*(687+149),color=0xffcc00},
	{x=0.667*(791+190),y=0.667*(759+149),color=0xfeca00},
	{x=0.667*(821+190),y=0.667*(758+149),color=0xffcb00},
	{x=0.667*(862+190),y=0.667*(760+149),color=0xfeca00},
	{x=0.667*(900+190),y=0.667*(759+149),color=0xffcb00}
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
	{x=0+23,y=0+28,color=0x232323},
	{x=11+23,y=0+28,color=0x222222},
	{x=10+23,y=12+28,color=0x232323},
	{x=0+23,y=12+28,color=0x232323},
	{x=1080+23,y=99+28,color=0xfdc705},
	{x=1250+23,y=102+28,color=0xfdc705},
	{x=1170+23,y=182+28,color=0xfdc705},
	{x=1109+23,y=164+28,color=0xfdc705},
	{x=1149+23,y=179+28,color=0xfed850},
	{x=1311+23,y=102+28,color=0x90f927},
	{x=1316+23,y=102+28,color=0x90f927},
	{x=1292+23,y=101+28,color=0x90f927},
	{x=1244+23,y=163+28,color=0x90f927},
	{x=1274+23,y=163+28,color=0x90f927},
	{x=1297+23,y=164+28,color=0x90f927},
	{x=1312+23,y=164+28,color=0x90f927}
	},
	degree = 98
}

return view