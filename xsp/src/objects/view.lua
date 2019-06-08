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
	}
}

view[view_slc_dg_type] = {
	feature = {
		
	}
}

return view