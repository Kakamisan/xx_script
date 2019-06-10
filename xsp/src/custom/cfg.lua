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

cfg.actionslc = tonumber(cfg.actionslc)+1

split = function(s, p)
    local rt= {}
    string.gsub(s, '[^'..p..']+', function(w) table.insert(rt, w) end )
    return rt
end


--return {1,2,3}
function decode_action(txt)
	if not txt or txt == "" then
		return {}
	end
	local t = split(txt,";")
	local txt2
	if #t == 1 then
		txt2 = t[1]
	elseif #t == 2 then
		txt2 = t[2]
	else
		return {}
	end
	local t2 = split(txt2,",")
	local t3 = {}
	for i,v in ipairs(t2) do
		t3[i] = tonumber(v)
	end
	return t3
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

--return {}
function decode_move(txt)
	if not txt or txt == "" then
		return {}
	end
	local t = split(txt,";")
	local t2 = {}
	for i,v in ipairs(t) do
		t2[i] = split(v,",")
	end
	return t2
end

return cfg