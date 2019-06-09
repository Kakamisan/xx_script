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

swc[swc_chapter1] = {
	body = {1340,26,1425,56},
	area = {1325,22,1332,32},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	feature_off = {
		{x=0,y=0,color=0x3a3f42}
	},
	degree = 70,
	view = {view_slc_dg_main}
}

swc[swc_chapter2] = {
	body = {1341,99,1421,123},
	area = {1326,91,1334,98},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	feature_off = {
		{x=0,y=0,color=0x3a3f42}
	},
	degree = 70,
	view = {view_slc_dg_main}
}

swc[swc_chapter3] = {
	body = {1339,166,1422,190},
	area = {1327,160,1338,168},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	feature_off = {
		{x=0,y=0,color=0x3a3f42}
	},
	degree = 70,
	view = {view_slc_dg_main}
}

swc[swc_chapter4] = {
	body = {1339,233,1420,260},
	area = {1325,226,1336,235},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	feature_off = {
		{x=0,y=0,color=0x3a3f42}
	},
	degree = 70,
	view = {view_slc_dg_main}
}

swc[swc_chapter5] = {
	body = {1338,302,1422,326},
	area = {1327,296,1342,305},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	feature_off = {
		{x=0,y=0,color=0x3a3f42}
	},
	degree = 70,
	view = {view_slc_dg_main}
}

swc[swc_chapter6] = {
	body = {1343,371,1419,395},
	area = {1326,362,1336,373},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	feature_off = {
		{x=0,y=0,color=0x3a3f42}
	},
	degree = 70,
	view = {view_slc_dg_main}
}

