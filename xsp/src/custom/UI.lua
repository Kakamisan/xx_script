local content = getUIContent("ui.json")		--默认的ui

--if pos.cw >= 720 then
--	content = getUIContent("ui2.json")		--当前设备分辨率为720以上时，输出ui2
--end

local ret,UI = showUI(content)				--显示UI

if ret ~= 1 then
	lua_exit()
end

content = getUIContent("ui1.json")

content = string.gsub(content,"save_lo_record","save_lo_record"..(tonumber(UI.cfgslc)+1))

local ret,UI = showUI(content)

if ret ~= 1 then
	lua_exit()
end

--if UI.sshkey ~= "节奏123" then
--	dialog("明文密钥错误",5)
--	lua_exit()
--end

--,
--            {
--               "id" : "sshkey",
--               "align" : "left",
--               "color" : "0,0,0",
--               "kbtype" : "number",
--               "prompt" : "密钥",
--               "size" : 25,
--               "rect" : "430,400,820,100",
--               "text" : "",
--               "type" : "Edit"
--            }

--if debug_mode then
--	for k,v in pairs(UI) do
--		dlog("UI.",k,"\t= ",v)
--	end
--end

return UI