local vt = {}

vt[0] = {
	1,2,3,4,5,6,7,8,9,10
	,11,12,13,14,15,16
}
--1--主页
vt[view_home] = {
	view_home
	,view_slc_dg_type
	,view_player_info
	,view_ctn_mission
}

--2--选择副本类型：每日，主线，活动等
vt[view_slc_dg_type] = {
	view_slc_dg_type
	,view_slc_dg_main
	,view_home
}

--3--选择主线副本，6-8，5-8e等
vt[view_slc_dg_main] = {
	view_slc_dg_main
	,view_slc_team
	,view_home
	,view_ctn_mission
}

--4--选择队伍，队伍1，队伍5等
vt[view_slc_team] = {
	view_slc_team
	,view_slc_dg_main
	,view_sys_online
	,view_bt_playing2
	,view_bt_slc_acn
--	,view_bt_playing
}

--5--战斗中-选择行动
vt[view_bt_slc_acn] = {
	view_bt_slc_acn
	,view_bt_playing
}

--6--战斗中-播报中-下面是绿色点
vt[view_bt_playing] = {
	view_bt_playing
	,view_bt_slc_acn
	,view_bt_report
}

--7--战斗中-播报中-下面是蓝色点
vt[view_bt_playing2] = {
	view_bt_playing2
	,view_bt_report
	,view_bt_slc_acn
	,view_stop_repeat
	,view_bt_waiting
	,view_bt_over
}

--8--战斗中-战斗经验结算
vt[view_bt_report] = {
	view_bt_report
	,view_bt_waiting
	,view_bt_get_waifu
	,view_bt_next
	,view_bt_over
	,view_stop_repeat
}

--9--战斗中-打捞老婆
vt[view_bt_waiting] = {
	view_bt_waiting
	,view_bt_get_waifu
	,view_bt_next
	,view_bt_over
	,view_stop_repeat
}

--10--战斗中-捞到老婆
vt[view_bt_get_waifu] = {
	view_bt_get_waifu
	,view_bt_waiting
	,view_bt_next
	,view_bt_over
}

--11--战斗中-下一波
vt[view_bt_next] = {
	view_bt_next
	,view_bt_slc_acn
	,view_bt_playing2
}

--12--战斗中-赶路到下一波
vt[view_bt_moving] = {
	view_bt_playing2
	,view_bt_slc_acn
}

--13--战斗中-总结算界面
vt[view_bt_over] = {
	view_bt_over
	,view_slc_team
	,view_stop_repeat
}

--14--选择是否停止反复战斗
vt[view_stop_repeat] = {
	view_stop_repeat
	,view_slc_team
	,view_sys_online
	,view_bt_playing2
	,view_bt_slc_acn
}

--15--主页-继续远征
vt[view_ctn_mission] = {
	view_ctn_mission
	,view_home
}

--16--主页-玩家信息
vt[view_player_info] = {
	view_player_info
	,view_home
}

--17--载入
vt[view_sys_online] = {
	view_sys_online
	,view_bt_playing2
	,view_bt_slc_acn
}

return vt