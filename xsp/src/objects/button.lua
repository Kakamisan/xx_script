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
	body = {24,22,46,45}
}

--2--
btn[btn_world] = {
	body = {1167,451,1211,495},
	view = {view_home,view_notice}
}

--3--
btn[btn_main_story] = {
	body = {891,390,1018,510},
	view = {view_slc_dg_type}
}

--4--
btn[btn_normal] = {
	body = {534,195,670,463}
}

--5--
btn[btn_bt_next] = {
	body = {1177,613,1215,656},
	view = {view_bt_next}
}

--6--
btn[btn_ctn_mission] = {
	body = {655,533,734,557},
	view = {view_ctn_mission}
}

--7--
btn[btn_back_info] = {
	body = {1238,17,1265,46},
	view = {view_player_info}
}

--8--
btn[btn_check_fb_state] = {
	body = {1172,609,1243,656},
	view = {view_slc_dg_main}
}

--9--
btn[btn_stop_repeat] = {
	body = {578,542,692,572},
	view = {view_stop_repeat}
}

--10--
btn[btn_enter_bt] = {
	body = {900,648,1053,682},
	view = {view_slc_team}
}

--11--
btn[btn_start_turn] = {
	body = {1183,385,1226,426},
	view = {view_bt_slc_acn,view_bt_enemy_acn}
}

--12--
btn[btn_enter_reback] = {
	body = {1055,254,1101,303},
	view = {view_home}
}

--13--
btn[btn_to_reback] = {
	body = {1159,531,1260,567},
	view = {view_creator}
}

--14--
btn[btn_reback_start] = {
	body = {905,642,982,674},
	view = {view_reback}
}

--15--
btn[btn_reback_enter] = {
	body = {438,162,497,254},
	view = {view_reback}
}

--16--
btn[btn_reback_slc_ok] = {
	body = {1188,670,1251,698}
}

--17--
btn[btn_ack1] = {
	body = {708,539,774,568}
}

--18--
btn[btn_ack_get] = {
	body = {599,566,683,597},
	view = {view_reback_get,view_reback_get2}
}

--19--和btn_start_turn一样，写重了懒得删
btn[btn_turn_over] = btn[btn_start_turn]
--	body = {1080,324,1385,392}
--}

--20--
btn[btn_skill2] = {
	body = {992,600,1020,660}
}

--21--
btn[btn_wait] = {
	body = {1192,594,1225,653}
}

--22--
btn[btn_move] = {
	body = {1089,597,1123,659}
}

--23--
btn[btn_ge_1] = {
	body = {800,233,822,255}
}
btn[btn_ge_2] = {
	body = {941,234,966,257}
}
btn[btn_ge_3] = {
	body = {1080,233,1105,256}
}
btn[btn_ge_4] = {
	body = {809,324,834,345}
}
btn[btn_ge_5] = {
	body = {959,324,985,346}
}
btn[btn_ge_6] = {
	body = {1106,325,1134,347}
}
btn[btn_ge_7] = {
	body = {823,426,845,450}
}
btn[btn_ge_8] = {
	body = {982,430,1010,450}
}
btn[btn_ge_9] = {
	body = {1136,425,1167,447}
}


btn[btn_fe_1] = {
	body = {175,233,201,254}
}
btn[btn_fe_2] = {
	body = {318,230,350,252}
}
btn[btn_fe_3] = {
	body = {453,237,494,261}
}
btn[btn_fe_4] = {
	body = {152,325,181,347}
}
btn[btn_fe_5] = {
	body = {302,326,327,346}
}
btn[btn_fe_6] = {
	body = {449,329,479,348}
}
btn[btn_fe_7] = {
	body = {122,426,146,450}
}
btn[btn_fe_8] = {
	body = {282,431,304,449}
}
btn[btn_fe_9] = {
	body = {442,429,473,446}
}

btn[btn_bt_auto] = {
	body = {951,27,966,42}
}
btn[btn_bt_quit] = {
	body = {19,13,66,30}
}
btn[btn_ack_quit] = {
	body = {699,372,792,402}
}

btn[btn_full_bag_close] = {
	body = {1124,147,1139,162}
}

btn[btn_enter_reback2] = {
	body = {363,545,469,568}
}

btn[btn_ack2] = {
	body = {600,544,679,579}
}

btn[btn_cancel1] = {
	body = {495,543,577,568}
}

btn[btn_ack3] = {
	body = {599,548,684,573}
}

btn[btn_event] = {
	body = {749,185,829,264}
}

btn[btn_event_enter] = {
	body = {1131,590,1258,640}
}

btn[btn_reback_scroll_bottom] = {
	body = {1093,690,1099,696}
}

btn[btn_old_event_1] = {
	body = {240,601,338,643}
}

btn[btn_old_event_2] = {
	body = {486,599,582,636}
}

btn[btn_old_event_3] = {
	body = {706,606,802,634}
}

btn[btn_old_event_4] = {
	body = {900,607,971,631}
}

return btn