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
	[target_wait] = function()
		if mTime() > state.clock and slc(cfg.extra,fextra_mission) then
			click_btn(btn_enter_reback)
			state.clock = mTime() + math.random(1000,2000)*1000
		end
		change_target()
	end,
	[target_back] = function()
		change_target()
	end,
	[target_atk] = function()
		click_btn(btn_world)
	end,
	[target_mission] = function()
		local ret = check_mission()
		if ret then
			local ret2 = change_target()
			if ret2 and (cfg.main == fmain_mission or state.had_bt >= cfg.btcount) then
				only_mission_wait_ts = mTime() + math.random(120,170)*1000
			end
		end
	end,
	[target_reback] = function()
		click_btn(btn_enter_reback)
	end,
	[target_default] = function()
		change_target()
	end
}

func[view_slc_dg_type] = {
	[target_atk] = function()
		if is_event(cfg.chapter) then
			click_btn(btn_event)
			return true
		end
		click_btn(btn_main_story)
	end,
	[target_default] = function()
		click_btn(btn_back_any)
	end
}

func[view_slc_dg_main] = {
	[target_atk] = function()
		click_sub_fb()
	end,
	[target_default] = function()
		click_btn(btn_back_any)
	end
}

func[view_slc_team] = {
	[target_atk] = function()
		if check_mission_slc_team() then return true end
		if slc_team() then
			init_repeat_battle()
			click_btn(btn_enter_bt)
			change_bt_playing_wait_time(1)
			--如果闹钟模式，进入等待
			if cfg.main == fmain_alarm then
				state.alarm = mTime() + math.max(cfg.alarm,min_alarm)*1000
				state.target = target_wait
			end
		end
	end,
	[target_wait] = function()
		if mTime() > state.alarm then
			if can_to_target_reback() then return true end
			if can_to_target_mission() then return true end
		end
	end,
	[target_default] = function()
		click_btn(btn_back_any)
	end
}





func[view_bt_slc_acn] = {
	[target_default] = function()
		if cfg.main == fmain_repeat then
			slc_action()
		end
	end
}

func[view_bt_enemy_acn] = {
	[target_default] = function()
		click_btn(btn_start_turn)
	end
}

func[view_bt_playing] = {
	[target_default] = function()
		--do nothing
		do_get_in_battle()
	end
}

func[view_bt_playing2] = {
	[target_default] = function()
		--do nothing
		do_get_in_battle()
	end
}

rand_sleep_bt_report = true
func[view_bt_report] = {
	[target_default] = function()
		if rand_sleep_bt_report and cfg.main == fmain_repeat and math.random(1,100) < 17 then
			sleep(7500,9500)
		end
		rand_sleep_bt_report = false
		if cfg.main == fmain_repeat then click_btn(btn_normal) end
	end
}

func[view_bt_waiting] = {
	[target_default] = function()
		--do nothing
	end
}

func[view_bt_get_waifu] = {
	[target_default] = function()
		if cfg.main == fmain_repeat then click_btn(btn_normal) end
	end
}

func[view_bt_next] = {
	[target_default] = function()
		click_btn(btn_bt_next)
		round_over()
	end
}

func[view_bt_moving] = {
	[target_default] = function()
		--do nothing
	end
}

func[view_bt_over] = {
	[target_default] = function()
		if cfg.main == fmain_repeat then click_btn(btn_normal) end
	end
}

func[view_bt_quit] = {
	[target_default] = function()
		click_btn(btn_ack_quit)
	end
}







func[view_stop_repeat] = {
	[target_mission] = function()
		click_btn(btn_stop_repeat)
	end,
	[target_reback] = function()
		click_btn(btn_stop_repeat)
	end,
	[target_reback2] = function()
		click_btn(btn_stop_repeat)
	end,
	[target_back] = function()
		click_btn(btn_stop_repeat)
	end,
	[target_default] = function()
		stop_repeat()
	end
}

