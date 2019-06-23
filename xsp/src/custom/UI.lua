local content = getUIContent("ui.json")		--默认的ui

--if pos.cw >= 720 then
--	content = getUIContent("ui2.json")		--当前设备分辨率为720以上时，输出ui2
--end

local ret,UI = showUI(content)				--显示UI

if ret ~= 1 then
	lua_exit()
end

local cfgslclist = {
	[0] = "ui1.json",
	[1] = "ui2.json",
	[2] = "ui3.json",
	[3] = "ui4.json",
	[4] = "ui5.json",
	[5] = "ui6.json",
	[6] = "ui7.json",
	[7] = "ui8.json",
	[8] = "ui9.json",
	[9] = "ui10.json",
	[10] = "ui11.json",
	[11] = "ui12.json",
	[12] = "ui13.json"
}

dlog(cfgslclist[tonumber(UI.cfgslc)])

content = getUIContent(cfgslclist[tonumber(UI.cfgslc)])

local ret,UI = showUI(content)

if ret ~= 1 then
	lua_exit()
end

if UI.sshkey ~= "节奏123" then
	dialog("明文密钥错误",5)
	lua_exit()
end

if debug_mode then
	for k,v in pairs(UI) do
		dlog("UI.",k,"\t= ",v)
	end
end

return UI