local state = {}

state.view 			= 0		--当前view
state.target 		= 0		--当前target
state.alarm			= 0		--定时闹钟时间戳
state.had_bt		= 0		--已经进行的战斗场数
state.clock			= 0		--等待固定时间执行







state.alarm = mTime() + math.max(cfg.alarm,9000)*1000	--最小9000秒，即2.5小时

return state