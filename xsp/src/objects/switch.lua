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
	body = {1185,27,1254,51},
	area = {1265,35,1275,45},
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
	body = {1186,98,1254,117},
	area = {1265,103,1273,116},
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
	body = {1185,168,1255,188},
	area = {1264,168,1275,180},
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
	body = {1185,233,1252,254},
	area = {1265,238,1274,251},
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
	body = {1187,304,1258,324},
	area = {1264,304,1275,322},
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
	body = {1178,373,1256,396},
	area = {1267,375,1276,387},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	feature_off = {
		{x=0,y=0,color=0x3a3f42}
	},
	degree = 70,
	view = {view_slc_dg_main}
}

swc[swc_chapter7] = {
	body = {1178,440,1256,466},
	area = {1267,445,1276,457},
	feature = {
		{x=0,y=0,color=0xffcc00}
	},
	feature_off = {
		{x=0,y=0,color=0x3a3f42}
	},
	degree = 70,
	view = {view_slc_dg_main}
}

swc[swc_chapter8] = {
	body = {1178,510,1256,536},
	area = {1267,515,1276,527},
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
	body = {303-80,424,335-80,440},
	area = {297-80,433,299-80,437},
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
	body = {418-80,423,449-80,440},
	area = {410-80,433,413-80,438},
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
	body = {532-80,423,564-80,439},
	area = {524-80,433,526-80,438},
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
	body = {644-80,423,676-80,443},
	area = {638-80,433,640-80,439},
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
	body = {757-80,426,789-80,439},
	area = {751-80,432,753-80,439},
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
	body = {870-80,424,903-80,441},
	area = {864-80,433,866-80,438},
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
	body = {984-80,423,1015-80,438},
	area = {977-80,433,979-80,438},
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
	body = {1095-80,423,1128-80,438},
	area = {1009,433,1011,437},
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
	body = {303+55-80,424-59,335+55-80,440-59},
	area = {297+55-80,433-59,299+55-80,437-59},
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
	body = {418+55-80,423-59,449+55-80,440-59},
	area = {410+55-80,433-59,413+55-80,438-59},
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
	body = {532+55-80,423-59,564+55-80,439-59},
	area = {524+55-80,433-59,526+55-80,438-59},
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
	body = {644+55-80,423-59,676+55-80,443-59},
	area = {638+55-80,433-59,640+55-80,439-59},
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
	body = {757+55-80,426-59,789+55-80,439-59},
	area = {751+55-80,432-59,753+55-80,439-59},
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
	body = {870+55-80,424-59,903+55-80,441-59},
	area = {864+55-80,433-59,866+55-80,438-59},
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
	body = {984+55-80,423-59,1015+55-80,438-59},
	area = {977+55-80,433-59,979+55-80,438-59},
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
	body = {1095+55-80,423-59,1128+55-80,438-59},
	area = {1089+55-80,433-59,1091+55-80,438-59},
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
	body = {303+54-80,424+62,335+54-80,440+62},
	area = {297+54-80,433+62,299+54-80,437+62},
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
	body = {418+54-80,423+62,449+54-80,440+62},
	area = {410+54-80,433+62,413+54-80,438+62},
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
	body = {532+54-80,423+62,564+54-80,439+62},
	area = {524+54-80,433+62,526+54-80,438+62},
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
	body = {644+54-80,423+62,676+54-80,443+62},
	area = {638+54-80,433+62,640+54-80,439+62},
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
	body = {757+54-80,426+62,789+54-80,439+62},
	area = {751+54-80,432+62,753+54-80,439+62},
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
	body = {870+54-80,424+62,903+54-80,441+62},
	area = {864+54-80,433+62,866+54-80,438+62},
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
	body = {984+54-80,423+62,1015+54-80,438+62},
	area = {977+54-80,433+62,979+54-80,438+62},
	feature = {
		{x=0,y=0,color=0xaf0138}
	},
	feature_off = {
		{x=0,y=0,color=0x0c1213}
	},
	degree = 80,
	view = {view_slc_dg_main}
}

--swc[swc_fb_8e] = {
--	body = {1095+54-80,423+62,1128+54-80,438+62},
--	area = {1089+54-80,433+62,1091+54-80,438+62},
--	feature = {
--		{x=0,y=0,color=0xaf0138}
--	},
--	feature_off = {
--		{x=0,y=0,color=0x0c1213}
--	},
--	degree = 80,
--	view = {view_slc_dg_main}
--}

