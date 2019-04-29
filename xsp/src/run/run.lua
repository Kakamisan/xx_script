require "custom.func"

function run()
	local V = func[state.view]							--获得该界面的函数组
	if not V then
		return run_default()							--若没有该界面的函数组，运行通用默认
	end
	
	local F = V[state.target]							--获取该界面 该目标下的函数
	if not F then
		F = V[target_default]							--若没有该界面 该目标下的函数，则获取该界面默认函数
		if not F then
			return func_default()						--若没有该界面默认函数，运行通用默认
		end
	end
	
	F()													--运行功能函数
end