func[view_ctn_mission] = {
	[target_default] = function()
		click_btn(btn_ctn_mission)
	end
}

func[view_player_info] = {
	[target_default] = function()
		click_btn(btn_back_player_info)
	end
}

new_bt_add_count = true
func[view_sys_online] = {
	[target_default] = function()
		--do nothing
		if mTime() > state.clock_reback and cfg.main ~= fmain_alarm then
			state.clock_reback = mTime() + math.random(3000,4000)*1000
			if can_to_target_reback() then
				
			else 
				can_to_target_mission()
			end
		end
		if new_bt_add_count then
			state.had_bt  = state.had_bt + 1
			if state.had_bt >= cfg.btcount then
				if can_to_target_mission() then
				else
					state.target = target_back
				end
			end
			new_bt_add_count = false
		end
	end
}

func[view_creator] = {
	[target_reback] = function()
		click_btn(btn_to_reback)
	end,
	[target_default] = function()
		click_btn(btn_back_any)
	end
}

reback_just_now = false
func[view_reback] = {
	[target_reback] = function()
		if handle_reback() then
			reback_just_now = true
			if can_to_target_reback2() then return true end
			if cfg.main == fmain_alarm then
				if can_to_target_mission() then return true end
				if can_to_target_atk() then return true end
				state.target = target_back
				return true
			end
			if can_to_target_atk() then return true end
			if can_to_target_mission() then return true end
			state.target = target_back
		end
	end,
	[target_reback2] = function()
		if handle_reback2() then
			reback_just_now = true
			if cfg.main == fmain_alarm then
				if can_to_target_mission() then return true end
				if can_to_target_atk() then return true end
				state.target = target_back
				return true
			end
			if can_to_target_atk() then return true end
			if can_to_target_mission() then return true end
			state.target = target_back
		end
	end,
	[target_default] = function()
		click_btn(btn_back_any)
	end
}

func[view_reback_waifu] = {
	[target_reback] = function()
		if reback_waifu_slc() then
			had_reback = true
			click_btn(btn_reback_slc_ok)
		end
	end,
	[target_reback2] = function()
		if reback_eqm_slc() then
			had_reback2 = true
			click_btn(btn_reback_slc_ok)
		end
	end,
	[target_default] = function()
		click_btn(btn_back_any)
	end
}

func[view_reback_waifu_al] = {
	[target_default] = function()
		click_btn(btn_ack1)
	end
}

func[view_reback_waifu_ac] = {
	[target_default] = function()
		click_btn(btn_ack1)
	end
}

func[view_reback_get] = {
	[target_default] = function()
		click_btn(btn_ack_get)
	end
}

func[view_reback_get2] = {
	[target_default] = function()
		click_btn(btn_ack_get)
	end
}

func[view_full_bag] = {
	[target_default] = function()
		if not reback_just_now and can_to_target_reback() then
			return true
		end
		cfg.btcount = 0
		if can_to_target_mission() then return true end
		state.target = target_back
	end,
	[target_mission] = function()
		click_btn(btn_full_bag_close)
	end,
	[target_back] = function()
		click_btn(btn_full_bag_close)
	end,
	[target_reback] = function()
		click_btn(btn_enter_reback2)
	end
}

func[view_level_up] = {
	[target_default] = function()
		click_btn(btn_ack2)
	end
}


func[view_need_repair] = {
	[target_default] = function()
		cfg.btcount = 0
		click_btn(btn_cancel1)
		if can_to_target_mission() then
		else
			state.target = target_back
		end
	end
}

func[view_re_connect] = {
	[target_default] = function()
		click_btn(btn_ack3)
	end
}

func[view_re_connect2] = {
	[target_default] = function()
		click_btn(btn_ack3)
	end
}


func[view_title] = {
	[target_default] = function()
		click_btn(btn_normal)
		sleep(10000)
	end
}


func[view_event] = {
	[target_default] = function()
		click_btn(btn_event_enter)
	end
}










--------------------------------------------------------------------------------------------------
--------------------------------------------sub function------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------