swc[swc_fb_1] = {
	body = {303,424,335,440},
	area = {297,433,299,437},
	feature = {
		{x=0,y=0,color=0xaf7701}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_2] = {
	body = {418,423,449,440},
	area = {410,433,413,438},
	feature = {
		{x=0,y=0,color=0xaf7701}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_3] = {
	body = {532,423,564,439},
	area = {524,433,526,438},
	feature = {
		{x=0,y=0,color=0xaf7701}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_4] = {
	body = {644,423,676,443},
	area = {638,433,640,439},
	feature = {
		{x=0,y=0,color=0xaf7701}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_5] = {
	body = {757,426,789,439},
	area = {751,432,753,439},
	feature = {
		{x=0,y=0,color=0xaf7701}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_6] = {
	body = {870,424,903,441},
	area = {864,433,866,438},
	feature = {
		{x=0,y=0,color=0xaf7701}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_7] = {
	body = {984,423,1015,438},
	area = {977,433,979,438},
	feature = {
		{x=0,y=0,color=0xaf7701}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_8] = {
	body = {1095,423,1128,438},
	area = {1089,433,1091,438},
	feature = {
		{x=0,y=0,color=0xaf7701}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}


swc[swc_fb_1b] = {
	body = {303+55,424-59,335+55,440-59},
	area = {297+55,433-59,299+55,437-59},
	feature = {
		{x=0,y=0,color=0x6caf01}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_2b] = {
	body = {418+55,423-59,449+55,440-59},
	area = {410+55,433-59,413+55,438-59},
	feature = {
		{x=0,y=0,color=0x6caf01}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_3b] = {
	body = {532+55,423-59,564+55,439-59},
	area = {524+55,433-59,526+55,438-59},
	feature = {
		{x=0,y=0,color=0x6caf01}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_4b] = {
	body = {644+55,423-59,676+55,443-59},
	area = {638+55,433-59,640+55,439-59},
	feature = {
		{x=0,y=0,color=0x6caf01}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_5b] = {
	body = {757+55,426-59,789+55,439-59},
	area = {751+55,432-59,753+55,439-59},
	feature = {
		{x=0,y=0,color=0x6caf01}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_6b] = {
	body = {870+55,424-59,903+55,441-59},
	area = {864+55,433-59,866+55,438-59},
	feature = {
		{x=0,y=0,color=0x6caf01}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_7b] = {
	body = {984+55,423-59,1015+55,438-59},
	area = {977+55,433-59,979+55,438-59},
	feature = {
		{x=0,y=0,color=0x6caf01}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_8b] = {
	body = {1095+55,423-59,1128+55,438-59},
	area = {1089+55,433-59,1091+55,438-59},
	feature = {
		{x=0,y=0,color=0x6caf01}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}


swc[swc_fb_1e] = {
	body = {303+54,424+62,335+54,440+62},
	area = {297+54,433+62,299+54,437+62},
	feature = {
		{x=0,y=0,color=0xaf0138}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_2e] = {
	body = {418+54,423+62,449+54,440+62},
	area = {410+54,433+62,413+54,438+62},
	feature = {
		{x=0,y=0,color=0xaf0138}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_3e] = {
	body = {532+54,423+62,564+54,439+62},
	area = {524+54,433+62,526+54,438+62},
	feature = {
		{x=0,y=0,color=0xaf0138}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_4e] = {
	body = {644+54,423+62,676+54,443+62},
	area = {638+54,433+62,640+54,439+62},
	feature = {
		{x=0,y=0,color=0xaf0138}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_5e] = {
	body = {757+54,426+62,789+54,439+62},
	area = {751+54,432+62,753+54,439+62},
	feature = {
		{x=0,y=0,color=0xaf0138}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_6e] = {
	body = {870+54,424+62,903+54,441+62},
	area = {864+54,433+62,866+54,438+62},
	feature = {
		{x=0,y=0,color=0xaf0138}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_7e] = {
	body = {984+54,423+62,1015+54,438+62},
	area = {977+54,433+62,979+54,438+62},
	feature = {
		{x=0,y=0,color=0xaf0138}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

swc[swc_fb_8e] = {
	body = {1095+54,423+62,1128+54,438+62},
	area = {1089+54,433+62,1091+54,438+62},
	feature = {
		{x=0,y=0,color=0xaf0138}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}



swc[swc_team_sld_up] = {
	body = {917,261,922,325},
	area = {917,256,922,262},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	feature_off = {
		{x=0,y=0,color=0x222228}
	},
	degree = 90,
	view = {view_slc_team}
}

swc[swc_team_sld_down] = {
	body = {917,628,922,688},
	area = {917,682,921,688},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	feature_off = {
		{x=0,y=0,color=0x222228}
	},
	degree = 90,
	view = {view_slc_team}
}



swc[swc_team_1] = {
	body = {508,272,881,337},
	area = {406,276,409,279},
	feature = {
		{x=0,y=0,color=0x000000}
	},
	feature_off = {
		{x=0,y=0,color=0xffcc00}
	},
	degree = 90,
	view = {view_slc_team}
}

swc[swc_team_2] = {
	body = {508,272+110,881,337+110},
	area = {406,276+110,409,279+110},
	feature = {
		{x=0,y=0,color=0x000000}
	},
	feature_off = {
		{x=0,y=0,color=0xffcc00}
	},
	degree = 90,
	view = {view_slc_team}
}

swc[swc_team_3] = {
	body = {508,272+220,881,337+220},
	area = {406,276+220,409,279+220},
	feature = {
		{x=0,y=0,color=0x000000}
	},
	feature_off = {
		{x=0,y=0,color=0xffcc00}
	},
	degree = 90,
	view = {view_slc_team}
}

swc[swc_team_4] = {
	body = {508,272+330,881,337+330},
	area = {406,276+330,409,279+330},
	feature = {
		{x=0,y=0,color=0x000000}
	},
	feature_off = {
		{x=0,y=0,color=0xffcc00}
	},
	degree = 90,
	view = {view_slc_team}
}

swc[swc_auto_atk] = {
	body = {1036,24,1059,46},
	area = {1044,38,1046,40},
	feature = {
		{x=0,y=0,color=0xb5eb05}
	},
	feature_off = {
		{x=0,y=0,color=0x303037}
	},
	degree = 90,
	view = {view_slc_team}
}

swc[swc_repeat] = {
	body = {1175,25,1196,46},
	area = {1181,38,1183,40},
	feature = {
		{x=0,y=0,color=0xb0e600}
	},
	feature_off = {
		{x=0,y=0,color=0x000000}
	},
	degree = 90,
	view = {view_slc_team}
}

swc[swc_mission_open1] = {
	body = {59,457,82,480},
	area = {155,327,194,468},
	feature = {
		{x=0,y=0,color=0xff7800}
	},
	degree = 95,
	view = {view_home}
}

swc[swc_mission_open2] = {
	body = {59,457,82,480},
	area = {155,327,194,468},
	feature = {
		{x=0,y=0,color=0x71e500}
	},
	degree = 95,
	view = {view_home}
}

return swc