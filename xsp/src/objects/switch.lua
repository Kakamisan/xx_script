local swc = {}

--swc[swc_sample]	= {
--	body		= {30,30,70,70},	--有效点击区域
--	area		= {0,0,100,100},	--检测区域
----	pivot		= {0,0},
--	anchor		= {0,0},			--锚点类型（对area和body有效）
--	feature		= {
--		{x=0,y=0,color=0xffffff}	--开关开启时特征
--	},
--	feature_off	= {
--		{x=0,y=0,color=0xffffff}	--开关关闭时特征
--	},
----	degree		= 100,
--	view		= {view_sample}		--开关所在界面
--}

swc[swc_team1]	= {
	body		= {108,122,190,143},	--有效点击区域
	area		= {190,135,200,144},	--检测区域
	feature		= {
		{x=0,y=0,color=0xffd952}	--开关开启时特征
	},
	feature_off	= {
		{x=0,y=0,color=0xefeff7}	--开关关闭时特征
	}
	,degree = 95
}

swc[swc_team2]	= {
	body		= {286,121,366,144},	--有效点击区域
	area		= {368,132,377,143},	--检测区域
	feature		= {
		{x=0,y=0,color=0xffdb56}	--开关开启时特征
	},
	feature_off	= {
		{x=0,y=0,color=0xefeff7}	--开关关闭时特征
	}
	,degree = 95
}

swc[swc_team3]	= {
	body		= {464,122,543,148},	--有效点击区域
	area		= {549,132,558,141},	--检测区域
	feature		= {
		{x=0,y=0,color=0xffd952}	--开关开启时特征
	},
	feature_off	= {
		{x=0,y=0,color=0xefeff7}	--开关关闭时特征
	}
	,degree = 95
}

swc[swc_group2]	= {
	body		= {339,123,449,145},	--有效点击区域
	area		= {470,131,481,143},	--检测区域
	feature		= {
		{x=0,y=0,color=0x396fd6}	--开关开启时特征
	},
	feature_off	= {
		{x=0,y=0,color=0xe7ebef}	--开关关闭时特征
	}
	,degree = 95
}

swc[swc_group3]	= {
	body		= {551,122,655,143},	--有效点击区域
	area		= {681,131,693,142},	--检测区域
	feature		= {
		{x=0,y=0,color=0x396fd6}	--开关开启时特征
	},
	feature_off	= {
		{x=0,y=0,color=0xe7ebef}	--开关关闭时特征
	}
	,degree = 95
}

swc[swc_group4]	= {
	body		= {762,119,874,144},	--有效点击区域
	area		= {887,131,896,139},	--检测区域
	feature		= {
		{x=0,y=0,color=0x396fd6}	--开关开启时特征
	},
	feature_off	= {
		{x=0,y=0,color=0xe7ebef}	--开关关闭时特征
	}
	,degree = 95
}

swc[swc_group5]	= {
	body		= {966,121,1086,143},	--有效点击区域
	area		= {1102,131,1114,141},	--检测区域
	feature		= {
		{x=0,y=0,color=0x396fd6}	--开关开启时特征
	},
	feature_off	= {
		{x=0,y=0,color=0xe7ebef}	--开关关闭时特征
	}
	,degree = 95
}

return swc