local content = getUIContent("ui.json")		--默认的ui

--if pos.cw >= 720 then
--	content = getUIContent("ui2.json")		--当前设备分辨率为720以上时，输出ui2
--end

local ret,UI = showUI(content)				--显示UI

if ret ~= 1 then
	lua_exit()
end

if debug_mode then
	for k,v in pairs(UI) do
		dlog("UI.",k,"\t= ",v)
	end
end

return UI