only_mission_wait_ts = 0
function change_target()
	if handle_change_target[state.target]() then return true end
	return false
end
handle_change_target = {
	[target_default] = function()
		if can_to_target_atk() then return true end
		if can_to_target_mission() then return true end
		state.target = target_back
		return true
	end,
	[target_wait] = function()
		if (cfg.main == fmain_mission or state.had_bt >= cfg.btcount) and mTime() > only_mission_wait_ts then
			if can_to_target_mission() then return true end
		end
		return false
	end,
	[target_back] = function()
		state.target = target_wait
		return true
	end,
	[target_atk] = function()
		
	end,
	[target_mission] = function()
		if can_to_target_atk() then return true end
		state.target = target_back
		return true
	end,
	[target_reback] = function()
		if can_to_target_mission() then return true end
		if can_to_target_atk() then return true end
		state.target = target_back
		return true
	end,
}




--章节是否是活动章节
function is_event(C)
	if C == 7 
	or C == 8 
	or C == 9
	then return true end
	return false
end


function click_sub_fb()
	if not swc_on(chapter_swc[cfg.chapter]) then return false end
	if not swc_on(sub_fb_swc[cfg.subfb]) then return false end
	sleep()
	click_btn(btn_check_fb_state)
	local ret = timeout(in_view,view_slc_team)
	if not ret then return false end
	return true
end
chapter_swc = {
	[1] = swc_chapter1,
	[2] = swc_chapter2,
	[3] = swc_chapter3,
	[4] = swc_chapter4,
	[5] = swc_chapter5,
	[6] = swc_chapter6,
	
	[7] = swc_chapter1,
	[8] = swc_chapter2,
	[9] = swc_chapter3
}
sub_fb_swc = {
	[1] = swc_fb_1,
	[2] = swc_fb_2,
	[3] = swc_fb_3,
	[4] = swc_fb_4,
	[5] = swc_fb_5,
	[6] = swc_fb_6,
	[7] = swc_fb_7,
	[8] = swc_fb_8,
	
	[9] = swc_fb_1b,
	[10] = swc_fb_2b,
	[11] = swc_fb_3b,
	[12] = swc_fb_4b,
	[13] = swc_fb_5b,
	[14] = swc_fb_6b,
	[15] = swc_fb_7b,
	[16] = swc_fb_8b,
	
	[17] = swc_fb_1e,
	[18] = swc_fb_2e,
	[19] = swc_fb_3e,
	[20] = swc_fb_4e,
	[21] = swc_fb_5e,
	[22] = swc_fb_6e,
	[23] = swc_fb_7e,
	[24] = swc_fb_8e,
}






function slc_team()
	if cfg.team > 4 and not swc_on(slc_team_sld[cfg.team]) then return false end
	if not swc_on(slc_team_1[cfg.team]) then return false end
	if cfg.main == fmain_repeat then
		if not swc_off(swc_auto_atk) then return false end
	else
		if not swc_on(swc_repeat) then return false end
	end
	return true
end
slc_team_sld = {
	[1] = swc_team_sld_up,
	[2] = swc_team_sld_up,
	[3] = swc_team_sld_up,
	[4] = swc_team_sld_up,
	
	[5] = swc_team_sld_down,
	[6] = swc_team_sld_down,
	[7] = swc_team_sld_down,
	[8] = swc_team_sld_down
}
slc_team_1 = {
	[1] = swc_team_1,
	[2] = swc_team_2,
	[3] = swc_team_3,
	[4] = swc_team_4,
	[5] = swc_team_1,
	[6] = swc_team_2,
	[7] = swc_team_3,
	[8] = swc_team_4
}




function stop_repeat()
	if handle_stop_repeat[cfg.main] then
		handle_stop_repeat[cfg.main]()
	else
		handle_stop_repeat[default]()
	end