swc[swc_fb_8e] = {
	body = {984+54-80,423+62,1015+54-80,438+62},
	area = {977+54-80,433+62,979+54-80,438+62},
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
	body = {882-80,275,886-80,303},
	area = {882-80,275,886-80,303},
	feature = {
		{x=0,y=0,color=0xfecb00}
	},
	feature_off = {
		{x=0,y=0,color=0x212125}
	},
	degree = 92,
	view = {view_slc_team}
}

swc[swc_team_sld_down] = {
	body = {883-80,625,887-80,665},
	area = {883-80,625,887-80,665},
	feature = {
		{x=0,y=0,color=0xfecb00}
	},
	feature_off = {
		{x=0,y=0,color=0x212125}
	},
	degree = 90,
	view = {view_slc_team}
}



swc[swc_team_1] = {
	body = {506-80,281,794-80,328},
	area = {370-80,273,376-80,275},
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
	body = {506-80,281+110,794-80,328+110},
	area = {370-80,273+110,376-80,275+110},
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
	body = {506-80,281+220,794-80,328+220},
	area = {370-80,273+220,376-80,275+220},
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
	body = {506-80,281+330,794-80,328+330},
	area = {370-80,273+330,376-80,275+330},
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
	body = {1004-80,26,1021-80,44},
	area = {1008-80,38,1012-80,39},
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
	body = {1141-80,25,1162-80,44},
	area = {1146-80,38,1149-80,39},
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
	degree = 98,
	view = {view_home}
}

swc[swc_mission_open2] = {
	body = {59,457,82,480},
	area = {155,327,194,468},
	feature = {
		{x=0,y=0,color=0x71e500}
	},
	degree = 98,
	view = {view_home}
}

swc[swc_reback_ss] = {
	body = {1100,243,1163,272},
	area = {1149,246,1164,270},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_waifu}
}

swc[swc_reback_s] = {
	body = {1194,243,1241,269},
	area = {1236,249,1246,270},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_waifu}
}

swc[swc_reback_a] = {
	body = {1107,295,1159,318},
	area = {1153,299,1164,320},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_waifu}
}

swc[swc_reback_b] = {
	body = {1192,298,1245,318},
	area = {1234,299,1243,317},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_waifu}
}

swc[swc_change_eqm] = {
	body = {244,106,381,132},
	area = {354,109,378,129},
	feature = {
		{x=0,y=0,color=0xffce00}
	},
	feature_off = {
		{x=0,y=0,color=0x11303e}
	},
	view = {view_reback}
}

swc[swc_slc_all_b] = {
	body = {1084,603,1266,624},
	area = {1253,607,1269,623},
	feature = {
		{x=0,y=0,color=0xda6666}
	},
	feature_off = {
		{x=0,y=0,color=0x96ec34}
	},
	degree = 95,
	view = {view_reback_waifu,view_reback_eqm}
}

swc[swc_reback_ss_eqm] = {
	body = {1107,311,1165,340},
	area = {1153,313,1165,334},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_eqm}
}

swc[swc_reback_s_eqm] = {
	body = {1193,314,1250,339},
	area = {1238,319,1249,336},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_eqm}
}

swc[swc_reback_a_eqm] = {
	body = {1107,357,1156,383},
	area = {1150,363,1162,379},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_eqm}
}

swc[swc_reback_b_eqm] = {
	body = {1195,357,1243,380},
	area = {1234,361,1248,379},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_eqm}
}

swc[swc_reback_sss_eqm] = {
	body = {1144,269,1210,292},
	area = {1206,274,1217,289},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_eqm}
}

swc[swc_reback_no_eqm] = {
	body = {1196,528,1245,553},
	area = {1242,534,1252,551},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_eqm}
}

swc[swc_reback_no] = {
	body = {1216,537,1248,569},
	area = {1250,535,1254,539},
	feature = {
		{x=0,y=0,color=0xffcf04}
	},
	feature_off = {
		{x=0,y=0,color=0x292929}
	},
	view = {view_reback_waifu}
}

swc[swc_old_event] = {
	body = {981,50,1086,74},
	area = {1097,49,1114,66},
	feature = {
		{x=0,y=0,color=0x68cf04}
	},
	feature_off = {
		{x=0,y=0,color=0x52a600}
	},
	view = {view_event}
}

return swc