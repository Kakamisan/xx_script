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
			dlog("action ",i," ",i2," ",v2)
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
		t2[i] = split(v,",")
	end
	for i,v in ipairs(t2) do
		for i2,v2 in ipairs(v) do
			dlog("move ",i," ",i2," ",v2)
		end
	end
	return t2
end

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


function decode_pos(txt)
	if not txt or txt == "" then
		return {}
	end
	local t = split(txt,",")
	return {tonumber(t[1]),tonumber(t[2])}
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