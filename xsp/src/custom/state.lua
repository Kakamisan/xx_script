local state = {}

state.view 			= 0		--当前view
state.target 		= 0		--当前target
state.alarm			= 0		--定时闹钟时间戳
state.had_bt		= 0		--已经进行的战斗场数
state.clock			= 0		--等待固定时间执行（纯远征时偶尔进入建造界面）
state.clock_reback	= 0		--等待固定时间分解一次
state.had_rest		= 0		--偶尔休息的场数计数







state.alarm = mTime() + math.max(cfg.alarm,min_alarm)*1000	--最小9000秒，即2.5小时
state.clock_reback = mTime() + math.random(3000,4000)*1000	--约一个小时主动分解一次

return state