local view = {}

view[view_sample]	= {
	feature			= {
		{x=100,y=100,color=0xffffff,anchor={0,0}}	--使用绝对坐标
	},
	items			= {
		{area={0,0,100,100},anchor={0,0},feature={x=0,y=0,color=0xffffff}}	--判断view时允许二次检测是否存在若干个item
	}
}

return view