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
		{x=0+1,y=0+31,color=0xffce01,anchor={-1,0}},
		{x=24+1,y=6+31,color=0x282423,anchor={-1,0}},
		{x=536+1+80,y=507+31,color=0xfdc705,anchor={0,0}},
		{x=1115+1+80,y=516+31,color=0xffffff,anchor={0,0}},
		{x=1277+1+80,y=648+31,color=0xfdc705,anchor={0,0}},
		{x=205+1+80,y=579+31,color=0x8cffff,anchor={0,0}}
	},
	degree = 98
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
		{x=0+19,y=0+18,color=0xfdfdfd},
	{x=1245+19,y=9+18,color=0xffcb00},
	{x=1383+19,y=9+18,color=0xffcb00},
	{x=1356+19,y=97+18,color=0x93f212},
	{x=1022+19,y=522+18,color=0xa4fd23},
	{x=948+19,y=667+18,color=0xffcc00}
	},
	degree = 98
}

--6--战斗中-播报中-下面是绿色点
view[view_bt_playing] = {
	feature = {
	{x=0+1263,y=0+28,color=0xffcb00},
	{x=140+1263,y=1+28,color=0xffcb00},
	{x=112+1263,y=86+28,color=0x93f212},
	{x=-190+1263,y=590+28,color=0xa4fd23},
	{x=-296+1263,y=657+28,color=0xffcc00}
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
	{x=1322+19,y=6+18,color=0xffcc00}
	},
	degree = 98,
	disable = {
	{x=1022+19,y=522+18,color=0xa4fd23}
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
	{x=0+20,y=0+17,color=0xfdfdfd},
	{x=1383+20,y=10+17,color=0xffcb00}
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
	{x=0+263,y=0+164,color=0xb6b6c7},
	{x=7+263,y=407+164,color=0xfdca00},
	{x=243+263,y=209+164,color=0xfec507},
	{x=596+263,y=351+164,color=0xffcc00},
	{x=601+263,y=-3+164,color=0x65656f}
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
	{x=-429+682,y=346+348,color=0xe1a100}
	},
	degree = 98
}
return view