end
stop_repeat_auto_count = 0
had_do_stop_repeat = false
handle_stop_repeat = {
--	[default] = function() end,
--	[fmain_auto] = function()
	[default] = function()
		if not had_do_stop_repeat and find_item(item_mission_over) then
			had_do_stop_repeat = true
			if math.random(1,10) > 3 or stop_repeat_auto_count >= cfg.misscnt then
				stop_repeat_auto_count = 0
				can_to_target_mission()
			else
				stop_repeat_auto_count = stop_repeat_auto_count + 1
			end
		end
	end,
	[fmain_repeat] = function()
		click_btn(btn_stop_repeat)
	end
--	[fmain_alarm] = function()
--		if can_to_target_reback() then return true end
--		if can_to_target_mission() then return true end
--	end,
--	[fmain_mission] = function()
--		can_to_target_mission()
--	end
}




function check_mission()
	if not swc_on(swc_mission_open1,true) and not swc_on(swc_mission_open2) then return false end
	if find_item(item_mission_over2) then
		click_item(item_mission_over2)
		sleep()
		return false
	end
	return true
end


function check_mission_slc_team()
	if find_item(item_mission_over3) then
		if can_to_target_mission() then
			return true
		end
	end
	return false
end

had_reback = false
function handle_reback()
	if cfg.reback == "" then return true end
	if not had_reback then
		click_btn(btn_reback_enter)
		already_bottom = false
		return false
	end
	local txt = get_text(text_reback_gain)
	if not txt then return false end
	txt = string.gsub(txt,"%s","")
	txt = string.match(txt,"%d+")
	txt = tonumber(txt)
	if txt and txt > 0 then
		click_btn(btn_reback_start)
		return false
	end
	had_reback = false
	return true
end

had_reback2 = false
function handle_reback2()
	if not swc_on(swc_change_eqm) then return false end
	if not had_reback2 then
		click_btn(btn_reback_enter)
		already_bottom = false
		return false
	end
	local txt = get_text(text_reback_gain)
	if not txt then return false end
	txt = string.gsub(txt,"%s","")
	txt = string.match(txt,"%d+")
	txt = tonumber(txt)
	if txt and txt > 0 then
		click_btn(btn_reback_start)
		return false
	end
	had_reback2 = false
	return true
end

already_bottom = false
function reback_waifu_slc()
	if not swc_off(swc_reback_ss) then return false end
	if not swc_off(swc_reback_s) then return false end
	if slc(cfg.reback,freback_A_waifu) then
		if not swc_on(swc_reback_a) then return false end
	else
		if not swc_off(swc_reback_a) then return false end
	end
	if slc(cfg.reback,freback_B_waifu) then
		if not swc_on(swc_reback_b) then return false end
	else
		if not swc_off(swc_reback_b) then return false end
	end
	if slc(cfg.reback,freback_A_waifu) then
		if find_item(item_A_waifu) then
			click_item(item_A_waifu)
			sleep(80,133)
			click_item(item_A_waifu)
			return false
		end
	end
	if slc(cfg.reback,freback_B_waifu) then
		if find_item(item_B_waifu) then
			click_item(item_B_waifu)
			sleep(80,133)
			click_item(item_B_waifu)
			return false
		end
	end
	if find_item(item_reback_scroll) then
		click_item(item_reback_scroll)
		return false
	end
	if not already_bottom then
		click_btn(btn_reback_scroll_bottom)
		already_bottom = true
		return false
	end
	return true
end

function reback_eqm_slc()
	if not swc_off(swc_reback_ss) then return false end
	if not swc_off(swc_reback_s) then return false end
	if slc(cfg.reback2,freback_A_eqm) then
		if not swc_on(swc_reback_a) then return false end
	else
		if not swc_off(swc_reback_a) then return false end
	end
	if slc(cfg.reback2,freback_B_eqm) then
		if not swc_on(swc_reback_b) then return false end
	else
		if not swc_off(swc_reback_b) then return false end
	end
	if slc(cfg.reback2,freback_A_eqm) then
		if find_item(item_A_eqm) then
			click_item(item_A_eqm)
			sleep(80,133)
			click_item(item_A_eqm)
			return false
		end
	end
	if slc(cfg.reback2,freback_B_eqm) then
		if find_item(item_B_eqm) then
			click_item(item_B_eqm)
			sleep(80,133)
			click_item(item_B_eqm)
			return false
		end
	end
	if find_item(item_reback_scroll) then
		click_item(item_reback_scroll)
		return false
	end
	if not already_bottom then
		click_btn(btn_reback_scroll_bottom)
		already_bottom = true
		return false
	end
	return true
