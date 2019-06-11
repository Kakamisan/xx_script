require "define"
require "util.util"
require "run.run"

require "custom.init"

function test()
	update_view()
	dlog("view = "
	,to_view_desc[state.view]
	," target = "
	,to_target_desc[state.target]
	," alarm = "
	,math.floor((state.alarm - mTime()) / 1000))
	
	sleep()
	
	return test()
end

test()

function main_loop()
	
	if state.target ~= target_wait then
	update_view()
	
	dlog("view = "
	,to_view_desc[state.view]
	," target = "
	,to_target_desc[state.target]
	," alarm = "
	,math.floor((state.alarm - mTime()) / 1000))
	
	end
	
	run()
	
	sleep()

	return main_loop()
	
end

main_loop()