require "define"
require "util.util"
require "run.run"

require "custom.init"

function test()
	update_view()
	dlog(
	"view = ",to_view_desc[state.view]
	," target = ",to_target_desc[state.target]
	," alarm = ",math.floor((state.alarm - mTime()) / 1000)
	," had_bt = ",state.had_bt
	
	)
	
	sleep()
	
	return test()
end

--debug_mode = true
--test()

function main_loop()
	
	while(true) do
	if state.target ~= target_wait then
	update_view()
	
	do_calc_idle_times()
	
	dlog(
	"view = ",to_view_desc[state.view]
	," target = ",to_target_desc[state.target]
	," alarm = ",math.floor((state.alarm - mTime()) / 1000)
	," had_bt = ",state.had_bt
	)
	else
		dlog(
		"mission time = ",math.floor((only_mission_wait_ts - mTime()) / 1000)
		," alarm = ",math.floor((state.alarm - mTime()) / 1000)
		)
	end
	
	run()
	
	sleep()
	
	--手动停脚本（转竖屏就停止脚本）（按home键）
	if getScreenDirection() == 0 then
--		lua_exit()
		runApp("com.smartjoy.LastOrigin_C")
	end

--	return main_loop()
	
	end
	
end

runApp("com.smartjoy.LastOrigin_C")

main_loop()