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
	dlog("运行了run_default")
end

--未定义func[view][target]执行run时执行这里
function func_default()
	dlog("运行了func_default")
end

func[view_home] = {
	[target_default] = function()
		dlog("主页。。。")
	end
}

return func