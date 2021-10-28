local sld = {}

sld[sld_sample]	= {
	from		= {0,0,10,10},			--起点区域
	to			= {100,100,110,110},	--终点区域
--	pivot		= {0,0},
	anchor		= {0,0},				--锚点类型
	len			= 30					--曲线点个数
}

sld[sld_reback_up] = {
	from		= {833,589,858,612},
	to			= {795,236,943,329},
	len			= 30
}

sld[sld_chapter_up] = {
	from		= {1220,425,1235,445},
	to			= {1212,235,1228,251},
	len			= 30
}

sld[sld_chapter_down] = {
	from		= {1212,235,1228,251},
	to			= {1220,425,1235,445},
	len			= 30
}

return sld