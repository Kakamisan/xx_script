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

return item