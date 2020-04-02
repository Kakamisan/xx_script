local vt = {}

vt[0] = all_view

--1--主页
vt[view_home] = {
	view_home
	,view_slc_dg_type
	,view_player_info
	,view_ctn_mission
	,view_creator
}

--2--选择副本类型：每日，主线，活动等
vt[view_slc_dg_type] = {
	view_slc_dg_type
	,view_slc_dg_main
	,view_event
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
	,view_bt_playing
	,view_bt_slc_acn
	,view_bt_enemy_acn
	,view_full_bag
	,view_full_bag2
	,view_need_repair
--	,view_bt_playing
}

--5--战斗中-选择行动
vt[view_bt_slc_acn] = {
	view_bt_slc_acn
	,view_bt_playing
	,view_bt_quit
}

--6--战斗中-播报中-下面是绿色点
vt[view_bt_playing] = {
	view_bt_playing
	,view_bt_slc_acn
	,view_bt_enemy_acn
	,view_bt_report
	,view_bt_report2
}

--7--战斗中-播报中-下面是蓝色点
vt[view_bt_playing2] = {
	view_bt_playing
	,view_bt_report
	,view_bt_report2
	,view_bt_enemy_acn
	,view_bt_slc_acn
	,view_stop_repeat
	,view_bt_over
}

--8--战斗中-战斗经验结算
vt[view_bt_report] = {
	view_bt_report
	,view_bt_report2
	,view_bt_get_waifu
	,view_bt_next
	,view_bt_over
	,view_bt_playing
	,view_stop_repeat
	,view_full_bag2
	,view_level_up
}
--34
vt[view_bt_report2] = {
	view_bt_report2
	,view_bt_report
	,view_bt_get_waifu
	,view_bt_next
	,view_bt_over
	,view_bt_playing
	,view_stop_repeat
	,view_level_up
}

--9--战斗中-打捞老婆
vt[view_bt_waiting] = {
	view_bt_get_waifu
	,view_bt_slc_acn
	,view_bt_enemy_acn
	,view_bt_playing
	,view_bt_next
	,view_bt_over
	,view_stop_repeat
}

--10--战斗中-捞到老婆
vt[view_bt_get_waifu] = {
	view_bt_get_waifu
	,view_bt_next
	,view_bt_over
	,view_level_up
}

--11--战斗中-下一波
vt[view_bt_next] = {
	view_bt_next
	,view_bt_slc_acn
	,view_bt_enemy_acn
	,view_bt_playing
}

--12--战斗中-赶路到下一波
vt[view_bt_moving] = {
	view_bt_playing
	,view_bt_slc_acn
	,view_bt_enemy_acn
	,view_slc_dg_main
}

--13--战斗中-总结算界面
vt[view_bt_over] = {
	view_bt_over
	,view_slc_team
	,view_stop_repeat
	,view_full_bag
	,view_full_bag2
	,view_level_up
	,view_need_repair
--	,view_re_connect
}

--14--选择是否停止反复战斗
vt[view_stop_repeat] = {
	view_stop_repeat
	,view_slc_team
	,view_sys_online
	,view_bt_playing
	,view_bt_slc_acn
	,view_bt_enemy_acn
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
	,view_bt_playing
	,view_bt_slc_acn
	,view_bt_enemy_acn
	,view_bt_quit2
}

--18--战斗中-敌方行动
vt[view_bt_enemy_acn] = {
	view_bt_enemy_acn
	,view_bt_playing
	,view_bt_quit
}

--19--建造中心
vt[view_creator] = {
	view_creator
	,view_reback
	,view_home
	,view_ctn_mission
}

--20--分解中心
vt[view_reback] = {
	view_reback
	,view_reback_waifu
	,view_reback_waifu_ac
	,view_home
	,view_slc_team
	,view_ctn_mission
	,view_rebacking
	,view_reback_get
	,view_reback_get2
}

--21--老婆分解
vt[view_reback_waifu] = {
	view_reback_waifu
	,view_reback_waifu_al
	,view_reback
	,view_reback_full
}

--22--老婆分解-分A级以上弹窗警告
vt[view_reback_waifu_al] = {
	view_reback
	,view_reback_waifu_al
}

--23--老婆分解-确定分解
vt[view_reback_waifu_ac] = {
	view_reback_waifu_ac
	,view_reback_get
	,view_reback_get2
	,view_reback
	,view_rebacking
}

--24--老婆分解-获得物品
vt[view_reback_get] = {
	view_reback_get
	,view_reback
}

--25--战斗中-撤退
vt[view_bt_quit] = {
	view_bt_quit
	,view_slc_team
	,view_need_repair
}

--35--撤退
vt[view_bt_quit2] = {
	view_bt_quit2
	,view_bt_playing
}

--26--仓库满了
vt[view_full_bag] = {
	view_full_bag
	,view_reback
	,view_slc_team
}

--27--升级
vt[view_level_up] = {
	view_level_up
	,view_slc_team
	,view_stop_repeat
}

--28--要修复
vt[view_need_repair] = {
	view_need_repair
	,view_slc_team
}

--29--掉线重连
vt[view_re_connect] = {
	view_home
	,view_re_connect
	,view_slc_team
}

--30--装备分解-获得物品
vt[view_reback_get2] = {
	view_reback_get2
	,view_reback
}

--31--掉线重连
vt[view_re_connect2] = {
	view_home
	,view_re_connect2
	,view_slc_team
}

--32--标题界面
vt[view_title] = {
	view_home
	,view_ctn_mission
	,view_notice
	,view_title
}

--33--EVENT活动信息页
vt[view_event] = {
	view_event
	,view_slc_dg_main
	,view_slc_dg_type
}

--36--仓库满了-自动
vt[view_full_bag2] = {
	view_full_bag2
	,view_slc_team
	,view_sys_online
}

--37--上线公告
vt[view_notice] = {
	view_notice
	,view_home
}

--38--分解-分解中
vt[view_rebacking] = {
	view_reback_get
	,view_reback_get2
	,view_reback
	,view_rebacking
}

--39--分解-选取上限
vt[view_reback_full] = {
	view_reback_waifu_al
	,view_reback
	,view_reback_full
}

return vt