end


--进入战斗之后调整一些状态值
function do_get_in_battle()
	reback_just_now = false
	had_do_stop_repeat = false
	new_bt_add_count = true
end






new_turn = true
turn = 0
new_round = true
round = 0

--整场战斗开始时执行
function init_repeat_battle()
	round = 0
	turn = 0
	new_round = true
	new_turn = true
	re_do_action = 0
end

--回合结束时执行
function turn_over()
	new_turn = true
	rand_sleep_bt_report = true
	re_do_action = 0
end

--战斗单面结束时执行
function round_over()
	turn = 0
	new_turn = true
	new_round = true
	re_do_action = 0
	change_bt_playing_wait_time(1)
end

function slc_action(N)
	
	if re_do_action > 6 then
		dlog("重做行动太多次。。。")
		dialog("行动设置可能出问题了，请检查", 600)
		re_do_action = 0
		click_btn(btn_bt_quit)
		return true
	end
	
	if new_round then
		round = round + 1
		new_round = false
	end
	
	if new_turn then
		turn = turn + 1
		new_turn = false
	end
	
	if not N then
		N = 1
	end
	
	if not slc(cfg.auto_xy,fauto_xy_quick) then
		local ret
		--没有下次行动了，多检测几次
		if action[round] and action[round][turn] and N > #(action[round][turn]) then
			ret = timeout({count=6,sleep=250},find_item,item_turn_end)
		else
			ret = find_item(item_turn_end)
		end
		if ret then
			click_btn(btn_turn_over)
			
			local ret = timeout({count = 20,sleep = 300},in_view,view_bt_playing)
			if not ret then
				click_btn(btn_turn_over)
			end
			
			turn_over()
			
			if N > 1 then
				change_bt_playing_wait_time(2)
			else
				change_bt_playing_wait_time(1)
			end
			return true
		end
	else
		if action[round] and action[round][turn] and N > #(action[round][turn]) then
			sleep(100,230)
			click_btn(btn_turn_over)
			
			turn_over()
			
			if N > 3 then
				change_bt_playing_wait_time(2)
			else
				change_bt_playing_wait_time(1)
			end
			return true
		end
	end
	
	dlog("round = ",round," turn = ",turn," N = ",N)
	
	if not action[round] or not action[round][turn] or not action[round][turn][N] then
		dlog("没有行动了。。。")
		if cfg.extra_do == fextrado_auto then
		
			turn_over()
			
			click_btn(btn_bt_auto)
			sleep(1800,2000)
			click_btn(btn_bt_auto)
			return true
		end
		if cfg.extra_do == fextrado_quit then
			click_btn(btn_bt_quit)
			return true
		end
	end
	
	if do_action(action[round][turn][N]) then
		return slc_action(N+1)
	else
		return false
	end
end

