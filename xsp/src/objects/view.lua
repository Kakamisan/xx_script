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
		{x=1025+1+80,y=515+20,color=0x49b1f2,anchor={0,0}},
		{x=950+1+80,y=558+20,color=0x47b2ef,anchor={0,0}},
		{x=1210+1+80,y=216+20,color=0xffffff,anchor={0,0}}
	},
	degree = 98
}

--3--选择主线副本，6-8，5-8e等
view[view_slc_dg_main] = {
	feature = {
	{x=0+19,y=0+29,color=0x242222},
	{x=12+19,y=0+29,color=0x242222},
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
	{x=1135+19,y=15+17,color=0xfef469},
	{x=1138+19,y=27+17,color=0xfdf268},
	{x=1144+19,y=21+17,color=0xfff167},
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
	{x=0+20,y=0+17,color=0xfdfdfd},
	{x=1383+20,y=11+17,color=0xffcb00},
	{x=1320+20,y=7+17,color=0xffcc00},
	{x=1279+20,y=595+17,color=0xfecb00},
	{x=1221+20,y=469+17,color=0xffb800}
	},
	degree = 98
}

--11--战斗中-下一波
view[view_bt_next] = {
	feature = {
	{x=0+18,y=0+18,color=0xfefefe},
	{x=1385+18,y=11+18,color=0xffcb00},
	{x=1380+18,y=646+18,color=0xe7b540},
	{x=1346+18,y=617+18,color=0xfef8e6}
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
	{x=0+28,y=0+46,color=0x232323},
	{x=92+28,y=-23+46,color=0xffcc00},
	{x=794+28,y=-14+46,color=0x3f392e},
	{x=266+28,y=333+46,color=0x20d7f7},
	{x=1402+28,y=445+46,color=0xffcc00},
	{x=274+28,y=565+46,color=0x59e1f8}
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



return view