local cfg = {}

for k,v in pairs(UI) do
	cfg[k] = v
end

cfg.chapter	= tonumber(cfg.chapter) + 1
cfg.subfb	= tonumber(cfg.subfb) + 1
cfg.team	= tonumber(cfg.team) + 1
cfg.main	= tonumber(cfg.main) + 1
cfg.alarm	= tonumber(cfg.alarm)
cfg.misscnt = tonumber(cfg.misscnt)
cfg.extra_do= tonumber(cfg.extra_do)
cfg.btcount = tonumber(cfg.btcount)
cfg.xy_base = tonumber(cfg.xy_base)

cfg.actionslc = tonumber(cfg.actionslc)+1




-----------------------------初始化行动--------------------------------------

split = function(s, p)
    local rt= {}
    string.gsub(s, '[^'..p..']+', function(w) table.insert(rt, w) end )
    return rt
end


--[[
每回合的行动模板编号
{
	{1,2,3},	--第一面
	{1,2,3}		--第二面
}
]]
function decode_action(txt)
	if not txt or txt == "" then
		return {}
	end
	local t = split(txt,";")
	local t2 = {}
	for i,v in ipairs(t) do
		if i > 1 then
			t2[i-1] = split(v,",")
		end
	end
	for i,v in ipairs(t2) do
		for i2,v2 in ipairs(v) do
--			dlog("action ",i," ",i2," ",v2)
		end
	end
	return t2
end

actions = {
	[1] = decode_action(cfg.action1),
	[2] = decode_action(cfg.action2),
	[3] = decode_action(cfg.action3),
	[4] = decode_action(cfg.action4),
	[5] = decode_action(cfg.action5),
	[6] = decode_action(cfg.action6),
	[7] = decode_action(cfg.action7),
	[8] = decode_action(cfg.action8),
	[9] = decode_action(cfg.action9),
	[10] = decode_action(cfg.action10)
}

--[[
一个回合的行动
{
	{"S1","E","1"},		--第一个行动
	{"S1","E","1"}		--第二个行动
}
]]
function decode_move(txt)
	if not txt or txt == "" then
		return {}
	end
	local t = split(txt,";")
	local t2 = {}
	for i,v in ipairs(t) do
		if move_short[v] then
			t2[i] = move_short[v]
		else
			t2[i] = split(v,",")
		end
	end
	for i,v in ipairs(t2) do
		for i2,v2 in ipairs(v) do
--			dlog("move ",i," ",i2," ",v2)
		end
	end
	return t2
end

