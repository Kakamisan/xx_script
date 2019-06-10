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
	body = {718,430,1057,637}
}

--5--
btn[btn_bt_next] = {
	body = {1308,602,1387,669},
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
	body = {1309,386,1380,453},
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
	view = {view_reback_get}
}
return btn