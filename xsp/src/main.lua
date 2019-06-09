require "define"
require "util.util"
require "run.run"

require "custom.init"

function main_loop()
	
	update_view()
	
	dlog("view = "
	,to_view_desc(state.view)
	," target = "
	,to_target_desc(state.target)
	," alarm = "
	,floor((state.alarm - mTime()) / 1000))
	
	run()
	
	sleep()

	return main_loop()
	
end

main_loop()