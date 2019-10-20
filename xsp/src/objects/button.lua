local btn = {}

btn[btn_sample]	= {
	body		= {30,30,70,70},	--有效点击区域
	area		= {0,0,100,100},	--检测区域
--	pivot		= {0,0},
	anchor		= {0,0},			--锚点类型（对area和body有效）
	feature		= {
		{x=0,y=0,color=0xffffff}	--检测特征
	},
--	degree		= 100,
	view		= {view_sample}		--按钮所在界面（可多个界面同一按钮，例 返回键）
}

--1--
btn[btn_back_any] = {
	body = {10,30,108,63},
	anchor = {-1,-1}
}

--2--
btn[btn_world] = {
	body = {1306,434,1390,515},
	view = {view_home}
}

--3--
btn[btn_main_story] = {
	body = {900,368,1073,532},
	view = {view_slc_dg_type}
}

--4--
btn[btn_normal] = {
	body = {582,468,745,596}
}

--5--
btn[btn_bt_next] = {
	body = {1312,584,1379,655},
	view = {view_bt_next}
}

--6--
btn[btn_ctn_mission] = {
	body = {716,524,830,564},
	view = {view_ctn_mission}
}

--7--
btn[btn_back_info] = {
	body = {1393,17,1435,50},
	view = {view_player_info}
}

--8--
btn[btn_check_fb_state] = {
	body = {1247,609,1332,667},
	view = {view_slc_dg_main}
}

--9--
btn[btn_stop_repeat] = {
	body = {657,541,781,567},
	view = {view_stop_repeat}
}

--10--
btn[btn_enter_bt] = {
	body = {1050,647,1244,681},
	view = {view_slc_team}
}

--11--
btn[btn_start_turn] = {
	body = {1080,324,1385,392},
	view = {view_bt_slc_acn,view_bt_enemy_acn}
}

--12--
btn[btn_enter_reback] = {
	body = {1199,260,1269,311},
	view = {view_home}
}

--13--
btn[btn_to_reback] = {
	body = {1330,493,1419,533},
	view = {view_creator}
}

--14--
btn[btn_reback_start] = {
	body = {1049,645,1165,683},
	view = {view_reback}
}

--15--
btn[btn_reback_enter] = {
	body = {477,159,545,267},
	view = {view_reback}
}

--16--
btn[btn_reback_slc_ok] = {
	body = {1344,672,1418,704},
	view = {view_reback_waifu}
}

--17--
btn[btn_ack1] = {
	body = {765,539,864,571}
}

--18--
btn[btn_ack_get] = {
	body = {668,583,766,620},
	view = {view_reback_get,view_reback_get2}
}

--19--和btn_start_turn一样，写重了懒得删
btn[btn_turn_over] = btn[btn_start_turn]
--	body = {1080,324,1385,392}
--}

--20--
btn[btn_skill2] = {
	body = {1086,627,1130,671}
}

--21--
btn[btn_wait] = {
	body = {1318,628,1363,667}
}

--22--
btn[btn_move] = {
	body = {1201,625,1246,672}
}

--23--
btn[btn_ge_1] = {
	body = {893,219,915,240}
}
btn[btn_ge_2] = {
	body = {1058,218,1088,244}
}
btn[btn_ge_3] = {
	body = {1215,219,1243,243}
}
btn[btn_ge_4] = {
	body = {909,323,935,346}
}
btn[btn_ge_5] = {
	body = {1084,320,1105,343}
}
btn[btn_ge_6] = {
	body = {1249,320,1276,343}
}
btn[btn_ge_7] = {
	body = {924,433,947,457}
}
btn[btn_ge_8] = {
	body = {1108,436,1132,461}
}
btn[btn_ge_9] = {
	body = {1284,438,1309,463}
}


btn[btn_fe_1] = {
	body = {204,220,226,242}
}
btn[btn_fe_2] = {
	body = {366,218,389,240}
}
btn[btn_fe_3] = {
	body = {518,215,539,237}
}
btn[btn_fe_4] = {
	body = {175,318,196,342}
}
btn[btn_fe_5] = {
	body = {347,322,367,344}
}
btn[btn_fe_6] = {
	body = {510,321,532,344}
}
btn[btn_fe_7] = {
	body = {137,439,159,461}
}
btn[btn_fe_8] = {
	body = {319,440,342,462}
}
btn[btn_fe_9] = {
	body = {502,439,523,461}
}

btn[btn_bt_auto] = {
	body = {1071,29,1090,49}
}
btn[btn_bt_quit] = {
	body = {21,11,74,37}
}
btn[btn_ack_quit] = {
	body = {781,374,895,405}
}

btn[btn_full_bag_close] = {
	body = {1200,144,1220,166}
}

btn[btn_enter_reback2] = {
	body = {488,540,551,568}
}

btn[btn_ack2] = {
	body = {0.667*1006,0.667*845,0.667*1139,0.667*889}
}

btn[btn_cancel1] = {
	body = {576,541,659,570}
}

btn[btn_ack3] = {
	body = {673,541,766,565}
}

btn[btn_event] = {
	body = {445,242,536,330}
}

btn[btn_event_enter] = {
	body = {1310,139,1341,190}
}

btn[btn_reback_scroll_bottom] = {
	body = {1173,655,1178,693}
}

return btn