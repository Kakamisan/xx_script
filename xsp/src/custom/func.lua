func = {}

--func[view_sample] = {
--	[target_sample] = function()
--		dlog("运行了func[view_sample][target_sample]...")
--	end,
--	[target_default] = function()
--		dlog("运行了func[view_sample][target_default]...")
--	end
--}

func[view_pjjc] = {
	[target_wait] = function()
		if mTime()>state.next_ts then
			state.target = target_default
			state.next_ts = mTime() + math.random(cfg.T1,cfg.T2)*1000
		else
			dlog("下一次换防:",(state.next_ts - mTime())/1000,"秒后")
			sleep()
		end
	end,
	[target_default] = function()
		click_btn(btn_settine)
	end
}

func[view_pjjc_team] = {
	[target_wait] = function()
		click_btn(btn_slc_over)
	end,
	[target_default] = function()
		local N = math.random(7,10)
		for i = 1,N do
			click_btn(btn_clean)
			sleep(140,170)
		end
		
		while(not swc_on(swc_team2)) do sleep() end
		sleep()
		local N = math.random(7,10)
		for i=1,N do
			click_btn(btn_clean)
			sleep(140,170)
		end
		
		while(not swc_on(swc_team3)) do sleep() end
		sleep()
		local N = math.random(7,10)
		for i=1,N do
			click_btn(btn_clean)
			sleep(140,170)
		end
		
		while(not swc_on(swc_team1)) do sleep() end
		sleep()
		while(not in_view(view_slc_team)) do
			click_btn(btn_my_team)
			sleep(800)
		end
	end
}

func[view_slc_team] = {
	[target_wait] = function()
		pressKey('BACK',false)
	end,
	[target_default] = function()
		local N = next_team_slc()
		local config = team_config[N]
		
		while(not swc_on(config[1])) do sleep() end
		sleep()
		while(not in_view(view_pjjc_team)) do
			click_btn(config[2])
			sleep(800)
		end
		--sleep()
		while(not swc_on(swc_team2)) do sleep() end
		sleep()
		while(not in_view(view_slc_team)) do
			click_btn(btn_my_team)
			sleep(800)
		end
		--sleep()
		
		while(not swc_on(config[1])) do sleep() end
		sleep()
		while(not in_view(view_pjjc_team)) do
			click_btn(config[3])
			sleep(800)
		end
		--sleep()
		while(not swc_on(swc_team3)) do sleep() end
		sleep()
		while(not in_view(view_slc_team)) do
			click_btn(btn_my_team)
			sleep(800)
		end
		--sleep()
		
		while(not swc_on(config[1])) do sleep() end
		sleep()
		while(not in_view(view_pjjc_team)) do
			click_btn(config[4])
			sleep(800)
		end
		--sleep()
		
		--state.next_ts = mTime() + math.random(cfg.T1,cfg.T2)*1000
		state.target = target_wait
	end
}

--未定义func[view]执行run时执行这里
function run_default()
	dlog("运行了run_default")
end

--未定义func[view][target]执行run时执行这里
function func_default()
	dlog("运行了func_default")
end

return func