func = {}

func[view_sample] = {
	[target_sample] = function()
		dlog("运行了func[view_sample][target_sample]...")
	end,
	[target_default] = function()
		dlog("运行了func[view_sample][target_default]...")
	end
}

--未定义func[view]执行run时执行这里
function run_default()
	dlog("运行了run_default view = %d target = %d",state.view,state.target)
end

--未定义func[view][target]执行run时执行这里
function func_default()
	dlog("运行了func_default view = %d target = %d",state.view,state.target)
end

func[view_home] = {
	[target_default] = function()
		dlog("主页")
	end
}

func[view_slc_dg_type] = {
	[target_default] = function()
		dlog("选择副本类型：每日，主线，活动等")
	end
}

func[view_slc_dg_main] = {
	[target_default] = function()
		dlog("选择主线副本，6-8，5-8e等")
	end
}

func[view_slc_team] = {
	[target_default] = function()
		dlog("选择队伍，队伍1，队伍5等")
	end
}

func[view_bt_slc_acn] = {
	[target_default] = function()
		dlog("战斗中-选择行动")
	end
}

func[view_bt_playing] = {
	[target_default] = function()
		dlog("战斗中-播报中-下面是绿色点")
	end
}

func[view_bt_playing2] = {
	[target_default] = function()
		dlog("战斗中-播报中-下面是蓝色点")
	end
}

func[view_bt_report] = {
	[target_default] = function()
		dlog("战斗中-战斗经验结算")
	end
}

func[view_bt_waiting] = {
	[target_default] = function()
		dlog("战斗中-打捞老婆")
	end
}

func[view_bt_get_waifu] = {
	[target_default] = function()
		dlog("战斗中-捞到老婆")
	end
}

func[view_bt_next] = {
	[target_default] = function()
		dlog("战斗中-下一波")
	end
}

func[view_bt_moving] = {
	[target_default] = function()
		dlog("战斗中-赶路到下一波")
	end
}

func[view_bt_over] = {
	[target_default] = function()
		dlog("战斗中-总结算界面")
	end
}

func[view_stop_repeat] = {
	[target_default] = function()
		dlog("选择是否停止反复战斗")
	end
}

func[view_ctn_mission] = {
	[target_default] = function()
		dlog("主页-继续远征")
	end
}

func[view_player_info] = {
	[target_default] = function()
		dlog("主页-玩家信息")
	end
}

return func