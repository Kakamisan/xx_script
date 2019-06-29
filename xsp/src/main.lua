require "define"
require "util.util"
require "run.run"

require "custom.init"

function main_loop()
	
	while(true) do
	update_view()
	
	run()
	
	sleep()

--	return main_loop()

	end
	
end

main_loop()