local cfg = {}

for k,v in pairs(UI) do
	cfg[k] = v
end

cfg.InitTeam = cfg.InitTeam + 1
cfg.T1 = tonumber(cfg.T1)
cfg.T2 = tonumber(cfg.T2)

return cfg