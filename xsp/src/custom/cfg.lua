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

return cfg