--单个行动缩写
move_short = {
	["E1"] = {"S1","E","1"},
	["E2"] = {"S1","E","2"},
	["E3"] = {"S1","E","3"},
	["E4"] = {"S1","E","4"},
	["E5"] = {"S1","E","5"},
	["E6"] = {"S1","E","6"},
	["E7"] = {"S1","E","7"},
	["E8"] = {"S1","E","8"},
	["E9"] = {"S1","E","9"},
	["E10"] = {"S1","E","10"},
	["E11"] = {"S1","E","11"},
	["E12"] = {"S1","E","12"},
	["E13"] = {"S1","E","13"},
	["E14"] = {"S1","E","14"},
	["E15"] = {"S1","E","15"},
	["E16"] = {"S1","E","16"},
	["E17"] = {"S1","E","17"},
	["E18"] = {"S1","E","18"},
	["E19"] = {"S1","E","19"},
	
	["F1"] = {"S1","F","1"},
	["F2"] = {"S1","F","2"},
	["F3"] = {"S1","F","3"},
	["F4"] = {"S1","F","4"},
	["F5"] = {"S1","F","5"},
	["F6"] = {"S1","F","6"},
	["F7"] = {"S1","F","7"},
	["F8"] = {"S1","F","8"},
	["F9"] = {"S1","F","9"},
	["F10"] = {"S1","F","10"},
	["F11"] = {"S1","F","11"},
	["F12"] = {"S1","F","12"},
	["F13"] = {"S1","F","13"},
	["F14"] = {"S1","F","14"},
	["F15"] = {"S1","F","15"},
	["F16"] = {"S1","F","16"},
	["F17"] = {"S1","F","17"},
	["F18"] = {"S1","F","18"},
	["F19"] = {"S1","F","19"},
	
	["GE1"] = {"S1","GE","1"},
	["GE2"] = {"S1","GE","2"},
	["GE3"] = {"S1","GE","3"},
	["GE4"] = {"S1","GE","4"},
	["GE5"] = {"S1","GE","5"},
	["GE6"] = {"S1","GE","6"},
	["GE7"] = {"S1","GE","7"},
	["GE8"] = {"S1","GE","8"},
	["GE9"] = {"S1","GE","9"},
	
	["GF1"] = {"S1","GF","1"},
	["GF2"] = {"S1","GF","2"},
	["GF3"] = {"S1","GF","3"},
	["GF4"] = {"S1","GF","4"},
	["GF5"] = {"S1","GF","5"},
	["GF6"] = {"S1","GF","6"},
	["GF7"] = {"S1","GF","7"},
	["GF8"] = {"S1","GF","8"},
	["GF9"] = {"S1","GF","9"},
	
	
	
	["2E1"] = {"S2","E","1"},
	["2E2"] = {"S2","E","2"},
	["2E3"] = {"S2","E","3"},
	["2E4"] = {"S2","E","4"},
	["2E5"] = {"S2","E","5"},
	["2E6"] = {"S2","E","6"},
	["2E7"] = {"S2","E","7"},
	["2E8"] = {"S2","E","8"},
	["2E9"] = {"S2","E","9"},
	["2E10"] = {"S2","E","10"},
	["2E11"] = {"S2","E","11"},
	["2E12"] = {"S2","E","12"},
	["2E13"] = {"S2","E","13"},
	["2E14"] = {"S2","E","14"},
	["2E15"] = {"S2","E","15"},
	["2E16"] = {"S2","E","16"},
	["2E17"] = {"S2","E","17"},
	["2E18"] = {"S2","E","18"},
	["2E19"] = {"S2","E","19"},
	
	["2F1"] = {"S2","F","1"},
	["2F2"] = {"S2","F","2"},
	["2F3"] = {"S2","F","3"},
	["2F4"] = {"S2","F","4"},
	["2F5"] = {"S2","F","5"},
	["2F6"] = {"S2","F","6"},
	["2F7"] = {"S2","F","7"},
	["2F8"] = {"S2","F","8"},
	["2F9"] = {"S2","F","9"},
	["2F10"] = {"S2","F","10"},
	["2F11"] = {"S2","F","11"},
	["2F12"] = {"S2","F","12"},
	["2F13"] = {"S2","F","13"},
	["2F14"] = {"S2","F","14"},
	["2F15"] = {"S2","F","15"},
	["2F16"] = {"S2","F","16"},
	["2F17"] = {"S2","F","17"},
	["2F18"] = {"S2","F","18"},
	["2F19"] = {"S2","F","19"},
	
	["2GE1"] = {"S2","GE","1"},
	["2GE2"] = {"S2","GE","2"},
	["2GE3"] = {"S2","GE","3"},
	["2GE4"] = {"S2","GE","4"},
	["2GE5"] = {"S2","GE","5"},
	["2GE6"] = {"S2","GE","6"},
	["2GE7"] = {"S2","GE","7"},
	["2GE8"] = {"S2","GE","8"},
	["2GE9"] = {"S2","GE","9"},
	
	["2GF1"] = {"S2","GF","1"},
	["2GF2"] = {"S2","GF","2"},
	["2GF3"] = {"S2","GF","3"},
	["2GF4"] = {"S2","GF","4"},
	["2GF5"] = {"S2","GF","5"},
	["2GF6"] = {"S2","GF","6"},
	["2GF7"] = {"S2","GF","7"},
	["2GF8"] = {"S2","GF","8"},
	["2GF9"] = {"S2","GF","9"},
	
	["M1"] = {"M","GF","1"},
	["M9"] = {"M","GF","9"},
	["M8"] = {"M","GF","8"},
	["M7"] = {"M","GF","7"},
	["M6"] = {"M","GF","6"},
	["M5"] = {"M","GF","5"},
	["M4"] = {"M","GF","4"},
	["M3"] = {"M","GF","3"},
	["M2"] = {"M","GF","2"},
	
	["SF"] = {"S1","SF"},
	
	["2SF"] = {"S2","SF"},
	
	["A"] = {"S1","A"},
	
	["2A"] = {"S2","A"},
	
	["T"] = {"T"}
}

