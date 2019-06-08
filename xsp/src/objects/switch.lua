local swc = {}

swc[swc_sample]	= {
	body		= {30,30,70,70},	--有效点击区域
	area		= {0,0,100,100},	--检测区域
--	pivot		= {0,0},
	anchor		= {0,0},			--锚点类型（对area和body有效）
	feature		= {
		{x=0,y=0,color=0xffffff}	--开关开启时特征
	},
	feature_off	= {
		{x=0,y=0,color=0xffffff}	--开关关闭时特征
	},
--	degree		= 100,
	view		= {view_sample}		--开关所在界面
}

return swc