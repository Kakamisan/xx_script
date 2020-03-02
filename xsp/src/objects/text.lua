local text = {}

text[text_sample]	= {
	area 			= {0,0,100,100},	--检测区域
--	pivot			= {0,0},
	anchor			= {0,0},			--锚点
	white_list		= "123",			--识别白名单
	diff			= {"0xffffff-0x333333"},	--ocr识别的diff
	view			= {view_sample}		--所在界面
}

text[text_reback_gain] = {
	area = {229,372,329,412},
	white_list = "1234567890",
	diff = {"0xe7e7e7-0x444444"},
	view = {view_reback}
}

return text