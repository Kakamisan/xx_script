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
		if ret then change_target() end
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
			click_btn(btn_enter_bt)
		end
	end,
	[target_default] = function()
		click_btn(btn_back_any)
	end
}

func[view_bt_slc_acn] = {
	[target_default] = function()
		--do something
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

func[view_bt_report] = {
	[target_default] = function()
		click_btn(btn_normal)
	end
}

func[view_bt_waiting] = {
	[target_default] = function()
		--do nothing
	end
}

func[view_bt_get_waifu] = {
	[target_default] = function()
		click_btn(btn_normal)
	end
}

func[view_bt_next] = {
	[target_default] = function()
		click_btn(btn_bt_next)
	end
}

func[view_bt_moving] = {
	[target_default] = function()
		--do nothing
	end
}

func[view_bt_over] = {
	[target_default] = function()
		click_btn(btn_normal)
	end
}

func[view_stop_repeat] = {
	[target_mission] = function()
		click_btn(btn_stop_repeat)
	end,
	[target_reback] = function()
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

func[view_bt_enemy_acn] = {
	[target_default] = function()
		click_btn(btn_start_turn)
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
			if can_to_target_mission() then return true end
			if can_to_target_atk() then return true end
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

--------------------------------sub function--------------------------------

function change_target()
	if handle_change_target[state.target]() then return true end
	return false
end
handle_change_target = {
	[target_default] = function()
		if can_to_target_atk() then return true end
		if can_to_target_mission() then return true end
		state.target = target_back
	end,
	[target_wait] = function()
		
	end,
	[target_back] = function()
		state.target = target_wait
	end,
	[target_atk] = function()
		
	end,
	[target_mission] = function()
		if can_to_target_atk() then return true end
	end,
	[target_reback] = function()
		if can_to_target_mission() then return true end
		if can_to_target_atk() then return true end
		state.target = target_back
	end,
}




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
	[6] = swc_chapter6
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
	if not swc_on(slc_team_sld[cfg.team]) then return false end
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
	[default] = function() end,
	[fmain_auto] = function()
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
	[fmain_alarm] = function()
		if state.alarm < mTime() then
			state.alarm = mTime() + math.max(cfg.alarm,9000)*1000
			if can_to_target_reback() then return true end
			if can_to_target_mission() then return true end
		end
	end,
	[fmain_mission] = function()
		can_to_target_mission()
	end
}




function check_mission()
	if not swc_on(swc_mission_open1,true) and not swc_on(swc_mission_open2) then return false end
	if find_item(item_mission_over2) then 
		click_item(item_mission_over2)
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
	local txt = get_text(text_reback_gain)
	if not txt then return false end
	txt = string.gsub(txt,"%s","")
	txt = tonumber(txt)
	if txt > 0 then
		click_btn(btn_reback_start)
		return false
	end
	if not had_reback then
		click_btn(btn_reback_enter)
		return false
	end
	had_reback = false
	return true
end

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
	return true
end


--进入战斗之后调整一些状态值
function do_get_in_battle()
	reback_just_now = false
	had_do_stop_repeat = false
end





function can_to_target_mission()
	if slc(cfg.extra,fextra_mission) then 
		state.target = target_mission
		return true
	end
	return false
end

function can_to_target_atk()
	if cfg.main ~= fmain_mission and cfg.main ~= fmain_test then
		state.target = target_atk
		return true
	end
	return false
end

function can_to_target_reback()
	if slc(cfg.extra,fextra_reback) and (slc(cfg.reback,freback_A_waifu) or slc(cfg.reback,freback_B_waifu)) then 
		state.target = target_reback
		return true
	end
	return false
end

return func