re_do_action = 0
function do_action(a)
	
	if re_do_action > 6 then
		return true
	end
	
	local x,y
	local over
	
	if not slc(cfg.auto_xy,fauto_xy_quick) then	--非快速模式才检查下面的行动头像下的问号
		local ret = timeout(find_items,item_move_reset)
		
		if ret and ret > 0 then
			x,y = right_item(item_move_reset)
		end
	end
	
	if action_do_1[a[1]]() then
		over = true
	end
	
	if not over and action_do_2[a[2]]() then
		over = true
	end
	
	if not over and action_do_3[a[2]](a[3]) then
		over = true
	end
	
	if over then
		sleep(280,350)
		if slc(cfg.auto_xy,fauto_xy_quick) then	--快速模式直接跳出到下一步
			return true
		end
		if find_item(item_turn_end) then
			sleep(100,250)
			return true
		end
		if a[1] == "T" then	--纯等待直接跳出
			return true
		end
		if x and x > 0.057*pos.cx then	--在最左侧时不检测了
			local ret = timeout({count=7,sleep=200},find_items,item_move_reset)
			if ret and ret > 0 then
				local x1,y1 = right_item(item_move_reset)
				if ((x-x1)^2+(y-y1)^2)^0.5 < 2.25 then
					click({
							item[item_move_reset].body[1]+x,
							item[item_move_reset].body[2]+y,
							item[item_move_reset].body[3]+x,
							item[item_move_reset].body[4]+y
						})
					re_do_action = re_do_action + 1
					return do_action(a)
				end
			end
		end
	end
	
	return true
end


function right_item(name)
	if #(items_positions[name]) == 0 then 
		return nil
	end
	if #(items_positions[name]) == 1 then 
		return items_positions[name][1].x,items_positions[name][1].y
	end
	local x,y = items_positions[name][1].x,items_positions[name][1].y
	for i,v in ipairs(items_positions[name]) do
		if v.x > x then
			x,y = v.x,v.y
		end
	end
	return x,y
end


action_do_1 = {
	["S1"] = function()
		sleep(110,160)
		return false
	end,
	["S2"] = function()
		sleep(270,358)
		click_btn(btn_skill2)
		sleep(20,150)
		return false
	end,
	["W"] = function()
		sleep(50,100)
		click_btn(btn_wait)
		return true
	end,
	["M"] = function()
		sleep(270,358)
		click_btn(btn_move)
		sleep(20,150)
		return false
	end,
	["T"] = function()
		sleep(500,600)
		return true
	end
}

