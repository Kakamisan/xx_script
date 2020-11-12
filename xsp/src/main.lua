require "define"
require "util.util"
require "run.run"

require "custom.init"

team_config = {
	[1] = {swc_group2, btn_team1, btn_team2, btn_team3},
	[2] = {swc_group2, btn_team1, btn_team3, btn_team2},
	[3] = {swc_group2, btn_team2, btn_team1, btn_team3},
	[4] = {swc_group2, btn_team2, btn_team3, btn_team1},
	[5] = {swc_group2, btn_team3, btn_team1, btn_team2},
	[6] = {swc_group2, btn_team3, btn_team2, btn_team1},
	
	[7] = {swc_group3, btn_team1, btn_team2, btn_team3},
	[8] = {swc_group3, btn_team1, btn_team3, btn_team2},
	[9] = {swc_group3, btn_team2, btn_team1, btn_team3},
	[10] = {swc_group3, btn_team2, btn_team3, btn_team1},
	[11] = {swc_group3, btn_team3, btn_team1, btn_team2},
	[12] = {swc_group3, btn_team3, btn_team2, btn_team1},
	
	[13] = {swc_group4, btn_team1, btn_team2, btn_team3},
	[14] = {swc_group4, btn_team1, btn_team3, btn_team2},
	[15] = {swc_group4, btn_team2, btn_team1, btn_team3},
	[16] = {swc_group4, btn_team2, btn_team3, btn_team1},
	[17] = {swc_group4, btn_team3, btn_team1, btn_team2},
	[18] = {swc_group4, btn_team3, btn_team2, btn_team1},
	
	[19] = {swc_group5, btn_team1, btn_team2, btn_team3},
	[20] = {swc_group5, btn_team1, btn_team3, btn_team2},
	[21] = {swc_group5, btn_team2, btn_team1, btn_team3},
	[22] = {swc_group5, btn_team2, btn_team3, btn_team1},
	[23] = {swc_group5, btn_team3, btn_team1, btn_team2},
	[24] = {swc_group5, btn_team3, btn_team2, btn_team1}
}

team_slc = {1,9,17,19,3,11,13,21,5,7,15,23,2,10,18,20,4,12,14,22,6,8,16,24,}
team_slc_n = cfg.InitTeam

function next_team_slc()
	if cfg.InitTeam == 5 then
		local tmp = math.random(1,24)
		while(tmp==team_slc_n) do
			tmp = math.random(1,24)
		end
		team_slc_n = tmp
	else
		if team_slc_n > 24 then
			team_slc_n = 1
		end
	end
	local slc = team_slc[team_slc_n]
	team_slc_n = team_slc_n + 1
	return slc
end

function main_loop()
	
	while(true) do
		update_view()
		
		run()
		
		sleep()
		
		--	return main_loop()
		
	end
	
end

main_loop()