moves = {
	["1"] = decode_move(cfg.tl1),
	["2"] = decode_move(cfg.tl2),
	["3"] = decode_move(cfg.tl3),
	["4"] = decode_move(cfg.tl4),
	["5"] = decode_move(cfg.tl5),
	["6"] = decode_move(cfg.tl6),
	["7"] = decode_move(cfg.tl7),
	["8"] = decode_move(cfg.tl8),
	["9"] = decode_move(cfg.tl9),
	["10"] = decode_move(cfg.tl10),
	["11"] = decode_move(cfg.tl11),
	["12"] = decode_move(cfg.tl12),
	["13"] = decode_move(cfg.tl13),
	["14"] = decode_move(cfg.tl14),
	["15"] = decode_move(cfg.tl15),
	["16"] = decode_move(cfg.tl16),
	["17"] = decode_move(cfg.tl17),
	["18"] = decode_move(cfg.tl18),
	["19"] = decode_move(cfg.tl19),
	["20"] = decode_move(cfg.tl20)
}

--[[
{	
	{	--关卡1
		{	--回合1
			{"S1","E","1"},	--行动1
			{"S2","F","1"}	--行动2
		},
		{	--回合2
			{"S1","E","1"},	--行动1
			{"S2","F","1"}	--行动2
		},
		...
	},
	{	--关卡2
		{	--回合1
			{"S1","E","1"},	--行动1
			{"S2","F","1"}	--行动2
		},
		{	--回合2
			{"S1","E","1"},	--行动1
			{"S2","F","1"}	--行动2
		},
		...
	},
}
]]
action = {}

for i,v in ipairs(actions[cfg.actionslc]) do
	action[i] = {}
	for i2,v2 in ipairs(v) do
		action[i][i2] = moves[v2]
	end
end


--按坐标基准值计算缩放
UI_pos_setting_scale = (cfg.xy_base and pos.cy/cfg.xy_base) or 1

function decode_pos(txt)
	if not txt or txt == "" then
		return {}
	end
	
	local t2 = split(txt,";")
	if #t2 == 1 then
		txt = t2[1]
	else
		txt = t2[2]
	end
	
	local t = split(txt,",")
	
	local scale = UI_pos_setting_scale
	
	return {math.ceil(tonumber(t[1])*scale),math.ceil(tonumber(t[2])*scale)}
end

E_pos = {
	["1"] = decode_pos(cfg.E1),
	["2"] = decode_pos(cfg.E2),
	["3"] = decode_pos(cfg.E3),
	["4"] = decode_pos(cfg.E4),
	["5"] = decode_pos(cfg.E5),
	["6"] = decode_pos(cfg.E6),
	["7"] = decode_pos(cfg.E7),
	["8"] = decode_pos(cfg.E8),
	["9"] = decode_pos(cfg.E9),
	["10"] = decode_pos(cfg.E10),
	["11"] = decode_pos(cfg.E11),
	["12"] = decode_pos(cfg.E12),
	["13"] = decode_pos(cfg.E13),
	["14"] = decode_pos(cfg.E14),
	["15"] = decode_pos(cfg.E15),
	["16"] = decode_pos(cfg.E16),
	["17"] = decode_pos(cfg.E17),
	["18"] = decode_pos(cfg.E18),
	["19"] = decode_pos(cfg.E19)
}

F_pos = {
	["1"] = decode_pos(cfg.F1),
	["2"] = decode_pos(cfg.F2),
	["3"] = decode_pos(cfg.F3),
	["4"] = decode_pos(cfg.F4),
	["5"] = decode_pos(cfg.F5),
	["6"] = decode_pos(cfg.F6),
	["7"] = decode_pos(cfg.F7),
	["8"] = decode_pos(cfg.F8),
	["9"] = decode_pos(cfg.F9),
	["10"] = decode_pos(cfg.F10),
	["11"] = decode_pos(cfg.F11),
	["12"] = decode_pos(cfg.F12),
	["13"] = decode_pos(cfg.F13),
	["14"] = decode_pos(cfg.F14),
	["15"] = decode_pos(cfg.F15),
	["16"] = decode_pos(cfg.F16),
	["17"] = decode_pos(cfg.F17),
	["18"] = decode_pos(cfg.F18),
	["19"] = decode_pos(cfg.F19)
}
return cfg