action_do_2 = {
	["SF"] = function()
		sleep(270,358)
		if timeout({count=7,sleep=200},find_item,item_target_self) then
			click_item(item_target_self)
		end
		return true
	end,
	["E"] = function()
		sleep(270,358)
		return false
	end,
	["F"] = function()
		sleep(270,358)
		return false
	end,
	["GE"] = function()
		sleep(270,358)
		return false
	end,
	["GF"] = function()
		sleep(270,358)
		return false
	end,
	["A"] = function()
		sleep(270,358)
		if timeout({count=7,sleep=200},find_items,item_target_enemy) then
			local N = math.random(1,#(items_positions[item_target_enemy]))
			local x = items_positions[item_target_enemy][N].x
			local y = items_positions[item_target_enemy][N].y
			click({
					item[item_target_enemy].body[1]+x,
					item[item_target_enemy].body[2]+y,
					item[item_target_enemy].body[3]+x,
					item[item_target_enemy].body[4]+y
				})
			sleep(180,280)
			click({
					item[item_target_enemy].body[1]+x,
					item[item_target_enemy].body[2]+y,
					item[item_target_enemy].body[3]+x,
					item[item_target_enemy].body[4]+y
				})
		end
		return true
	end
}

action_do_3 = {
	["E"] = function(A)
		if slc(cfg.auto_xy,fauto_xy_0) then		--自动坐标进行识别检测
			if timeout({count=7,sleep=200},find_items,item_target_enemy) then
				local N = tonumber(A)
				local x = items_positions[item_target_enemy][N].x
				local y = items_positions[item_target_enemy][N].y
				click({
						item[item_target_enemy].body[1]+x,
						item[item_target_enemy].body[2]+y,
						item[item_target_enemy].body[3]+x,
						item[item_target_enemy].body[4]+y
					})
				sleep(180,280)
				click({
						item[item_target_enemy].body[1]+x,
						item[item_target_enemy].body[2]+y,
						item[item_target_enemy].body[3]+x,
						item[item_target_enemy].body[4]+y
					})
			end
		else
			local x,y = E_pos[A][1],E_pos[A][2]
			click({
					item[item_target_set].body[1]+x,
					item[item_target_set].body[2]+y,
					item[item_target_set].body[3]+x,
					item[item_target_set].body[4]+y
				})
			sleep(180,280)
			click({
					item[item_target_set].body[1]+x,
					item[item_target_set].body[2]+y,
					item[item_target_set].body[3]+x,
					item[item_target_set].body[4]+y
				})
		end
		return true
	end,
	["F"] = function(A)
		if slc(cfg.auto_xy,fauto_xy_0) then		--自动坐标进行识别检测
			if timeout({count=7,sleep=200},find_items,item_target_friend) then
				local N = tonumber(A)
				local x = items_positions[item_target_friend][N].x
				local y = items_positions[item_target_friend][N].y
				click({
						item[item_target_friend].body[1]+x,
						item[item_target_friend].body[2]+y,
						item[item_target_friend].body[3]+x,
						item[item_target_friend].body[4]+y
					})
				sleep(180,280)
				click({
						item[item_target_friend].body[1]+x,
						item[item_target_friend].body[2]+y,
						item[item_target_friend].body[3]+x,
						item[item_target_friend].body[4]+y
					})
			end
		else
			local x,y = F_pos[A][1],F_pos[A][2]
			click({
					item[item_target_set].body[1]+x,
					item[item_target_set].body[2]+y,
					item[item_target_set].body[3]+x,
					item[item_target_set].body[4]+y
				})
			sleep(180,280)
			click({
					item[item_target_set].body[1]+x,
					item[item_target_set].body[2]+y,
					item[item_target_set].body[3]+x,
					item[item_target_set].body[4]+y
				})
		end
		return true
	end,
	["GE"] = function(A)
		local name = GE_area[A]
		click_btn(name)
		sleep(180,280)
		click_btn(name)
		return true
	end,
	["GF"] = function(A)
		local name = FE_area[A]
		click_btn(name)
		sleep(180,280)
		click_btn(name)
		return true
	end
}

GE_area = {
	["1"] = btn_ge_1,
	["2"] = btn_ge_2,
	["3"] = btn_ge_3,
	["4"] = btn_ge_4,
	["5"] = btn_ge_5,
	["6"] = btn_ge_6,
	["7"] = btn_ge_7,
	["8"] = btn_ge_8,
	["9"] = btn_ge_9
}

FE_area = {
	["1"] = btn_fe_1,
	["2"] = btn_fe_2,
	["3"] = btn_fe_3,
	["4"] = btn_fe_4,
	["5"] = btn_fe_5,
	["6"] = btn_fe_6,
	["7"] = btn_fe_7,
	["8"] = btn_fe_8,
	["9"] = btn_fe_9
}


change_bt_playing_wait_time_list = {
	[1] = {555,1000},
	[2] = {2333,6000}
}
function change_bt_playing_wait_time(Stage)
	sleep_time[view_bt_playing] = change_bt_playing_wait_time_list[Stage]
end



function can_to_target_mission()
	if slc(cfg.extra,fextra_mission) then
		state.target = target_mission
		return true
	end
	return false
end

function can_to_target_atk()
	if cfg.main ~= fmain_mission and cfg.main ~= fmain_test and cfg.btcount > state.had_bt then
		state.target = target_atk
		return true
	end
	return false
end

function can_to_target_reback()
	if slc(cfg.extra,fextra_reback) and (slc(cfg.reback,freback_A_waifu) or slc(cfg.reback,freback_B_waifu) or slc(cfg.reback2,freback_A_eqm) or slc(cfg.reback2,freback_B_eqm)) then
		state.target = target_reback
		return true
	end
	return false
end

function can_to_target_reback2()
	if slc(cfg.extra,fextra_reback) and (slc(cfg.reback2,freback_A_eqm) or slc(cfg.reback2,freback_B_eqm)) then
		state.target = target_reback2
		return true
	end
	return false
end

return func