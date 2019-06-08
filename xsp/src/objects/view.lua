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

view[view_home] = {
	feature = {
		{x=0+48,y=0+251,color=0x2fa2e0,anchor={-1,0}},
		{x=-13+48,y=153+251,color=0x20d7f7,anchor={-1,0}},
		{x=22+48,y=217+251,color=0xffffff,anchor={-1,0}},
		{x=1212+48,y=-207+251,color=0xf1f9fc,anchor={1,0}},
		{x=1004+48,y=260+251,color=0x45413a,anchor={1,0}},
		{x=1019+48,y=260+251,color=0x45413a,anchor={1,0}}
	},
	degree = 98
}

view[view_slc_dg_type] = {
	feature = {
		{x=0+1,y=0+20,color=0xffcb00,anchor={-1,0}},
		{x=34+1,y=21+20,color=0x000000,anchor={-1,0}},
		{x=1025+1,y=515+20,color=0x49b1f2,anchor={0,0}},
		{x=950+1,y=558+20,color=0x47b2ef,anchor={0,0}},
		{x=1210+1,y=216+20,color=0xffffff,anchor={0,0}}
	},
	degree = 98
}

view[view_slc_dg_main] = {
	feature = {
		{x=0+1,y=0+31,color=0xffce01,anchor={-1,0}},
		{x=24+1,y=6+31,color=0x282423,anchor={-1,0}},
		{x=536+1,y=507+31,color=0xfdc705,anchor={0,0}},
		{x=1115+1,y=516+31,color=0xffffff,anchor={0,0}},
		{x=1277+1,y=648+31,color=0xfdc705,anchor={0,0}},
		{x=205+1,y=579+31,color=0x8cffff,anchor={0,0}}
	}
}

view[view_slc_team] = {
	feature = {
		{x=0+1,y=0+19,color=0xffcd00,anchor={-1,0}},
	{x=34+1,y=12+19,color=0x262423,anchor={-1,0}},
	{x=256+1,y=12+19,color=0xfdfdfd,anchor={0,0}},
	{x=1161+1,y=574+19,color=0x20d7f7,anchor={0,0}},
	{x=1032+1,y=579+19,color=0x84ef18,anchor={0,0}}
	}
}

--view[view_bt_slc_acn] = {
--	feature = {
		
--	}
--}

return view