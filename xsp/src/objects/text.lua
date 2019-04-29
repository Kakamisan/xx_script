local text = {}

text[text_sample]	= {
	area 			= {0,0,100,100},	--检测区域
--	pivot			= {0,0},
	anchor			= {0,0},			--锚点
	white_list		= "123",			--识别白名单
	diff			= {"0xffffff-0x333333"},	--ocr识别的diff
	view			= {view_sample}		--所在界面
}

return text