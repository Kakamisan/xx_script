require "define"
require "util.util"
require "run.run"

require "custom.init"

function main_loop()
	
	update_view()
	
	run()
	
	sleep()

	return main_loop()
	
end

main_loop()